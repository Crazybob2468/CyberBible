// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Irish (`ga`).
class AppLocalizationsGa extends AppLocalizations {
  AppLocalizationsGa([String locale = 'ga']) : super(locale);

  @override
  String get settingsTitle => 'Socruithe';

  @override
  String get languageSection => 'Teanga';

  @override
  String get useSystemLanguage => 'Úsáid teanga an chórais';

  @override
  String get useSystemLanguageSubtitle =>
      'Meaitseáil teanga an ghléis de réir réamhshocraithe.';

  @override
  String get currentLanguage => 'Teanga reatha';

  @override
  String get appLanguage => 'Teanga an aip';

  @override
  String get chooseLanguage => 'Roghnaigh teanga';

  @override
  String get theme => 'Téama';

  @override
  String get appearance => 'Cuma';

  @override
  String get textSection => 'Téacs';

  @override
  String get readingFormatSection => 'Formáid léitheoireachta';

  @override
  String get displaySection => 'Taispeáint';

  @override
  String get verseNumbers => 'Uimhreacha véarsaí';

  @override
  String get sectionHeadings => 'Ceannteidil rannóg';

  @override
  String get redLetterText => 'Téacs dearg';

  @override
  String get selectABook => 'Roghnaigh leabhar';

  @override
  String get traditionalOrder => 'Ord traidisiúnta';

  @override
  String get alphabeticalOrder => 'Ord aibítre';

  @override
  String get bookmarks => 'Leabharmharcanna';

  @override
  String get retry => 'Bain triail eile as';

  @override
  String get chooseTheme => 'Roghnaigh téama';

  @override
  String get customisableThemes => 'Téamaí inoiriúnaithe';

  @override
  String get customisableThemesSubtitle =>
      'Tapáil cárta chun dath aicsin a roghnú. Tacaíonn \"Classic White\" le modhanna Solas, Dorcha agus Córais freisin.';

  @override
  String get setThemes => 'SOC­RAIGH TÉAMAÍ';

  @override
  String get setThemesSubtitle =>
      'Pailéid sheasta, déanta de láimh. Ní gá saincheapadh - tapáil chun iad a chur i bhfeidhm.';

  @override
  String get deleteBookmarkQuestion => 'Scrios an leabharmharc?';

  @override
  String get cancel => 'Cealaigh';

  @override
  String get delete => 'Scrios';

  @override
  String get bookmarkSaved => 'Leabharmharc sábháilte';

  @override
  String get couldNotDeleteBookmark =>
      'Níorbh fhéidir an leabharmharc a scriosadh.';

  @override
  String couldNotNavigate(Object reference) {
    return 'Níorbh fhéidir dul go $reference.';
  }

  @override
  String get pageNotFound => 'Leathanach gan aimsiú';

  @override
  String noRouteDefined(Object routeName) {
    return 'Níl aon bhealach sainithe do \"$routeName\"';
  }

  @override
  String get english => 'Béarla';

  @override
  String get spanish => 'Spáinnis';

  @override
  String get systemDefault => 'Réamhshocrú an chórais';

  @override
  String get languageStatusEnglish => 'Cúltaca Béarla gníomhach';

  @override
  String get languageStatusSystem => 'Ag úsáid teanga an chórais';

  @override
  String languageStatusSelected(Object languageName) {
    return 'Teanga roghnaithe: $languageName';
  }

  @override
  String get themeLabel => 'Téama';

  @override
  String get notFoundTitle => 'Leathanach gan aimsiú';

  @override
  String get loadingCyberBible => 'Cyber Bible á luchtú...';

  @override
  String get couldNotOpenDatabase =>
      'Níorbh fhéidir bunachar sonraí an Bhíobla a oscailt. Bain triail eile as.';

  @override
  String get homeTagline =>
      'Aip staidéir Bíobla saor in aisce agus foinse oscailte';

  @override
  String get readTheBible => 'Léigh an Bíobla';

  @override
  String get settingsTooltip => 'Socruithe';

  @override
  String get themeChoose => 'Roghnaigh téama';

  @override
  String get customThemes => 'Téamaí inoiriúnaithe';

  @override
  String get customThemesSubtitle =>
      'Tapáil cárta chun dath aicsin a roghnú. Tacaíonn \"Classic White\" le modhanna Solas, Dorcha agus Córais freisin.';

  @override
  String get setThemesLabel => 'SOC­RAIGH TÉAMAÍ';

  @override
  String get deleteBookmarkDialog => 'Scrios an leabharmharc?';

