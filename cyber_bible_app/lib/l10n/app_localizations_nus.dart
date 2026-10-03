// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Nuer (`nus`).
class AppLocalizationsNus extends AppLocalizations {
  AppLocalizationsNus([String locale = 'nus']) : super(locale);

  @override
  String get settingsTitle => 'Käc yi';

  @override
  String get languageSection => 'Thok';

  @override
  String get useSystemLanguage => 'Yiëk thok dit';

  @override
  String get useSystemLanguageSubtitle => 'Yiëk thok apiithni ka thok caŋ.';

  @override
  String get currentLanguage => 'Thok caŋ';

  @override
  String get appLanguage => 'Thok ap';

  @override
  String get chooseLanguage => 'Lëu thok';

  @override
  String get theme => 'Moc';

  @override
  String get appearance => 'Lëŋ';

  @override
  String get textSection => 'Wëu';

  @override
  String get readingFormatSection => 'Lëŋ kuɔth';

  @override
  String get displaySection => 'Lëŋ';

  @override
  String get verseNumbers => 'Nɔŋ wël';

  @override
  String get sectionHeadings => 'Tïŋ kuɔth';

  @override
  String get redLetterText => 'Wël thiëc';

  @override
  String get selectABook => 'Lëu buk';

  @override
  String get traditionalOrder => 'Lëŋ dhiɛl';

  @override
  String get alphabeticalOrder => 'Lëŋ athöör';

  @override
  String get bookmarks => 'Mäth';

  @override
  String get retry => 'Lɔɔŋ kɔɔc';

  @override
  String get chooseTheme => 'Lëu moc';

  @override
  String get customisableThemes => 'Moc kɔɔc';

  @override
  String get customisableThemesSubtitle =>
      'Tɔŋ card ku lëu color. \"Classic White\" kuɔth lëŋ thok, lëŋ kɔc, ku lëŋ dit.';

  @override
  String get setThemes => 'MOC DIT';

  @override
  String get setThemesSubtitle =>
      'Color dit kɔɔc kuɔth. Kɔɔc ke piöc; tɔŋ ku lɔɔŋ.';

  @override
  String get deleteBookmarkQuestion => 'Lɔɔŋ mäth?';

  @override
  String get cancel => 'Cɔɔŋ';

  @override
  String get delete => 'Lɔɔŋ';

  @override
  String get bookmarkSaved => 'Mäth piɔɔc';

  @override
  String get couldNotDeleteBookmark => 'Mäth a lɔɔŋ piɔɔc.';

  @override
  String couldNotNavigate(Object reference) {
    return 'A lɔɔŋ kuɔth $reference.';
  }

  @override
  String get pageNotFound => 'Wël a tɔ̈';

  @override
  String noRouteDefined(Object routeName) {
    return 'Lëŋ a tɔ̈ ke \"$routeName\"';
  }

  @override
  String get english => 'Thok Inglis';

  @override
  String get spanish => 'Thok Español';

  @override
  String get systemDefault => 'Lëŋ dit';

  @override
  String get languageStatusEnglish => 'Thok Inglis a lɔɔŋ kuɔth thok kɔɔc';

  @override
  String get languageStatusSystem => 'Thok dit a lɔɔŋ';

  @override
  String languageStatusSelected(Object languageName) {
    return 'Thok lëu: $languageName';
  }

  @override
  String get themeLabel => 'Moc';

  @override
  String get notFoundTitle => 'Wël a tɔ̈';

  @override
  String get loadingCyberBible => 'Cyber Bible a lɔɔŋ...';

  @override
  String get couldNotOpenDatabase => 'Bäc Bible a tɔ̈. Lɔɔŋ kɔɔc.';

  @override
  String get homeTagline => 'Ap Bible tɔ̈ ku open source piöc Bible';

  @override
  String get readTheBible => 'Kuɔth Bible';

  @override
  String get settingsTooltip => 'Käc yi';

  @override
  String get themeChoose => 'Lëu moc';

  @override
  String get customThemes => 'Moc kɔɔc';

  @override
  String get customThemesSubtitle =>
      'Tɔŋ card ku lëu color. \"Classic White\" kuɔth lëŋ thok, lëŋ kɔc, ku lëŋ dit.';

  @override
  String get setThemesLabel => 'MOC DIT';

