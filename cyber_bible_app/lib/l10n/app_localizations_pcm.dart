// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Nigerian Pidgin (`pcm`).
class AppLocalizationsPcm extends AppLocalizations {
  AppLocalizationsPcm([String locale = 'pcm']) : super(locale);

  @override
  String get settingsTitle => 'Settings';

  @override
  String get languageSection => 'Language';

  @override
  String get useSystemLanguage => 'Use device language';

  @override
  String get useSystemLanguageSubtitle =>
      'Use di language wey your device dey use by default.';

  @override
  String get currentLanguage => 'Language wey you dey use';

  @override
  String get appLanguage => 'App language';

  @override
  String get chooseLanguage => 'Choose language';

  @override
  String get theme => 'Theme';

  @override
  String get appearance => 'How e look';

  @override
  String get textSection => 'Text';

  @override
  String get readingFormatSection => 'How text go appear';

  @override
  String get displaySection => 'Display';

  @override
  String get verseNumbers => 'Verse numbers';

  @override
  String get sectionHeadings => 'Section headings';

  @override
  String get redLetterText => 'Words wey dey red';

  @override
  String get selectABook => 'Choose one book';

  @override
  String get traditionalOrder => 'Normal Bible order';

  @override
  String get alphabeticalOrder => 'Alphabet order';

  @override
  String get bookmarks => 'Bookmarks';

  @override
  String get retry => 'Try again';

  @override
  String get chooseTheme => 'Choose theme';

  @override
  String get customisableThemes => 'Themes wey you fit change';

  @override
  String get customisableThemesSubtitle =>
      'Tap one card to choose highlight colour. \"Classic White\" fit also use Light, Dark and System modes.';

  @override
  String get setThemes => 'READY-MADE THEMES';

  @override
  String get setThemesSubtitle =>
      'Na ready-made colour combinations. You no need change dem — just tap to use.';

  @override
  String get deleteBookmarkQuestion => 'Delete bookmark?';

  @override
  String get cancel => 'Cancel';

  @override
  String get delete => 'Delete';

  @override
  String get bookmarkSaved => 'Bookmark don save';

  @override
  String get couldNotDeleteBookmark => 'We no fit delete bookmark.';

  @override
  String couldNotNavigate(Object reference) {
    return 'We no fit go to $reference.';
  }

  @override
  String get pageNotFound => 'We no see di page';

  @override
  String noRouteDefined(Object routeName) {
    return 'No route dey for \"$routeName\"';
  }

  @override
  String get english => 'English';

  @override
  String get spanish => 'Español';

  @override
  String get systemDefault => 'Device default';

  @override
  String get languageStatusEnglish =>
      'English dey show because di language no dey available';

  @override
  String get languageStatusSystem => 'Dey use device language';

  @override
  String languageStatusSelected(Object languageName) {
    return 'Language wey you choose: $languageName';
  }

  @override
  String get themeLabel => 'Theme';

  @override
  String get notFoundTitle => 'We no see di page';

  @override
  String get loadingCyberBible => 'Cyber Bible dey load...';

  @override
  String get couldNotOpenDatabase =>
      'We no fit open di Bible database. Abeg try again.';

  @override
  String get homeTagline =>
      'Free Bible study app wey anybody fit see and use di source code';

  @override
  String get readTheBible => 'Read di Bible';

  @override
  String get settingsTooltip => 'Settings';

  @override
  String get themeChoose => 'Choose theme';

  @override
  String get customThemes => 'Themes wey you fit change';

  @override
  String get customThemesSubtitle =>
      'Tap one card to choose highlight colour. \"Classic White\" fit also use Light, Dark and System modes.';

  @override
  String get setThemesLabel => 'READY-MADE THEMES';

  @override
  String get deleteBookmarkDialog => 'Delete bookmark?';

  @override
  String removeBookmarkMessage(Object details, Object reference) {
    return 'Remove \"$reference\"$details?\n\nYou no fit undo am.';
  }

  @override
  String get couldNotLoadBookmarks =>
      'We no fit load bookmarks. Abeg try again.';

  @override
  String get bookmarkSavedMessage => 'Bookmark don save';

  @override
  String get couldNotSaveBookmark => 'We no fit save bookmark.';

  @override
  String get noBookmarksMatchFilter => 'No bookmark match dis filter.';

  @override
  String get clearFilter => 'Clear filter';

  @override
  String get traditionalOrderLabel => 'Normal Bible order';

  @override
  String get alphabeticalOrderLabel => 'Alphabet order';

  @override
  String get bookmarksTabLabel => 'Bookmarks';

  @override
  String get fullChapter => 'Full chapter';

  @override
  String get addBookmark => 'Add bookmark';

  @override
  String get selectVerse => 'Choose verse';

  @override
  String get labelOptional => 'Label (you fit leave am empty)';

  @override
  String get notesOptional => 'Notes (you fit leave am empty)';

  @override
  String get save => 'Save';

  @override
  String get goToVerse => 'Go to verse';

  @override
  String verseTitle(Object verse) {
    return 'Verse $verse';
  }

  @override
  String chapterTitle(Object chapter) {
    return 'Chapter $chapter';
  }

  @override
  String get switchToFullChapter => 'Change to full chapter bookmark';

  @override
  String get bookmarkSheetCancel => 'Cancel, close bookmark panel';

  @override
  String get pickCustomAccent => 'Choose your own highlight colour';

  @override
  String get apply => 'Use am';

  @override
  String get custom => 'Your choice';

  @override
  String get brightnessSystem => 'Device setting';

  @override
  String get brightnessLight => 'Light';

  @override
  String get brightnessDark => 'Dark';

  @override
  String get selectBook => 'Choose one book';

