// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Kalaallisut Greenlandic (`kl`).
class AppLocalizationsKl extends AppLocalizations {
  AppLocalizationsKl([String locale = 'kl']) : super(locale);

  @override
  String get settingsTitle => 'Indstillinger';

  @override
  String get languageSection => 'Sprog';

  @override
  String get useSystemLanguage => 'Brug systemsprog';

  @override
  String get useSystemLanguageSubtitle => 'Match enhedens sprog som standard.';

  @override
  String get currentLanguage => 'Nuværende sprog';

  @override
  String get appLanguage => 'Appsprog';

  @override
  String get chooseLanguage => 'Vælg sprog';

  @override
  String get theme => 'Tema';

  @override
  String get appearance => 'Udseende';

  @override
  String get textSection => 'Tekst';

  @override
  String get readingFormatSection => 'Læseformat';

  @override
  String get displaySection => 'Visning';

  @override
  String get verseNumbers => 'Versnumre';

  @override
  String get sectionHeadings => 'Afsnitsoverskrifter';

  @override
  String get redLetterText => 'Rød skrift';

  @override
  String get selectABook => 'Vælg en bog';

  @override
  String get traditionalOrder => 'Traditionel rækkefølge';

  @override
  String get alphabeticalOrder => 'Alfabetisk rækkefølge';

  @override
  String get bookmarks => 'Bogmærker';

  @override
  String get retry => 'Prøv igen';

  @override
  String get chooseTheme => 'Vælg tema';

  @override
  String get customisableThemes => 'Tilpasselige temaer';

  @override
  String get customisableThemesSubtitle =>
      'Tap a card to choose an accent colour. \"Classic White\" also supports Light, Dark and System modes.';

  @override
  String get setThemes => 'ANGIV TEMAER';

  @override
  String get setThemesSubtitle =>
      'Fixed, hand-crafted palettes. No customisation needed — just tap to apply.';

  @override
  String get deleteBookmarkQuestion => 'Slet bogmærke?';

  @override
  String get cancel => 'Annuller';

  @override
  String get delete => 'Slet';

  @override
  String get bookmarkSaved => 'Bogmærke gemt';

  @override
  String get couldNotDeleteBookmark => 'Bogmærket kunne ikke slettes.';

  @override
  String couldNotNavigate(Object reference) {
    return 'Could not navigate to $reference.';
  }

  @override
  String get pageNotFound => 'Side ikke fundet';

  @override
  String noRouteDefined(Object routeName) {
    return 'No route defined for \"$routeName\"';
  }

  @override
  String get english => 'Engelsk';

  @override
  String get spanish => 'Spansk';

  @override
  String get systemDefault => 'Systemstandard';

  @override
  String get languageStatusEnglish => 'English fallback active';

  @override
  String get languageStatusSystem => 'Bruger systemsprog';

  @override
  String languageStatusSelected(Object languageName) {
    return 'Valgt sprog: $languageName';
  }

  @override
  String get themeLabel => 'Tema';

  @override
  String get notFoundTitle => 'Side ikke fundet';

  @override
  String get loadingCyberBible => 'Loading Cyber Bible...';

  @override
  String get couldNotOpenDatabase =>
      'Could not open the Bible database. Please try again.';

  @override
  String get homeTagline => 'A free and open source Bible study app';

  @override
  String get readTheBible => 'Læs Bibelen';

  @override
  String get settingsTooltip => 'Indstillinger';

  @override
  String get themeChoose => 'Vælg tema';

  @override
  String get customThemes => 'Brugerdefinerede temaer';

  @override
  String get customThemesSubtitle =>
      'Tap a card to choose an accent colour. \"Classic White\" also supports Light, Dark and System modes.';

  @override
  String get setThemesLabel => 'ANGIV TEMAER';

  @override
  String get deleteBookmarkDialog => 'Slet bogmærke?';

  @override
  String removeBookmarkMessage(Object details, Object reference) {
    return 'Remove \"$reference\"$details?\n\nThis cannot be undone.';
  }

  @override
  String get couldNotLoadBookmarks =>
      'Could not load bookmarks. Please try again.';

  @override
  String get bookmarkSavedMessage => 'Bogmærke gemt';

  @override
  String get couldNotSaveBookmark => 'Bogmærket kunne ikke gemmes.';

  @override
  String get noBookmarksMatchFilter => 'No bookmarks match this filter.';

  @override
  String get clearFilter => 'Ryd filter';

  @override
  String get traditionalOrderLabel => 'Traditionel rækkefølge';

  @override
  String get alphabeticalOrderLabel => 'Alfabetisk rækkefølge';

  @override
  String get bookmarksTabLabel => 'Bogmærker';

