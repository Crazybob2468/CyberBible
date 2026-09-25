// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Burmese (`my`).
class AppLocalizationsMy extends AppLocalizations {
  AppLocalizationsMy([String locale = 'my']) : super(locale);

  @override
  String get settingsTitle => 'ဆက်တင်များ';

  @override
  String get languageSection => 'ဘာသာစကား';

  @override
  String get useSystemLanguage => 'စနစ်ဘာသာစကားကိုသုံးပါ။';

  @override
  String get useSystemLanguageSubtitle =>
      'စက်၏ဘာသာစကားကို မူရင်းအတိုင်း ယှဉ်ပါ။';

  @override
  String get currentLanguage => 'လက်ရှိဘာသာစကား';

  @override
  String get appLanguage => 'အက်ပ်ဘာသာစကား';

  @override
  String get chooseLanguage => 'ဘာသာစကားကို ရွေးပါ။';

  @override
  String get theme => 'အပြင်အဆင်';

  @override
  String get appearance => 'အသွင်အပြင်';

  @override
  String get textSection => 'စာသား';

  @override
  String get readingFormatSection => 'စာဖတ်ခြင်းပုံစံ';

  @override
  String get displaySection => 'ပြသခြင်း။';

  @override
  String get verseNumbers => 'နံပါတ်များ';

  @override
  String get sectionHeadings => 'ကဏ္ဍခေါင်းစဉ်များ';

  @override
  String get redLetterText => 'အနီရောင်စာလုံး';

  @override
  String get selectABook => 'စာအုပ်တစ်အုပ်ကို ရွေးပါ။';

  @override
  String get traditionalOrder => 'ရိုးရာအမှာစာ';

  @override
  String get alphabeticalOrder => 'အက္ခရာစဉ်';

  @override
  String get bookmarks => 'ညှပ်';

  @override
  String get retry => 'ပြန်ကြိုးစားပါ။';

  @override
  String get chooseTheme => 'Theme ကို ရွေးပါ။';

  @override
  String get customisableThemes => 'စိတ်ကြိုက်ပြင်ဆင်နိုင်သော အပြင်အဆင်များ';

  @override
  String get customisableThemesSubtitle =>
      'အသံထွက်အရောင်ကိုရွေးချယ်ရန် ကတ်တစ်ခုကိုနှိပ်ပါ။ \"Classic White\" သည် Light၊ Dark နှင့် System Modes များကို ပံ့ပိုးပေးပါသည်။';

  @override
  String get setThemes => 'အပြင်အဆင်များ သတ်မှတ်ပါ။';

  @override
  String get setThemesSubtitle =>
      'ပုံသေ၊ လက်ဖြင့်ပြုလုပ်ထားသော ပျဉ်ချပ်များ။ စိတ်ကြိုက်ပြင်ဆင်မှု မလိုအပ်ပါ — လျှောက်ထားရန် နှိပ်ရုံသာ။';

  @override
  String get deleteBookmarkQuestion => 'စာညှပ်ကို ဖျက်မလား။';

  @override
  String get cancel => 'မလုပ်တော့';

  @override
  String get delete => 'ဖျက်ပါ။';

  @override
  String get bookmarkSaved => 'လိပ်စာကို သိမ်းဆည်းပြီးပါပြီ။';

  @override
  String get couldNotDeleteBookmark => 'လိပ်စာကို ဖျက်၍မရပါ။';

  @override
  String couldNotNavigate(Object reference) {
    return '$reference သို့ သွားလာ၍မရပါ။';
  }

  @override
  String get pageNotFound => 'စာမျက်နှာ မတွေ့ပါ။';

  @override
  String noRouteDefined(Object routeName) {
    return '\"$routeName\" အတွက် သတ်မှတ်ထားသော လမ်းကြောင်းမရှိပါ';
  }

  @override
  String get english => 'အင်္ဂလိပ်စာ';

  @override
  String get spanish => 'Español';

  @override
  String get systemDefault => 'စနစ် ပုံသေ';

  @override
  String get languageStatusEnglish => 'အင်္ဂလိပ်စကား သွက်လက်သည်။';

  @override
  String get languageStatusSystem => 'စနစ်ဘာသာစကားကိုအသုံးပြုခြင်း။';

  @override
  String languageStatusSelected(Object languageName) {
    return 'ရွေးချယ်ထားသော ဘာသာစကား- $languageName';
  }

  @override
  String get themeLabel => 'အပြင်အဆင်';

