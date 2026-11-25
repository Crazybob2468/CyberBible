// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for German (`de`).
class AppLocalizationsDe extends AppLocalizations {
  AppLocalizationsDe([String locale = 'de']) : super(locale);

  @override
  String get settingsTitle => 'Einstellungen';

  @override
  String get languageSection => 'Sprache';

  @override
  String get useSystemLanguage => 'Systemsprache verwenden';

  @override
  String get useSystemLanguageSubtitle =>
      'Standardsprache des Geräts verwenden.';

  @override
  String get currentLanguage => 'Aktuelle Sprache';

  @override
  String get appLanguage => 'App-Sprache';

  @override
  String get chooseLanguage => 'Sprache auswählen';

  @override
  String get theme => 'Design';

  @override
  String get appearance => 'Darstellung';

  @override
  String get textSection => 'Text';

  @override
  String get readingFormatSection => 'Leseformat';

  @override
  String get displaySection => 'Anzeige';

  @override
  String get verseNumbers => 'Versnummern';

  @override
  String get sectionHeadings => 'Abschnittsüberschriften';

  @override
  String get redLetterText => 'Rot markierter Text';

  @override
  String get selectABook => 'Buch auswählen';

  @override
  String get traditionalOrder => 'Traditionelle Reihenfolge';

  @override
  String get alphabeticalOrder => 'Alphabetische Reihenfolge';

  @override
  String get bookmarks => 'Lesezeichen';

  @override
  String get retry => 'Erneut versuchen';

  @override
  String get chooseTheme => 'Design auswählen';

  @override
  String get customisableThemes => 'ANPASSBARE DESIGNS';

  @override
  String get customisableThemesSubtitle =>
      'Tippe auf eine Karte, um eine Akzentfarbe zu wählen. „Classic White“ unterstützt auch Hell-, Dunkel- und Systemmodus.';

  @override
  String get setThemes => 'FESTE DESIGNS';

  @override
  String get setThemesSubtitle =>
      'Feste, handgestaltete Paletten. Keine Anpassung nötig — einfach antippen.';

  @override
  String get deleteBookmarkQuestion => 'Lesezeichen löschen?';

  @override
  String get cancel => 'Abbrechen';

  @override
  String get delete => 'Löschen';

  @override
  String get bookmarkSaved => 'Lesezeichen gespeichert';

  @override
  String get couldNotDeleteBookmark =>
      'Lesezeichen konnte nicht gelöscht werden.';

  @override
  String couldNotNavigate(Object reference) {
    return 'Navigation zu $reference nicht möglich.';
  }

  @override
  String get pageNotFound => 'Seite nicht gefunden';

  @override
  String noRouteDefined(Object routeName) {
    return 'Keine Route für „$routeName“ definiert';
  }

  @override
  String get english => 'Englisch';

  @override
  String get spanish => 'Spanisch';

  @override
  String get systemDefault => 'Systemstandard';

  @override
  String get languageStatusEnglish => 'Englischer Fallback aktiv';

  @override
  String get languageStatusSystem => 'Systemsprache wird verwendet';

  @override
  String languageStatusSelected(Object languageName) {
    return 'Ausgewählte Sprache: $languageName';
  }

  @override
  String get themeLabel => 'Design';

  @override
  String get notFoundTitle => 'Seite nicht gefunden';

  @override
  String get loadingCyberBible => 'Cyber Bible wird geladen ...';

  @override
  String get couldNotOpenDatabase =>
      'Bibel-Datenbank konnte nicht geöffnet werden. Bitte versuche es erneut.';

  @override
  String get homeTagline => 'Eine kostenlose Open-Source-Bibel-App';

  @override
  String get readTheBible => 'Bibel lesen';

  @override
  String get settingsTooltip => 'Einstellungen';

  @override
  String get themeChoose => 'Design auswählen';

  @override
  String get customThemes => 'Anpassbare Designs';

  @override
  String get customThemesSubtitle =>
      'Tippe auf eine Karte, um eine Akzentfarbe zu wählen. „Classic White“ unterstützt auch Hell-, Dunkel- und Systemmodus.';

  @override
  String get setThemesLabel => 'FESTE DESIGNS';

  @override
  String get deleteBookmarkDialog => 'Lesezeichen löschen?';

  @override
  String removeBookmarkMessage(Object details, Object reference) {
    return '„$reference“$details entfernen?\n\nDies kann nicht rückgängig gemacht werden.';
  }

