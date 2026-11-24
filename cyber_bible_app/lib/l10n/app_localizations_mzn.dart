// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Mazanderani (`mzn`).
class AppLocalizationsMzn extends AppLocalizations {
  AppLocalizationsMzn([String locale = 'mzn']) : super(locale);

  @override
  String get settingsTitle => 'تنظیمات';

  @override
  String get languageSection => 'زبان';

  @override
  String get useSystemLanguage => 'استفاده از زبان سیستم';

  @override
  String get useSystemLanguageSubtitle =>
      'زبان دستگاه را به طور پیش‌فرض استفاده کنید.';

  @override
  String get currentLanguage => 'زبان فعلی';

  @override
  String get appLanguage => 'زبان برنامه';

  @override
  String get chooseLanguage => 'انتخاب زبان';

  @override
  String get theme => 'پوسته';

  @override
  String get appearance => 'ظاهر';

  @override
  String get textSection => 'متن';

  @override
  String get readingFormatSection => 'قالب خواندن';

  @override
  String get displaySection => 'نمایش';

  @override
  String get verseNumbers => 'شماره آیات';

  @override
  String get sectionHeadings => 'عنوان بخش‌ها';

  @override
  String get redLetterText => 'متن سرخ';

  @override
  String get selectABook => 'انتخاب کتاب';

  @override
  String get traditionalOrder => 'ترتیب سنتی';

  @override
  String get alphabeticalOrder => 'ترتیب الفبایی';

  @override
  String get bookmarks => 'نشانک‌ها';

  @override
  String get retry => 'تلاش دوباره';

  @override
  String get chooseTheme => 'انتخاب پوسته';

  @override
  String get customisableThemes => 'پوسته‌های قابل تنظیم';

  @override
  String get customisableThemesSubtitle =>
      'Tap a card to choose an accent colour. \"Classic White\" also supports Light, Dark and System modes.';

  @override
  String get setThemes => 'اعمال پوسته‌ها';