  @override
  String get notFoundTitle => 'စာမျက်နှာ မတွေ့ပါ။';

  @override
  String get loadingCyberBible => 'ဆိုက်ဘာ သမ္မာကျမ်းစာကို ဖွင့်နေသည်...';

  @override
  String get couldNotOpenDatabase =>
      'သမ္မာကျမ်းစာဒေတာဘေ့စ်ကို ဖွင့်၍မရပါ။ ထပ်စမ်းကြည့်ပါ။';

  @override
  String get homeTagline =>
      'အခမဲ့နှင့် ပွင့်လင်းသော ရင်းမြစ် ကျမ်းစာလေ့လာမှုအက်ပ်';

  @override
  String get readTheBible => 'ကျမ်းစာဖတ်ပါ။';

  @override
  String get settingsTooltip => 'ဆက်တင်များ';

  @override
  String get themeChoose => 'Theme ကို ရွေးပါ။';

  @override
  String get customThemes => 'စိတ်ကြိုက်ပြင်ဆင်နိုင်သော အပြင်အဆင်များ';

  @override
  String get customThemesSubtitle =>
      'အသံထွက်အရောင်ကိုရွေးချယ်ရန် ကတ်တစ်ခုကိုနှိပ်ပါ။ \"Classic White\" သည် Light၊ Dark နှင့် System Modes များကို ပံ့ပိုးပေးပါသည်။';

  @override
  String get setThemesLabel => 'အပြင်အဆင်များ သတ်မှတ်ပါ။';

  @override
  String get deleteBookmarkDialog => 'စာညှပ်ကို ဖျက်မလား။';

  @override
  String removeBookmarkMessage(Object details, Object reference) {
    return '\"$reference\"$details ကို ဖယ်ရှားမလား။\n\nဒါကို ပြန်ပြင်လို့ မရပါဘူး။';
  }

  @override
  String get couldNotLoadBookmarks =>
      'စာညှပ်များကို မတင်နိုင်ခဲ့ပါ။ ထပ်စမ်းကြည့်ပါ။';

  @override
  String get bookmarkSavedMessage => 'လိပ်စာကို သိမ်းဆည်းပြီးပါပြီ။';

  @override
  String get couldNotSaveBookmark => 'လိပ်စာကို မသိမ်းဆည်းနိုင်ခဲ့ပါ။';

  @override
  String get noBookmarksMatchFilter =>
      'ဤစစ်ထုတ်မှုနှင့် ကိုက်ညီသော စာညှပ်များမရှိပါ။';

  @override
  String get clearFilter => 'စစ်ထုတ်မှုကို ရှင်းလင်းပါ။';

  @override
  String get traditionalOrderLabel => 'ရိုးရာအမှာစာ';

  @override
  String get alphabeticalOrderLabel => 'အက္ခရာစဉ်';

  @override
  String get bookmarksTabLabel => 'ညှပ်';

  @override
  String get fullChapter => 'အခန်းအပြည့်အစုံ';

  @override
  String get addBookmark => 'လိပ်စာထည့်ပါ။';

  @override
  String get selectVerse => 'Verse ကို ရွေးပါ။';

  @override
  String get labelOptional => 'အညွှန်း (ချန်လှပ်ထားနိုင်သည်)';

  @override
  String get notesOptional => 'မှတ်စုများ (ချန်လှပ်ထားနိုင်သည်)';

  @override
  String get save => 'သိမ်းဆည်းပါ။';

  @override
  String get goToVerse => 'Verse ကိုသွားပါ။';

  @override
  String verseTitle(Object verse) {
    return '$verse အခန်းငယ်';
  }

  @override
  String chapterTitle(Object chapter) {
    return 'အခန်း $chapter';
  }

  @override
  String get switchToFullChapter => 'အခန်းပြည့် စာညှပ်သို့ ပြောင်းပါ။';

  @override
  String get bookmarkSheetCancel => 'ပယ်ဖျက်ပါ၊ စာညှပ်စာရွက်ကို ပိတ်ပါ။';

  @override
  String get pickCustomAccent => 'စိတ်ကြိုက် လေယူလေသိမ်းကို ရွေးပါ။';

  @override
  String get apply => 'လျှောက်ထားပါ။';

  @override
  String get custom => 'စိတ်ကြိုက်';

  @override
  String get brightnessSystem => 'စနစ်';

  @override
  String get brightnessLight => 'အလင်း';

  @override
  String get brightnessDark => 'အမှောင်';

  @override
  String get selectBook => 'စာအုပ်တစ်အုပ်ကို ရွေးပါ။';