  @override
  String removeBookmarkMessage(Object details, Object reference) {
    return 'Bain \"$reference\"$details?\n\nNí féidir é seo a chur ar ceal.';
  }

  @override
  String get couldNotLoadBookmarks =>
      'Níorbh fhéidir leabharmharcanna a luchtú. Bain triail eile as.';

  @override
  String get bookmarkSavedMessage => 'Leabharmharc sábháilte';

  @override
  String get couldNotSaveBookmark =>
      'Níorbh fhéidir an leabharmharc a shábháil.';

  @override
  String get noBookmarksMatchFilter =>
      'Ní mheaitseálann aon leabharmharc an scagaire seo.';

  @override
  String get clearFilter => 'Glan an scagaire';

  @override
  String get traditionalOrderLabel => 'Ord traidisiúnta';

  @override
  String get alphabeticalOrderLabel => 'Ord aibítre';

  @override
  String get bookmarksTabLabel => 'Leabharmharcanna';

  @override
  String get fullChapter => 'Caibidil iomlán';

  @override
  String get addBookmark => 'Cuir leabharmharc leis';

  @override
  String get selectVerse => 'Roghnaigh véarsa';

  @override
  String get labelOptional => 'Lipéad (roghnach)';

  @override
  String get notesOptional => 'Nótaí (roghnach)';

  @override
  String get save => 'Sábháil';

  @override
  String get goToVerse => 'Téigh go véarsa';

  @override
  String verseTitle(Object verse) {
    return 'Véarsa $verse';
  }

  @override
  String chapterTitle(Object chapter) {
    return 'Caibidil $chapter';
  }

  @override
  String get switchToFullChapter =>
      'Athraigh go leabharmharc na caibidle iomláine';

  @override
  String get bookmarkSheetCancel => 'Cealaigh, dún bileog na leabharmharcanna';

  @override
  String get pickCustomAccent => 'Roghnaigh aicsint saincheaptha';

  @override
  String get apply => 'Cuir i bhfeidhm';

  @override
  String get custom => 'Saincheaptha';

  @override
  String get brightnessSystem => 'Córas';

  @override
  String get brightnessLight => 'Solas';

  @override
  String get brightnessDark => 'Dorcha';

  @override
  String get selectBook => 'Roghnaigh leabhar';

  @override
  String get bookmarkFilterAll => 'Gach';

  @override
  String get bookmarkFilterUnlabeled => 'Gan lipéad';

  @override
  String get bookmarkSortRecent => 'Is déanaí ar dtús';

  @override
  String get bookmarkSortCanonical => 'Ord canónta';

  @override
  String get chapterRetry => 'Bain triail eile as';

  @override
  String get fontSize => 'Méid cló';

  @override
  String fontSizePixels(Object size) {
    return '$size px';
  }

  @override
  String get fontSizeSlider => 'Sleamhnán méid cló';

  @override
  String get fontSizeSliderHint => 'Svaidhpeáil chun coigeartú ó 12 go 28';

  @override
  String get fontPreview =>
      '\"I dtús báire chruthaigh Dia na flaithis agus an talamh.\" - Gen 1:1';

  @override
  String get showVerseNumbersSubtitle =>
      'Taispeáin forscríbhinní uimhreacha véarsa ar an scáileán léitheoireachta.';

  @override
  String get showSectionHeadingsSubtitle =>
      'Taispeáin ceannteidil rannóige agus Salm idir sleachta.';

  @override
  String get wordsOfChristSubtitle =>
      'Taispeáin focail Íosa i ndearg. Díchumasaigh le haghaidh dath téacs aonair.';

  @override
  String get verseFormatTitle => 'Formáid véarsa';

  @override
  String get verseFormatSubtitle =>
      'Roghnaigh conas a leagtar amach téacs na Scrioptúir.';

  @override
  String get paragraphMode => 'Alt';

  @override
  String get verseListMode => 'Liosta véarsaí';

  @override
  String get paragraphModeTooltip => 'Mód ailt';

  @override
  String get verseListModeTooltip => 'Mód liosta véarsaí';

  @override
  String get paragraphModeDescription =>
      'Sreabhann an téacs go leanúnach le hailt eangaithe, mar Bhíobla clóite.';

  @override
  String get verseListModeDescription =>
      'Tosaíonn gach alt Scrioptúir ar a líne féin, rud a fhágann go bhfuil grúpaí véarsaí furasta a fheiceáil.';

  @override
  String get deleteBookmarkTooltip => 'Scrios leabharmharc';

