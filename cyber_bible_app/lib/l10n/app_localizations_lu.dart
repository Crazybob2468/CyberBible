// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Luba-Katanga (`lu`).
class AppLocalizationsLu extends AppLocalizations {
  AppLocalizationsLu([String locale = 'lu']) : super(locale);

  @override
  String get settingsTitle => 'Mabongelu';

  @override
  String get languageSection => 'Muakulu';

  @override
  String get useSystemLanguage => 'Sangisha muakulu wa sisteme';

  @override
  String get useSystemLanguageSubtitle =>
      'Tungunuka muakulu wa cifuatilu ku bualu bwa ntanshi.';

  @override
  String get currentLanguage => 'Muakulu udi ku dîba edi';

  @override
  String get appLanguage => 'Muakulu wa aplikasio';

  @override
  String get chooseLanguage => 'Sungula muakulu';

  @override
  String get theme => 'Mushindu';

  @override
  String get appearance => 'Mumueneku';

  @override
  String get textSection => 'Mêyi';

  @override
  String get readingFormatSection => 'Mushindu wa kubala';

  @override
  String get displaySection => 'Kumueneka';

  @override
  String get verseNumbers => 'Nombolo ya nvesi';

  @override
  String get sectionHeadings => 'Mitue ya bipande';

  @override
  String get redLetterText => 'Mêyi mu malu a bukole';

  @override
  String get selectABook => 'Sungula mukanda';

  @override
  String get traditionalOrder => 'Lubilu lwa kale';

  @override
  String get alphabeticalOrder => 'Lubilu lwa alifabe';

  @override
  String get bookmarks => 'Bimanyinu bya mukanda';

  @override
  String get retry => 'Eja kabidi';

  @override
  String get chooseTheme => 'Sungula mushindu';

  @override
  String get customisableThemes => 'Mishindu idi ikumbana';

  @override
  String get customisableThemesSubtitle =>
      'Kanda ku kadina ka mushindu bua kusungula lûmu lwa ntalu. \"Mpembe wa kale\" udi ne mishindu ya Butoke, Bulaalu ne Sisteme.';

  @override
  String get setThemes => 'MISHINDU YA KUYIKA';

  @override
  String get setThemesSubtitle =>
      'Mishindu ya mialu yakasungulibwa. Kakuena mushinga wa kuyibongesha; kanda patupu bua kuyiyika.';

  @override
  String get deleteBookmarkQuestion => 'Futa cimanyinu ca mukanda?';

  @override
  String get cancel => 'Lekela';

  @override
  String get delete => 'Futa';

  @override
  String get bookmarkSaved => 'Cimanyinu ca mukanda calamibwa';

  @override
  String get couldNotDeleteBookmark =>
      'Katuyi mua kufuta cimanyinu ca mukanda.';

  @override
  String couldNotNavigate(Object reference) {
    return 'Katuyi mua kuya ku $reference.';
  }

  @override
  String get pageNotFound => 'Dibeji kadi dimueneka';

  @override
  String noRouteDefined(Object routeName) {
    return 'Njila kayiyi yabikidibwa bua \"$routeName\"';
  }

  @override
  String get english => 'Anglais';

  @override
  String get spanish => 'Espagnol';

  @override
  String get systemDefault => 'Sisteme';

  @override
  String get languageStatusEnglish =>
      'Muakulu wa anglais wa mushinga udi usala';

  @override
  String get languageStatusSystem => 'Tudi tusadila muakulu wa sisteme';

  @override
  String languageStatusSelected(Object languageName) {
    return 'Muakulu usungulibwa: $languageName';
  }

  @override
  String get themeLabel => 'Mushindu';

  @override
  String get notFoundTitle => 'Dibeji kadi dimueneka';

  @override
  String get loadingCyberBible => 'Tudi tulombola Cyber Bible...';

  @override
  String get couldNotOpenDatabase =>
      'Katuyi mua kubika dizwa dya Bible. Eja kabidi, udi ulomba.';

  @override
  String get homeTagline =>
      'Aplikasio wa kusambila Bible, wa bulelela ne wa bukole bwa bantu bonso';

  @override
  String get readTheBible => 'Bala Bible';

  @override
  String get settingsTooltip => 'Mabongelu';

  @override
  String get themeChoose => 'Sungula mushindu';

  @override
  String get customThemes => 'Mishindu idi ikumbana';

  @override
  String get customThemesSubtitle =>
      'Kanda ku kadina ka mushindu bua kusungula lûmu lwa ntalu. \"Mpembe wa kale\" udi ne mishindu ya Butoke, Bulaalu ne Sisteme.';

  @override
  String get setThemesLabel => 'MISHINDU YA KUYIKA';