  @override
  String get setThemesSubtitle =>
      'Fixed, hand-crafted palettes. No customisation needed — just tap to apply.';

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
    return 'Could not navigate to $reference.';
  }

  @override
  String get pageNotFound => 'صفحه پیدا نشد';

  @override
  String noRouteDefined(Object routeName) {
    return 'No route defined for \"$routeName\"';
  }

  @override
  String get english => 'انگلیسی';

  @override
  String get spanish => 'اسپانیایی';

  @override
  String get systemDefault => 'پیش‌فرض سیستم';

  @override
  String get languageStatusEnglish => 'English fallback active';

  @override
  String get languageStatusSystem => 'در حال استفاده از زبان سیستم';

  @override
  String languageStatusSelected(Object languageName) {
    return 'زبان منتخب: $languageName';
  }

  @override
  String get themeLabel => 'پوسته';

  @override
  String get notFoundTitle => 'صفحه پیدا نشد';

  @override
  String get loadingCyberBible => 'Loading Cyber Bible...';

  @override
  String get couldNotOpenDatabase =>
      'Could not open the Bible database. Please try again.';

  @override
  String get homeTagline => 'A free and open source Bible study app';

  @override
  String get readTheBible => 'خواندن کتاب مقدس';

  @override
  String get settingsTooltip => 'تنظیمات';

  @override
  String get themeChoose => 'انتخاب پوسته';

  @override
  String get customThemes => 'پوسته سفارشی';

  @override
  String get customThemesSubtitle =>
      'Tap a card to choose an accent colour. \"Classic White\" also supports Light, Dark and System modes.';

  @override
  String get setThemesLabel => 'اعمال پوسته‌ها';

  @override
  String get deleteBookmarkDialog => 'نشانک حذف شود؟';

  @override
  String removeBookmarkMessage(Object details, Object reference) {
    return 'Remove \"$reference\"$details?\n\nThis cannot be undone.';
  }

  @override
  String get couldNotLoadBookmarks =>
      'Could not load bookmarks. Please try again.';

  @override
  String get bookmarkSavedMessage => 'نشانک ذخیره شد';

  @override
  String get couldNotSaveBookmark => 'نشانک ذخیره نشد.';

  @override
  String get noBookmarksMatchFilter => 'No bookmarks match this filter.';

  @override
  String get clearFilter => 'پاک کردن فیلتر';

  @override
  String get traditionalOrderLabel => 'ترتیب سنتی';

  @override
  String get alphabeticalOrderLabel => 'ترتیب الفبایی';

  @override
  String get bookmarksTabLabel => 'نشانک‌ها';

  @override
  String get fullChapter => 'کل فصل';

  @override
  String get addBookmark => 'افزودن نشانک';

  @override
  String get selectVerse => 'انتخاب آیه';

  @override
  String get labelOptional => 'Label (optional)';

  @override
  String get notesOptional => 'Notes (optional)';

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
  String get switchToFullChapter => 'رفتن به کل فصل';

  @override
  String get bookmarkSheetCancel => 'لغو';

  @override
  String get pickCustomAccent => 'Choose a custom accent';

  @override
  String get apply => 'اعمال';

  @override
  String get custom => 'سفارشی';

  @override
  String get brightnessSystem => 'سیستم';

  @override
  String get brightnessLight => 'روشن';

  @override
  String get brightnessDark => 'تاریک';

  @override
  String get selectBook => 'انتخاب کتاب';

  @override
  String get bookmarkFilterAll => 'همه';

  @override
  String get bookmarkFilterUnlabeled => 'بدون برچسب';

  @override
  String get bookmarkSortRecent => 'جدیدترین';

  @override
  String get bookmarkSortCanonical => 'ترتیب کتاب مقدس';

  @override
  String get chapterRetry => 'تلاش دوباره';

  @override
  String get fontSize => 'اندازه قلم';

  @override
  String fontSizePixels(Object size) {
    return '$size px';
  }

  @override
  String get fontSizeSlider => 'اندازه قلم';

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
  String get paragraphMode => 'حالت بند';

  @override
  String get verseListMode => 'حالت فهرست آیات';

  @override
  String get paragraphModeTooltip => 'انتخاب حالت بند';

  @override
  String get verseListModeTooltip => 'انتخاب حالت فهرست آیات';

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
  String get noBookmarksYet => 'هنوز نشانکی ندارید.';

  @override
  String get noBookmarksYetHint => 'هنگام خواندن نشانک اضافه کنید.';

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
  String get lightMode => 'روشن';

  @override
  String get followSystemMode => 'پیروی از سیستم';

  @override
  String get darkMode => 'تاریک';

  @override
  String get customColourPicker => 'Custom colour picker';

  @override
  String get customColourTooltip => 'Custom color…';

  @override
  String get couldNotLoadBooks => 'کتاب‌ها بارگذاری نشدند.';

  @override
  String chapterLabel(Object chapter) {
    return 'فصل $chapter';
  }

  @override
  String get traditionalOrderBooks => 'ترتیب سنتی';

  @override
  String get alphabeticalOrderBooks => 'ترتیب الفبایی';

  @override
  String get home => 'خانه';

  @override
  String get addBookmarkTooltip => 'افزودن نشانک';

  @override
  String get chooseBookChapter => 'انتخاب کتاب و فصل';

  @override
  String get chooseVerse => 'انتخاب آیه';

  @override
  String get bookChapterQuickNavigation => 'Book and chapter quick navigation';

  @override
  String get verseQuickNavigation => 'Verse quick navigation';

  @override
  String get backToBooks => 'بازگشت به کتاب‌ها';

  @override
  String get selectBookTitle => 'انتخاب کتاب';

  @override
  String selectChapterTitle(Object bookName) {
    return 'انتخاب فصل $bookName';
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
    return 'کل فصل: $bookName $chapter';
  }

  @override
  String get memorizeHint => 'Memorize';

  @override
  String get addNoteHint => 'Add a note...';

  @override
  String get languageSearchHint => 'جستجوی زبان';

  @override
  String get languageModuleInstalled => 'ماژول زبان نصب شده است';

  @override
  String get languageModulePending => 'ماژول زبان در دسترس نیست';

  @override
  String get languageNoMatches => 'زبان مطابقی پیدا نشد.';

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
  String get oldTestament => 'عهد عتیق';

  @override
  String get newTestament => 'عهد جدید';

  @override
  String get deuterocanonApocrypha => 'دوتروکانون / آپوکریف';
}
