// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Bengali Bangla (`bn`).
class AppLocalizationsBn extends AppLocalizations {
  AppLocalizationsBn([String locale = 'bn']) : super(locale);

  @override
  String get settingsTitle => 'সেটিংস';

  @override
  String get languageSection => 'ভাষা';

  @override
  String get useSystemLanguage => 'সিস্টেমের ভাষা ব্যবহার করুন';

  @override
  String get useSystemLanguageSubtitle =>
      'ডিভাইসের ভাষার সঙ্গে স্বয়ংক্রিয়ভাবে মিলবে।';

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
  String get textSection => 'লেখা';

  @override
  String get readingFormatSection => 'পাঠের বিন্যাস';

  @override
  String get displaySection => 'প্রদর্শন';

  @override
  String get verseNumbers => 'পদ নম্বর';

  @override
  String get sectionHeadings => 'বিভাগের শিরোনাম';

  @override
  String get redLetterText => 'লাল অক্ষরের লেখা';

  @override
  String get selectABook => 'একটি পুস্তক বাছুন';

  @override
  String get traditionalOrder => 'প্রচলিত ক্রম';

  @override
  String get alphabeticalOrder => 'বর্ণানুক্রমিক ক্রম';

  @override
  String get bookmarks => 'বুকমার্ক';

  @override
  String get retry => 'আবার চেষ্টা করুন';

  @override
  String get chooseTheme => 'থিম বাছুন';

  @override
  String get customisableThemes => 'কাস্টমাইজযোগ্য থিম';

  @override
  String get customisableThemesSubtitle =>
      'অ্যাকসেন্ট রং বাছতে একটি কার্ডে চাপুন। Classic White হালকা, গাঢ় ও সিস্টেম মোডও সমর্থন করে।';

  @override
  String get setThemes => 'নির্ধারিত থিম';

  @override
  String get setThemesSubtitle =>
      'স্থির, যত্নে তৈরি রঙের প্যালেট। কাস্টমাইজ দরকার নেই—প্রয়োগ করতে চাপুন।';

  @override
  String get deleteBookmarkQuestion => 'বুকমার্ক মুছবেন?';

  @override
  String get cancel => 'বাতিল';

  @override
  String get delete => 'মুছুন';

  @override
  String get bookmarkSaved => 'বুকমার্ক সংরক্ষিত হয়েছে';

  @override
  String get couldNotDeleteBookmark => 'বুকমার্ক মুছতে পারা যায়নি।';

  @override
  String couldNotNavigate(Object reference) {
    return '$reference-এ যাওয়া যায়নি।';
  }

  @override
  String get pageNotFound => 'পৃষ্ঠা পাওয়া যায়নি';

  @override
  String noRouteDefined(Object routeName) {
    return '\"$routeName\"-এর জন্য কোনো রুট নির্ধারিত নেই';
  }

  @override
  String get english => 'ইংরেজি';

  @override
  String get spanish => 'স্প্যানিশ';

  @override
  String get systemDefault => 'সিস্টেমের ডিফল্ট';

  @override
  String get languageStatusEnglish => 'ইংরেজি ফলব্যাক সক্রিয়';

  @override
  String get languageStatusSystem => 'সিস্টেমের ভাষা ব্যবহৃত হচ্ছে';

  @override
  String languageStatusSelected(Object languageName) {
    return 'নির্বাচিত ভাষা: $languageName';
  }

  @override
  String get themeLabel => 'থিম';

  @override
  String get notFoundTitle => 'পৃষ্ঠা পাওয়া যায়নি';

  @override
  String get loadingCyberBible => 'Cyber Bible লোড হচ্ছে...';

  @override
  String get couldNotOpenDatabase =>
      'বাইবেল ডেটাবেস খোলা যায়নি। আবার চেষ্টা করুন।';

  @override
  String get homeTagline => 'একটি বিনামূল্যের ওপেন সোর্স বাইবেল অধ্যয়ন অ্যাপ';

  @override
  String get readTheBible => 'বাইবেল পড়ুন';

  @override
  String get settingsTooltip => 'সেটিংস';

  @override
  String get themeChoose => 'থিম বাছুন';

  @override
  String get customThemes => 'কাস্টমাইজযোগ্য থিম';

  @override
  String get customThemesSubtitle =>
      'অ্যাকসেন্ট রং বাছতে একটি কার্ডে চাপুন। Classic White হালকা, গাঢ় ও সিস্টেম মোডও সমর্থন করে।';

  @override
  String get setThemesLabel => 'নির্ধারিত থিম';

  @override
  String get deleteBookmarkDialog => 'বুকমার্ক মুছবেন?';

