// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Pushto Pashto (`ps`).
class AppLocalizationsPs extends AppLocalizations {
  AppLocalizationsPs([String locale = 'ps']) : super(locale);

  @override
  String get settingsTitle => 'امستنې';

  @override
  String get languageSection => 'ژبه';

  @override
  String get useSystemLanguage => 'د سیسټم ژبه وکاروئ';

  @override
  String get useSystemLanguageSubtitle =>
      'د وسیلې ژبه د تلوالې په توګه وکاروئ.';

  @override
  String get currentLanguage => 'اوسنۍ ژبه';

  @override
  String get appLanguage => 'د اپ ژبه';

  @override
  String get chooseLanguage => 'ژبه وټاکئ';

  @override
  String get theme => 'بڼه';

  @override
  String get appearance => 'څرګند بڼه';

  @override
  String get textSection => 'متن';

  @override
  String get readingFormatSection => 'د لوستلو بڼه';

  @override
  String get displaySection => 'ښودل';

  @override
  String get verseNumbers => 'د آیت شمېرې';

  @override
  String get sectionHeadings => 'د برخو سرلیکونه';

  @override
  String get redLetterText => 'سور متن';

  @override
  String get selectABook => 'کتاب وټاکئ';

  @override
  String get traditionalOrder => 'دودیز ترتیب';

  @override
  String get alphabeticalOrder => 'د الفبا ترتیب';

  @override
  String get bookmarks => 'نښې';

  @override
  String get retry => 'بیا هڅه وکړئ';

  @override
  String get chooseTheme => 'بڼه وټاکئ';

  @override
  String get customisableThemes => 'د بدلون وړ بڼې';

  @override
  String get customisableThemesSubtitle =>
      'د رنګ ټاکلو لپاره پر کارت ټک وکړئ. \"Classic White\" روښانه، تیاره او د سیسټم حالتونه هم لري.';

  @override
  String get setThemes => 'ثابتې بڼې';

  @override
  String get setThemesSubtitle =>
      'په پاملرنې جوړ شوي ثابت رنګونه. بدلون ته اړتیا نشته؛ د کارولو لپاره ټک وکړئ.';

  @override
  String get deleteBookmarkQuestion => 'نښه ړنګه کړئ؟';

  @override
  String get cancel => 'لغوه';

  @override
  String get delete => 'ړنګول';

  @override
  String get bookmarkSaved => 'نښه خوندي شوه';

  @override
  String get couldNotDeleteBookmark => 'نښه ړنګه نه شوه.';

  @override
  String couldNotNavigate(Object reference) {
    return '$reference ته تګ ممکن نه شو.';
  }

  @override
  String get pageNotFound => 'پاڼه ونه موندل شوه';

  @override
  String noRouteDefined(Object routeName) {
    return 'د \"$routeName\" لپاره لاره نه ده ټاکل شوې';
  }

  @override
  String get english => 'انګلیسي';

  @override
  String get spanish => 'هسپانوي';

  @override
  String get systemDefault => 'د سیسټم تلواله';

  @override
  String get languageStatusEnglish => 'انګلیسي د بدیلې ژبې په توګه کارېږي';

  @override
  String get languageStatusSystem => 'د سیسټم ژبه کارېږي';

  @override
  String languageStatusSelected(Object languageName) {
    return 'ټاکل شوې ژبه: $languageName';
  }

  @override
  String get themeLabel => 'بڼه';

  @override
  String get notFoundTitle => 'پاڼه ونه موندل شوه';

  @override
  String get loadingCyberBible => 'سایبري انجیل پرانیستل کېږي...';

  @override
  String get couldNotOpenDatabase =>
      'د انجیل ډیټابېس پرانیستل ممکن نه شول. بیا هڅه وکړئ.';

  @override
  String get homeTagline => 'د انجیل د مطالعې لپاره وړیا او پرانیستې سرچینې اپ';

  @override
  String get readTheBible => 'انجیل ولولئ';

  @override
  String get settingsTooltip => 'امستنې';

  @override
  String get themeChoose => 'بڼه وټاکئ';

  @override
  String get customThemes => 'د بدلون وړ بڼې';

  @override
  String get customThemesSubtitle =>
      'د رنګ ټاکلو لپاره پر کارت ټک وکړئ. \"Classic White\" روښانه، تیاره او د سیسټم حالتونه هم لري.';

  @override
  String get setThemesLabel => 'ثابتې بڼې';

  @override
  String get deleteBookmarkDialog => 'نښه ړنګه کړئ؟';

