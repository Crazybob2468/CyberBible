// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Sindhi (`sd`).
class AppLocalizationsSd extends AppLocalizations {
  AppLocalizationsSd([String locale = 'sd']) : super(locale);

  @override
  String get settingsTitle => 'سيٽنگون';

  @override
  String get languageSection => 'ٻولي';

  @override
  String get useSystemLanguage => 'سسٽم ٻولي استعمال ڪريو';

  @override
  String get useSystemLanguageSubtitle => 'ڊيوائس جي ٻولي ڊفالٽ سان ملائي.';

  @override
  String get currentLanguage => 'موجوده ٻولي';

  @override
  String get appLanguage => 'ايپ جي ٻولي';

  @override
  String get chooseLanguage => 'ٻولي چونڊيو';

  @override
  String get theme => 'موضوع';

  @override
  String get appearance => 'ظاهر';

  @override
  String get textSection => 'متن';

  @override
  String get readingFormatSection => 'پڙهڻ جي شڪل';

  @override
  String get displaySection => 'ڏيکاريو';

  @override
  String get verseNumbers => 'آيت نمبر';

  @override
  String get sectionHeadings => 'سيڪشن جا عنوان';

  @override
  String get redLetterText => 'ڳاڙهي اکر جو متن';

  @override
  String get selectABook => 'هڪ ڪتاب چونڊيو';

  @override
  String get traditionalOrder => 'روايتي حڪم';

  @override
  String get alphabeticalOrder => 'الفابيٽيڪل ترتيب';

  @override
  String get bookmarks => 'بک مارڪ';

  @override
  String get retry => 'ٻيهر ڪوشش ڪريو';

  @override
  String get chooseTheme => 'موضوع چونڊيو';

  @override
  String get customisableThemes => 'حسب ضرورت موضوعات';

  @override
  String get customisableThemesSubtitle =>
      'تلفظ رنگ چونڊڻ لاءِ ڪارڊ تي ٽيپ ڪريو. \"ڪلاسڪ وائٹ\" پڻ سپورٽ ڪري ٿو روشني، اونداهي ۽ سسٽم طريقن.';

  @override
  String get setThemes => 'موضوع مقرر ڪريو';

  @override
  String get setThemesSubtitle =>
      'مقرر ٿيل، هٿ سان ٺهيل پيليٽس. ڪابه ڪسٽمائيزيشن جي ضرورت ناهي - لاڳو ڪرڻ لاء صرف ٽيپ ڪريو.';

  @override
  String get deleteBookmarkQuestion => 'بک مارڪ کي ختم ڪريو؟';

  @override
  String get cancel => 'منسوخ ڪريو';

  @override
  String get delete => 'حذف ڪريو';

  @override
  String get bookmarkSaved => 'بک مارڪ محفوظ ڪيو ويو';

  @override
  String get couldNotDeleteBookmark => 'بک مارڪ ختم نه ٿي سگھي.';

  @override
  String couldNotNavigate(Object reference) {
    return '$reference ڏانهن نيويگيٽ نه ٿي سگهيو.';
  }

  @override
  String get pageNotFound => 'صفحو نه مليو';

  @override
  String noRouteDefined(Object routeName) {
    return '\"$routeName\" لاءِ ڪو به رستو بيان نه ڪيو ويو آهي';
  }

  @override
  String get english => 'انگريزي';

  @override
  String get spanish => 'اسپينول';

  @override
  String get systemDefault => 'سسٽم ڊفالٽ';

  @override
  String get languageStatusEnglish => 'انگريزي فال بيڪ فعال';

  @override
  String get languageStatusSystem => 'سسٽم ٻولي استعمال ڪندي';

  @override
  String languageStatusSelected(Object languageName) {
    return 'منتخب ٿيل ٻولي: $languageName';
  }

  @override
  String get themeLabel => 'موضوع';

  @override
  String get notFoundTitle => 'صفحو نه مليو';

  @override
  String get loadingCyberBible => 'سائبر بائيبل لوڊ ٿي رهيو آهي...';

  @override
  String get couldNotOpenDatabase =>
      'بائبل ڊيٽابيس کي کولي نه سگهيو. مهرباني ڪري ٻيهر ڪوشش ڪريو.';

  @override
  String get homeTagline => 'هڪ مفت ۽ کليل ذريعو بائبل مطالعي جي ايپ';

  @override
  String get readTheBible => 'بائبل پڙهو';

  @override
  String get settingsTooltip => 'سيٽنگون';

  @override
  String get themeChoose => 'موضوع چونڊيو';

  @override
  String get customThemes => 'حسب ضرورت موضوعات';

  @override
  String get customThemesSubtitle =>
      'تلفظ رنگ چونڊڻ لاءِ ڪارڊ تي ٽيپ ڪريو. \"ڪلاسڪ وائٹ\" پڻ سپورٽ ڪري ٿو روشني، اونداهي ۽ سسٽم طريقن.';

  @override
  String get setThemesLabel => 'موضوع مقرر ڪريو';