  @override
  String removeBookmarkMessage(Object details, Object reference) {
    return '\"$reference\"$details সরাবেন?\n\nএটি ফিরিয়ে নেওয়া যাবে না।';
  }

  @override
  String get couldNotLoadBookmarks =>
      'বুকমার্ক লোড করা যায়নি। আবার চেষ্টা করুন।';

  @override
  String get bookmarkSavedMessage => 'বুকমার্ক সংরক্ষিত হয়েছে';

  @override
  String get couldNotSaveBookmark => 'বুকমার্ক সংরক্ষণ করা যায়নি।';

  @override
  String get noBookmarksMatchFilter =>
      'এই ফিল্টারের সঙ্গে কোনো বুকমার্ক মেলে না।';

  @override
  String get clearFilter => 'ফিল্টার পরিষ্কার করুন';

  @override
  String get traditionalOrderLabel => 'প্রচলিত ক্রম';

  @override
  String get alphabeticalOrderLabel => 'বর্ণানুক্রমিক ক্রম';

  @override
  String get bookmarksTabLabel => 'বুকমার্ক';

  @override
  String get fullChapter => 'সম্পূর্ণ অধ্যায়';

  @override
  String get addBookmark => 'বুকমার্ক যোগ করুন';

  @override
  String get selectVerse => 'পদ বাছুন';

  @override
  String get labelOptional => 'লেবেল (ঐচ্ছিক)';

  @override
  String get notesOptional => 'নোট (ঐচ্ছিক)';

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
  String get switchToFullChapter => 'সম্পূর্ণ অধ্যায়ের বুকমার্কে বদলান';

  @override
  String get bookmarkSheetCancel => 'বাতিল, বুকমার্ক প্যানেল বন্ধ করুন';

  @override
  String get pickCustomAccent => 'কাস্টম অ্যাকসেন্ট বাছুন';

  @override
  String get apply => 'প্রয়োগ';

  @override
  String get custom => 'কাস্টম';

  @override
  String get brightnessSystem => 'সিস্টেম';

  @override
  String get brightnessLight => 'হালকা';

  @override
  String get brightnessDark => 'গাঢ়';

  @override
  String get selectBook => 'একটি পুস্তক বাছুন';

  @override
  String get bookmarkFilterAll => 'সব';

  @override
  String get bookmarkFilterUnlabeled => 'লেবেলহীন';

  @override
  String get bookmarkSortRecent => 'সাম্প্রতিক আগে';

  @override
  String get bookmarkSortCanonical => 'ক্যানোনিক্যাল ক্রম';

  @override
  String get chapterRetry => 'আবার চেষ্টা করুন';

  @override
  String get fontSize => 'ফন্টের আকার';

  @override
  String fontSizePixels(Object size) {
    return '$size px';
  }

  @override
  String get fontSizeSlider => 'ফন্ট আকার স্লাইডার';

  @override
  String get fontSizeSliderHint =>
      '12 থেকে 28 পর্যন্ত সামঞ্জস্য করতে সোয়াইপ করুন';

  @override
  String get fontPreview =>
      '\"আদিতে ঈশ্বর আকাশমণ্ডল ও পৃথিবী সৃষ্টি করলেন।\" — আদি ১:১';

  @override
  String get showVerseNumbersSubtitle =>
      'পাঠের পর্দায় পদ নম্বরের সুপারস্ক্রিপ্ট দেখান।';

  @override
  String get showSectionHeadingsSubtitle =>
      'অনুচ্ছেদের মাঝে বিভাগ ও গীতসংহিতার শিরোনাম দেখান।';

  @override
  String get wordsOfChristSubtitle =>
      'যিশুর কথাগুলো লালে দেখান। এক রঙের লেখা চাইলে বন্ধ করুন।';

  @override
  String get verseFormatTitle => 'পদের বিন্যাস';

  @override
  String get verseFormatSubtitle =>
      'শাস্ত্রের লেখা কীভাবে সাজানো হবে তা বাছুন।';

  @override
  String get paragraphMode => 'অনুচ্ছেদ';

  @override
  String get verseListMode => 'পদ তালিকা';

  @override
  String get paragraphModeTooltip => 'অনুচ্ছেদ মোড';

  @override
  String get verseListModeTooltip => 'পদ তালিকা মোড';

  @override
  String get paragraphModeDescription =>
      'মুদ্রিত বাইবেলের মতো লেখা ইন্ডেন্ট করা অনুচ্ছেদে ধারাবাহিকভাবে প্রবাহিত হয়।';

  @override
  String get verseListModeDescription =>
      'প্রতিটি শাস্ত্রের অনুচ্ছেদ নিজস্ব লাইনে শুরু হয়, ফলে পদের দল সহজে দেখা যায়।';

