// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Persian (`fa`).
class AppLocalizationsFa extends AppLocalizations {
  AppLocalizationsFa([String locale = 'fa']) : super(locale);

  @override
  String get settingsTitle => 'تنظیمات';

  @override
  String get languageSection => 'زبان';

  @override
  String get useSystemLanguage => 'استفاده از زبان سیستم';

  @override
  String get useSystemLanguageSubtitle =>
      'به‌طور پیش‌فرض با زبان دستگاه مطابقت داشته باشد.';

  @override
  String get currentLanguage => 'زبان فعلی';

  @override
  String get appLanguage => 'زبان برنامه';

  @override
  String get chooseLanguage => 'انتخاب زبان';

  @override
  String get theme => 'طرح';

  @override
  String get appearance => 'ظاهر';

  @override
  String get textSection => 'متن';

  @override
  String get readingFormatSection => 'قالب خواندن';

  @override
  String get displaySection => 'نمایش';

  @override
  String get verseNumbers => 'شماره‌های آیه';

  @override
  String get sectionHeadings => 'عنوان‌های بخش';

  @override
  String get redLetterText => 'متن با حروف قرمز';

  @override
  String get selectABook => 'یک کتاب انتخاب کنید';

  @override
  String get traditionalOrder => 'ترتیب سنتی';

  @override
  String get alphabeticalOrder => 'ترتیب الفبایی';

  @override
  String get bookmarks => 'نشانک‌ها';

  @override
  String get retry => 'تلاش مجدد';

  @override
  String get chooseTheme => 'انتخاب طرح';

  @override
  String get customisableThemes => 'طرح‌های قابل سفارشی‌سازی';

  @override
  String get customisableThemesSubtitle =>
      'برای انتخاب رنگ تأکیدی، یک کارت را لمس کنید. \"Classic White\" از حالت‌های روشن، تیره و سیستم نیز پشتیبانی می‌کند.';

  @override
  String get setThemes => 'تنظیم طرح‌ها';

  @override
  String get setThemesSubtitle =>
      'پالت‌های ثابت و دست‌ساز. نیازی به سفارشی‌سازی نیست؛ فقط برای اعمال لمس کنید.';

  @override
  String get deleteBookmarkQuestion => 'نشانک حذف شود؟';

  @override
  String get cancel => 'لغو';

  @override
  String get delete => 'حذف';

  @override
  String get bookmarkSaved => 'نشانک ذخیره شد';

  @override
  String get couldNotDeleteBookmark => 'نشانک حذف نشد.';

  @override
  String couldNotNavigate(Object reference) {
    return 'نمی‌توان به $reference رفت.';
  }

  @override
  String get pageNotFound => 'صفحه پیدا نشد';

  @override
  String noRouteDefined(Object routeName) {
    return 'مسیری برای \"$routeName\" تعریف نشده است';
  }

  @override
  String get english => 'انگلیسی';

  @override
  String get spanish => 'Español';

  @override
  String get systemDefault => 'پیش‌فرض سیستم';

  @override
  String get languageStatusEnglish => 'جایگزین انگلیسی فعال است';

  @override
  String get languageStatusSystem => 'استفاده از زبان سیستم';

  @override
  String languageStatusSelected(Object languageName) {
    return 'زبان انتخاب‌شده: $languageName';
  }

  @override
  String get themeLabel => 'طرح';

  @override
  String get notFoundTitle => 'صفحه پیدا نشد';

  @override
  String get loadingCyberBible => 'در حال بارگذاری سایبر بایبل...';

  @override
  String get couldNotOpenDatabase =>
      'پایگاه داده کتاب مقدس باز نشد. دوباره تلاش کنید.';

  @override
  String get homeTagline => 'یک برنامه رایگان و متن‌باز برای مطالعه کتاب مقدس';

  @override
  String get readTheBible => 'کتاب مقدس را بخوانید';

  @override
  String get settingsTooltip => 'تنظیمات';

  @override
  String get themeChoose => 'انتخاب طرح';

  @override
  String get customThemes => 'طرح‌های قابل سفارشی‌سازی';

  @override
  String get customThemesSubtitle =>
      'برای انتخاب رنگ تأکیدی، یک کارت را لمس کنید. \"Classic White\" از حالت‌های روشن، تیره و سیستم نیز پشتیبانی می‌کند.';

  @override
  String get setThemesLabel => 'تنظیم طرح‌ها';

  @override
  String get deleteBookmarkDialog => 'نشانک حذف شود؟';

