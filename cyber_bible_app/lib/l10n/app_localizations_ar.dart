// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Arabic (`ar`).
class AppLocalizationsAr extends AppLocalizations {
  AppLocalizationsAr([String locale = 'ar']) : super(locale);

  @override
  String get settingsTitle => 'الإعدادات';

  @override
  String get languageSection => 'اللغة';

  @override
  String get useSystemLanguage => 'استخدام لغة النظام';

  @override
  String get useSystemLanguageSubtitle => 'مطابقة لغة الجهاز افتراضيًا.';

  @override
  String get currentLanguage => 'اللغة الحالية';

  @override
  String get appLanguage => 'لغة التطبيق';

  @override
  String get chooseLanguage => 'اختيار اللغة';

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
  String get selectABook => 'اختيار سفر';

  @override
  String get traditionalOrder => 'الترتيب التقليدي';

  @override
  String get alphabeticalOrder => 'الترتيب الأبجدي';

  @override
  String get bookmarks => 'الإشارات المرجعية';

  @override
  String get retry => 'إعادة المحاولة';

  @override
  String get chooseTheme => 'اختيار السمة';

  @override
  String get customisableThemes => 'سمات قابلة للتخصيص';

  @override
  String get customisableThemesSubtitle =>
      'اضغط على بطاقة لاختيار لون مميز. يدعم Classic White أيضًا الأوضاع الفاتح والداكن والنظام.';

  @override
  String get setThemes => 'سمات جاهزة';