  @override
  String get fullChapter => 'Hele kapitlet';

  @override
  String get addBookmark => 'Tilføj bogmærke';

  @override
  String get selectVerse => 'Vælg vers';

  @override
  String get labelOptional => 'Label (optional)';

  @override
  String get notesOptional => 'Notes (optional)';

  @override
  String get save => 'Gem';

  @override
  String get goToVerse => 'Gå til vers';

  @override
  String verseTitle(Object verse) {
    return 'Vers $verse';
  }

  @override
  String chapterTitle(Object chapter) {
    return 'Kapitel $chapter';
  }

  @override
  String get switchToFullChapter => 'Skift til hele kapitlet';

  @override
  String get bookmarkSheetCancel => 'Annuller';

  @override
  String get pickCustomAccent => 'Choose a custom accent';

  @override
  String get apply => 'Anvend';

  @override
  String get custom => 'Tilpasset';

  @override
  String get brightnessSystem => 'System';

  @override
  String get brightnessLight => 'Lyst';

  @override
  String get brightnessDark => 'Mørkt';

  @override
  String get selectBook => 'Vælg bog';

  @override
  String get bookmarkFilterAll => 'Alle';

  @override
  String get bookmarkFilterUnlabeled => 'Uden navn';

  @override
  String get bookmarkSortRecent => 'Nyeste';

  @override
  String get bookmarkSortCanonical => 'Bibelsk rækkefølge';

  @override
  String get chapterRetry => 'Prøv igen';

  @override
  String get fontSize => 'Tekststørrelse';

  @override
  String fontSizePixels(Object size) {
    return '$size px';
  }

  @override
  String get fontSizeSlider => 'Tekststørrelse';

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
  String get paragraphMode => 'Afsnitstilstand';

  @override
  String get verseListMode => 'Verslistetilstand';

  @override
  String get paragraphModeTooltip => 'Vælg afsnitstilstand';

  @override
  String get verseListModeTooltip => 'Vælg verslistetilstand';

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
  String get noBookmarksYet => 'Der er endnu ingen bogmærker.';

  @override
  String get noBookmarksYetHint => 'Tilføj et bogmærke under læsningen.';

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
  String get lightMode => 'Lyst';

  @override
  String get followSystemMode => 'Følg system';

  @override
  String get darkMode => 'Mørkt';

  @override
  String get customColourPicker => 'Custom colour picker';

  @override
  String get customColourTooltip => 'Custom color…';

  @override
  String get couldNotLoadBooks => 'Kunne ikke indlæse bøger.';

  @override
  String chapterLabel(Object chapter) {
    return 'Kapitel $chapter';
  }

  @override
  String get traditionalOrderBooks => 'Traditionel rækkefølge';

  @override
  String get alphabeticalOrderBooks => 'Alfabetisk rækkefølge';

  @override
  String get home => 'Hjem';

  @override
  String get addBookmarkTooltip => 'Tilføj bogmærke';

  @override
  String get chooseBookChapter => 'Vælg bog og kapitel';

  @override
  String get chooseVerse => 'Vælg vers';

  @override
  String get bookChapterQuickNavigation => 'Book and chapter quick navigation';

  @override
  String get verseQuickNavigation => 'Verse quick navigation';

  @override
  String get backToBooks => 'Tilbage til bøger';

  @override
  String get selectBookTitle => 'Vælg bog';

  @override
  String selectChapterTitle(Object bookName) {
    return 'Vælg kapitel i $bookName';
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
    return 'Hele kapitlet: $bookName $chapter';
  }

  @override
  String get memorizeHint => 'Memorize';

  @override
  String get addNoteHint => 'Add a note...';

  @override
  String get languageSearchHint => 'Søg efter sprog';

  @override
  String get languageModuleInstalled => 'Sprogmodul installeret';

  @override
  String get languageModulePending => 'Sprogmodul mangler';

  @override
  String get languageNoMatches => 'Ingen matchende sprog.';

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
  String get oldTestament => 'Det Gamle Testamente';

  @override
  String get newTestament => 'Det Nye Testamente';

  @override
  String get deuterocanonApocrypha => 'Deuterokanoniske bøger / Apokryfer';

  @override
  String footnoteTitle(Object caller) {
    return 'Footnote $caller';
  }

  @override
  String get closeFootnote => 'Close footnote';

  @override
  String couldNotOpenFootnote(Object reference) {
    return 'Could not open footnote $reference.';
  }

  @override
  String get chapterFootnotesTitle => 'Footnotes';

  @override
  String openScriptureReference(Object reference) {
    return 'Open $reference';
  }

  @override
  String get couldNotLoadFootnotes =>
      'Could not load footnotes. Please try again.';
}
