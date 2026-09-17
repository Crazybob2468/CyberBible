// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Latvian (`lv`).
class AppLocalizationsLv extends AppLocalizations {
  AppLocalizationsLv([String locale = 'lv']) : super(locale);

  @override
  String get settingsTitle => 'Iestatījumi';

  @override
  String get languageSection => 'Valoda';

  @override
  String get useSystemLanguage => 'Izmantojiet sistēmas valodu';

  @override
  String get useSystemLanguageSubtitle =>
      'Pēc noklusējuma saskaņojiet ierīces valodu.';

  @override
  String get currentLanguage => 'Pašreizējā valoda';

  @override
  String get appLanguage => 'Lietotnes valoda';

  @override
  String get chooseLanguage => 'Izvēlieties valodu';

  @override
  String get theme => 'Tēma';

  @override
  String get appearance => 'Izskats';

  @override
  String get textSection => 'Teksts';

  @override
  String get readingFormatSection => 'Lasīšanas formāts';

  @override
  String get displaySection => 'Displejs';

  @override
  String get verseNumbers => 'Pantu numuri';

  @override
  String get sectionHeadings => 'Sadaļu virsraksti';

  @override
  String get redLetterText => 'Sarkano burtu teksts';

  @override
  String get selectABook => 'Izvēlieties grāmatu';

  @override
  String get traditionalOrder => 'Tradicionālā kārtība';

  @override
  String get alphabeticalOrder => 'Alfabētiskā secība';

  @override
  String get bookmarks => 'Grāmatzīmes';

  @override
  String get retry => 'Mēģiniet vēlreiz';

  @override
  String get chooseTheme => 'Izvēlieties tēmu';

  @override
  String get customisableThemes => 'Pielāgojami motīvi';

  @override
  String get customisableThemesSubtitle =>
      'Pieskarieties kartītei, lai izvēlētos akcenta krāsu. \"Classic White\" atbalsta arī Light, Dark un System režīmus.';

  @override
  String get setThemes => 'IESTATĪT TĒMAS';

  @override
  String get setThemesSubtitle =>
      'Fiksētas, ar rokām darinātas paletes. Pielāgošana nav nepieciešama — vienkārši pieskarieties, lai lietotu.';

  @override
  String get deleteBookmarkQuestion => 'Vai dzēst grāmatzīmi?';

  @override
  String get cancel => 'Atcelt';

  @override
  String get delete => 'Dzēst';

  @override
  String get bookmarkSaved => 'Grāmatzīme saglabāta';

  @override
  String get couldNotDeleteBookmark => 'Nevarēja izdzēst grāmatzīmi.';

  @override
  String couldNotNavigate(Object reference) {
    return 'Nevarēja pāriet uz $reference.';
  }

  @override
  String get pageNotFound => 'Lapa nav atrasta';

  @override
  String noRouteDefined(Object routeName) {
    return 'Nav definēts maršruts \"$routeName\"';
  }

  @override
  String get english => 'angļu valoda';

  @override
  String get spanish => 'Español';

  @override
  String get systemDefault => 'Sistēmas noklusējums';

  @override
  String get languageStatusEnglish => 'Atkāpšanās angļu valodā ir aktīva';

  @override
  String get languageStatusSystem => 'Izmantojot sistēmas valodu';

  @override
  String languageStatusSelected(Object languageName) {
    return 'Izvēlētā valoda: $languageName';
  }

  @override
  String get themeLabel => 'Tēma';

  @override
  String get notFoundTitle => 'Lapa nav atrasta';

  @override
  String get loadingCyberBible => 'Notiek kiberbībeles ielāde...';

  @override
  String get couldNotOpenDatabase =>
      'Nevarēja atvērt Bībeles datu bāzi. Lūdzu, mēģiniet vēlreiz.';

  @override
  String get homeTagline =>
      'Bezmaksas un atvērtā koda Bībeles studiju lietotne';

  @override
  String get readTheBible => 'Lasi Bībeli';

  @override
  String get settingsTooltip => 'Iestatījumi';

  @override
  String get themeChoose => 'Izvēlieties tēmu';

  @override
  String get customThemes => 'Pielāgojami motīvi';

  @override
  String get customThemesSubtitle =>
      'Pieskarieties kartītei, lai izvēlētos akcenta krāsu. \"Classic White\" atbalsta arī Light, Dark un System režīmus.';

  @override
  String get setThemesLabel => 'IESTATĪT TĒMAS';

  @override
  String get deleteBookmarkDialog => 'Vai dzēst grāmatzīmi?';