  @override
  String get bookmarkFilterAll => 'All';

  @override
  String get bookmarkFilterUnlabeled => 'No label';

  @override
  String get bookmarkSortRecent => 'Newest first';

  @override
  String get bookmarkSortCanonical => 'Bible book order';

  @override
  String get chapterRetry => 'Try again';

  @override
  String get fontSize => 'Text size';

  @override
  String fontSizePixels(Object size) {
    return '$size px';
  }

  @override
  String get fontSizeSlider => 'Slider for text size';

  @override
  String get fontSizeSliderHint => 'Swipe to change am from 12 to 28';

  @override
  String get fontPreview =>
      '\"For beginning, God create heaven and earth.\" — Gen 1:1';

  @override
  String get showVerseNumbersSubtitle =>
      'Show small verse numbers above di text for reading screen.';

  @override
  String get showSectionHeadingsSubtitle =>
      'Show section and Psalm headings between passages.';

  @override
  String get wordsOfChristSubtitle =>
      'Show Jesus words for red. Turn am off to use one text colour.';

  @override
  String get verseFormatTitle => 'How verses go appear';

  @override
  String get verseFormatSubtitle => 'Choose how Bible text go appear.';

  @override
  String get paragraphMode => 'Paragraph';

  @override
  String get verseListMode => 'Verse list';

  @override
  String get paragraphModeTooltip => 'Paragraph display';

  @override
  String get verseListModeTooltip => 'Verse-list display';

  @override
  String get paragraphModeDescription =>
      'Text dey flow together, with space for di beginning of each paragraph, like printed Bible.';

  @override
  String get verseListModeDescription =>
      'Each Bible paragraph dey start for new line, so e easy to see verse groups.';

  @override
  String get deleteBookmarkTooltip => 'Delete bookmark';

  @override
  String deleteBookmarkSemantics(Object reference) {
    return 'Delete bookmark $reference';
  }

  @override
  String sortBookmarksTooltip(Object sortOrder) {
    return 'Arrange: $sortOrder';
  }

  @override
  String get noBookmarksYet => 'You never save any bookmark.';

  @override
  String get noBookmarksYetHint =>
      'Tap di bookmark icon when you dey read to save where you stop.';

  @override
  String bookmarkReferenceNavigationError(Object reference) {
    return 'We no fit go to $reference.';
  }

  @override
  String themeCardSemantics(Object description, Object name, Object selected) {
    return '$name theme$selected. $description';
  }

  @override
  String get selectedThemeSuffix => ', na dis one you choose now';

  @override
  String get customisableAccentDescription =>
      'Highlight colour wey you fit change.';

  @override
  String get fixedPaletteDescription => 'Colour combination wey no dey change.';

  @override
  String accentColourTitle(Object themeName) {
    return 'Highlight colour — $themeName';
  }

  @override
  String get brightnessMode => 'LIGHT OR DARK MODE';

  @override
  String get lightMode => 'Light mode';

  @override
  String get followSystemMode => 'Follow device setting';

  @override
  String get darkMode => 'Dark mode';

  @override
  String get customColourPicker => 'Choose your own colour';

  @override
  String get customColourTooltip => 'Choose your own colour…';

  @override
  String get couldNotLoadBooks =>
      'We no fit load di book list. Abeg try again.';

  @override
  String chapterLabel(Object chapter) {
    return 'Chapter $chapter';
  }

  @override
  String get traditionalOrderBooks => 'Books for normal Bible order';

  @override
  String get alphabeticalOrderBooks => 'Books for alphabet order';

  @override
  String get home => 'Home';

  @override
  String get addBookmarkTooltip => 'Add bookmark';

  @override
  String get chooseBookChapter => 'Choose book and chapter';

  @override
  String get chooseVerse => 'Choose verse';

  @override
  String get bookChapterQuickNavigation => 'Quick way to find book and chapter';

  @override
  String get verseQuickNavigation => 'Quick way to find verse';

  @override
  String get backToBooks => 'Go back to books';

  @override
  String get selectBookTitle => 'Choose book';

  @override
  String selectChapterTitle(Object bookName) {
    return 'Choose chapter ($bookName)';
  }

  @override
  String chapterSelectionLabel(Object chapter) {
    return 'Chapter $chapter';
  }

  @override
  String verseSelectionLabel(Object verse) {
    return 'Verse $verse';
  }

  @override
  String fullChapterReference(Object bookName, Object chapter) {
    return 'Full chapter: $bookName $chapter';
  }

  @override
  String get memorizeHint => 'Learn am by heart';

  @override
  String get addNoteHint => 'Add note...';

  @override
  String get languageSearchHint => 'Search for language';

  @override
  String get languageModuleInstalled => 'Don install';

  @override
  String get languageModulePending => 'Machine translation never ready';

  @override
  String get languageNoMatches => 'No language match wetin you search.';

  @override
  String get languageCatalogDescription =>
      'Languages wey show as installed fit work without internet. Other languages go come later as machine-translated modules.';

  @override
  String get saveBookmarkSemantics => 'Save bookmark';

  @override
  String get couldNotLoadChapter =>
      'We no fit load di chapter. Abeg try again.';

  @override
  String get couldNotLoadChapters => 'We no fit load chapters. Abeg try again.';

  @override
  String verseWithText(Object text, Object verse) {
    return 'Verse $verse: $text';
  }

  @override
  String accentSwatchSemantics(Object name, Object selected) {
    return '$name highlight colour$selected';
  }

  @override
  String get oldTestament => 'Old Testament';

  @override
  String get newTestament => 'New Testament';

  @override
  String get deuterocanonApocrypha => 'Deuterocanon / Apocrypha';
}