  @override
  String get deleteBookmarkDialog => 'بک مارڪ کي ختم ڪريو؟';

  @override
  String removeBookmarkMessage(Object details, Object reference) {
    return 'هٽايو \"$reference\"$details?\n\nهن کي واپس نٿو ڪري سگهجي.';
  }

  @override
  String get couldNotLoadBookmarks =>
      'بک مارڪ لوڊ نه ٿي سگھيو. مهرباني ڪري ٻيهر ڪوشش ڪريو.';

  @override
  String get bookmarkSavedMessage => 'بک مارڪ محفوظ ڪيو ويو';

  @override
  String get couldNotSaveBookmark => 'بک مارڪ محفوظ نه ٿي سگهيو.';

  @override
  String get noBookmarksMatchFilter => 'هن فلٽر سان ڪوبه بک مارڪ نه ملندو.';

  @override
  String get clearFilter => 'فلٽر صاف ڪريو';

  @override
  String get traditionalOrderLabel => 'روايتي حڪم';

  @override
  String get alphabeticalOrderLabel => 'الفابيٽيڪل ترتيب';

  @override
  String get bookmarksTabLabel => 'بک مارڪ';

  @override
  String get fullChapter => 'مڪمل باب';

  @override
  String get addBookmark => 'بک مارڪ شامل ڪريو';

  @override
  String get selectVerse => 'آيت چونڊيو';

  @override
  String get labelOptional => 'ليبل (اختياري)';

  @override
  String get notesOptional => 'نوٽس (اختياري)';

  @override
  String get save => 'بچايو';

  @override
  String get goToVerse => 'آيت ڏانھن وڃو';

  @override
  String verseTitle(Object verse) {
    return 'آيت $verse';
  }

  @override
  String chapterTitle(Object chapter) {
    return 'باب $chapter';
  }

  @override
  String get switchToFullChapter => 'تبديل ڪريو مڪمل باب بک مارڪ';

  @override
  String get bookmarkSheetCancel => 'منسوخ ڪريو، بک مارڪ شيٽ بند ڪريو';

  @override
  String get pickCustomAccent => 'هڪ رواجي تلفظ چونڊيو';

  @override
  String get apply => 'لاڳو ڪريو';

  @override
  String get custom => 'حسب ضرورت';

  @override
  String get brightnessSystem => 'سسٽم';

  @override
  String get brightnessLight => 'روشني';

  @override
  String get brightnessDark => 'اونداهو';

  @override
  String get selectBook => 'هڪ ڪتاب چونڊيو';

  @override
  String get bookmarkFilterAll => 'سڀ';

  @override
  String get bookmarkFilterUnlabeled => 'اڻ نشان ٿيل';

  @override
  String get bookmarkSortRecent => 'تازو پهريون';

  @override
  String get bookmarkSortCanonical => 'آئيني ترتيب';

  @override
  String get chapterRetry => 'ٻيهر ڪوشش ڪريو';

  @override
  String get fontSize => 'فونٽ جي ماپ';

  @override
  String fontSizePixels(Object size) {
    return '$size px';
  }

  @override
  String get fontSizeSlider => 'فونٽ سائيز سلائیڈر';

  @override
  String get fontSizeSliderHint => '12 کان 28 تائين ترتيب ڏيڻ لاء سوائپ ڪريو';

  @override
  String get fontPreview =>
      '\"شروعات ۾ خدا آسمانن ۽ زمين کي پيدا ڪيو.\" —پيد ۱:۱';

  @override
  String get showVerseNumbersSubtitle =>
      'پڙهڻ واري اسڪرين ۾ آيت نمبر سپر اسڪرپٽ ڏيکاريو.';

  @override
  String get showSectionHeadingsSubtitle =>
      'ڏيکاريو سيڪشن ۽ زبور جي عنوانن جي وچ ۾.';

  @override
  String get wordsOfChristSubtitle =>
      'يسوع جا لفظ ڳاڙهي ۾ ڏيکاريو. ھڪڙي متن جي رنگ لاءِ غير فعال ڪريو.';

  @override
  String get verseFormatTitle => 'آيت جي شڪل';

  @override
  String get verseFormatSubtitle =>
      'چونڊيو ته ڪيئن لکت جو متن ترتيب ڏنو ويو آهي.';

  @override
  String get paragraphMode => 'پيراگراف';

  @override
  String get verseListMode => 'آيتن جي فهرست';

  @override
  String get paragraphModeTooltip => 'پيراگراف موڊ';

  @override
  String get verseListModeTooltip => 'آيت-فهرست موڊ';

  @override
  String get paragraphModeDescription =>
      'متن مسلسل لڳل پيراگرافن سان وهندو آهي، جيئن ڇپيل بائيبل.';

  @override
  String get verseListModeDescription =>
      'هر صحيف پيراگراف پنهنجي پنهنجي لڪير تي شروع ٿئي ٿو، آيت گروپن کي جڳهه ڪرڻ آسان بڻائي ٿي.';

  @override
  String get deleteBookmarkTooltip => 'بک مارڪ کي ختم ڪريو';