  @override
  String removeBookmarkMessage(Object details, Object reference) {
    return '\"$reference\"$details حذف شود؟\n\nاین کار قابل بازگرداندن نیست.';
  }

  @override
  String get couldNotLoadBookmarks =>
      'نشانک‌ها بارگیری نشدند. دوباره تلاش کنید.';

  @override
  String get bookmarkSavedMessage => 'نشانک ذخیره شد';

  @override
  String get couldNotSaveBookmark => 'نشانک ذخیره نشد.';

  @override
  String get noBookmarksMatchFilter => 'هیچ نشانکی با این فیلتر مطابقت ندارد.';

  @override
  String get clearFilter => 'پاک کردن فیلتر';

  @override
  String get traditionalOrderLabel => 'ترتیب سنتی';

  @override
  String get alphabeticalOrderLabel => 'ترتیب الفبایی';

  @override
  String get bookmarksTabLabel => 'نشانک‌ها';

  @override
  String get fullChapter => 'فصل کامل';

  @override
  String get addBookmark => 'افزودن نشانک';

  @override
  String get selectVerse => 'انتخاب آیه';

  @override
  String get labelOptional => 'برچسب (اختیاری)';

  @override
  String get notesOptional => 'یادداشت‌ها (اختیاری)';

  @override
  String get save => 'ذخیره';

  @override
  String get goToVerse => 'رفتن به آیه';

  @override
  String verseTitle(Object verse) {
    return 'آیه $verse';
  }

  @override
  String chapterTitle(Object chapter) {
    return 'فصل $chapter';
  }

  @override
  String get switchToFullChapter => 'تغییر به نشانک فصل کامل';

  @override
  String get bookmarkSheetCancel => 'لغو، بستن برگه نشانک';

  @override
  String get pickCustomAccent => 'انتخاب رنگ تأکیدی سفارشی';

  @override
  String get apply => 'اعمال';

  @override
  String get custom => 'سفارشی';

  @override
  String get brightnessSystem => 'سیستم';

  @override
  String get brightnessLight => 'روشن';

  @override
  String get brightnessDark => 'تیره';

  @override
  String get selectBook => 'یک کتاب انتخاب کنید';

  @override
  String get bookmarkFilterAll => 'همه';

  @override
  String get bookmarkFilterUnlabeled => 'بدون برچسب';

  @override
  String get bookmarkSortRecent => 'جدیدترین ابتدا';

  @override
  String get bookmarkSortCanonical => 'ترتیب قانونی';

  @override
  String get chapterRetry => 'تلاش مجدد';

  @override
  String get fontSize => 'اندازه قلم';

  @override
  String fontSizePixels(Object size) {
    return '$size پیکسل';
  }

  @override
  String get fontSizeSlider => 'لغزنده اندازه قلم';

  @override
  String get fontSizeSliderHint => 'برای تنظیم از ۱۲ تا ۲۸ بکشید';

  @override
  String get fontPreview =>
      '\"در ابتدا خدا آسمان‌ها و زمین را آفرید.\" — پیدایش ۱:۱';

  @override
  String get showVerseNumbersSubtitle =>
      'بالانویس شماره آیه‌ها را در صفحه خواندن نمایش بده.';

  @override
  String get showSectionHeadingsSubtitle =>
      'عنوان‌های بخش و مزامیر را میان متن‌ها نمایش بده.';

  @override
  String get wordsOfChristSubtitle =>
      'سخنان عیسی را با رنگ قرمز نمایش بده. برای یک رنگ متن، غیرفعال کنید.';

  @override
  String get verseFormatTitle => 'قالب آیه';

  @override
  String get verseFormatSubtitle => 'انتخاب کنید متن کتاب مقدس چگونه چیده شود.';

  @override
  String get paragraphMode => 'پاراگراف';

  @override
  String get verseListMode => 'فهرست آیه‌ها';

  @override
  String get paragraphModeTooltip => 'حالت پاراگراف';

  @override
  String get verseListModeTooltip => 'حالت فهرست آیه';

  @override
  String get paragraphModeDescription =>
      'متن با پاراگراف‌های تورفته، مانند یک کتاب مقدس چاپی، پیوسته جریان دارد.';

  @override
  String get verseListModeDescription =>
      'هر پاراگراف کتاب مقدس در خط خودش آغاز می‌شود تا گروه‌های آیه آسان‌تر دیده شوند.';

  @override
  String get deleteBookmarkTooltip => 'حذف نشانک';

  @override
  String deleteBookmarkSemantics(Object reference) {
    return 'حذف نشانک $reference';
  }