  @override
  String removeBookmarkMessage(Object details, Object reference) {
    return 'Vai noņemt \"$reference\"$details?\n\nŠo darbību nevar atsaukt.';
  }

  @override
  String get couldNotLoadBookmarks =>
      'Nevarēja ielādēt grāmatzīmes. Lūdzu, mēģiniet vēlreiz.';

  @override
  String get bookmarkSavedMessage => 'Grāmatzīme saglabāta';

  @override
  String get couldNotSaveBookmark => 'Nevarēja saglabāt grāmatzīmi.';

  @override
  String get noBookmarksMatchFilter =>
      'Šim filtram neatbilst neviena grāmatzīme.';

  @override
  String get clearFilter => 'Notīrīt filtru';

  @override
  String get traditionalOrderLabel => 'Tradicionālā kārtība';

  @override
  String get alphabeticalOrderLabel => 'Alfabētiskā secība';

  @override
  String get bookmarksTabLabel => 'Grāmatzīmes';

  @override
  String get fullChapter => 'Pilna nodaļa';

  @override
  String get addBookmark => 'Pievienot grāmatzīmi';

  @override
  String get selectVerse => 'Izvēlieties Verse';

  @override
  String get labelOptional => 'Etiķete (pēc izvēles)';

  @override
  String get notesOptional => 'Piezīmes (pēc izvēles)';

  @override
  String get save => 'Saglabāt';

  @override
  String get goToVerse => 'Dodieties uz Verse';

  @override
  String verseTitle(Object verse) {
    return 'Pants $verse';
  }

  @override
  String chapterTitle(Object chapter) {
    return 'nodaļa $chapter';
  }

  @override
  String get switchToFullChapter =>
      'Pārslēdzieties uz pilnas nodaļas grāmatzīmi';

  @override
  String get bookmarkSheetCancel => 'Atcelt, aizvērt grāmatzīmju lapu';

  @override
  String get pickCustomAccent => 'Izvēlieties pielāgotu akcentu';

  @override
  String get apply => 'Pieteikties';

  @override
  String get custom => 'Pielāgots';

  @override
  String get brightnessSystem => 'Sistēma';

  @override
  String get brightnessLight => 'Gaisma';

  @override
  String get brightnessDark => 'Tumšs';

  @override
  String get selectBook => 'Izvēlieties grāmatu';

  @override
  String get bookmarkFilterAll => 'Visi';

  @override
  String get bookmarkFilterUnlabeled => 'Bez etiķetes';

  @override
  String get bookmarkSortRecent => 'Vispirms nesen';

  @override
  String get bookmarkSortCanonical => 'Kanoniskā kārtība';

  @override
  String get chapterRetry => 'Mēģiniet vēlreiz';

  @override
  String get fontSize => 'Fonta lielums';

  @override
  String fontSizePixels(Object size) {
    return '$size px';
  }

  @override
  String get fontSizeSlider => 'Fonta lieluma slīdnis';

  @override
  String get fontSizeSliderHint =>
      'Velciet, lai pielāgotu vērtību no 12 līdz 28';

  @override
  String get fontPreview =>
      '\"Iesākumā Dievs radīja debesis un zemi.\" — Gen 1:1';

  @override
  String get showVerseNumbersSubtitle =>
      'Rādīt pantiņu numuru augšējos indeksus lasīšanas ekrānā.';

  @override
  String get showSectionHeadingsSubtitle =>
      'Rādīt sadaļas un psalmu virsrakstus starp fragmentiem.';

  @override
  String get wordsOfChristSubtitle =>
      'Parādiet Jēzus vārdus sarkanā krāsā. Atspējot vienai teksta krāsai.';

  @override
  String get verseFormatTitle => 'Dzejoļu formāts';

  @override
  String get verseFormatSubtitle =>
      'Izvēlieties, kā tiek izkārtots Svēto Rakstu teksts.';

  @override
  String get paragraphMode => 'Rindkopa';

  @override
  String get verseListMode => 'Pantu saraksts';

  @override
  String get paragraphModeTooltip => 'Rindkopu režīms';

  @override
  String get verseListModeTooltip => 'Pantu saraksta režīms';

  @override
  String get paragraphModeDescription =>
      'Teksts nepārtraukti plūst ar ievilktām rindkopām, piemēram, drukātā Bībelē.';

  @override
  String get verseListModeDescription =>
      'Katra Svēto Rakstu rindkopa sākas ar savu rindiņu, padarot pantu grupas viegli pamanāmas.';

  @override
  String get deleteBookmarkTooltip => 'Dzēst grāmatzīmi';

  @override
  String deleteBookmarkSemantics(Object reference) {
    return 'Dzēst grāmatzīmi $reference';
  }