  @override
  String removeBookmarkMessage(Object details, Object reference) {
    return '\"$reference\"$details لرې کړئ؟\n\nدا کار بېرته نه شي راګرځېدای.';
  }

  @override
  String get couldNotLoadBookmarks =>
      'نښې نه شوې پرانیستل کېدای. بیا هڅه وکړئ.';

  @override
  String get bookmarkSavedMessage => 'نښه خوندي شوه';

  @override
  String get couldNotSaveBookmark => 'نښه خوندي نه شوه.';

  @override
  String get noBookmarksMatchFilter => 'له دې چاڼ سره هېڅ نښه سمون نه لري.';

  @override
  String get clearFilter => 'چاڼ پاکول';

  @override
  String get traditionalOrderLabel => 'دودیز ترتیب';

  @override
  String get alphabeticalOrderLabel => 'د الفبا ترتیب';

  @override
  String get bookmarksTabLabel => 'نښې';

  @override
  String get fullChapter => 'بشپړ فصل';

  @override
  String get addBookmark => 'نښه زیاتول';

  @override
  String get selectVerse => 'آیت وټاکئ';

  @override
  String get labelOptional => 'نوم (اختیاري)';

  @override
  String get notesOptional => 'یادښتونه (اختیاري)';

  @override
  String get save => 'خوندي کول';

  @override
  String get goToVerse => 'آیت ته تلل';

  @override
  String verseTitle(Object verse) {
    return 'آیت $verse';
  }

  @override
  String chapterTitle(Object chapter) {
    return 'فصل $chapter';
  }

  @override
  String get switchToFullChapter => 'د بشپړ فصل نښې ته بدلون';

  @override
  String get bookmarkSheetCancel => 'لغوه کول او د نښو پاڼه تړل';

  @override
  String get pickCustomAccent => 'د خپلې خوښې رنګ وټاکئ';

  @override
  String get apply => 'پلي کول';

  @override
  String get custom => 'د خپلې خوښې';

  @override
  String get brightnessSystem => 'سیسټم';

  @override
  String get brightnessLight => 'روښانه';

  @override
  String get brightnessDark => 'تیاره';

  @override
  String get selectBook => 'کتاب وټاکئ';

  @override
  String get bookmarkFilterAll => 'ټول';

  @override
  String get bookmarkFilterUnlabeled => 'بې نومه';

  @override
  String get bookmarkSortRecent => 'وروستي لومړی';

  @override
  String get bookmarkSortCanonical => 'د کتابونو منل شوی ترتیب';

  @override
  String get chapterRetry => 'بیا هڅه وکړئ';

  @override
  String get fontSize => 'د لیک کچه';

  @override
  String fontSizePixels(Object size) {
    return '$size px';
  }

  @override
  String get fontSizeSlider => 'د لیک د کچې ښویوونکی';

  @override
  String get fontSizeSliderHint => 'له ۱۲ تر ۲۸ پورې د بدلون لپاره یې وخوځوئ';

  @override
  String get fontPreview =>
      '\"په پیل کې خدای اسمان او ځمکه پیدا کړل.\" — پیدایښت ۱:۱';

  @override
  String get showVerseNumbersSubtitle =>
      'د لوستلو پر پرده د آیت شمېرې ښکاره کړئ.';

  @override
  String get showSectionHeadingsSubtitle =>
      'د متنونو ترمنځ د برخو او زبورونو سرلیکونه ښکاره کړئ.';

  @override
  String get wordsOfChristSubtitle =>
      'د عیسی خبرې په سور رنګ ښکاره کړئ. د یوه متن رنګ لپاره یې بند کړئ.';

  @override
  String get verseFormatTitle => 'د آیت بڼه';

  @override
  String get verseFormatSubtitle => 'د سپېڅلي متن د ترتیب ډول وټاکئ.';

  @override
  String get paragraphMode => 'پاراګراف';

  @override
  String get verseListMode => 'د آیتونو لړ';

  @override
  String get paragraphModeTooltip => 'د پاراګراف حالت';

  @override
  String get verseListModeTooltip => 'د آیتونو د لړ حالت';

  @override
  String get paragraphModeDescription =>
      'متن د چاپ شوي انجیل په څېر په پرله‌پسې او دننه تللو پاراګرافونو کې روان وي.';

  @override
  String get verseListModeDescription =>
      'د سپېڅلي متن هر پاراګراف په خپله کرښه پیلېږي، څو د آیتونو ډلې په اسانۍ وموندل شي.';

  @override
  String get deleteBookmarkTooltip => 'نښه ړنګول';