  @override
  String sortBookmarksTooltip(Object sortOrder) {
    return 'مرتب‌سازی: $sortOrder';
  }

  @override
  String get noBookmarksYet => 'هنوز نشانکی وجود ندارد.';

  @override
  String get noBookmarksYetHint =>
      'هنگام خواندن، برای ذخیره یک مکان روی نماد نشانک بزنید.';

  @override
  String bookmarkReferenceNavigationError(Object reference) {
    return 'نمی‌توان به $reference رفت.';
  }

  @override
  String themeCardSemantics(Object description, Object name, Object selected) {
    return 'طرح $name$selected. $description';
  }

  @override
  String get selectedThemeSuffix => '، اکنون انتخاب‌شده';

  @override
  String get customisableAccentDescription => 'رنگ تأکیدی قابل سفارشی‌سازی.';

  @override
  String get fixedPaletteDescription => 'پالت ثابت.';

  @override
  String accentColourTitle(Object themeName) {
    return 'رنگ تأکیدی — $themeName';
  }

  @override
  String get brightnessMode => 'حالت روشنایی';

  @override
  String get lightMode => 'حالت روشن';

  @override
  String get followSystemMode => 'پیروی از حالت سیستم';

  @override
  String get darkMode => 'حالت تیره';

  @override
  String get customColourPicker => 'انتخابگر رنگ سفارشی';

  @override
  String get customColourTooltip => 'رنگ سفارشی…';

  @override
  String get couldNotLoadBooks =>
      'فهرست کتاب‌ها بارگیری نشد. دوباره تلاش کنید.';

  @override
  String chapterLabel(Object chapter) {
    return 'فصل $chapter';
  }

  @override
  String get traditionalOrderBooks => 'کتاب‌ها با ترتیب سنتی';

  @override
  String get alphabeticalOrderBooks => 'کتاب‌ها با ترتیب الفبایی';

  @override
  String get home => 'خانه';

  @override
  String get addBookmarkTooltip => 'افزودن نشانک';

  @override
  String get chooseBookChapter => 'کتاب و فصل را انتخاب کنید';

  @override
  String get chooseVerse => 'آیه را انتخاب کنید';

  @override
  String get bookChapterQuickNavigation => 'ناوبری سریع کتاب و فصل';

  @override
  String get verseQuickNavigation => 'ناوبری سریع آیه';

  @override
  String get backToBooks => 'بازگشت به کتاب‌ها';

  @override
  String get selectBookTitle => 'انتخاب کتاب';

  @override
  String selectChapterTitle(Object bookName) {
    return 'انتخاب فصل ($bookName)';
  }

  @override
  String chapterSelectionLabel(Object chapter) {
    return 'فصل $chapter';
  }

  @override
  String verseSelectionLabel(Object verse) {
    return 'آیه $verse';
  }

  @override
  String fullChapterReference(Object bookName, Object chapter) {
    return 'فصل کامل: $bookName $chapter';
  }

  @override
  String get memorizeHint => 'به خاطر سپردن';

  @override
  String get addNoteHint => 'افزودن یادداشت...';

  @override
  String get languageSearchHint => 'جست‌وجوی زبان‌ها';

  @override
  String get languageModuleInstalled => 'نصب‌شده';

  @override
  String get languageModulePending => 'ترجمه ماشینی در انتظار است';

  @override
  String get languageNoMatches => 'هیچ زبانی با جست‌وجوی شما مطابقت ندارد.';

  @override
  String get languageCatalogDescription =>
      'زبان‌های نصب‌شده به‌صورت آفلاین کار می‌کنند. زبان‌های دیگر به‌عنوان ماژول‌های ترجمه ماشینی افزوده خواهند شد.';

  @override
  String get saveBookmarkSemantics => 'ذخیره نشانک';

  @override
  String get couldNotLoadChapter => 'فصل بارگیری نشد. دوباره تلاش کنید.';

  @override
  String get couldNotLoadChapters => 'فصل‌ها بارگیری نشدند. دوباره تلاش کنید.';

  @override
  String verseWithText(Object text, Object verse) {
    return 'آیه $verse: $text';
  }

  @override
  String accentSwatchSemantics(Object name, Object selected) {
    return 'رنگ تأکیدی $name$selected';
  }

  @override
  String get oldTestament => 'عهد عتیق';

  @override
  String get newTestament => 'عهد جدید';

  @override
  String get deuterocanonApocrypha => 'کتاب‌های قانونی ثانی / اپوکریفا';
}