  @override
  String get bookmarkFilterAll => 'အားလုံး';

  @override
  String get bookmarkFilterUnlabeled => 'တံဆိပ်တပ်မထား';

  @override
  String get bookmarkSortRecent => 'မကြာမှီ ပထမ';

  @override
  String get bookmarkSortCanonical => 'Canonical အမိန့်';

  @override
  String get chapterRetry => 'ပြန်ကြိုးစားပါ။';

  @override
  String get fontSize => 'ဖောင့်အရွယ်အစား';

  @override
  String fontSizePixels(Object size) {
    return '$size px';
  }

  @override
  String get fontSizeSlider => 'ဖောင့်အရွယ်အစား ဆလိုက်';

  @override
  String get fontSizeSliderHint => '12 မှ 28 အထိ ချိန်ညှိရန် ပွတ်ဆွဲပါ။';

  @override
  String get fontPreview =>
      '“အစအဦး၌ ဘုရားသခင်သည် ကောင်းကင်နှင့် မြေကြီးကို ဖန်ဆင်းတော်မူ၏။ —ကမ္ဘာ ၁:၁';

  @override
  String get showVerseNumbersSubtitle =>
      'ဖတ်ရှုခြင်းစခရင်တွင် အခန်းငယ် နံပါတ်များပါသော စာလုံးများကို ပြပါ။';

  @override
  String get showSectionHeadingsSubtitle =>
      'စာပိုဒ်များကြားတွင် အပိုင်းနှင့် ဆာလံခေါင်းများကို ပြပါ။';

  @override
  String get wordsOfChristSubtitle =>
      'ယေရှု၏စကားများကို အနီရောင်ဖြင့်ပြပါ။ စာသားအရောင်တစ်ခုတည်းအတွက် ပိတ်ပါ။';

  @override
  String get verseFormatTitle => 'အခန်းငယ်ပုံစံ';

  @override
  String get verseFormatSubtitle =>
      'ကျမ်းချက်စာသားကို မည်ကဲ့သို့ဖော်ပြထားသည်ကို ရွေးချယ်ပါ။';

  @override
  String get paragraphMode => 'စာပိုဒ်';

  @override
  String get verseListMode => 'အခန်းငယ်စာရင်း';

  @override
  String get paragraphModeTooltip => 'စာပိုဒ်မုဒ်';

  @override
  String get verseListModeTooltip => 'အခန်းငယ်စာရင်းမုဒ်';

  @override
  String get paragraphModeDescription =>
      'ပုံနှိပ်ထားသော သမ္မာကျမ်းစာကဲ့သို့ စာသားသည် အဆက်မပြတ် စီးဆင်းနေပါသည်။';

  @override
  String get verseListModeDescription =>
      'ကျမ်းပိုဒ်တစ်ခုစီသည် ၎င်း၏ကိုယ်ပိုင်မျဉ်းကြောင်းမှအစပြု၍ အခန်းငယ်အုပ်စုများကို အလွယ်တကူသိရှိနိုင်စေသည်။';

  @override
  String get deleteBookmarkTooltip => 'စာညှပ်ကိုဖျက်ပါ။';

  @override
  String deleteBookmarkSemantics(Object reference) {
    return 'စာညှပ် $reference ကိုဖျက်ပါ။';
  }

  @override
  String sortBookmarksTooltip(Object sortOrder) {
    return 'အမျိုးအစား- $sortOrder';
  }

  @override
  String get noBookmarksYet => 'စာညှပ်များ မရှိသေးပါ။';

  @override
  String get noBookmarksYetHint =>
      'တည်နေရာတစ်ခုသိမ်းဆည်းရန် စာဖတ်နေစဉ် စာညှပ်သင်္ကေတကို နှိပ်ပါ။';

  @override
  String bookmarkReferenceNavigationError(Object reference) {
    return '$reference သို့ သွားလာ၍မရပါ။';
  }

  @override
  String themeCardSemantics(Object description, Object name, Object selected) {
    return '$name အပြင်အဆင်$selected။ $description';
  }

  @override
  String get selectedThemeSuffix => 'လက်ရှိရွေးချယ်ထားသည်။';

  @override
  String get customisableAccentDescription => 'စိတ်ကြိုက် လေယူလေသိမ်းအရောင်။';

  @override
  String get fixedPaletteDescription => 'ပုံသေ ပျဉ်ချပ်။';

  @override
  String accentColourTitle(Object themeName) {
    return 'အသံထွက်အရောင် — $themeName';
  }