  @override
  String deleteBookmarkSemantics(Object reference) {
    return 'د $reference نښه ړنګول';
  }

  @override
  String sortBookmarksTooltip(Object sortOrder) {
    return 'ترتیب: $sortOrder';
  }

  @override
  String get noBookmarksYet => 'تر اوسه هېڅ نښه نشته.';

  @override
  String get noBookmarksYetHint =>
      'د ځای خوندي کولو لپاره د لوستلو پر مهال د نښې نښان ووهئ.';

  @override
  String bookmarkReferenceNavigationError(Object reference) {
    return '$reference ته تګ ممکن نه شو.';
  }

  @override
  String themeCardSemantics(Object description, Object name, Object selected) {
    return 'د $name بڼه$selected. $description';
  }

  @override
  String get selectedThemeSuffix => '، اوس ټاکل شوې';

  @override
  String get customisableAccentDescription => 'د بدلون وړ د رنګ ټینګار.';

  @override
  String get fixedPaletteDescription => 'ثابت رنګونه.';

  @override
  String accentColourTitle(Object themeName) {
    return 'د ټینګار رنګ — $themeName';
  }

  @override
  String get brightnessMode => 'د روښانتیا حالت';

  @override
  String get lightMode => 'روښانه حالت';

  @override
  String get followSystemMode => 'د سیسټم حالت تعقیبول';

  @override
  String get darkMode => 'تیاره حالت';

  @override
  String get customColourPicker => 'د خپلې خوښې رنګ ټاکونکی';

  @override
  String get customColourTooltip => 'د خپلې خوښې رنګ...';

  @override
  String get couldNotLoadBooks =>
      'د کتابونو لړ نه شو پرانیستل کېدای. بیا هڅه وکړئ.';

  @override
  String chapterLabel(Object chapter) {
    return 'فصل $chapter';
  }

  @override
  String get traditionalOrderBooks => 'کتابونه په دودیز ترتیب';

  @override
  String get alphabeticalOrderBooks => 'کتابونه د الفبا په ترتیب';

  @override
  String get home => 'کور';

  @override
  String get addBookmarkTooltip => 'نښه زیاتول';

  @override
  String get chooseBookChapter => 'کتاب او فصل وټاکئ';

  @override
  String get chooseVerse => 'آیت وټاکئ';

  @override
  String get bookChapterQuickNavigation => 'کتاب او فصل ته چټک تګ';

  @override
  String get verseQuickNavigation => 'آیت ته چټک تګ';

  @override
  String get backToBooks => 'کتابونو ته بېرته تلل';

  @override
  String get selectBookTitle => 'کتاب وټاکئ';

  @override
  String selectChapterTitle(Object bookName) {
    return 'فصل وټاکئ ($bookName)';
  }

  @override
  String chapterSelectionLabel(Object chapter) {
    return 'فصل $chapter';
  }

  @override
  String verseSelectionLabel(Object verse) {
    return 'آیت $verse';
  }

  @override
  String fullChapterReference(Object bookName, Object chapter) {
    return 'بشپړ فصل: $bookName $chapter';
  }

  @override
  String get memorizeHint => 'یادول';

  @override
  String get addNoteHint => 'یادښت زیات کړئ...';

  @override
  String get languageSearchHint => 'ژبې ولټوئ';

  @override
  String get languageModuleInstalled => 'نصب شوی';

  @override
  String get languageModulePending => 'د ماشیني ژباړې په تمه';

  @override
  String get languageNoMatches => 'ستاسې له لټون سره هېڅ ژبه سمون نه لري.';

  @override
  String get languageCatalogDescription =>
      'نصب شوې ژبې له انټرنېټ پرته کار کوي. نورې ژبې به د ماشیني ژباړې په بڼه ورزیاتې شي.';

  @override
  String get saveBookmarkSemantics => 'نښه خوندي کول';

  @override
  String get couldNotLoadChapter => 'فصل نه شو پرانیستل کېدای. بیا هڅه وکړئ.';

  @override
  String get couldNotLoadChapters =>
      'فصلونه نه شول پرانیستل کېدای. بیا هڅه وکړئ.';

  @override
  String verseWithText(Object text, Object verse) {
    return 'آیت $verse: $text';
  }

  @override
  String accentSwatchSemantics(Object name, Object selected) {
    return 'د $name ټینګار رنګ$selected';
  }

  @override
  String get oldTestament => 'زوړ تړون';

  @override
  String get newTestament => 'نوی تړون';

  @override
  String get deuterocanonApocrypha => 'ثانوي قانوني کتابونه / اپوکریفا';
}
