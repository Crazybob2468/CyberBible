// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Kashmiri (`ks`).
class AppLocalizationsKs extends AppLocalizations {
  AppLocalizationsKs([String locale = 'ks']) : super(locale);

  @override
  String get settingsTitle => 'ترتیبات';

  @override
  String get languageSection => 'زبان';

  @override
  String get useSystemLanguage => 'نظام کی زبان استعمال کریں';

  @override
  String get useSystemLanguageSubtitle =>
      'ڈیوائس کی زبان کو بطور ڈیفالٹ استعمال کریں۔';

  @override
  String get currentLanguage => 'موجودہ زبان';

  @override
  String get appLanguage => 'ایپ کی زبان';

  @override
  String get chooseLanguage => 'زبان منتخب کریں';

  @override
  String get theme => 'تھیم';

  @override
  String get appearance => 'ظاہری شکل';

  @override
  String get textSection => 'متن';

  @override
  String get readingFormatSection => 'مطالعے کا انداز';

  @override
  String get displaySection => 'ڈسپلے';

  @override
  String get verseNumbers => 'آیت کے نمبر';

  @override
  String get sectionHeadings => 'حصہ کے عنوان';

  @override
  String get redLetterText => 'سرخ متن';

  @override
  String get selectABook => 'کتاب منتخب کریں';

  @override
  String get traditionalOrder => 'روایتی ترتیب';

  @override
  String get alphabeticalOrder => 'حروف تہجی کی ترتیب';

  @override
  String get bookmarks => 'بُک مارکس';

  @override
  String get retry => 'دوبارہ کوشش کریں';

  @override
  String get chooseTheme => 'تھیم منتخب کریں';

  @override
  String get customisableThemes => 'قابل تخصیص تھیمز';

  @override
  String get customisableThemesSubtitle =>
      'Tap a card to choose an accent colour. \"Classic White\" also supports Light, Dark and System modes.';

  @override
  String get setThemes => 'تھیمز لگائیں';

  @override
  String get setThemesSubtitle =>
      'Fixed, hand-crafted palettes. No customisation needed — just tap to apply.';

  @override
  String get deleteBookmarkQuestion => 'بُک مارک حذف کریں؟';

  @override
  String get cancel => 'منسوخ';

  @override
  String get delete => 'حذف کریں';

  @override
  String get bookmarkSaved => 'بُک مارک محفوظ ہو گیا';

  @override
  String get couldNotDeleteBookmark => 'بُک مارک حذف نہیں ہو سکا۔';

  @override
  String couldNotNavigate(Object reference) {
    return 'Could not navigate to $reference.';
  }

  @override
  String get pageNotFound => 'صفحہ نہیں ملا';

  @override
  String noRouteDefined(Object routeName) {
    return 'No route defined for \"$routeName\"';
  }

  @override
  String get english => 'انگریزی';

  @override
  String get spanish => 'ہسپانوی';

  @override
  String get systemDefault => 'نظام کی طے شدہ';

  @override
  String get languageStatusEnglish => 'English fallback active';

  @override
  String get languageStatusSystem => 'نظام کی زبان استعمال ہو رہی ہے';

  @override
  String languageStatusSelected(Object languageName) {
    return 'منتخب زبان: $languageName';
  }

  @override
  String get themeLabel => 'تھیم';

  @override
  String get notFoundTitle => 'صفحہ نہیں ملا';

  @override
  String get loadingCyberBible => 'Loading Cyber Bible...';

  @override
  String get couldNotOpenDatabase =>
      'Could not open the Bible database. Please try again.';

  @override
  String get homeTagline => 'A free and open source Bible study app';

  @override
  String get readTheBible => 'بائبل پڑھیں';

  @override
  String get settingsTooltip => 'ترتیبات';

  @override
  String get themeChoose => 'تھیم منتخب کریں';

  @override
  String get customThemes => 'اپنی تھیم';

  @override
  String get customThemesSubtitle =>
      'Tap a card to choose an accent colour. \"Classic White\" also supports Light, Dark and System modes.';

  @override
  String get setThemesLabel => 'تھیمز لگائیں';

  @override
  String get deleteBookmarkDialog => 'بُک مارک حذف کریں؟';

  @override
  String removeBookmarkMessage(Object details, Object reference) {
    return 'Remove \"$reference\"$details?\n\nThis cannot be undone.';
  }

  @override
  String get couldNotLoadBookmarks =>
      'Could not load bookmarks. Please try again.';

  @override
  String get bookmarkSavedMessage => 'بُک مارک محفوظ ہو گیا';

  @override
  String get couldNotSaveBookmark => 'بُک مارک محفوظ نہیں ہو سکا۔';

  @override
  String get noBookmarksMatchFilter => 'No bookmarks match this filter.';