  @override
  String deleteBookmarkSemantics(Object reference) {
    return 'بک مارڪ $reference کي ختم ڪريو';
  }

  @override
  String sortBookmarksTooltip(Object sortOrder) {
    return 'ترتيب ڏيو: $sortOrder';
  }

  @override
  String get noBookmarksYet => 'اڃان تائين ڪوبه نشان نه آهي.';

  @override
  String get noBookmarksYetHint =>
      'جڳھ کي محفوظ ڪرڻ لاء پڙھڻ دوران بک مارڪ آئڪن تي ٽيپ ڪريو.';

  @override
  String bookmarkReferenceNavigationError(Object reference) {
    return '$reference ڏانهن نيويگيٽ نه ٿي سگهيو.';
  }

  @override
  String themeCardSemantics(Object description, Object name, Object selected) {
    return '$name موضوع$selected. $description';
  }

  @override
  String get selectedThemeSuffix => '، في الحال چونڊيو';

  @override
  String get customisableAccentDescription => 'حسب ضرورت تلفظ رنگ.';

  @override
  String get fixedPaletteDescription => 'مقرر ٿيل تختي.';

  @override
  String accentColourTitle(Object themeName) {
    return 'تلفظ رنگ - $themeName';
  }

  @override
  String get brightnessMode => 'روشني موڊ';

  @override
  String get lightMode => 'هلڪو موڊ';

  @override
  String get followSystemMode => 'سسٽم موڊ جي پيروي ڪريو';

  @override
  String get darkMode => 'ڳاڙهو موڊ';

  @override
  String get customColourPicker => 'ڪسٽم رنگ چونڊيندڙ';

  @override
  String get customColourTooltip => 'حسب ضرورت رنگ…';

  @override
  String get couldNotLoadBooks =>
      'ڪتابن جي لسٽ لوڊ نه ٿي سگھي. مهرباني ڪري ٻيهر ڪوشش ڪريو.';

  @override
  String chapterLabel(Object chapter) {
    return 'باب $chapter';
  }

  @override
  String get traditionalOrderBooks => 'روايتي حڪم ڪتاب';

  @override
  String get alphabeticalOrderBooks => 'الف بي ترتيب ڪتاب';

  @override
  String get home => 'گهر';

  @override
  String get addBookmarkTooltip => 'بک مارڪ شامل ڪريو';

  @override
  String get chooseBookChapter => 'ڪتاب ۽ باب چونڊيو';

  @override
  String get chooseVerse => 'نظم چونڊيو';

  @override
  String get bookChapterQuickNavigation => 'ڪتاب ۽ باب جلدي نيويگيشن';

  @override
  String get verseQuickNavigation => 'آيت جلدي نيويگيشن';

  @override
  String get backToBooks => 'ڪتابن ڏانهن واپس';

  @override
  String get selectBookTitle => 'ڪتاب چونڊيو';

  @override
  String selectChapterTitle(Object bookName) {
    return 'باب چونڊيو ($bookName)';
  }

  @override
  String chapterSelectionLabel(Object chapter) {
    return 'باب $chapter';
  }

  @override
  String verseSelectionLabel(Object verse) {
    return 'آيت $verse';
  }

  @override
  String fullChapterReference(Object bookName, Object chapter) {
    return 'مڪمل باب: $bookName $chapter';
  }

  @override
  String get memorizeHint => 'ياد ڪرڻ';

  @override
  String get addNoteHint => 'نوٽ شامل ڪريو...';

  @override
  String get languageSearchHint => 'ٻوليون ڳولھيو';

  @override
  String get languageModuleInstalled => 'انسٽال ٿيل';

  @override
  String get languageModulePending => 'مشيني ترجمي جي انتظار ۾';

  @override
  String get languageNoMatches => 'ڪابه ٻولي توهان جي ڳولا سان نه ملندي آهي.';

  @override
  String get languageCatalogDescription =>
      'انسٽال ٿيل ڪم آف لائن طور نشان لڳل ٻوليون. ٻيون ٻوليون شامل ڪيون وينديون جيئن مشين ترجمو ٿيل ماڊلز.';

  @override
  String get saveBookmarkSemantics => 'بک مارڪ محفوظ ڪريو';

  @override
  String get couldNotLoadChapter =>
      'باب لوڊ نه ٿي سگهيو. مهرباني ڪري ٻيهر ڪوشش ڪريو.';

  @override
  String get couldNotLoadChapters =>
      'باب لوڊ نه ٿي سگهيو. مهرباني ڪري ٻيهر ڪوشش ڪريو.';

  @override
  String verseWithText(Object text, Object verse) {
    return 'آيت $verse: $text';
  }

  @override
  String accentSwatchSemantics(Object name, Object selected) {
    return '$name تلفظ رنگ$selected';
  }

  @override
  String get oldTestament => 'پراڻي عهد نامي';

  @override
  String get newTestament => 'نئون عهدنامو';

  @override
  String get deuterocanonApocrypha => 'Deuterocanon / Apocrypha';
}
