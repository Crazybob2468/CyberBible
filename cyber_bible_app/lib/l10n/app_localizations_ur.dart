// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Urdu (`ur`).
class AppLocalizationsUr extends AppLocalizations {
  AppLocalizationsUr([String locale = 'ur']) : super(locale);

  @override
  String get settingsTitle => 'ترتیبات';

  @override
  String get languageSection => 'زبان';

  @override
  String get useSystemLanguage => 'سسٹم کی زبان استعمال کریں۔';

  @override
  String get useSystemLanguageSubtitle =>
      'ڈیفالٹ کے طور پر آلہ کی زبان سے ملائیں.';

  @override
  String get currentLanguage => 'موجودہ زبان';

  @override
  String get appLanguage => 'ایپ کی زبان';

  @override
  String get chooseLanguage => 'زبان کا انتخاب کریں۔';

  @override
  String get theme => 'تھیم';

  @override
  String get appearance => 'ظاہری شکل';

  @override
  String get textSection => 'متن';

  @override
  String get readingFormatSection => 'پڑھنے کی شکل';

  @override
  String get displaySection => 'ڈسپلے';

  @override
  String get verseNumbers => 'آیت نمبر';

  @override
  String get sectionHeadings => 'سیکشن کی سرخیاں';

  @override
  String get redLetterText => 'سرخ خط کا متن';

  @override
  String get selectABook => 'ایک کتاب منتخب کریں۔';

  @override
  String get traditionalOrder => 'روایتی ترتیب';

  @override
  String get alphabeticalOrder => 'حروف تہجی کی ترتیب';

  @override
  String get bookmarks => 'بک مارکس';

  @override
  String get retry => 'دوبارہ کوشش کریں۔';

  @override
  String get chooseTheme => 'تھیم کا انتخاب کریں۔';

  @override
  String get customisableThemes => 'حسب ضرورت تھیمز';

  @override
  String get customisableThemesSubtitle =>
      'لہجے کا رنگ منتخب کرنے کے لیے کارڈ کو تھپتھپائیں۔ \"کلاسک وائٹ\" لائٹ، ڈارک اور سسٹم موڈز کو بھی سپورٹ کرتا ہے۔';

  @override
  String get setThemes => 'تھیمز سیٹ کریں۔';

  @override
  String get setThemesSubtitle =>
      'فکسڈ، ہاتھ سے تیار کردہ پیلیٹ۔ کسی تخصیص کی ضرورت نہیں — لاگو کرنے کے لیے صرف تھپتھپائیں۔';

  @override
  String get deleteBookmarkQuestion => 'بک مارک حذف کریں؟';

  @override
  String get cancel => 'منسوخ کریں۔';

  @override
  String get delete => 'حذف کریں۔';

  @override
  String get bookmarkSaved => 'بک مارک محفوظ ہو گیا۔';

  @override
  String get couldNotDeleteBookmark => 'بک مارک کو حذف نہیں کیا جا سکا۔';

  @override
  String couldNotNavigate(Object reference) {
    return '$reference پر نیویگیٹ نہیں ہو سکا۔';
  }

  @override
  String get pageNotFound => 'صفحہ نہیں ملا';

  @override
  String noRouteDefined(Object routeName) {
    return '\"$routeName\" کے لیے کوئی راستہ متعین نہیں کیا گیا';
  }

  @override
  String get english => 'انگریزی';

  @override
  String get spanish => 'اسپینول';

  @override
  String get systemDefault => 'سسٹم ڈیفالٹ';

  @override
  String get languageStatusEnglish => 'انگریزی فال بیک فعال';

  @override
  String get languageStatusSystem => 'سسٹم کی زبان کا استعمال';

  @override
  String languageStatusSelected(Object languageName) {
    return 'منتخب زبان: $languageName';
  }

  @override
  String get themeLabel => 'تھیم';

  @override
  String get notFoundTitle => 'صفحہ نہیں ملا';

  @override
  String get loadingCyberBible => 'سائبر بائبل لوڈ ہو رہی ہے...';

  @override
  String get couldNotOpenDatabase =>
      'بائبل کا ڈیٹا بیس نہیں کھول سکا۔ براہ کرم دوبارہ کوشش کریں۔';

  @override
  String get homeTagline => 'ایک مفت اور اوپن سورس بائبل اسٹڈی ایپ';

  @override
  String get readTheBible => 'بائبل پڑھیں';

  @override
  String get settingsTooltip => 'ترتیبات';

  @override
  String get themeChoose => 'تھیم کا انتخاب کریں۔';

  @override
  String get customThemes => 'حسب ضرورت تھیمز';

  @override
  String get customThemesSubtitle =>
      'لہجے کا رنگ منتخب کرنے کے لیے کارڈ کو تھپتھپائیں۔ \"کلاسک وائٹ\" لائٹ، ڈارک اور سسٹم موڈز کو بھی سپورٹ کرتا ہے۔';

  @override
  String get setThemesLabel => 'تھیمز سیٹ کریں۔';