  @override
  String get deleteBookmarkDialog => 'Lɔɔŋ mäth?';

  @override
  String removeBookmarkMessage(Object details, Object reference) {
    return 'Lɔɔŋ \"$reference\"$details?\n\nLëŋ a piɔɔc ke lɔɔŋ.';
  }

  @override
  String get couldNotLoadBookmarks => 'Mäth a lɔɔŋ. Lɔɔŋ kɔɔc.';

  @override
  String get bookmarkSavedMessage => 'Mäth piɔɔc';

  @override
  String get couldNotSaveBookmark => 'Mäth a piɔɔc.';

  @override
  String get noBookmarksMatchFilter => 'Mäth a tɔ̈ ke lëŋ.';

  @override
  String get clearFilter => 'Lɔɔŋ lëŋ';

  @override
  String get traditionalOrderLabel => 'Lëŋ dhiɛl';

  @override
  String get alphabeticalOrderLabel => 'Lëŋ athöör';

  @override
  String get bookmarksTabLabel => 'Mäth';

  @override
  String get fullChapter => 'Kuɔth kɔɔc';

  @override
  String get addBookmark => 'Mäth piɔɔc';

  @override
  String get selectVerse => 'Lëu wël';

  @override
  String get labelOptional => 'Tïŋ (a cï piöc)';

  @override
  String get notesOptional => 'Wël (a cï piöc)';

  @override
  String get save => 'Piɔɔc';

  @override
  String get goToVerse => 'Kuɔth wël';

  @override
  String verseTitle(Object verse) {
    return 'Wël $verse';
  }

  @override
  String chapterTitle(Object chapter) {
    return 'Kuɔth $chapter';
  }

  @override
  String get switchToFullChapter => 'Lëu mäth kuɔth kɔɔc';

  @override
  String get bookmarkSheetCancel => 'Cɔɔŋ ku lɔɔŋ mäth';

  @override
  String get pickCustomAccent => 'Lëu color kɔɔc';

  @override
  String get apply => 'Lɔɔŋ';

  @override
  String get custom => 'Kɔɔc';

  @override
  String get brightnessSystem => 'Dit';

  @override
  String get brightnessLight => 'Thok';

  @override
  String get brightnessDark => 'Kɔc';

  @override
  String get selectBook => 'Lëu buk';

  @override
  String get bookmarkFilterAll => 'Kɔɔc';

  @override
  String get bookmarkFilterUnlabeled => 'Tïŋ a tɔ̈';

  @override
  String get bookmarkSortRecent => 'Caŋ kɔɔc';

  @override
  String get bookmarkSortCanonical => 'Lëŋ Bible';

  @override
  String get chapterRetry => 'Lɔɔŋ kɔɔc';

  @override
  String get fontSize => 'Nɔŋ wël';

  @override
  String fontSizePixels(Object size) {
    return '$size px';
  }

  @override
  String get fontSizeSlider => 'Lëŋ nɔŋ wël';

  @override
  String get fontSizeSliderHint => 'Lëŋ 12 ku 28';

  @override
  String get fontPreview =>
      '\"Cak kɔc, Nhialic a cï piny ku piny ciɛŋ.\" — Gen 1:1';

  @override
  String get showVerseNumbersSubtitle => 'A lëŋ nɔŋ wël kuɔth.';

  @override
  String get showSectionHeadingsSubtitle => 'A lëŋ tïŋ kuɔth ku Psalms kuɔth.';

  @override
  String get wordsOfChristSubtitle =>
      'A lëŋ wël Jesus thiëc. Lɔɔŋ ke color wël alɔŋ.';

  @override
  String get verseFormatTitle => 'Lëŋ wël';

  @override
  String get verseFormatSubtitle => 'Lëu lëŋ wël Scripture.';

  @override
  String get paragraphMode => 'Kuɔth';

  @override
  String get verseListMode => 'Mäth wël';

  @override
  String get paragraphModeTooltip => 'Lëŋ kuɔth';

  @override
  String get verseListModeTooltip => 'Lëŋ mäth wël';

  @override
  String get paragraphModeDescription => 'Wël a lɔɔŋ kuɔth ci Bible piɔɔc.';

  @override
  String get verseListModeDescription =>
      'Kuɔth Scripture a cï lɔɔŋ line dit, ku mäth wël a lëŋ.';

