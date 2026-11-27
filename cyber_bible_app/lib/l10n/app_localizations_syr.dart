// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Syriac (`syr`).
class AppLocalizationsSyr extends AppLocalizations {
  AppLocalizationsSyr([String locale = 'syr']) : super(locale);

  @override
  String get settingsTitle => 'الإعدادات';

  @override
  String get languageSection => 'اللغة';

  @override
  String get useSystemLanguage => 'استخدام لغة النظام';

  @override
  String get useSystemLanguageSubtitle => 'استخدام لغة الجهاز افتراضيًا.';

  @override
  String get currentLanguage => 'اللغة الحالية';

  @override
  String get appLanguage => 'لغة التطبيق';

  @override
  String get chooseLanguage => 'اختر اللغة';

  @override
  String get theme => 'السمة';

  @override
  String get appearance => 'المظهر';

  @override
  String get textSection => 'النص';

  @override
  String get readingFormatSection => 'تنسيق القراءة';

  @override
  String get displaySection => 'العرض';

  @override
  String get verseNumbers => 'أرقام الآيات';

  @override
  String get sectionHeadings => 'عناوين الأقسام';

  @override
  String get redLetterText => 'النص الأحمر';

  @override
  String get selectABook => 'اختر كتابًا';

  @override
  String get traditionalOrder => 'الترتيب التقليدي';

  @override
  String get alphabeticalOrder => 'ترتيب أبجدي';

  @override
  String get bookmarks => 'الإشارات المرجعية';

  @override
  String get retry => 'إعادة المحاولة';

  @override
  String get chooseTheme => 'اختر السمة';

  @override
  String get customisableThemes => 'سمات قابلة للتخصيص';

  @override
  String get customisableThemesSubtitle =>
      'Tap a card to choose an accent colour. \"Classic White\" also supports Light, Dark and System modes.';

  @override
  String get setThemes => 'تطبيق السمات';

  @override
  String get setThemesSubtitle =>
      'Fixed, hand-crafted palettes. No customisation needed — just tap to apply.';

  @override
  String get deleteBookmarkQuestion => 'حذف الإشارة المرجعية؟';

  @override
  String get cancel => 'إلغاء';

  @override
  String get delete => 'حذف';

  @override
  String get bookmarkSaved => 'تم حفظ الإشارة المرجعية';

  @override
  String get couldNotDeleteBookmark => 'تعذر حذف الإشارة المرجعية.';

  @override
  String couldNotNavigate(Object reference) {
    return 'Could not navigate to $reference.';
  }

  @override
  String get pageNotFound => 'الصفحة غير موجودة';

  @override
  String noRouteDefined(Object routeName) {
    return 'No route defined for \"$routeName\"';
  }

  @override
  String get english => 'الإنجليزية';

  @override
  String get spanish => 'الإسبانية';

  @override
  String get systemDefault => 'افتراضي النظام';

  @override
  String get languageStatusEnglish => 'English fallback active';

  @override
  String get languageStatusSystem => 'يتم استخدام لغة النظام';

  @override
  String languageStatusSelected(Object languageName) {
    return 'اللغة المختارة: $languageName';
  }

  @override
  String get themeLabel => 'السمة';

  @override
  String get notFoundTitle => 'الصفحة غير موجودة';

  @override
  String get loadingCyberBible => 'Loading Cyber Bible...';

  @override
  String get couldNotOpenDatabase =>
      'Could not open the Bible database. Please try again.';

  @override
  String get homeTagline => 'A free and open source Bible study app';

  @override
  String get readTheBible => 'اقرأ الكتاب المقدس';

  @override
  String get settingsTooltip => 'الإعدادات';

  @override
  String get themeChoose => 'اختر السمة';

  @override
  String get customThemes => 'سمات مخصصة';

  @override
  String get customThemesSubtitle =>
      'Tap a card to choose an accent colour. \"Classic White\" also supports Light, Dark and System modes.';

  @override
  String get setThemesLabel => 'تطبيق السمات';

  @override
  String get deleteBookmarkDialog => 'حذف الإشارة المرجعية؟';

  @override
  String removeBookmarkMessage(Object details, Object reference) {
    return 'Remove \"$reference\"$details?\n\nThis cannot be undone.';
  }

  @override
  String get couldNotLoadBookmarks =>
      'Could not load bookmarks. Please try again.';

  @override
  String get bookmarkSavedMessage => 'تم حفظ الإشارة المرجعية';

  @override
  String get couldNotSaveBookmark => 'تعذر حفظ الإشارة المرجعية.';

  @override
  String get noBookmarksMatchFilter => 'No bookmarks match this filter.';

  @override
  String get clearFilter => 'مسح عامل التصفية';

  @override
  String get traditionalOrderLabel => 'الترتيب التقليدي';