  @override
  String get deleteBookmarkDialog => 'Futa cimanyinu ca mukanda?';

  @override
  String removeBookmarkMessage(Object details, Object reference) {
    return 'Longola \"$reference\"$details?\n\nCeci kakeena mua kupingana.';
  }

  @override
  String get couldNotLoadBookmarks =>
      'Katuyi mua kulombola bimanyinu bya mukanda. Eja kabidi, udi ulomba.';

  @override
  String get bookmarkSavedMessage => 'Cimanyinu ca mukanda calamibwa';

  @override
  String get couldNotSaveBookmark => 'Katuyi mua kulama cimanyinu ca mukanda.';

  @override
  String get noBookmarksMatchFilter =>
      'Kakuena bimanyinu bya mukanda bituadijana ne ciselele eci.';

  @override
  String get clearFilter => 'Longola ciselele';

  @override
  String get traditionalOrderLabel => 'Lubilu lwa kale';

  @override
  String get alphabeticalOrderLabel => 'Lubilu lwa alifabe';

  @override
  String get bookmarksTabLabel => 'Bimanyinu bya mukanda';

  @override
  String get fullChapter => 'Cipande coso';

  @override
  String get addBookmark => 'Yika cimanyinu ca mukanda';

  @override
  String get selectVerse => 'Sungula nvesi';

  @override
  String get labelOptional => 'Dîna (nansha usue)';

  @override
  String get notesOptional => 'Malu a kuandika (nansha usue)';

  @override
  String get save => 'Lama';

  @override
  String get goToVerse => 'Ya ku nvesi';

  @override
  String verseTitle(Object verse) {
    return 'Nvesi $verse';
  }

  @override
  String chapterTitle(Object chapter) {
    return 'Cipande $chapter';
  }

  @override
  String get switchToFullChapter => 'Shintulula ku cimanyinu ca cipande coso';

  @override
  String get bookmarkSheetCancel => 'Lekela, jingula lupapelu lwa cimanyinu';

  @override
  String get pickCustomAccent => 'Sungula lûmu lwa ntalu lwaku';

  @override
  String get apply => 'Sungula';

  @override
  String get custom => 'Lwakwa';

  @override
  String get brightnessSystem => 'Sisteme';

  @override
  String get brightnessLight => 'Butoke';

  @override
  String get brightnessDark => 'Bulaalu';

  @override
  String get selectBook => 'Sungula mukanda';

  @override
  String get bookmarkFilterAll => 'Yonso';

  @override
  String get bookmarkFilterUnlabeled => 'Kayiyi ne dîna';

  @override
  String get bookmarkSortRecent => 'Ya piabipi kumpala';

  @override
  String get bookmarkSortCanonical => 'Lubilu lwa Bible';

  @override
  String get chapterRetry => 'Eja kabidi';

  @override
  String get fontSize => 'Bunene bwa nkalata';

  @override
  String fontSizePixels(Object size) {
    return '$size px';
  }

  @override
  String get fontSizeSlider => 'Cilongelu ca bunene bwa nkalata';

  @override
  String get fontSizeSliderHint =>
      'Endesha bua kushintulula ku 12 too ne ku 28';

  @override
  String get fontPreview =>
      '\"Ku mbidilu Nzambi wakalenga diulu ne buloba.\" - Genese 1:1';

  @override
  String get showVerseNumbersSubtitle =>
      'Lombola nombolo ya nvesi mikeshi mu dibeji dya kubala.';

  @override
  String get showSectionHeadingsSubtitle =>
      'Lombola mitue ya bipande ne ya Masamu hagati ya bitupa.';

  @override
  String get wordsOfChristSubtitle =>
      'Lombola mêyi a Yesu mu malu a bukole. Ikala na ciwa bua nkalata ibe ne lûmu lumue.';

  @override
  String get verseFormatTitle => 'Mushindu wa nvesi';

  @override
  String get verseFormatSubtitle =>
      'Sungula mushindu wa kupatula mêyi a Matuku Mimesa.';

  @override
  String get paragraphMode => 'Pagarafu';

  @override
  String get verseListMode => 'Lupapelu lwa nvesi';

  @override
  String get paragraphModeTooltip => 'Mushindu wa pagarafu';

  @override
  String get verseListModeTooltip => 'Mushindu wa lupapelu lwa nvesi';

  @override
  String get paragraphModeDescription =>
      'Mêyi adi enda panshi pa pagarafu, bu mu Bible udi mupatuke.';

  @override
  String get verseListModeDescription =>
      'Pagarafu yonso ya Matuku Mimesa itendeka ku mulongo wayo, bua kumona mikumba ya nvesi nyore.';

  @override
  String get deleteBookmarkTooltip => 'Futa cimanyinu ca mukanda';

