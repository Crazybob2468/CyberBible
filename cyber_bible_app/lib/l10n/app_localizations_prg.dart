// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Prussian (`prg`).
class AppLocalizationsPrg extends AppLocalizations {
  AppLocalizationsPrg([String locale = 'prg']) : super(locale);

  @override
  String get settingsTitle => 'Einstellungen';

  @override
  String get languageSection => 'Sprache';

  @override
  String get useSystemLanguage => 'Systemsprache verwenden';

  @override
  String get useSystemLanguageSubtitle =>
      'Standardmäßig die Gerätesprache verwenden.';

  @override
  String get currentLanguage => 'Aktuelle Sprache';

  @override
  String get appLanguage => 'App-Sprache';

  @override
  String get chooseLanguage => 'Sprache wählen';

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
  String get redLetterText => 'Rotbuchstabiger Text';

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
  String get customisableThemes => 'Anpassbare Designs';

  @override
  String get customisableThemesSubtitle =>
      'Tap a card to choose an accent colour. \"Classic White\" also supports Light, Dark and System modes.';

  @override
  String get setThemes => 'DESIGNS EINSTELLEN';

  @override
  String get setThemesSubtitle =>
      'Fixed, hand-crafted palettes. No customisation needed — just tap to apply.';

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
    return 'Could not navigate to $reference.';
  }

  @override
  String get pageNotFound => 'Seite nicht gefunden';

  @override
  String noRouteDefined(Object routeName) {
    return 'No route defined for \"$routeName\"';
  }

  @override
  String get english => 'Englisch';

  @override
  String get spanish => 'Spanisch';

  @override
  String get systemDefault => 'Systemstandard';

  @override
  String get languageStatusEnglish => 'English fallback active';

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
  String get loadingCyberBible => 'Loading Cyber Bible...';

  @override
  String get couldNotOpenDatabase =>
      'Could not open the Bible database. Please try again.';

  @override
  String get homeTagline => 'A free and open source Bible study app';

  @override
  String get readTheBible => 'Die Bibel lesen';

  @override
  String get settingsTooltip => 'Einstellungen';

  @override
  String get themeChoose => 'Design auswählen';

  @override
  String get customThemes => 'Eigene Designs';

  @override
  String get customThemesSubtitle =>
      'Tap a card to choose an accent colour. \"Classic White\" also supports Light, Dark and System modes.';

  @override
  String get setThemesLabel => 'DESIGNS EINSTELLEN';

  @override
  String get deleteBookmarkDialog => 'Lesezeichen löschen?';

  @override
  String removeBookmarkMessage(Object details, Object reference) {
    return 'Remove \"$reference\"$details?\n\nThis cannot be undone.';
  }

  @override
  String get couldNotLoadBookmarks =>
      'Could not load bookmarks. Please try again.';

  @override
  String get bookmarkSavedMessage => 'Lesezeichen gespeichert';

  @override
  String get couldNotSaveBookmark =>
      'Lesezeichen konnte nicht gespeichert werden.';

  @override
  String get noBookmarksMatchFilter => 'No bookmarks match this filter.';

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
  String get labelOptional => 'Label (optional)';

  @override
  String get notesOptional => 'Notes (optional)';

  @override
  String get save => 'Speichern';

  @override
  String get goToVerse => 'Zum Vers gehen';

  @override
  String verseTitle(Object verse) {
    return 'Vers $verse';
  }

  @override
  String chapterTitle(Object chapter) {
    return 'Kapitel $chapter';
  }

  @override
  String get switchToFullChapter => 'Zum ganzen Kapitel wechseln';

  @override
  String get bookmarkSheetCancel => 'Abbrechen';

  @override
  String get pickCustomAccent => 'Choose a custom accent';

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
  String get bookmarkFilterUnlabeled => 'Ohne Name';

  @override
  String get bookmarkSortRecent => 'Neueste';

  @override
  String get bookmarkSortCanonical => 'Biblische Reihenfolge';

  @override
  String get chapterRetry => 'Erneut versuchen';

  @override
  String get fontSize => 'Schriftgröße';

  @override
  String fontSizePixels(Object size) {
    return '$size px';
  }

  @override
  String get fontSizeSlider => 'Schriftgröße';

  @override
  String get fontSizeSliderHint => 'Swipe to adjust from 12 to 28';

  @override
  String get fontPreview =>
      '\"In the beginning God created the heavens and the earth.\" — Gen 1:1';

  @override
  String get showVerseNumbersSubtitle =>
      'Show verse number superscripts in the reading screen.';

  @override
  String get showSectionHeadingsSubtitle =>
      'Show section and Psalm headings between passages.';

  @override
  String get wordsOfChristSubtitle =>
      'Show Jesus\' words in red. Disable for a single text color.';

  @override
  String get verseFormatTitle => 'Verse Format';

  @override
  String get verseFormatSubtitle => 'Choose how scripture text is laid out.';

  @override
  String get paragraphMode => 'Absatzmodus';

  @override
  String get verseListMode => 'Verslistenmodus';

  @override
  String get paragraphModeTooltip => 'Absatzmodus wählen';

  @override
  String get verseListModeTooltip => 'Verslistenmodus wählen';

  @override
  String get paragraphModeDescription =>
      'Text flows continuously with indented paragraphs, like a printed Bible.';

  @override
  String get verseListModeDescription =>
      'Each scripture paragraph begins on its own line, making verse groups easy to spot.';

  @override
  String get deleteBookmarkTooltip => 'Delete bookmark';

  @override
  String deleteBookmarkSemantics(Object reference) {
    return 'Delete bookmark $reference';
  }

  @override
  String sortBookmarksTooltip(Object sortOrder) {
    return 'Sort: $sortOrder';
  }

  @override
  String get noBookmarksYet => 'Noch keine Lesezeichen.';

  @override
  String get noBookmarksYetHint => 'Beim Lesen ein Lesezeichen hinzufügen.';

  @override
  String bookmarkReferenceNavigationError(Object reference) {
    return 'Could not navigate to $reference.';
  }

  @override
  String themeCardSemantics(Object description, Object name, Object selected) {
    return '$name theme$selected. $description';
  }

  @override
  String get selectedThemeSuffix => ', currently selected';

  @override
  String get customisableAccentDescription => 'Customisable accent colour.';

  @override
  String get fixedPaletteDescription => 'Fixed palette.';

  @override
  String accentColourTitle(Object themeName) {
    return 'Accent Colour — $themeName';
  }

  @override
  String get brightnessMode => 'BRIGHTNESS MODE';

  @override
  String get lightMode => 'Hell';

  @override
  String get followSystemMode => 'System folgen';

  @override
  String get darkMode => 'Dunkel';

  @override
  String get customColourPicker => 'Custom colour picker';

  @override
  String get customColourTooltip => 'Custom color…';

  @override
  String get couldNotLoadBooks => 'Bücher konnten nicht geladen werden.';

  @override
  String chapterLabel(Object chapter) {
    return 'Kapitel $chapter';
  }

  @override
  String get traditionalOrderBooks => 'Traditionelle Reihenfolge';

  @override
  String get alphabeticalOrderBooks => 'Alphabetische Reihenfolge';

  @override
  String get home => 'Start';

  @override
  String get addBookmarkTooltip => 'Lesezeichen hinzufügen';

  @override
  String get chooseBookChapter => 'Buch und Kapitel wählen';

  @override
  String get chooseVerse => 'Vers wählen';

  @override
  String get bookChapterQuickNavigation => 'Book and chapter quick navigation';

  @override
  String get verseQuickNavigation => 'Verse quick navigation';

  @override
  String get backToBooks => 'Zurück zu den Büchern';

  @override
  String get selectBookTitle => 'Buch auswählen';

  @override
  String selectChapterTitle(Object bookName) {
    return 'Kapitel von $bookName auswählen';
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
  String get memorizeHint => 'Memorize';

  @override
  String get addNoteHint => 'Add a note...';

  @override
  String get languageSearchHint => 'Sprache suchen';

  @override
  String get languageModuleInstalled => 'Sprachmodul installiert';

  @override
  String get languageModulePending => 'Sprachmodul nicht installiert';

  @override
  String get languageNoMatches => 'Keine passende Sprache gefunden.';

  @override
  String get languageCatalogDescription =>
      'Languages marked as installed work offline. Other languages will be added as machine-translated modules.';

  @override
  String get saveBookmarkSemantics => 'Save bookmark';

  @override
  String get couldNotLoadChapter =>
      'Could not load the chapter. Please try again.';

  @override
  String get couldNotLoadChapters =>
      'Could not load chapters. Please try again.';

  @override
  String verseWithText(Object text, Object verse) {
    return 'Verse $verse: $text';
  }

  @override
  String accentSwatchSemantics(Object name, Object selected) {
    return '$name accent colour$selected';
  }

  @override
  String get oldTestament => 'Altes Testament';

  @override
  String get newTestament => 'Neues Testament';

  @override
  String get deuterocanonApocrypha => 'Deuterokanon / Apokryphen';
}
