/// Database-backed reading-screen regression tests for scripture and notes.
library;

import 'dart:io';

import 'package:cyber_bible_app/app_routes.dart';
import 'package:cyber_bible_app/models/book.dart';
import 'package:cyber_bible_app/screens/reading_screen.dart';
import 'package:cyber_bible_app/services/bible_service.dart';
import 'package:cyber_bible_app/services/settings_service.dart';
import 'package:cyber_bible_app/services/user_data_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sqflite_common_ffi/sqflite_ffi.dart';

/// Opens the read-only bundled Bible and an isolated in-memory user database.
Future<void> _openTestDatabases() async {
  BibleService.testDbPath = File('assets/bibles/eng-web.db').absolute.path;
  UserDataService.testDbPath = inMemoryDatabasePath;
  await BibleService.ensureOpen();
  await UserDataService.ensureOpen();
}

/// Waits for real SQLite futures and the asynchronously built HTML widgets.
Future<void> _settleReadingScreen(WidgetTester tester) async {
  await tester.runAsync(() async {
    for (var i = 0; i < 30; i++) {
      await tester.pump(const Duration(milliseconds: 100));
      await Future<void>.delayed(const Duration(milliseconds: 10));
    }
  });
  await tester.pumpAndSettle();
}

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();
  late Book psalms;
  late Book esdras;
  late Book genesis;

  setUpAll(() async {
    sqfliteFfiInit();
    databaseFactory = databaseFactoryFfi;
    await _openTestDatabases();
    final books = await BibleService.getBooks();
    psalms = books.firstWhere((book) => book.code == 'PSA');
    esdras = books.firstWhere((book) => book.code == '1ES');
    genesis = books.firstWhere((book) => book.code == 'GEN');
  });

  testWidgets('announces an inline note marker and the matching note', (
    tester,
  ) async {
    final semantics = tester.ensureSemantics();
    await tester.pumpWidget(
      MaterialApp(home: ReadingScreen(book: genesis, chapter: 1)),
    );
    await _settleReadingScreen(tester);

    expect(
      find.bySemanticsLabel(RegExp(r'God\s+Footnote A\s+created')),
      findsOneWidget,
    );
    final heading = find.text('Footnote A — Genesis 1:1');
    await tester.ensureVisible(heading);
    await tester.pumpAndSettle();
    expect(heading, findsOneWidget);
    expect(find.text('Footnote B — Genesis 1:29'), findsOneWidget);
    semantics.dispose();
  });

  tearDownAll(() async {
    await BibleService.closeForTesting();
    BibleService.testDbPath = null;
    await UserDataService.closeForTesting();
    UserDataService.testDbPath = null;
  });

  setUp(() async {
    SharedPreferences.setMockInitialValues({});
    SettingsService.instance.resetForTesting();
    await SettingsService.ensureLoaded();
  });

  testWidgets('exposes Psalm text and its heading in the semantics tree', (
    tester,
  ) async {
    final semantics = tester.ensureSemantics();
    await tester.pumpWidget(
      MaterialApp(home: ReadingScreen(book: psalms, chapter: 23)),
    );
    await _settleReadingScreen(tester);
    expect(tester.takeException(), isNull);

    expect(find.bySemanticsLabel('A Psalm by David.'), findsOneWidget);
    expect(
      find.bySemanticsLabel(RegExp(r'Yahweh is my shepherd')),
      findsOneWidget,
    );
    expect(find.bySemanticsLabel('I shall lack nothing.'), findsOneWidget);
    semantics.dispose();
  });

  testWidgets('notes have large, labeled reference actions at 200% text', (
    tester,
  ) async {
    tester.view.physicalSize = const Size(390, 844);
    tester.view.devicePixelRatio = 1;
    addTearDown(tester.view.resetPhysicalSize);
    addTearDown(tester.view.resetDevicePixelRatio);
    final semantics = tester.ensureSemantics();
    ReadingArgs? destination;
    await tester.pumpWidget(
      MaterialApp(
        builder: (context, child) => MediaQuery(
          data: MediaQuery.of(
            context,
          ).copyWith(textScaler: const TextScaler.linear(2)),
          child: child!,
        ),
        onGenerateRoute: (settings) {
          if (settings.name == AppRoutes.reading) {
            destination = settings.arguments as ReadingArgs;
            return MaterialPageRoute<void>(
              builder: (_) => const Scaffold(body: Text('Target passage')),
            );
          }
          return null;
        },
        home: ReadingScreen(book: esdras, chapter: 1),
      ),
    );
    await _settleReadingScreen(tester);

    final heading = find.text('Footnote A — 1 Esdras 1:8');
    expect(tester.takeException(), isNull);
    await tester.ensureVisible(heading);
    await tester.pumpAndSettle();
    expect(heading, findsOneWidget);
    expect(find.bySemanticsLabel('Footnotes'), findsOneWidget);
    final action = find.widgetWithText(
      OutlinedButton,
      'Open 2 Chronicles 35:8',
    );
    expect(action, findsOneWidget);
    await tester.ensureVisible(action);
    await tester.pumpAndSettle();
    final size = tester.getSize(action);
    expect(size.width, greaterThanOrEqualTo(48));
    expect(size.height, greaterThanOrEqualTo(48));
    expect(find.bySemanticsLabel('Open 2 Chronicles 35:8'), findsOneWidget);

    // Focus the real button and activate it with the keyboard, not a tap.
    // Tabbing exercises the same focus traversal used by keyboard users.
    final targetFocus = find.descendant(
      of: action,
      matching: find.byType(Focus),
    );
    for (var i = 0; i < 30; i++) {
      await tester.sendKeyEvent(LogicalKeyboardKey.tab);
      await tester.pump();
      if (targetFocus.evaluate().contains(
        FocusManager.instance.primaryFocus?.context,
      )) {
        break;
      }
    }
    expect(
      targetFocus.evaluate().contains(
        FocusManager.instance.primaryFocus?.context,
      ),
      isTrue,
    );
    await tester.sendKeyEvent(LogicalKeyboardKey.space);
    await _settleReadingScreen(tester);
    expect(destination?.book.code, '2CH');
    expect(destination?.chapter, 35);
    expect(destination?.initialVerse, '8');
    expect(find.text('Target passage'), findsOneWidget);
    Navigator.of(tester.element(find.text('Target passage'))).pop();
    await tester.pumpAndSettle();
    expect(find.text('Footnote A — 1 Esdras 1:8'), findsOneWidget);
    semantics.dispose();
  });
}