  @override
  String get clearFilter => 'فلٹر ہٹائیں';

  @override
  String get traditionalOrderLabel => 'روایتی ترتیب';

  @override
  String get alphabeticalOrderLabel => 'حروف تہجی کی ترتیب';

  @override
  String get bookmarksTabLabel => 'بُک مارکس';

  @override
  String get fullChapter => 'پورا باب';

  @override
  String get addBookmark => 'بُک مارک شامل کریں';

  @override
  String get selectVerse => 'آیت منتخب کریں';

  @override
  String get labelOptional => 'Label (optional)';

  @override
  String get notesOptional => 'Notes (optional)';

  @override
  String get save => 'محفوظ کریں';

  @override
  String get goToVerse => 'آیت پر جائیں';

  @override
  String verseTitle(Object verse) {
    return 'آیت $verse';
  }

  @override
  String chapterTitle(Object chapter) {
    return 'باب $chapter';
  }

  @override
  String get switchToFullChapter => 'پورے باب پر جائیں';

  @override
  String get bookmarkSheetCancel => 'منسوخ';

  @override
  String get pickCustomAccent => 'Choose a custom accent';

  @override
  String get apply => 'لاگو کریں';

  @override
  String get custom => 'تخصیصی';

  @override
  String get brightnessSystem => 'نظام';

  @override
  String get brightnessLight => 'ہلکا';

  @override
  String get brightnessDark => 'تاریک';

  @override
  String get selectBook => 'کتاب منتخب کریں';

  @override
  String get bookmarkFilterAll => 'تمام';

  @override
  String get bookmarkFilterUnlabeled => 'بے نام';

  @override
  String get bookmarkSortRecent => 'تازہ ترین';

  @override
  String get bookmarkSortCanonical => 'بائبل کی ترتیب';

  @override
  String get chapterRetry => 'دوبارہ کوشش کریں';

  @override
  String get fontSize => 'متن کا سائز';

  @override
  String fontSizePixels(Object size) {
    return '$size px';
  }

  @override
  String get fontSizeSlider => 'متن کا سائز';

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
  String get paragraphMode => 'پیراگراف موڈ';

  @override
  String get verseListMode => 'آیت فہرست موڈ';

  @override
  String get paragraphModeTooltip => 'پیراگراف موڈ منتخب کریں';

  @override
  String get verseListModeTooltip => 'آیت فہرست موڈ منتخب کریں';

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
  String get noBookmarksYet => 'ابھی کوئی بُک مارک نہیں ہے۔';

  @override
  String get noBookmarksYetHint => 'مطالعہ کے دوران بُک مارک شامل کریں۔';

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
  String get lightMode => 'ہلکا';

  @override
  String get followSystemMode => 'نظام کے مطابق';

  @override
  String get darkMode => 'تاریک';

  @override
  String get customColourPicker => 'Custom colour picker';

  @override
  String get customColourTooltip => 'Custom color…';

  @override
  String get couldNotLoadBooks => 'کتابیں لوڈ نہیں ہو سکیں۔';

  @override
  String chapterLabel(Object chapter) {
    return 'باب $chapter';
  }

  @override
  String get traditionalOrderBooks => 'روایتی ترتیب';

  @override
  String get alphabeticalOrderBooks => 'حروف تہجی کی ترتیب';

  @override
  String get home => 'مرکزی صفحہ';

  @override
  String get addBookmarkTooltip => 'بُک مارک شامل کریں';

  @override
  String get chooseBookChapter => 'کتاب اور باب منتخب کریں';

  @override
  String get chooseVerse => 'آیت منتخب کریں';

  @override
  String get bookChapterQuickNavigation => 'Book and chapter quick navigation';

  @override
  String get verseQuickNavigation => 'Verse quick navigation';

  @override
  String get backToBooks => 'کتابوں پر واپس';

  @override
  String get selectBookTitle => 'کتاب منتخب کریں';

  @override
  String selectChapterTitle(Object bookName) {
    return '$bookName کا باب منتخب کریں';
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
    return 'پورا باب: $bookName $chapter';
  }

  @override
  String get memorizeHint => 'Memorize';

  @override
  String get addNoteHint => 'Add a note...';

  @override
  String get languageSearchHint => 'زبان تلاش کریں';

  @override
  String get languageModuleInstalled => 'زبان کا ماڈیول انسٹال ہے';

  @override
  String get languageModulePending => 'زبان کا ماڈیول دستیاب نہیں';

  @override
  String get languageNoMatches => 'کوئی ملتی زبان نہیں ملی۔';

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
  String get oldTestament => 'پرانا عہد نامہ';

  @override
  String get newTestament => 'نیا عہد نامہ';

  @override
  String get deuterocanonApocrypha => 'خارجی / اپوکریفا';

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