  @override
  String get deleteBookmarkTooltip => 'বুকমার্ক মুছুন';

  @override
  String deleteBookmarkSemantics(Object reference) {
    return '$reference বুকমার্ক মুছুন';
  }

  @override
  String sortBookmarksTooltip(Object sortOrder) {
    return 'সাজান: $sortOrder';
  }

  @override
  String get noBookmarksYet => 'এখনও কোনো বুকমার্ক নেই।';

  @override
  String get noBookmarksYetHint =>
      'পড়ার সময় বুকমার্ক আইকনে চাপ দিয়ে স্থানটি সংরক্ষণ করুন।';

  @override
  String bookmarkReferenceNavigationError(Object reference) {
    return '$reference-এ যাওয়া যায়নি।';
  }

  @override
  String themeCardSemantics(Object description, Object name, Object selected) {
    return '$name থিম$selected। $description';
  }

  @override
  String get selectedThemeSuffix => ', বর্তমানে নির্বাচিত';

  @override
  String get customisableAccentDescription => 'কাস্টমাইজযোগ্য অ্যাকসেন্ট রং।';

  @override
  String get fixedPaletteDescription => 'স্থির প্যালেট।';

  @override
  String accentColourTitle(Object themeName) {
    return 'অ্যাকসেন্ট রং — $themeName';
  }

  @override
  String get brightnessMode => 'উজ্জ্বলতার মোড';

  @override
  String get lightMode => 'হালকা মোড';

  @override
  String get followSystemMode => 'সিস্টেম মোড অনুসরণ করুন';

  @override
  String get darkMode => 'গাঢ় মোড';

  @override
  String get customColourPicker => 'কাস্টম রং বাছাইকারী';

  @override
  String get customColourTooltip => 'কাস্টম রং...';

  @override
  String get couldNotLoadBooks =>
      'পুস্তকের তালিকা লোড করা যায়নি। আবার চেষ্টা করুন।';

  @override
  String chapterLabel(Object chapter) {
    return 'অধ্যায় $chapter';
  }

  @override
  String get traditionalOrderBooks => 'প্রচলিত ক্রমের পুস্তক';

  @override
  String get alphabeticalOrderBooks => 'বর্ণানুক্রমিক পুস্তক';

  @override
  String get home => 'হোম';

  @override
  String get addBookmarkTooltip => 'বুকমার্ক যোগ করুন';

  @override
  String get chooseBookChapter => 'পুস্তক ও অধ্যায় বাছুন';

  @override
  String get chooseVerse => 'পদ বাছুন';

  @override
  String get bookChapterQuickNavigation => 'পুস্তক ও অধ্যায়ে দ্রুত চলাচল';

  @override
  String get verseQuickNavigation => 'পদে দ্রুত চলাচল';

  @override
  String get backToBooks => 'পুস্তকগুলিতে ফিরুন';

  @override
  String get selectBookTitle => 'পুস্তক বাছুন';

  @override
  String selectChapterTitle(Object bookName) {
    return 'অধ্যায় বাছুন ($bookName)';
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
  String get memorizeHint => 'মুখস্থ করুন';

  @override
  String get addNoteHint => 'একটি নোট যোগ করুন...';

  @override
  String get languageSearchHint => 'ভাষা খুঁজুন';

  @override
  String get languageModuleInstalled => 'ইনস্টল করা';

  @override
  String get languageModulePending => 'মেশিন অনুবাদ অপেক্ষমাণ';

  @override
  String get languageNoMatches => 'আপনার অনুসন্ধানের সঙ্গে কোনো ভাষা মেলে না।';

  @override
  String get languageCatalogDescription =>
      'ইনস্টল করা ভাষা অফলাইনে কাজ করে। অন্য ভাষাগুলো মেশিন-অনূদিত মডিউল হিসেবে যোগ হবে।';

  @override
  String get saveBookmarkSemantics => 'বুকমার্ক সংরক্ষণ করুন';

  @override
  String get couldNotLoadChapter => 'অধ্যায় লোড করা যায়নি। আবার চেষ্টা করুন।';

  @override
  String get couldNotLoadChapters =>
      'অধ্যায়গুলো লোড করা যায়নি। আবার চেষ্টা করুন।';

  @override
  String verseWithText(Object text, Object verse) {
    return 'পদ $verse: $text';
  }

  @override
  String accentSwatchSemantics(Object name, Object selected) {
    return '$name অ্যাকসেন্ট রং$selected';
  }

  @override
  String get oldTestament => 'পুরাতন নিয়ম';

  @override
  String get newTestament => 'নতুন নিয়ম';

  @override
  String get deuterocanonApocrypha => 'ডিউটেরোক্যানন / অ্যাপোক্রিফা';
}
