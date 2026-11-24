// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Manipuri (`mni`).
class AppLocalizationsMni extends AppLocalizations {
  AppLocalizationsMni([String locale = 'mni']) : super(locale);

  @override
  String get settingsTitle => 'সেটিংস';

  @override
  String get languageSection => 'ভাষা';

  @override
  String get useSystemLanguage => 'সিস্টেমের ভাষা ব্যবহার করুন';

  @override
  String get useSystemLanguageSubtitle =>
      'ডিভাইসের ভাষা ডিফল্ট হিসেবে ব্যবহার করুন।';

  @override
  String get currentLanguage => 'বর্তমান ভাষা';

  @override
  String get appLanguage => 'অ্যাপের ভাষা';

  @override
  String get chooseLanguage => 'ভাষা বেছে নিন';

  @override
  String get theme => 'থিম';

  @override
  String get appearance => 'চেহারা';

  @override
  String get textSection => 'পাঠ';

  @override
  String get readingFormatSection => 'পঠন বিন্যাস';

  @override
  String get displaySection => 'প্রদর্শন';

  @override
  String get verseNumbers => 'পদ সংখ্যা';

  @override
  String get sectionHeadings => 'বিভাগের শিরোনাম';

  @override
  String get redLetterText => 'লাল অক্ষরের পাঠ';

  @override
  String get selectABook => 'একটি বই বেছে নিন';

  @override
  String get traditionalOrder => 'প্রথাগত ক্রম';

  @override
  String get alphabeticalOrder => 'বর্ণানুক্রম';

  @override
  String get bookmarks => 'বুকমার্ক';

  @override
  String get retry => 'আবার চেষ্টা করুন';

  @override
  String get chooseTheme => 'থিম বেছে নিন';

  @override
  String get customisableThemes => 'কাস্টমাইজযোগ্য থিম';

  @override
  String get customisableThemesSubtitle =>
      'Tap a card to choose an accent colour. \"Classic White\" also supports Light, Dark and System modes.';

  @override
  String get setThemes => 'থিম প্রয়োগ করুন';

  @override
  String get setThemesSubtitle =>
      'Fixed, hand-crafted palettes. No customisation needed — just tap to apply.';

  @override
  String get deleteBookmarkQuestion => 'বুকমার্ক মুছবেন?';

  @override
  String get cancel => 'বাতিল';

  @override
  String get delete => 'মুছুন';

  @override
  String get bookmarkSaved => 'বুকমার্ক সংরক্ষিত';

  @override
  String get couldNotDeleteBookmark => 'বুকমার্ক মুছে ফেলা যায়নি।';

  @override
  String couldNotNavigate(Object reference) {
    return 'Could not navigate to $reference.';
  }

  @override
  String get pageNotFound => 'পৃষ্ঠা পাওয়া যায়নি';

  @override
  String noRouteDefined(Object routeName) {
    return 'No route defined for \"$routeName\"';
  }

  @override
  String get english => 'ইংরেজি';

  @override
  String get spanish => 'স্প্যানিশ';

  @override
  String get systemDefault => 'সিস্টেম ডিফল্ট';

  @override
  String get languageStatusEnglish => 'English fallback active';

  @override
  String get languageStatusSystem => 'সিস্টেম ভাষা ব্যবহৃত হচ্ছে';

  @override
  String languageStatusSelected(Object languageName) {
    return 'নির্বাচিত ভাষা: $languageName';
  }

  @override
  String get themeLabel => 'থিম';

  @override
  String get notFoundTitle => 'পৃষ্ঠা পাওয়া যায়নি';

  @override
  String get loadingCyberBible => 'Loading Cyber Bible...';

  @override
  String get couldNotOpenDatabase =>
      'Could not open the Bible database. Please try again.';

  @override
  String get homeTagline => 'A free and open source Bible study app';

  @override
  String get readTheBible => 'বাইবেল পড়ুন';

  @override
  String get settingsTooltip => 'সেটিংস';

  @override
  String get themeChoose => 'থিম বেছে নিন';

  @override
  String get customThemes => 'কাস্টম থিম';

  @override
  String get customThemesSubtitle =>
      'Tap a card to choose an accent colour. \"Classic White\" also supports Light, Dark and System modes.';

  @override
  String get setThemesLabel => 'থিম প্রয়োগ করুন';

  @override
  String get deleteBookmarkDialog => 'বুকমার্ক মুছবেন?';

  @override
  String removeBookmarkMessage(Object details, Object reference) {
    return 'Remove \"$reference\"$details?\n\nThis cannot be undone.';
  }

  @override
  String get couldNotLoadBookmarks =>
      'Could not load bookmarks. Please try again.';

  @override
  String get bookmarkSavedMessage => 'বুকমার্ক সংরক্ষিত';

  @override
  String get couldNotSaveBookmark => 'বুকমার্ক সংরক্ষণ করা যায়নি।';

  @override
  String get noBookmarksMatchFilter => 'No bookmarks match this filter.';

  @override
  String get clearFilter => 'ফিল্টার সরান';

  @override
  String get traditionalOrderLabel => 'প্রথাগত ক্রম';