  @override
  String deleteBookmarkSemantics(Object reference) {
    return 'Scrios leabharmharc $reference';
  }

  @override
  String sortBookmarksTooltip(Object sortOrder) {
    return 'Sórtáil: $sortOrder';
  }

  @override
  String get noBookmarksYet => 'Gan leabharmharcanna fós.';

  @override
  String get noBookmarksYetHint =>
      'Tapáil deilbhín an leabharmhairc agus tú ag léamh chun suíomh a shábháil.';

  @override
  String bookmarkReferenceNavigationError(Object reference) {
    return 'Níorbh fhéidir dul go $reference.';
  }

  @override
  String themeCardSemantics(Object description, Object name, Object selected) {
    return 'Téama $name$selected. $description';
  }

  @override
  String get selectedThemeSuffix => ', roghnaithe faoi láthair';

  @override
  String get customisableAccentDescription => 'Dath aicsin inoiriúnaithe.';

  @override
  String get fixedPaletteDescription => 'Pailéad seasta.';

  @override
  String accentColourTitle(Object themeName) {
    return 'Dath aicsin - $themeName';
  }

  @override
  String get brightnessMode => 'MÓD GILE';

  @override
  String get lightMode => 'Mód solais';

  @override
  String get followSystemMode => 'Lean mód an chórais';

  @override
  String get darkMode => 'Mód dorcha';

  @override
  String get customColourPicker => 'Roghnóir dath saincheaptha';

  @override
  String get customColourTooltip => 'Dath saincheaptha…';

  @override
  String get couldNotLoadBooks =>
      'Níorbh fhéidir liosta na leabhar a luchtú. Bain triail eile as.';

  @override
  String chapterLabel(Object chapter) {
    return 'Caibidil $chapter';
  }

  @override
  String get traditionalOrderBooks => 'Leabhair in ord traidisiúnta';

  @override
  String get alphabeticalOrderBooks => 'Leabhair in ord aibítre';

  @override
  String get home => 'Baile';

  @override
  String get addBookmarkTooltip => 'Cuir leabharmharc leis';

  @override
  String get chooseBookChapter => 'Roghnaigh leabhar agus caibidil';

  @override
  String get chooseVerse => 'Roghnaigh véarsa';

  @override
  String get bookChapterQuickNavigation =>
      'Nascleanúint thapa leabhair agus caibidle';

  @override
  String get verseQuickNavigation => 'Nascleanúint thapa véarsaí';

  @override
  String get backToBooks => 'Ar ais chuig leabhair';

  @override
  String get selectBookTitle => 'Roghnaigh leabhar';

  @override
  String selectChapterTitle(Object bookName) {
    return 'Roghnaigh caibidil ($bookName)';
  }

  @override
  String chapterSelectionLabel(Object chapter) {
    return 'Caibidil $chapter';
  }

  @override
  String verseSelectionLabel(Object verse) {
    return 'Véarsa $verse';
  }

  @override
  String fullChapterReference(Object bookName, Object chapter) {
    return 'Caibidil iomlán: $bookName $chapter';
  }

  @override
  String get memorizeHint => 'Cuir de ghlanmheabhair';

  @override
  String get addNoteHint => 'Cuir nóta leis...';

  @override
  String get languageSearchHint => 'Cuardaigh teangacha';

  @override
  String get languageModuleInstalled => 'Suiteáilte';

  @override
  String get languageModulePending => 'Aistriúchán meaisín ar feitheamh';

  @override
  String get languageNoMatches => 'Ní mheaitseálann aon teanga do chuardach.';

  @override
  String get languageCatalogDescription =>
      'Oibríonn teangacha marcáilte mar shuiteáilte as líne. Cuirfear teangacha eile leis mar mhodúil mheaisínaistrithe.';

  @override
  String get saveBookmarkSemantics => 'Sábháil leabharmharc';

  @override
  String get couldNotLoadChapter =>
      'Níorbh fhéidir an chaibidil a luchtú. Bain triail eile as.';

  @override
  String get couldNotLoadChapters =>
      'Níorbh fhéidir caibidlí a luchtú. Bain triail eile as.';

  @override
  String verseWithText(Object text, Object verse) {
    return 'Véarsa $verse: $text';
  }

  @override
  String accentSwatchSemantics(Object name, Object selected) {
    return 'Dath aicsin $name$selected';
  }

  @override
  String get oldTestament => 'Sean-Tiomna';

  @override
  String get newTestament => 'Tiomna Nua';

  @override
  String get deuterocanonApocrypha => 'Deotracanón / Apacrafa';
}