  @override
  String get alphabeticalOrderLabel => 'الترتيب الأبجدي';

  @override
  String get bookmarksTabLabel => 'الإشارات المرجعية';

  @override
  String get fullChapter => 'الفصل كاملًا';

  @override
  String get addBookmark => 'إضافة إشارة مرجعية';

  @override
  String get selectVerse => 'اختر آية';

  @override
  String get labelOptional => 'Label (optional)';

  @override
  String get notesOptional => 'Notes (optional)';

  @override
  String get save => 'حفظ';

  @override
  String get goToVerse => 'انتقل إلى الآية';

  @override
  String verseTitle(Object verse) {
    return 'آية $verse';
  }

  @override
  String chapterTitle(Object chapter) {
    return 'الفصل $chapter';
  }

  @override
  String get switchToFullChapter => 'الانتقال إلى الفصل الكامل';

  @override
  String get bookmarkSheetCancel => 'إلغاء';

  @override
  String get pickCustomAccent => 'Choose a custom accent';

  @override
  String get apply => 'تطبيق';

  @override
  String get custom => 'مخصص';

  @override
  String get brightnessSystem => 'النظام';

  @override
  String get brightnessLight => 'فاتح';

  @override
  String get brightnessDark => 'داكن';

  @override
  String get selectBook => 'اختر كتابًا';

  @override
  String get bookmarkFilterAll => 'الكل';

  @override
  String get bookmarkFilterUnlabeled => 'بلا تسمية';

  @override
  String get bookmarkSortRecent => 'الأحدث';

  @override
  String get bookmarkSortCanonical => 'الترتيب الكتابي';

  @override
  String get chapterRetry => 'إعادة المحاولة';

  @override
  String get fontSize => 'حجم الخط';

  @override
  String fontSizePixels(Object size) {
    return '$size px';
  }

  @override
  String get fontSizeSlider => 'حجم الخط';

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
  String get paragraphMode => 'وضع الفقرة';

  @override
  String get verseListMode => 'وضع قائمة الآيات';

  @override
  String get paragraphModeTooltip => 'اختر وضع الفقرة';

  @override
  String get verseListModeTooltip => 'اختر وضع قائمة الآيات';

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
  String get noBookmarksYet => 'لا توجد إشارات مرجعية بعد.';

  @override
  String get noBookmarksYetHint => 'أضف إشارة مرجعية أثناء القراءة.';

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
  String get lightMode => 'فاتح';

  @override
  String get followSystemMode => 'اتباع النظام';

  @override
  String get darkMode => 'داكن';

  @override
  String get customColourPicker => 'Custom colour picker';

  @override
  String get customColourTooltip => 'Custom color…';

  @override
  String get couldNotLoadBooks => 'تعذر تحميل الكتب.';

  @override
  String chapterLabel(Object chapter) {
    return 'الفصل $chapter';
  }

  @override
  String get traditionalOrderBooks => 'الترتيب التقليدي';

  @override
  String get alphabeticalOrderBooks => 'الترتيب الأبجدي';

  @override
  String get home => 'الرئيسية';

  @override
  String get addBookmarkTooltip => 'إضافة إشارة مرجعية';

  @override
  String get chooseBookChapter => 'اختر كتابًا وفصلًا';

  @override
  String get chooseVerse => 'اختر آية';

  @override
  String get bookChapterQuickNavigation => 'Book and chapter quick navigation';

  @override
  String get verseQuickNavigation => 'Verse quick navigation';

  @override
  String get backToBooks => 'العودة إلى الكتب';

  @override
  String get selectBookTitle => 'اختر كتابًا';

  @override
  String selectChapterTitle(Object bookName) {
    return 'اختر فصلًا من $bookName';
  }

  @override
  String chapterSelectionLabel(Object chapter) {
    return 'الفصل $chapter';
  }

  @override
  String verseSelectionLabel(Object verse) {
    return 'آية $verse';
  }

  @override
  String fullChapterReference(Object bookName, Object chapter) {
    return 'الفصل كاملًا: $bookName $chapter';
  }

  @override
  String get memorizeHint => 'Memorize';

  @override
  String get addNoteHint => 'Add a note...';

  @override
  String get languageSearchHint => 'ابحث عن لغة';

  @override
  String get languageModuleInstalled => 'تم تثبيت وحدة اللغة';

  @override
  String get languageModulePending => 'وحدة اللغة غير متاحة';

  @override
  String get languageNoMatches => 'لا توجد لغات مطابقة.';

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
  String get oldTestament => 'العهد القديم';

  @override
  String get newTestament => 'العهد الجديد';

  @override
  String get deuterocanonApocrypha => 'الأسفار المندرجة / الأبوكريفا';

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