  @override
  String get alphabeticalOrderLabel => 'বর্ণানুক্রম';

  @override
  String get bookmarksTabLabel => 'বুকমার্ক';

  @override
  String get fullChapter => 'সম্পূর্ণ অধ্যায়';

  @override
  String get addBookmark => 'বুকমার্ক যোগ করুন';

  @override
  String get selectVerse => 'পদ বেছে নিন';

  @override
  String get labelOptional => 'Label (optional)';

  @override
  String get notesOptional => 'Notes (optional)';

  @override
  String get save => 'সংরক্ষণ';

  @override
  String get goToVerse => 'পদে যান';

  @override
  String verseTitle(Object verse) {
    return 'পদ $verse';
  }

  @override
  String chapterTitle(Object chapter) {
    return 'অধ্যায় $chapter';
  }

  @override
  String get switchToFullChapter => 'সম্পূর্ণ অধ্যায়ে যান';

  @override
  String get bookmarkSheetCancel => 'বাতিল';

  @override
  String get pickCustomAccent => 'Choose a custom accent';

  @override
  String get apply => 'প্রয়োগ';

  @override
  String get custom => 'নিজের মতো';

  @override
  String get brightnessSystem => 'সিস্টেম';

  @override
  String get brightnessLight => 'হালকা';

  @override
  String get brightnessDark => 'গাঢ়';

  @override
  String get selectBook => 'বই বেছে নিন';

  @override
  String get bookmarkFilterAll => 'সব';

  @override
  String get bookmarkFilterUnlabeled => 'নামহীন';

  @override
  String get bookmarkSortRecent => 'সাম্প্রতিক';

  @override
  String get bookmarkSortCanonical => 'বাইবেল ক্রম';

  @override
  String get chapterRetry => 'আবার চেষ্টা করুন';

  @override
  String get fontSize => 'অক্ষরের আকার';

  @override
  String fontSizePixels(Object size) {
    return '$size px';
  }

  @override
  String get fontSizeSlider => 'অক্ষরের আকার';

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
  String get paragraphMode => 'অনুচ্ছেদ মোড';

  @override
  String get verseListMode => 'পদ তালিকা মোড';

  @override
  String get paragraphModeTooltip => 'অনুচ্ছেদ মোড বেছে নিন';

  @override
  String get verseListModeTooltip => 'পদ তালিকা মোড বেছে নিন';

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
  String get noBookmarksYet => 'এখনও কোনো বুকমার্ক নেই।';

  @override
  String get noBookmarksYetHint => 'পড়ার সময় বুকমার্ক যোগ করুন।';

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
  String get lightMode => 'হালকা';

  @override
  String get followSystemMode => 'সিস্টেম অনুযায়ী';

  @override
  String get darkMode => 'গাঢ়';

  @override
  String get customColourPicker => 'Custom colour picker';

  @override
  String get customColourTooltip => 'Custom color…';

  @override
  String get couldNotLoadBooks => 'বই লোড করা যায়নি।';

  @override
  String chapterLabel(Object chapter) {
    return 'অধ্যায় $chapter';
  }

  @override
  String get traditionalOrderBooks => 'প্রথাগত ক্রম';

  @override
  String get alphabeticalOrderBooks => 'বর্ণানুক্রম';

  @override
  String get home => 'হোম';

  @override
  String get addBookmarkTooltip => 'বুকমার্ক যোগ করুন';

  @override
  String get chooseBookChapter => 'বই ও অধ্যায় বেছে নিন';

  @override
  String get chooseVerse => 'পদ বেছে নিন';

  @override
  String get bookChapterQuickNavigation => 'Book and chapter quick navigation';

  @override
  String get verseQuickNavigation => 'Verse quick navigation';

  @override
  String get backToBooks => 'বইয়ে ফিরুন';

  @override
  String get selectBookTitle => 'বই বেছে নিন';

  @override
  String selectChapterTitle(Object bookName) {
    return '$bookName-এর অধ্যায় বেছে নিন';
  }

  @override
  String chapterSelectionLabel(Object chapter) {
    return 'অধ্যায় $chapter';
  }

  @override
  String verseSelectionLabel(Object verse) {
    return 'পদ $verse';
  }

  @override
  String fullChapterReference(Object bookName, Object chapter) {
    return 'সম্পূর্ণ অধ্যায়: $bookName $chapter';
  }

  @override
  String get memorizeHint => 'Memorize';

  @override
  String get addNoteHint => 'Add a note...';

  @override
  String get languageSearchHint => 'ভাষা খুঁজুন';

  @override
  String get languageModuleInstalled => 'ভাষা মডিউল ইনস্টল করা হয়েছে';

  @override
  String get languageModulePending => 'ভাষা মডিউল নেই';

  @override
  String get languageNoMatches => 'কোনো মিল পাওয়া যায়নি।';

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
  String get oldTestament => 'পুরাতন নিয়ম';

  @override
  String get newTestament => 'নতুন নিয়ম';

  @override
  String get deuterocanonApocrypha => 'দ্বিতীয়কানন / অ্যাপোক্রিফা';
}
