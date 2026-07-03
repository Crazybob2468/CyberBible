// Widget tests for icon-first controls introduced in Step 1.16.5.
//
// These tests verify two high-impact surfaces:
//   1) Book selection top tabs are icon-only and expose tooltip metadata.
//   2) Settings verse-format segmented control is icon-first and keeps
//      the explanatory helper text for discoverability.
//
// The goal is to prevent regressions where text-only labels are reintroduced
// or tooltip metadata is accidentally removed.

// ignore_for_file: invalid_use_of_visible_for_testing_member

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'package:cyber_bible_app/screens/book_selection_screen.dart';
import 'package:cyber_bible_app/screens/settings_screen.dart';
import 'package:cyber_bible_app/screens/theme_selection_screen.dart';
import 'package:cyber_bible_app/services/settings_service.dart';

void main() {
  // -------------------------------------------------------------------------
  // Shared test setup
  // -------------------------------------------------------------------------

  setUp(() async {
    // Start every test with an empty in-memory prefs store so the widget
    // tree always renders from deterministic defaults.
    SharedPreferences.setMockInitialValues({});

    // Reset and reload SettingsService so widgets that read preferences
    // from SettingsService.instance can build without assertion failures.
    SettingsService.instance.resetForTesting();
    await SettingsService.ensureLoaded();
  });

  // -------------------------------------------------------------------------
  // Book selection tabs
  // -------------------------------------------------------------------------

  group('BookSelectionScreen icon-first tabs', () {
    testWidgets('shows icon tabs with tooltip metadata', (tester) async {
      await tester.pumpWidget(
        const MaterialApp(home: BookSelectionScreen()),
      );

      // Let initState fire and first async frame begin.
      await tester.pump();

      // The tab strip should expose icon-only labels via tooltip messages.
      expect(_findTooltipMessage('Traditional order'), findsOneWidget);
      expect(_findTooltipMessage('Alphabetical order'), findsOneWidget);
      expect(_findTooltipMessage('Bookmarks'), findsOneWidget);

      // Icon-only tabs must expose explicit screen-reader labels.
      expect(_findSemanticsLabel('Traditional order tab'), findsOneWidget);
      expect(_findSemanticsLabel('Alphabetical order tab'), findsOneWidget);
      expect(_findSemanticsLabel('Bookmarks tab'), findsOneWidget);

      // Guard against regressing these tab labels back to visible text.
      expect(find.text('Traditional'), findsNothing);
      expect(find.text('Alphabetical'), findsNothing);
    });
  });

  // -------------------------------------------------------------------------
  // Settings verse-format segmented control
  // -------------------------------------------------------------------------

  group('SettingsScreen verse-format icon control', () {
    testWidgets('renders icon-first options and helper copy', (tester) async {
      await tester.pumpWidget(
        const MaterialApp(home: SettingsScreen()),
      );

      await tester.pump();

      // Icon-first options should be visible in the segmented control.
      expect(find.byIcon(Icons.menu_book_rounded), findsOneWidget);
      expect(find.byIcon(Icons.format_list_bulleted_rounded), findsOneWidget);

      // The segmented options must carry tooltip metadata for icon-only UI.
      final segmented = tester.widget<SegmentedButton<bool>>(
        find.byType(SegmentedButton<bool>),
      );
      expect(segmented.segments[0].tooltip, 'Paragraph mode');
      expect(segmented.segments[1].tooltip, 'Verse-list mode');

      // Keep explanatory copy to avoid discoverability regression.
      expect(find.text('Verse Format'), findsOneWidget);
      expect(find.text('Choose how scripture text is laid out.'), findsOneWidget);
    });
  });

  // -------------------------------------------------------------------------
  // Theme accent sheet brightness segmented control
  // -------------------------------------------------------------------------

  group('ThemeSelectionScreen brightness icon control', () {
    testWidgets('accent sheet shows icon-first brightness options', (tester) async {
      await tester.pumpWidget(
        const MaterialApp(home: ThemeSelectionScreen()),
      );

      await tester.pumpAndSettle();

      // Open the first theme card. In the current layout this is the
      // Classic White card, which supports theme-mode controls.
      await tester.tap(_findThemeCardByName('Classic White'));
      await tester.pumpAndSettle();

      // The accent sheet should expose icon-first brightness controls.
      expect(find.text('BRIGHTNESS MODE'), findsOneWidget);
      expect(find.byIcon(Icons.light_mode_rounded), findsOneWidget);
      expect(find.byIcon(Icons.brightness_auto_rounded), findsOneWidget);
      expect(find.byIcon(Icons.dark_mode_rounded), findsOneWidget);

      // Brightness segmented options must carry tooltip metadata.
      final segmented = tester.widget<SegmentedButton<ThemeMode>>(
        find.byType(SegmentedButton<ThemeMode>),
      );
      expect(segmented.segments[0].tooltip, 'Light mode');
      expect(segmented.segments[1].tooltip, 'Follow system mode');
      expect(segmented.segments[2].tooltip, 'Dark mode');

      // Ensure icon-first segmented control keeps Material 48dp tap target.
      final minSize = segmented.style?.minimumSize?.resolve(<WidgetState>{});
      expect(minSize?.height, 48);
    });
  });
}

/// Finds a Tooltip widget with an exact message string.
///
/// A helper keeps tooltip matching concise and stable across tests.
Finder _findTooltipMessage(String message) {
  return find.byWidgetPredicate(
    (widget) => widget is Tooltip && widget.message == message,
  );
}

/// Finds a Semantics widget by its configured label text.
Finder _findSemanticsLabel(String label) {
  return find.byWidgetPredicate(
    (widget) => widget is Semantics && widget.properties.label == label,
  );
}

/// Finds a theme card semantics node by theme display name.
Finder _findThemeCardByName(String themeName) {
  return find.byWidgetPredicate(
    (widget) {
      if (widget is! Semantics) return false;
      final label = widget.properties.label;
      return label != null && label.startsWith('$themeName theme');
    },
  );
}