  @override
  String get deleteBookmarkDialog => 'بک مارک حذف کریں؟';

  @override
  String removeBookmarkMessage(Object details, Object reference) {
    return '\"$reference\"$details ہٹائیں؟\n\nاسے کالعدم نہیں کیا جا سکتا۔';
  }

  @override
  String get couldNotLoadBookmarks =>
      'بک مارکس لوڈ نہیں ہو سکے۔ براہ کرم دوبارہ کوشش کریں۔';

  @override
  String get bookmarkSavedMessage => 'بک مارک محفوظ ہو گیا۔';

  @override
  String get couldNotSaveBookmark => 'بک مارک محفوظ نہیں ہو سکا۔';

  @override
  String get noBookmarksMatchFilter => 'کوئی بک مارک اس فلٹر سے مماثل نہیں ہے۔';

  @override
  String get clearFilter => 'فلٹر صاف کریں۔';

  @override
  String get traditionalOrderLabel => 'روایتی ترتیب';

  @override
  String get alphabeticalOrderLabel => 'حروف تہجی کی ترتیب';

  @override
  String get bookmarksTabLabel => 'بک مارکس';

  @override
  String get fullChapter => 'مکمل باب';

  @override
  String get addBookmark => 'بک مارک شامل کریں۔';

  @override
  String get selectVerse => 'آیت منتخب کریں۔';

  @override
  String get labelOptional => 'لیبل (اختیاری)';

  @override
  String get notesOptional => 'نوٹس (اختیاری)';

  @override
  String get save => 'محفوظ کریں۔';

  @override
  String get goToVerse => 'آیت پر جائیں۔';

  @override
  String verseTitle(Object verse) {
    return 'آیت $verse';
  }

  @override
  String chapterTitle(Object chapter) {
    return 'باب $chapter';
  }

  @override
  String get switchToFullChapter => 'مکمل باب بک مارک پر سوئچ کریں۔';

  @override
  String get bookmarkSheetCancel => 'منسوخ کریں، بک مارک شیٹ بند کریں۔';

  @override
  String get pickCustomAccent => 'حسب ضرورت لہجہ منتخب کریں۔';

  @override
  String get apply => 'لگائیں';

  @override
  String get custom => 'حسب ضرورت';

  @override
  String get brightnessSystem => 'سسٹم';

  @override
  String get brightnessLight => 'روشنی';

  @override
  String get brightnessDark => 'اندھیرا';

  @override
  String get selectBook => 'ایک کتاب منتخب کریں۔';

  @override
  String get bookmarkFilterAll => 'تمام';

  @override
  String get bookmarkFilterUnlabeled => 'بغیر لیبل لگا ہوا';

  @override
  String get bookmarkSortRecent => 'حالیہ پہلے';

  @override
  String get bookmarkSortCanonical => 'کینونیکل آرڈر';

  @override
  String get chapterRetry => 'دوبارہ کوشش کریں۔';

  @override
  String get fontSize => 'فونٹ کا سائز';

  @override
  String fontSizePixels(Object size) {
    return '$size px';
  }

  @override
  String get fontSizeSlider => 'فونٹ سائز سلائیڈر';

  @override
  String get fontSizeSliderHint => '12 سے 28 تک ایڈجسٹ کرنے کے لیے سوائپ کریں۔';

  @override
  String get fontPreview =>
      '\"شروع میں خدا نے آسمانوں اور زمین کو پیدا کیا۔\" —پیدائش 1:1';

  @override
  String get showVerseNumbersSubtitle =>
      'پڑھنے کی سکرین میں آیت نمبر سپر اسکرپٹ دکھائیں۔';

  @override
  String get showSectionHeadingsSubtitle =>
      'حصئوں کے درمیان سیکشن اور زبور کے عنوانات دکھائیں۔';

  @override
  String get wordsOfChristSubtitle =>
      'یسوع کے الفاظ سرخ رنگ میں دکھائیں۔ ایک متنی رنگ کے لیے غیر فعال کریں۔';

  @override
  String get verseFormatTitle => 'آیت کی شکل';

  @override
  String get verseFormatSubtitle =>
      'منتخب کریں کہ صحیفے کے متن کو کیسے ترتیب دیا گیا ہے۔';

  @override
  String get paragraphMode => 'پیراگراف';

  @override
  String get verseListMode => 'آیت کی فہرست';

  @override
  String get paragraphModeTooltip => 'پیراگراف موڈ';

  @override
  String get verseListModeTooltip => 'آیت کی فہرست وضع';

  @override
  String get paragraphModeDescription =>
      'متن ایک مطبوعہ بائبل کی طرح حاشیہ دار پیراگراف کے ساتھ مسلسل بہہ رہا ہے۔';

  @override
  String get verseListModeDescription =>
      'ہر صحیفے کا پیراگراف اپنی اپنی لائن سے شروع ہوتا ہے، جس سے آیات کے گروپس کو آسانی سے تلاش کیا جاتا ہے۔';

  @override
  String get deleteBookmarkTooltip => 'بک مارک کو حذف کریں۔';

