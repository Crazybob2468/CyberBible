// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Oromo (`om`).
class AppLocalizationsOm extends AppLocalizations {
  AppLocalizationsOm([String locale = 'om']) : super(locale);

  @override
  String get settingsTitle => 'Qindaa\'inoota';

  @override
  String get languageSection => 'Afaan';

  @override
  String get useSystemLanguage => 'Afaan sirnaa fayyadami';

  @override
  String get useSystemLanguageSubtitle =>
      'Afaan meeshaa durtii walitti simsiisi.';

  @override
  String get currentLanguage => 'Afaan yeroo ammaa';

  @override
  String get appLanguage => 'Afaan appii';

  @override
  String get chooseLanguage => 'Afaan filadhu';

  @override
  String get theme => 'Mata-duree';

  @override
  String get appearance => 'Mul\'ata';

  @override
  String get textSection => 'Barruu';

  @override
  String get readingFormatSection => 'Akkaataa dubbisuu';

  @override
  String get displaySection => 'Agarsiisi';

  @override
  String get verseNumbers => 'Lakkoofsa keeyyataa';

  @override
  String get sectionHeadings => 'Matadureewwan kutaa';

  @override
  String get redLetterText => 'Barruu qubee diimaa';

  @override
  String get selectABook => 'Kitaaba filadhu';

  @override
  String get traditionalOrder => 'Tartiiba aadaa';

  @override
  String get alphabeticalOrder => 'Tartiiba qubee';

  @override
  String get bookmarks => 'Mallattoolee';

  @override
  String get retry => 'Irra deebi\'i yaali';

  @override
  String get chooseTheme => 'Mata-duree filadhu';

  @override
  String get customisableThemes => 'Mata-dureewwan jijjiiramoo';

  @override
  String get customisableThemesSubtitle =>
      'Kaardii tuqiitii halluu cimsaa filadhu. \"Classic White\" haala ifaa, dukkanaa fi sirnaa ni deeggara.';

  @override
  String get setThemes => 'MATA-DUREEWWAN MURTAAWAN';

  @override
  String get setThemesSubtitle =>
      'Paaleetota hin jijjiiramne harkaan qophaa\'an. Jijjiirraan hin barbaachisu - tuqiitii hojii irra oolchi.';

  @override
  String get deleteBookmarkQuestion => 'Mallattoo haquu?';

  @override
  String get cancel => 'Dhiisi';

  @override
  String get delete => 'Haqi';

  @override
  String get bookmarkSaved => 'Mallattoon kuufame';

  @override
  String get couldNotDeleteBookmark => 'Mallattoo haquun hin danda\'amne.';

  @override
  String couldNotNavigate(Object reference) {
    return 'Gara $reference deemuun hin danda\'amne.';
  }

  @override
  String get pageNotFound => 'Fuulli hin argamne';

  @override
  String noRouteDefined(Object routeName) {
    return 'Karaan \"$routeName\" irratti ibsame hin jiru';
  }

  @override
  String get english => 'Ingiliffa';

  @override
  String get spanish => 'Ispeenishii';

  @override
  String get systemDefault => 'Durtii sirnaa';

  @override
  String get languageStatusEnglish => 'Deebiin Ingiliffaa hojjeta';

  @override
  String get languageStatusSystem => 'Afaan sirnaa fayyadamaa jira';

  @override
  String languageStatusSelected(Object languageName) {
    return 'Afaan filatame: $languageName';
  }

  @override
  String get themeLabel => 'Mata-duree';

  @override
  String get notFoundTitle => 'Fuulli hin argamne';

  @override
  String get loadingCyberBible => 'Cyber Bible fe\'amaa jira...';

  @override
  String get couldNotOpenDatabase =>
      'Kuusaa deetaa Kitaaba Qulqulluu banuun hin danda\'amne. Irra deebi\'i yaali.';

  @override
  String get homeTagline =>
      'Appii qo\'annoo Kitaaba Qulqulluu bilisaa fi madda banaa';

  @override
  String get readTheBible => 'Kitaaba Qulqulluu dubbisi';

  @override
  String get settingsTooltip => 'Qindaa\'inoota';

  @override
  String get themeChoose => 'Mata-duree filadhu';

  @override
  String get customThemes => 'Mata-dureewwan jijjiiramoo';

  @override
  String get customThemesSubtitle =>
      'Kaardii tuqiitii halluu cimsaa filadhu. \"Classic White\" haala ifaa, dukkanaa fi sirnaa ni deeggara.';

  @override
  String get setThemesLabel => 'MATA-DUREEWWAN MURTAAWAN';

  @override
  String get deleteBookmarkDialog => 'Mallattoo haquu?';