  @override
  String get deleteBookmarkTooltip => 'Lɔɔŋ mäth';

  @override
  String deleteBookmarkSemantics(Object reference) {
    return 'Lɔɔŋ mäth $reference';
  }

  @override
  String sortBookmarksTooltip(Object sortOrder) {
    return 'Lëŋ: $sortOrder';
  }

  @override
  String get noBookmarksYet => 'Mäth a tɔ̈.';

  @override
  String get noBookmarksYetHint => 'Tɔŋ mäth icon kuɔth ku piɔɔc lëŋ.';

  @override
  String bookmarkReferenceNavigationError(Object reference) {
    return 'A lɔɔŋ kuɔth $reference.';
  }

  @override
  String themeCardSemantics(Object description, Object name, Object selected) {
    return 'Moc $name$selected. $description';
  }

  @override
  String get selectedThemeSuffix => ', lëu caŋ';

  @override
  String get customisableAccentDescription => 'Color kɔɔc.';

  @override
  String get fixedPaletteDescription => 'Color dit.';

  @override
  String accentColourTitle(Object themeName) {
    return 'Color — $themeName';
  }

  @override
  String get brightnessMode => 'LËŊ THOK';

  @override
  String get lightMode => 'Lëŋ thok';

  @override
  String get followSystemMode => 'Lëŋ dit';

  @override
  String get darkMode => 'Lëŋ kɔc';

  @override
  String get customColourPicker => 'Lëu color kɔɔc';

  @override
  String get customColourTooltip => 'Color kɔɔc...';

  @override
  String get couldNotLoadBooks => 'Buk a lɔɔŋ. Lɔɔŋ kɔɔc.';

  @override
  String chapterLabel(Object chapter) {
    return 'Kuɔth $chapter';
  }

  @override
  String get traditionalOrderBooks => 'Buk lëŋ dhiɛl';

  @override
  String get alphabeticalOrderBooks => 'Buk lëŋ athöör';

  @override
  String get home => 'Wut';

  @override
  String get addBookmarkTooltip => 'Mäth piɔɔc';

  @override
  String get chooseBookChapter => 'Lëu buk kuɔth';

  @override
  String get chooseVerse => 'Lëu wël';

  @override
  String get bookChapterQuickNavigation => 'Kû buk kuɔth';

  @override
  String get verseQuickNavigation => 'Kû wël';

  @override
  String get backToBooks => 'Kû buk';

  @override
  String get selectBookTitle => 'Lëu buk';

  @override
  String selectChapterTitle(Object bookName) {
    return 'Lëu kuɔth ($bookName)';
  }

  @override
  String chapterSelectionLabel(Object chapter) {
    return 'Kuɔth $chapter';
  }

  @override
  String verseSelectionLabel(Object verse) {
    return 'Wël $verse';
  }

  @override
  String fullChapterReference(Object bookName, Object chapter) {
    return 'Kuɔth kɔɔc: $bookName $chapter';
  }

  @override
  String get memorizeHint => 'Piɔɔc';

  @override
  String get addNoteHint => 'Mäth wël...';

  @override
  String get languageSearchHint => 'Lëu thok';

  @override
  String get languageModuleInstalled => 'A piɔɔc';

  @override
  String get languageModulePending => 'Machine translation a lɔɔŋ';

  @override
  String get languageNoMatches => 'Thok a tɔ̈ ke lëŋ.';

  @override
  String get languageCatalogDescription =>
      'Thok a piɔɔc a lɔɔŋ ke internet. Thok kɔɔc a piɔɔc machine module.';

  @override
  String get saveBookmarkSemantics => 'Piɔɔc mäth';

  @override
  String get couldNotLoadChapter => 'Kuɔth a lɔɔŋ. Lɔɔŋ kɔɔc.';

  @override
  String get couldNotLoadChapters => 'Kuɔth a lɔɔŋ. Lɔɔŋ kɔɔc.';

  @override
  String verseWithText(Object text, Object verse) {
    return 'Wël $verse: $text';
  }

  @override
  String accentSwatchSemantics(Object name, Object selected) {
    return 'Color $name$selected';
  }

  @override
  String get oldTestament => 'Covenant caŋ';

  @override
  String get newTestament => 'Covenant nɔŋ';

  @override
  String get deuterocanonApocrypha => 'Deuterocanon / Apocrypha';
}