  @override
  String get couldNotLoadBookmarks =>
      'Lesezeichen konnten nicht geladen werden. Bitte versuche es erneut.';

  @override
  String get bookmarkSavedMessage => 'Lesezeichen gespeichert';

  @override
  String get couldNotSaveBookmark =>
      'Lesezeichen konnte nicht gespeichert werden.';

  @override
  String get noBookmarksMatchFilter =>
      'Keine Lesezeichen entsprechen diesem Filter.';

  @override
  String get clearFilter => 'Filter löschen';

  @override
  String get traditionalOrderLabel => 'Traditionelle Reihenfolge';

  @override
  String get alphabeticalOrderLabel => 'Alphabetische Reihenfolge';

  @override
  String get bookmarksTabLabel => 'Lesezeichen';

  @override
  String get fullChapter => 'Ganzes Kapitel';

  @override
  String get addBookmark => 'Lesezeichen hinzufügen';

  @override
  String get selectVerse => 'Vers auswählen';

  @override
  String get labelOptional => 'Bezeichnung (optional)';

  @override
  String get notesOptional => 'Notizen (optional)';

  @override
  String get save => 'Speichern';

  @override
  String get goToVerse => 'Zu Vers gehen';

  @override
  String verseTitle(Object verse) {
    return 'Vers $verse';
  }

  @override
  String chapterTitle(Object chapter) {
    return 'Kapitel $chapter';
  }

  @override
  String get switchToFullChapter =>
      'Zu Lesezeichen für ganzes Kapitel wechseln';

  @override
  String get bookmarkSheetCancel => 'Abbrechen, Lesezeichenfenster schließen';

  @override
  String get pickCustomAccent => 'Benutzerdefinierte Akzentfarbe wählen';

  @override
  String get apply => 'Anwenden';

  @override
  String get custom => 'Benutzerdefiniert';

  @override
  String get brightnessSystem => 'System';

  @override
  String get brightnessLight => 'Hell';

  @override
  String get brightnessDark => 'Dunkel';

  @override
  String get selectBook => 'Buch auswählen';

  @override
  String get bookmarkFilterAll => 'Alle';

  @override
  String get bookmarkFilterUnlabeled => 'Ohne Bezeichnung';

  @override
  String get bookmarkSortRecent => 'Neueste zuerst';

  @override
  String get bookmarkSortCanonical => 'Kanonische Reihenfolge';

  @override
  String get chapterRetry => 'Erneut versuchen';

  @override
  String get fontSize => 'Schriftgröße';

  @override
  String fontSizePixels(Object size) {
    return '$size px';
  }

  @override
  String get fontSizeSlider => 'Schriftgrößenregler';

  @override
  String get fontSizeSliderHint => 'Wischen, um von 12 bis 28 anzupassen';

  @override
  String get fontPreview =>
      '„Im Anfang schuf Gott Himmel und Erde.“ — 1. Mose 1:1';

  @override
  String get showVerseNumbersSubtitle =>
      'Versnummern im Lesebildschirm anzeigen.';

  @override
  String get showSectionHeadingsSubtitle =>
      'Abschnitts- und Psalmüberschriften zwischen Textstellen anzeigen.';

  @override
  String get wordsOfChristSubtitle =>
      'Jesu Worte rot anzeigen. Deaktivieren für eine einheitliche Textfarbe.';

  @override
  String get verseFormatTitle => 'Versformat';

  @override
  String get verseFormatSubtitle =>
      'Wähle, wie der Schrifttext angeordnet wird.';

  @override
  String get paragraphMode => 'Absatz';

  @override
  String get verseListMode => 'Versliste';

  @override
  String get paragraphModeTooltip => 'Absatzmodus';

  @override
  String get verseListModeTooltip => 'Verslistenmodus';

  @override
  String get paragraphModeDescription =>
      'Der Text fließt wie in einer gedruckten Bibel in eingerückten Absätzen.';

  @override
  String get verseListModeDescription =>
      'Jeder Schriftabsatz beginnt in einer eigenen Zeile, damit Versgruppen leicht erkennbar sind.';

  @override
  String get deleteBookmarkTooltip => 'Lesezeichen löschen';

  @override
  String deleteBookmarkSemantics(Object reference) {
    return 'Lesezeichen $reference löschen';
  }