  @override
  String removeBookmarkMessage(Object details, Object reference) {
    return '\"$reference\"$details haqi?\n\nKun deebi\'ee hin jijjiiramu.';
  }

  @override
  String get couldNotLoadBookmarks =>
      'Mallattoolee fe\'uun hin danda\'amne. Irra deebi\'i yaali.';

  @override
  String get bookmarkSavedMessage => 'Mallattoon kuufame';

  @override
  String get couldNotSaveBookmark => 'Mallattoo kuusuun hin danda\'amne.';

  @override
  String get noBookmarksMatchFilter =>
      'Mallattoon calaltuu kana waliin walsimu hin jiru.';

  @override
  String get clearFilter => 'Calaltuu balleessi';

  @override
  String get traditionalOrderLabel => 'Tartiiba aadaa';

  @override
  String get alphabeticalOrderLabel => 'Tartiiba qubee';

  @override
  String get bookmarksTabLabel => 'Mallattoolee';

  @override
  String get fullChapter => 'Boqonnaa guutuu';

  @override
  String get addBookmark => 'Mallattoo dabali';

  @override
  String get selectVerse => 'Keeyyata filadhu';

  @override
  String get labelOptional => 'Maqaa (filannoo)';

  @override
  String get notesOptional => 'Yaadannoowwan (filannoo)';

  @override
  String get save => 'Kuusi';

  @override
  String get goToVerse => 'Gara keeyyataatti deemi';

  @override
  String verseTitle(Object verse) {
    return 'Keeyyata $verse';
  }

  @override
  String chapterTitle(Object chapter) {
    return 'Boqonnaa $chapter';
  }

  @override
  String get switchToFullChapter =>
      'Gara mallattoo boqonnaa guutuutti jijjiiri';

  @override
  String get bookmarkSheetCancel => 'Dhiisi, fuula mallattoo cufi';

  @override
  String get pickCustomAccent => 'Halluu cimsaa dhuunfaa filadhu';

  @override
  String get apply => 'Hojiirra oolchi';

  @override
  String get custom => 'Dhuunfaa';

  @override
  String get brightnessSystem => 'Sirna';

  @override
  String get brightnessLight => 'Ifa';

  @override
  String get brightnessDark => 'Dukkana';

  @override
  String get selectBook => 'Kitaaba filadhu';

  @override
  String get bookmarkFilterAll => 'Hunda';

  @override
  String get bookmarkFilterUnlabeled => 'Maqaa hin qabne';

  @override
  String get bookmarkSortRecent => 'Kan haaraa dura';

  @override
  String get bookmarkSortCanonical => 'Tartiiba qajeelcha';

  @override
  String get chapterRetry => 'Irra deebi\'i yaali';

  @override
  String get fontSize => 'Hammamtaa qubee';

  @override
  String fontSizePixels(Object size) {
    return '$size px';
  }

  @override
  String get fontSizeSlider => 'Simbirroo hammamtaa qubee';

  @override
  String get fontSizeSliderHint => '12 irraa 28tti jijjiiruuf harkisi';

  @override
  String get fontPreview =>
      '\"Jalqabatti Waaqayyo samii fi lafa uume.\" — Uumama 1:1';

  @override
  String get showVerseNumbersSubtitle =>
      'Lakkoofsa keeyyataa xiqqaa fuula dubbisuu irratti agarsiisi.';

  @override
  String get showSectionHeadingsSubtitle =>
      'Matadureewwan kutaa fi Faarfannaa passage gidduutti agarsiisi.';

  @override
  String get wordsOfChristSubtitle =>
      'Jechoota Yesuus diimaan agarsiisi. Halluu barruu tokkoof dhaamsi.';

  @override
  String get verseFormatTitle => 'Akkaataa keeyyataa';

  @override
  String get verseFormatSubtitle =>
      'Barruun Caaffataa akkamitti akka qindaa\'u filadhu.';

  @override
  String get paragraphMode => 'Keeyyata';

  @override
  String get verseListMode => 'Tarree keeyyataa';

  @override
  String get paragraphModeTooltip => 'Haala keeyyataa';

  @override
  String get verseListModeTooltip => 'Haala tarree keeyyataa';

  @override
  String get paragraphModeDescription =>
      'Barruun keeyyataawwan keessaa galan waliin walitti fufee yaa\'a, akka Kitaaba Qulqulluu maxxanfamee.';

  @override
  String get verseListModeDescription =>
      'Keeyyanni Caaffataa tokkoon tokkoon isaa sarara mataa isaa irratti jalqaba; kunis gareewwan keeyyataa arguun salphata.';

  @override
  String get deleteBookmarkTooltip => 'Mallattoo haqi';