  @override
  String get setThemesSubtitle =>
      'لوحات ثابتة مصممة بعناية. لا حاجة للتخصيص، اضغط للتطبيق.';

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
    return 'تعذر الانتقال إلى $reference.';
  }

  @override
  String get pageNotFound => 'الصفحة غير موجودة';

  @override
  String noRouteDefined(Object routeName) {
    return 'لا يوجد مسار محدد لـ \"$routeName\"';
  }

  @override
  String get english => 'الإنجليزية';

  @override
  String get spanish => 'الإسبانية';

  @override
  String get systemDefault => 'الإعداد الافتراضي للنظام';

  @override
  String get languageStatusEnglish => 'تفعيل اللغة الإنجليزية الاحتياطية';

  @override
  String get languageStatusSystem => 'استخدام لغة النظام';

  @override
  String languageStatusSelected(Object languageName) {
    return 'اللغة المحددة: $languageName';
  }

  @override
  String get themeLabel => 'السمة';

  @override
  String get notFoundTitle => 'الصفحة غير موجودة';

  @override
  String get loadingCyberBible => 'جارٍ تحميل Cyber Bible...';

  @override
  String get couldNotOpenDatabase =>
      'تعذر فتح قاعدة بيانات الكتاب المقدس. حاول مرة أخرى.';

  @override
  String get homeTagline => 'تطبيق مجاني ومفتوح المصدر لدراسة الكتاب المقدس';

  @override
  String get readTheBible => 'قراءة الكتاب المقدس';

  @override
  String get settingsTooltip => 'الإعدادات';

  @override
  String get themeChoose => 'اختيار السمة';

  @override
  String get customThemes => 'سمات قابلة للتخصيص';

  @override
  String get customThemesSubtitle =>
      'اضغط على بطاقة لاختيار لون مميز. يدعم Classic White أيضًا الأوضاع الفاتح والداكن والنظام.';

  @override
  String get setThemesLabel => 'سمات جاهزة';

  @override
  String get deleteBookmarkDialog => 'حذف الإشارة المرجعية؟';

  @override
  String removeBookmarkMessage(Object details, Object reference) {
    return 'إزالة \"$reference\"$details؟\n\nلا يمكن التراجع عن ذلك.';
  }

  @override
  String get couldNotLoadBookmarks =>
      'تعذر تحميل الإشارات المرجعية. حاول مرة أخرى.';

  @override
  String get bookmarkSavedMessage => 'تم حفظ الإشارة المرجعية';

  @override
  String get couldNotSaveBookmark => 'تعذر حفظ الإشارة المرجعية.';

  @override
  String get noBookmarksMatchFilter =>
      'لا توجد إشارات مرجعية تطابق هذا المرشح.';

  @override
  String get clearFilter => 'مسح المرشح';

  @override
  String get traditionalOrderLabel => 'الترتيب التقليدي';

  @override
  String get alphabeticalOrderLabel => 'الترتيب الأبجدي';

  @override
  String get bookmarksTabLabel => 'الإشارات المرجعية';

  @override
  String get fullChapter => 'الإصحاح كاملًا';

  @override
  String get addBookmark => 'إضافة إشارة مرجعية';

  @override
  String get selectVerse => 'اختيار آية';

  @override
  String get labelOptional => 'التسمية (اختياري)';

  @override
  String get notesOptional => 'الملاحظات (اختياري)';

  @override
  String get save => 'حفظ';

  @override
  String get goToVerse => 'الانتقال إلى الآية';

  @override
  String verseTitle(Object verse) {
    return 'الآية $verse';
  }

  @override
  String chapterTitle(Object chapter) {
    return 'الإصحاح $chapter';
  }

  @override
  String get switchToFullChapter => 'التبديل إلى إشارة إصحاح كامل';

  @override
  String get bookmarkSheetCancel => 'إلغاء وإغلاق لوحة الإشارة المرجعية';

  @override
  String get pickCustomAccent => 'اختيار لون مميز مخصص';

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
  String get selectBook => 'اختيار سفر';

  @override
  String get bookmarkFilterAll => 'الكل';

  @override
  String get bookmarkFilterUnlabeled => 'بلا تسمية';

  @override
  String get bookmarkSortRecent => 'الأحدث أولًا';

  @override
  String get bookmarkSortCanonical => 'الترتيب القانوني';

  @override
  String get chapterRetry => 'إعادة المحاولة';

  @override
  String get fontSize => 'حجم الخط';

  @override
  String fontSizePixels(Object size) {
    return '$size بكسل';
  }

  @override
  String get fontSizeSlider => 'شريط حجم الخط';

  @override
  String get fontSizeSliderHint => 'اسحب للضبط من 12 إلى 28';

  @override
  String get fontPreview => '\"في البدء خلق الله السماوات والأرض.\" — تك 1:1';

  @override
  String get showVerseNumbersSubtitle =>
      'إظهار أرقام الآيات المرتفعة في شاشة القراءة.';

  @override
  String get showSectionHeadingsSubtitle =>
      'إظهار عناوين الأقسام والمزامير بين المقاطع.';

  @override
  String get wordsOfChristSubtitle =>
      'إظهار كلمات يسوع باللون الأحمر. عطّل ذلك لاستخدام لون واحد للنص.';

  @override
  String get verseFormatTitle => 'تنسيق الآية';

  @override
  String get verseFormatSubtitle => 'اختر طريقة ترتيب نص الكتاب المقدس.';

  @override
  String get paragraphMode => 'فقرة';

  @override
  String get verseListMode => 'قائمة الآيات';

  @override
  String get paragraphModeTooltip => 'وضع الفقرة';

  @override
  String get verseListModeTooltip => 'وضع قائمة الآيات';

  @override
  String get paragraphModeDescription =>
      'يتدفق النص باستمرار في فقرات بادئة، مثل الكتاب المقدس المطبوع.';

  @override
  String get verseListModeDescription =>
      'يبدأ كل مقطع كتابي في سطره، مما يسهل تمييز مجموعات الآيات.';

  @override
  String get deleteBookmarkTooltip => 'حذف الإشارة المرجعية';

  @override
  String deleteBookmarkSemantics(Object reference) {
    return 'حذف الإشارة المرجعية $reference';
  }

  @override
  String sortBookmarksTooltip(Object sortOrder) {
    return 'ترتيب: $sortOrder';
  }

  @override
  String get noBookmarksYet => 'لا توجد إشارات مرجعية بعد.';

  @override
  String get noBookmarksYetHint =>
      'اضغط أيقونة الإشارة أثناء القراءة لحفظ موضع.';

  @override
  String bookmarkReferenceNavigationError(Object reference) {
    return 'تعذر الانتقال إلى $reference.';
  }

  @override
  String themeCardSemantics(Object description, Object name, Object selected) {
    return 'سمة $name$selected. $description';
  }

  @override
  String get selectedThemeSuffix => '، محددة حاليًا';

  @override
  String get customisableAccentDescription => 'لون مميز قابل للتخصيص.';

  @override
  String get fixedPaletteDescription => 'لوحة ثابتة.';

  @override
  String accentColourTitle(Object themeName) {
    return 'اللون المميز — $themeName';
  }

  @override
  String get brightnessMode => 'وضع السطوع';

  @override
  String get lightMode => 'الوضع الفاتح';

  @override
  String get followSystemMode => 'اتباع وضع النظام';

  @override
  String get darkMode => 'الوضع الداكن';

  @override
  String get customColourPicker => 'منتقي لون مخصص';

  @override
  String get customColourTooltip => 'لون مخصص...';

  @override
  String get couldNotLoadBooks => 'تعذر تحميل قائمة الأسفار. حاول مرة أخرى.';

  @override
  String chapterLabel(Object chapter) {
    return 'الإصحاح $chapter';
  }

  @override
  String get traditionalOrderBooks => 'الأسفار بالترتيب التقليدي';

  @override
  String get alphabeticalOrderBooks => 'الأسفار بالترتيب الأبجدي';

  @override
  String get home => 'الرئيسية';

  @override
  String get addBookmarkTooltip => 'إضافة إشارة مرجعية';

  @override
  String get chooseBookChapter => 'اختيار السفر والإصحاح';

  @override
  String get chooseVerse => 'اختيار الآية';

  @override
  String get bookChapterQuickNavigation => 'تنقل سريع للسفر والإصحاح';

  @override
  String get verseQuickNavigation => 'تنقل سريع للآية';

  @override
  String get backToBooks => 'العودة إلى الأسفار';

  @override
  String get selectBookTitle => 'اختيار السفر';

  @override
  String selectChapterTitle(Object bookName) {
    return 'اختيار الإصحاح ($bookName)';
  }

  @override
  String chapterSelectionLabel(Object chapter) {
    return 'الإصحاح $chapter';
  }

  @override
  String verseSelectionLabel(Object verse) {
    return 'الآية $verse';
  }

  @override
  String fullChapterReference(Object bookName, Object chapter) {
    return 'الإصحاح كاملًا: $bookName $chapter';
  }

  @override
  String get memorizeHint => 'حفظ';

  @override
  String get addNoteHint => 'إضافة ملاحظة...';

  @override
  String get languageSearchHint => 'البحث عن اللغات';

  @override
  String get languageModuleInstalled => 'مثبت';

  @override
  String get languageModulePending => 'ترجمة آلية معلقة';

  @override
  String get languageNoMatches => 'لا توجد لغات تطابق بحثك.';

  @override
  String get languageCatalogDescription =>
      'تعمل اللغات المثبتة دون اتصال. ستضاف اللغات الأخرى كوحدات مترجمة آليًا.';

  @override
  String get saveBookmarkSemantics => 'حفظ الإشارة المرجعية';

  @override
  String get couldNotLoadChapter => 'تعذر تحميل الإصحاح. حاول مرة أخرى.';

  @override
  String get couldNotLoadChapters => 'تعذر تحميل الإصحاحات. حاول مرة أخرى.';

  @override
  String verseWithText(Object text, Object verse) {
    return 'الآية $verse: $text';
  }

  @override
  String accentSwatchSemantics(Object name, Object selected) {
    return 'اللون المميز $name$selected';
  }

  @override
  String get oldTestament => 'العهد القديم';

  @override
  String get newTestament => 'العهد الجديد';

  @override
  String get deuterocanonApocrypha => 'الأسفار القانونية الثانية / الأبوكريفا';
}