  @override
  String sortBookmarksTooltip(Object sortOrder) {
    return 'Kārtot: $sortOrder';
  }

  @override
  String get noBookmarksYet => 'Vēl nav nevienas grāmatzīmes.';

  @override
  String get noBookmarksYetHint =>
      'Lasīšanas laikā pieskarieties grāmatzīmes ikonai, lai saglabātu atrašanās vietu.';

  @override
  String bookmarkReferenceNavigationError(Object reference) {
    return 'Nevarēja pāriet uz $reference.';
  }

  @override
  String themeCardSemantics(Object description, Object name, Object selected) {
    return '$name motīvs$selected. $description';
  }

  @override
  String get selectedThemeSuffix => ', pašlaik atlasīts';

  @override
  String get customisableAccentDescription => 'Pielāgojama akcenta krāsa.';

  @override
  String get fixedPaletteDescription => 'Fiksēta palete.';

  @override
  String accentColourTitle(Object themeName) {
    return 'Akcenta krāsa — $themeName';
  }

  @override
  String get brightnessMode => 'SPILTUMA REŽĪMS';

  @override
  String get lightMode => 'Gaismas režīms';

  @override
  String get followSystemMode => 'Sekojiet sistēmas režīmam';

  @override
  String get darkMode => 'Tumšais režīms';

  @override
  String get customColourPicker => 'Pielāgots krāsu atlasītājs';

  @override
  String get customColourTooltip => 'Pielāgota krāsa…';

  @override
  String get couldNotLoadBooks =>
      'Nevarēja ielādēt grāmatu sarakstu. Lūdzu, mēģiniet vēlreiz.';

  @override
  String chapterLabel(Object chapter) {
    return 'nodaļa $chapter';
  }

  @override
  String get traditionalOrderBooks => 'Tradicionālās pasūtījumu grāmatas';

  @override
  String get alphabeticalOrderBooks => 'Alfabētiskās pasūtījumu grāmatas';

  @override
  String get home => 'Sākums';

  @override
  String get addBookmarkTooltip => 'Pievienot grāmatzīmi';

  @override
  String get chooseBookChapter => 'Izvēlieties grāmatu un nodaļu';

  @override
  String get chooseVerse => 'Izvēlieties pantu';

  @override
  String get bookChapterQuickNavigation => 'Grāmatu un nodaļu ātra navigācija';

  @override
  String get verseQuickNavigation => 'Pants ātra navigācija';

  @override
  String get backToBooks => 'Atpakaļ pie grāmatām';

  @override
  String get selectBookTitle => 'Atlasiet Grāmata';

  @override
  String selectChapterTitle(Object bookName) {
    return 'Atlasīt nodaļu ($bookName)';
  }

  @override
  String chapterSelectionLabel(Object chapter) {
    return 'nodaļa $chapter';
  }

  @override
  String verseSelectionLabel(Object verse) {
    return 'Pants $verse';
  }

  @override
  String fullChapterReference(Object bookName, Object chapter) {
    return 'Pilna nodaļa: $bookName $chapter';
  }

  @override
  String get memorizeHint => 'Iegaumēt';

  @override
  String get addNoteHint => 'Pievienot piezīmi...';

  @override
  String get languageSearchHint => 'Meklēt valodas';

  @override
  String get languageModuleInstalled => 'Uzstādīts';

  @override
  String get languageModulePending => 'Gaida mašīntulkošanu';

  @override
  String get languageNoMatches =>
      'Neviena valoda neatbilst jūsu meklēšanas vaicājumam.';

  @override
  String get languageCatalogDescription =>
      'Valodas, kas atzīmētas kā instalētas, darbojas bezsaistē. Citas valodas tiks pievienotas kā mašīntulkoti moduļi.';

  @override
  String get saveBookmarkSemantics => 'Saglabāt grāmatzīmi';

  @override
  String get couldNotLoadChapter =>
      'Nevarēja ielādēt nodaļu. Lūdzu, mēģiniet vēlreiz.';

  @override
  String get couldNotLoadChapters =>
      'Nevarēja ielādēt nodaļas. Lūdzu, mēģiniet vēlreiz.';

  @override
  String verseWithText(Object text, Object verse) {
    return 'Pants $verse: $text';
  }

  @override
  String accentSwatchSemantics(Object name, Object selected) {
    return '$name akcenta krāsa$selected';
  }

  @override
  String get oldTestament => 'Vecā Derība';

  @override
  String get newTestament => 'Jaunā Derība';

  @override
  String get deuterocanonApocrypha => 'Deuterokanons / Apokrifi';
}