  @override
  String deleteBookmarkSemantics(Object reference) {
    return 'Futa cimanyinu ca mukanda $reference';
  }

  @override
  String sortBookmarksTooltip(Object sortOrder) {
    return 'Pangula: $sortOrder';
  }

  @override
  String get noBookmarksYet => 'Kakuyi bimanyinu bya mukanda patupu.';

  @override
  String get noBookmarksYetHint =>
      'Kanda ku cimanyinu ca mukanda patupu ui ubala bua kulama muaba.';

  @override
  String bookmarkReferenceNavigationError(Object reference) {
    return 'Katuyi mua kuya ku $reference.';
  }

  @override
  String themeCardSemantics(Object description, Object name, Object selected) {
    return 'Mushindu $name$selected. $description';
  }

  @override
  String get selectedThemeSuffix => ', udi musungulibwa buabu';

  @override
  String get customisableAccentDescription =>
      'Lûmu lwa ntalu ludi mua kubongeshibwa.';

  @override
  String get fixedPaletteDescription => 'Mukumba wa malu udi kashintuluki.';

  @override
  String accentColourTitle(Object themeName) {
    return 'Lûmu lwa ntalu - $themeName';
  }

  @override
  String get brightnessMode => 'MUSHINDU WA BUTOKE';

  @override
  String get lightMode => 'Mushindu wa butoke';

  @override
  String get followSystemMode => 'Sisteme';

  @override
  String get darkMode => 'Mushindu wa bulaalu';

  @override
  String get customColourPicker => 'Cisungulu ca lûmu lwaku';

  @override
  String get customColourTooltip => 'Lûmu lwaku...';

  @override
  String get couldNotLoadBooks =>
      'Katuyi mua kulombola lupapelu lwa mikanda. Eja kabidi, udi ulomba.';

  @override
  String chapterLabel(Object chapter) {
    return 'Cipande $chapter';
  }

  @override
  String get traditionalOrderBooks => 'Mikanda mu lubilu lwa kale';

  @override
  String get alphabeticalOrderBooks => 'Mikanda mu lubilu lwa alifabe';

  @override
  String get home => 'Nzubu';

  @override
  String get addBookmarkTooltip => 'Yika cimanyinu ca mukanda';

  @override
  String get chooseBookChapter => 'Sungula mukanda ne cipande';

  @override
  String get chooseVerse => 'Sungula nvesi';

  @override
  String get bookChapterQuickNavigation => 'Kuya lukasa ku mukanda ne cipande';

  @override
  String get verseQuickNavigation => 'Kuya lukasa ku nvesi';

  @override
  String get backToBooks => 'Pingana ku mikanda';

  @override
  String get selectBookTitle => 'Sungula mukanda';

  @override
  String selectChapterTitle(Object bookName) {
    return 'Cipande $bookName';
  }

  @override
  String chapterSelectionLabel(Object chapter) {
    return 'Cipande $chapter';
  }

  @override
  String verseSelectionLabel(Object verse) {
    return 'Nvesi $verse';
  }

  @override
  String fullChapterReference(Object bookName, Object chapter) {
    return 'Cipande coso: $bookName $chapter';
  }

  @override
  String get memorizeHint => 'Teka ku mutu';

  @override
  String get addNoteHint => 'Yika malu a kuandika...';

  @override
  String get languageSearchHint => 'Keba miakulu';

  @override
  String get languageModuleInstalled => 'Ciyikibwa';

  @override
  String get languageModulePending => 'Ntendelelu wa mashini udi ulindila';

  @override
  String get languageNoMatches =>
      'Kakuena miakulu ituadijana ne ukukeba kwaku.';

  @override
  String get languageCatalogDescription =>
      'Miakulu idi ne cimanyinu ca kuyikibwa isala kabiyi interneti. Miakulu mikwabu ikayikibwa bu mikumba ya ntendelelu wa mashini.';

  @override
  String get saveBookmarkSemantics => 'Lama cimanyinu ca mukanda';

  @override
  String get couldNotLoadChapter =>
      'Katuyi mua kulombola cipande. Eja kabidi, udi ulomba.';

  @override
  String get couldNotLoadChapters =>
      'Katuyi mua kulombola bipande. Eja kabidi, udi ulomba.';

  @override
  String verseWithText(Object text, Object verse) {
    return 'Nvesi $verse $text';
  }

  @override
  String accentSwatchSemantics(Object name, Object selected) {
    return 'Lûmu lwa ntalu $name$selected';
  }

  @override
  String get oldTestament => 'Cipungidi ca Kale';

  @override
  String get newTestament => 'Cipungidi Cipya';

  @override
  String get deuterocanonApocrypha => 'Deuterokanoni / Apokrifa';
}