  @override
  String deleteBookmarkSemantics(Object reference) {
    return 'Mallattoo $reference haqi';
  }

  @override
  String sortBookmarksTooltip(Object sortOrder) {
    return 'Tartiibsi: $sortOrder';
  }

  @override
  String get noBookmarksYet => 'Mallattooleen amma hin jiran.';

  @override
  String get noBookmarksYetHint =>
      'Yeroo dubbistu bakka kuusuuf mallattoo tuqi.';

  @override
  String bookmarkReferenceNavigationError(Object reference) {
    return 'Gara $reference deemuun hin danda\'amne.';
  }

  @override
  String themeCardSemantics(Object description, Object name, Object selected) {
    return 'Mata-duree $name$selected. $description';
  }

  @override
  String get selectedThemeSuffix => ', amma filatame';

  @override
  String get customisableAccentDescription =>
      'Halluu cimsaa jijjiiramuu danda\'u.';

  @override
  String get fixedPaletteDescription => 'Paaleetii murtaa\'e.';

  @override
  String accentColourTitle(Object themeName) {
    return 'Halluu cimsaa — $themeName';
  }

  @override
  String get brightnessMode => 'HAALA IFTI';

  @override
  String get lightMode => 'Haala ifaa';

  @override
  String get followSystemMode => 'Haala sirnaa hordofi';

  @override
  String get darkMode => 'Haala dukkanaa';

  @override
  String get customColourPicker => 'Filataa halluu dhuunfaa';

  @override
  String get customColourTooltip => 'Halluu dhuunfaa...';

  @override
  String get couldNotLoadBooks =>
      'Tarree kitaabota fe\'uun hin danda\'amne. Irra deebi\'i yaali.';

  @override
  String chapterLabel(Object chapter) {
    return 'Boqonnaa $chapter';
  }

  @override
  String get traditionalOrderBooks => 'Kitaabota tartiiba aadaa';

  @override
  String get alphabeticalOrderBooks => 'Kitaabota tartiiba qubee';

  @override
  String get home => 'Mana';

  @override
  String get addBookmarkTooltip => 'Mallattoo dabali';

  @override
  String get chooseBookChapter => 'Kitaabaa fi boqonnaa filadhu';

  @override
  String get chooseVerse => 'Keeyyata filadhu';

  @override
  String get bookChapterQuickNavigation =>
      'Daandii saffisaa kitaabaa fi boqonnaa';

  @override
  String get verseQuickNavigation => 'Daandii saffisaa keeyyataa';

  @override
  String get backToBooks => 'Gara kitaabotaa deebi\'i';

  @override
  String get selectBookTitle => 'Kitaaba filadhu';

  @override
  String selectChapterTitle(Object bookName) {
    return 'Boqonnaa filadhu ($bookName)';
  }

  @override
  String chapterSelectionLabel(Object chapter) {
    return 'Boqonnaa $chapter';
  }

  @override
  String verseSelectionLabel(Object verse) {
    return 'Keeyyata $verse';
  }

  @override
  String fullChapterReference(Object bookName, Object chapter) {
    return 'Boqonnaa guutuu: $bookName $chapter';
  }

  @override
  String get memorizeHint => 'Qabadhu';

  @override
  String get addNoteHint => 'Yaadannoo dabali...';

  @override
  String get languageSearchHint => 'Afaanota barbaadi';

  @override
  String get languageModuleInstalled => 'Fe\'ame';

  @override
  String get languageModulePending => 'Hiikni maashinii eeggamaa jira';

  @override
  String get languageNoMatches =>
      'Afaanotni barbaacha kee waliin walsiman hin jiran.';

  @override
  String get languageCatalogDescription =>
      'Afaanotni fe\'aman jechuun mallatteeffaman alaa intarneetii hojii hojjetu. Afaanotni biroon akka mojuulota maashiniin hiikamanitti dabalamu.';

  @override
  String get saveBookmarkSemantics => 'Mallattoo kuusi';

  @override
  String get couldNotLoadChapter =>
      'Boqonnaa fe\'uun hin danda\'amne. Irra deebi\'i yaali.';

  @override
  String get couldNotLoadChapters =>
      'Boqonnaawwan fe\'uun hin danda\'amne. Irra deebi\'i yaali.';

  @override
  String verseWithText(Object text, Object verse) {
    return 'Keeyyata $verse: $text';
  }

  @override
  String accentSwatchSemantics(Object name, Object selected) {
    return 'Halluu cimsaa $name$selected';
  }

  @override
  String get oldTestament => 'Kakuu Moofaa';

  @override
  String get newTestament => 'Kakuu Haaraa';

  @override
  String get deuterocanonApocrypha => 'Deuterocanon / Apocrypha';
}