  @override
  String get brightnessMode => 'တောက်ပမှုမုဒ်';

  @override
  String get lightMode => 'အလင်းမုဒ်';

  @override
  String get followSystemMode => 'စနစ်မုဒ်ကို လိုက်နာပါ။';

  @override
  String get darkMode => 'အမှောင်မုဒ်';

  @override
  String get customColourPicker => 'စိတ်ကြိုက်အရောင်ရွေးချယ်မှု';

  @override
  String get customColourTooltip => 'စိတ်ကြိုက်အရောင်…';

  @override
  String get couldNotLoadBooks =>
      'စာအုပ်များစာရင်းကို မတင်နိုင်ခဲ့ပါ။ ထပ်စမ်းကြည့်ပါ။';

  @override
  String chapterLabel(Object chapter) {
    return 'အခန်း $chapter';
  }

  @override
  String get traditionalOrderBooks => 'ရိုးရာအမှာစာတွေပေါ့ဗျာ။';

  @override
  String get alphabeticalOrderBooks => 'အက္ခရာစဉ်စာအုပ်များ';

  @override
  String get home => 'အိမ်';

  @override
  String get addBookmarkTooltip => 'စာညှပ်ထည့်ပါ။';

  @override
  String get chooseBookChapter => 'စာအုပ်နှင့်အခန်းကိုရွေးချယ်ပါ။';

  @override
  String get chooseVerse => 'ပိုဒ်ရွေးပါ။';

  @override
  String get bookChapterQuickNavigation =>
      'စာအုပ်နှင့် အခန်းကို အမြန်လမ်းညွှန်ပါ။';

  @override
  String get verseQuickNavigation => 'အမြန်ညွှန်း';

  @override
  String get backToBooks => 'စာအုပ်များဆီသို့ ပြန်သွားရန်';

  @override
  String get selectBookTitle => 'စာအုပ်ကို ရွေးပါ။';

  @override
  String selectChapterTitle(Object bookName) {
    return 'အခန်း ($bookName) ကို ရွေးပါ';
  }

  @override
  String chapterSelectionLabel(Object chapter) {
    return 'အခန်း $chapter';
  }

  @override
  String verseSelectionLabel(Object verse) {
    return '$verse အခန်းငယ်';
  }

  @override
  String fullChapterReference(Object bookName, Object chapter) {
    return 'အခန်းအပြည့်အစုံ- $bookName $chapter';
  }

  @override
  String get memorizeHint => 'အလွတ်ကျက်ပါ။';

  @override
  String get addNoteHint => 'မှတ်စုထည့်ပါ...';

  @override
  String get languageSearchHint => 'ဘာသာစကားများကို ရှာဖွေပါ။';

  @override
  String get languageModuleInstalled => 'တပ်ဆင်ထားသည်။';

  @override
  String get languageModulePending => 'စက်ဘာသာပြန်ဆိုခြင်းကို ဆိုင်းငံ့ထားသည်။';

  @override
  String get languageNoMatches =>
      'သင့်ရှာဖွေမှုနှင့် ကိုက်ညီသော ဘာသာစကားမရှိပါ။';

  @override
  String get languageCatalogDescription =>
      'ထည့်သွင်းထားသည့် အလုပ် အော့ဖ်လိုင်းအဖြစ် သတ်မှတ်ထားသော ဘာသာစကားများ။ အခြားဘာသာစကားများကို စက်ဖြင့်ဘာသာပြန်ထားသော မော်ဂျူးများအဖြစ် ထည့်သွင်းပါမည်။';

  @override
  String get saveBookmarkSemantics => 'မှတ်သားသိမ်းဆည်းပါ။';

  @override
  String get couldNotLoadChapter => 'အခန်းကို ဖွင့်၍မရပါ။ ထပ်စမ်းကြည့်ပါ။';

  @override
  String get couldNotLoadChapters => 'အခန်းများကို ဖွင့်၍မရပါ။ ထပ်စမ်းကြည့်ပါ။';

  @override
  String verseWithText(Object text, Object verse) {
    return 'အခန်းငယ် $verse: $text';
  }

  @override
  String accentSwatchSemantics(Object name, Object selected) {
    return '$name လေယူလေသိမ်းအရောင်$selected';
  }

  @override
  String get oldTestament => 'ဓမ္မဟောင်း';

  @override
  String get newTestament => 'ဓမ္မသစ်';

  @override
  String get deuterocanonApocrypha => 'Deuterocanon / Apocrypha';
}