  @override
  String deleteBookmarkSemantics(Object reference) {
    return 'بک مارک $reference حذف کریں۔';
  }

  @override
  String sortBookmarksTooltip(Object sortOrder) {
    return 'ترتیب دیں: $sortOrder';
  }

  @override
  String get noBookmarksYet => 'ابھی تک کوئی بک مارکس نہیں ہیں۔';

  @override
  String get noBookmarksYetHint =>
      'کسی مقام کو محفوظ کرنے کے لیے پڑھتے وقت بُک مارک آئیکن کو تھپتھپائیں۔';

  @override
  String bookmarkReferenceNavigationError(Object reference) {
    return '$reference پر نیویگیٹ نہیں ہو سکا۔';
  }

  @override
  String themeCardSemantics(Object description, Object name, Object selected) {
    return '$name تھیم$selected۔ $description';
  }

  @override
  String get selectedThemeSuffix => 'فی الحال منتخب کیا گیا ہے۔';

  @override
  String get customisableAccentDescription => 'حسب ضرورت لہجے کا رنگ۔';

  @override
  String get fixedPaletteDescription => 'فکسڈ پیلیٹ۔';

  @override
  String accentColourTitle(Object themeName) {
    return 'لہجے کا رنگ — $themeName';
  }

  @override
  String get brightnessMode => 'برائٹنیس موڈ';

  @override
  String get lightMode => 'لائٹ موڈ';

  @override
  String get followSystemMode => 'سسٹم موڈ پر عمل کریں۔';

  @override
  String get darkMode => 'ڈارک موڈ';

  @override
  String get customColourPicker => 'حسب ضرورت رنگ چننے والا';

  @override
  String get customColourTooltip => 'حسب ضرورت رنگ…';

  @override
  String get couldNotLoadBooks =>
      'کتابوں کی فہرست لوڈ نہیں ہو سکی۔ براہ کرم دوبارہ کوشش کریں۔';

  @override
  String chapterLabel(Object chapter) {
    return 'باب $chapter';
  }

  @override
  String get traditionalOrderBooks => 'روایتی آرڈر کی کتابیں۔';

  @override
  String get alphabeticalOrderBooks => 'حروف تہجی کی ترتیب کی کتابیں۔';

  @override
  String get home => 'گھر';

  @override
  String get addBookmarkTooltip => 'بک مارک شامل کریں۔';

  @override
  String get chooseBookChapter => 'کتاب اور باب کا انتخاب کریں۔';

  @override
  String get chooseVerse => 'آیت کا انتخاب کریں۔';

  @override
  String get bookChapterQuickNavigation => 'کتاب اور باب فوری نیویگیشن';

  @override
  String get verseQuickNavigation => 'آیت فوری نیویگیشن';

  @override
  String get backToBooks => 'واپس کتابوں کی طرف';

  @override
  String get selectBookTitle => 'کتاب منتخب کریں۔';

  @override
  String selectChapterTitle(Object bookName) {
    return 'باب منتخب کریں ($bookName)';
  }

  @override
  String chapterSelectionLabel(Object chapter) {
    return 'باب $chapter';
  }

  @override
  String verseSelectionLabel(Object verse) {
    return 'آیت $verse';
  }

  @override
  String fullChapterReference(Object bookName, Object chapter) {
    return 'مکمل باب: $bookName $chapter';
  }

  @override
  String get memorizeHint => 'حفظ کرنا';

  @override
  String get addNoteHint => 'ایک نوٹ شامل کریں...';

  @override
  String get languageSearchHint => 'زبانیں تلاش کریں۔';

  @override
  String get languageModuleInstalled => 'انسٹال';

  @override
  String get languageModulePending => 'مشینی ترجمہ زیر التواء ہے۔';

  @override
  String get languageNoMatches => 'کوئی زبان آپ کی تلاش سے مماثل نہیں ہے۔';

  @override
  String get languageCatalogDescription =>
      'انسٹال شدہ کے بطور نشان زد زبانیں آف لائن کام کرتی ہیں۔ دیگر زبانوں کو مشین سے ترجمہ شدہ ماڈیول کے طور پر شامل کیا جائے گا۔';

  @override
  String get saveBookmarkSemantics => 'بک مارک محفوظ کریں۔';

  @override
  String get couldNotLoadChapter =>
      'باب لوڈ نہیں ہو سکا۔ براہ کرم دوبارہ کوشش کریں۔';

  @override
  String get couldNotLoadChapters =>
      'ابواب لوڈ نہیں ہو سکے۔ براہ کرم دوبارہ کوشش کریں۔';

  @override
  String verseWithText(Object text, Object verse) {
    return 'آیت $verse: $text';
  }

  @override
  String accentSwatchSemantics(Object name, Object selected) {
    return '$name لہجے کا رنگ$selected';
  }

  @override
  String get oldTestament => 'عہد نامہ قدیم';

  @override
  String get newTestament => 'نیا عہد نامہ';

  @override
  String get deuterocanonApocrypha => 'Deuterocanon / Apocrypha';
}