  @override
  String sortBookmarksTooltip(Object sortOrder) {
    return 'Sortieren: $sortOrder';
  }

  @override
  String get noBookmarksYet => 'Noch keine Lesezeichen.';

  @override
  String get noBookmarksYetHint =>
      'Tippe beim Lesen auf das Lesezeichensymbol, um eine Stelle zu speichern.';

  @override
  String bookmarkReferenceNavigationError(Object reference) {
    return 'Navigation zu $reference nicht möglich.';
  }

  @override
  String themeCardSemantics(Object description, Object name, Object selected) {
    return '$name-Design$selected. $description';
  }

  @override
  String get selectedThemeSuffix => ', derzeit ausgewählt';

  @override
  String get customisableAccentDescription => 'Anpassbare Akzentfarbe.';

  @override
  String get fixedPaletteDescription => 'Feste Palette.';

  @override
  String accentColourTitle(Object themeName) {
    return 'Akzentfarbe — $themeName';
  }

  @override
  String get brightnessMode => 'HELLIGKEITSMODUS';

  @override
  String get lightMode => 'Heller Modus';

  @override
  String get followSystemMode => 'Systemmodus folgen';

  @override
  String get darkMode => 'Dunkler Modus';

  @override
  String get customColourPicker => 'Benutzerdefinierte Farbauswahl';

  @override
  String get customColourTooltip => 'Benutzerdefinierte Farbe ...';

  @override
  String get couldNotLoadBooks =>
      'Bücherliste konnte nicht geladen werden. Bitte versuche es erneut.';

  @override
  String chapterLabel(Object chapter) {
    return 'Kapitel $chapter';
  }

  @override
  String get traditionalOrderBooks => 'Bücher in traditioneller Reihenfolge';

  @override
  String get alphabeticalOrderBooks => 'Bücher in alphabetischer Reihenfolge';

  @override
  String get home => 'Startseite';

  @override
  String get addBookmarkTooltip => 'Lesezeichen hinzufügen';

  @override
  String get chooseBookChapter => 'Buch und Kapitel auswählen';

  @override
  String get chooseVerse => 'Vers auswählen';

  @override
  String get bookChapterQuickNavigation =>
      'Schnellnavigation für Buch und Kapitel';

  @override
  String get verseQuickNavigation => 'Schnellnavigation für Verse';

  @override
  String get backToBooks => 'Zurück zu den Büchern';

  @override
  String get selectBookTitle => 'Buch auswählen';

  @override
  String selectChapterTitle(Object bookName) {
    return 'Kapitel auswählen ($bookName)';
  }

  @override
  String chapterSelectionLabel(Object chapter) {
    return 'Kapitel $chapter';
  }

  @override
  String verseSelectionLabel(Object verse) {
    return 'Vers $verse';
  }

  @override
  String fullChapterReference(Object bookName, Object chapter) {
    return 'Ganzes Kapitel: $bookName $chapter';
  }

  @override
  String get memorizeHint => 'Auswendig lernen';

  @override
  String get addNoteHint => 'Notiz hinzufügen ...';

  @override
  String get languageSearchHint => 'Sprachen suchen';

  @override
  String get languageModuleInstalled => 'Installiert';

  @override
  String get languageModulePending => 'Maschinelle Übersetzung ausstehend';

  @override
  String get languageNoMatches => 'Keine passenden Sprachen gefunden.';

  @override
  String get languageCatalogDescription =>
      'Als installiert markierte Sprachen funktionieren offline. Weitere Sprachen werden als maschinell übersetzte Module hinzugefügt.';

  @override
  String get saveBookmarkSemantics => 'Lesezeichen speichern';

  @override
  String get couldNotLoadChapter =>
      'Kapitel konnte nicht geladen werden. Bitte versuche es erneut.';

  @override
  String get couldNotLoadChapters =>
      'Kapitel konnten nicht geladen werden. Bitte versuche es erneut.';

  @override
  String verseWithText(Object text, Object verse) {
    return 'Vers $verse: $text';
  }

  @override
  String accentSwatchSemantics(Object name, Object selected) {
    return 'Akzentfarbe $name$selected';
  }

  @override
  String get oldTestament => 'Altes Testament';

  @override
  String get newTestament => 'Neues Testament';

  @override
  String get deuterocanonApocrypha => 'Deuterokanon / Apokryphen';
}
