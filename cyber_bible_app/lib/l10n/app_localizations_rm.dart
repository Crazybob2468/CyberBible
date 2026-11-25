// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Romansh (`rm`).
class AppLocalizationsRm extends AppLocalizations {
  AppLocalizationsRm([String locale = 'rm']) : super(locale);

  @override
  String get settingsTitle => 'Parameters';

  @override
  String get languageSection => 'Lingua';

  @override
  String get useSystemLanguage => 'Utilisar la lingua dal sistem';

  @override
  String get useSystemLanguageSubtitle =>
      'Utilisar la lingua dal apparat sco lingua predefinida.';

  @override
  String get currentLanguage => 'Lingua actuala';

  @override
  String get appLanguage => 'Lingua da l\'app';

  @override
  String get chooseLanguage => 'Eleger ina lingua';

  @override
  String get theme => 'Tema';

  @override
  String get appearance => 'Aspect';

  @override
  String get textSection => 'Text';

  @override
  String get readingFormatSection => 'Format da lectura';

  @override
  String get displaySection => 'Visualisaziun';

  @override
  String get verseNumbers => 'Numer da versets';

  @override
  String get sectionHeadings => 'Titel da las secziuns';

  @override
  String get redLetterText => 'Text cotschen';

  @override
  String get selectABook => 'Eleger in cudesch';

  @override
  String get traditionalOrder => 'Successiun tradiziunala';

  @override
  String get alphabeticalOrder => 'Successiun alfabetica';

  @override
  String get bookmarks => 'Segnapaginas';

  @override
  String get retry => 'Empruvar danovamain';

  @override
  String get chooseTheme => 'Eleger in tema';

  @override
  String get customisableThemes => 'Temas adattabels';

  @override
  String get customisableThemesSubtitle =>
      'Toccar ina carta per eleger ina colur d\'accent. \"Classic White\" sustegna era ils modes cler, stgir e sistem.';

  @override
  String get setThemes => 'TEMAS FIXS';

  @override
  String get setThemesSubtitle =>
      'Palettas da colurs fixas, fatgas cun quitads. Nagina adattaziun necessaria; tutgar per applitgar.';

  @override
  String get deleteBookmarkQuestion => 'Stizzar il segnapagina?';

  @override
  String get cancel => 'Interrumper';

  @override
  String get delete => 'Stizzar';

  @override
  String get bookmarkSaved => 'Segnapagina memorisà';

  @override
  String get couldNotDeleteBookmark => 'Impussibel da stizzar il segnapagina.';

  @override
  String couldNotNavigate(Object reference) {
    return 'Impussibel da navigar a $reference.';
  }

  @override
  String get pageNotFound => 'Pagina betg chattada';

  @override
  String noRouteDefined(Object routeName) {
    return 'Nagins viadi definì per \"$routeName\"';
  }

  @override
  String get english => 'Englais';

  @override
  String get spanish => 'Spagnol';

  @override
  String get systemDefault => 'Predefiniziun dal sistem';

  @override
  String get languageStatusEnglish =>
      'Englais vegn duvrà sco lingua substitutiva';

  @override
  String get languageStatusSystem => 'La lingua dal sistem vegn duvrada';

  @override
  String languageStatusSelected(Object languageName) {
    return 'Lingua tschernida: $languageName';
  }

  @override
  String get themeLabel => 'Tema';

  @override
  String get notFoundTitle => 'Pagina betg chattada';

  @override
  String get loadingCyberBible => 'La Bibla digitala vegn chargiada...';

  @override
  String get couldNotOpenDatabase =>
      'Impussibel d\'avrir la banca da datas da la Bibla. Empruvar danovamain.';

  @override
  String get homeTagline =>
      'In\'app gratuita e da code avert per studegiar la Bibla';

  @override
  String get readTheBible => 'Leger la Bibla';

  @override
  String get settingsTooltip => 'Parameters';

  @override
  String get themeChoose => 'Eleger in tema';

  @override
  String get customThemes => 'Temas adattabels';

  @override
  String get customThemesSubtitle =>
      'Toccar ina carta per eleger ina colur d\'accent. \"Classic White\" sustegna era ils modes cler, stgir e sistem.';

  @override
  String get setThemesLabel => 'TEMAS FIXS';

  @override
  String get deleteBookmarkDialog => 'Stizzar il segnapagina?';

  @override
  String removeBookmarkMessage(Object details, Object reference) {
    return 'Allontanar \"$reference\"$details?\n\nQuesta acziun na po betg vegnir revocada.';
  }

  @override
  String get couldNotLoadBookmarks =>
      'Impussibel da chargiar ils segnapaginas. Empruvar danovamain.';

  @override
  String get bookmarkSavedMessage => 'Segnapagina memorisà';

  @override
  String get couldNotSaveBookmark => 'Impussibel da memorisar il segnapagina.';

  @override
  String get noBookmarksMatchFilter =>
      'Nagin segnapagina na correspunda a quest filter.';

  @override
  String get clearFilter => 'Allontanar il filter';

  @override
  String get traditionalOrderLabel => 'Successiun tradiziunala';

  @override
  String get alphabeticalOrderLabel => 'Successiun alfabetica';

  @override
  String get bookmarksTabLabel => 'Segnapaginas';

  @override
  String get fullChapter => 'Chapitel cumplet';

  @override
  String get addBookmark => 'Agiuntar in segnapagina';

  @override
  String get selectVerse => 'Eleger in verset';

  @override
  String get labelOptional => 'Etichetta (opziunala)';

  @override
  String get notesOptional => 'Remartgas (opziunalas)';

  @override
  String get save => 'Memorisar';

  @override
  String get goToVerse => 'Ir al verset';

  @override
  String verseTitle(Object verse) {
    return 'Verset $verse';
  }

  @override
  String chapterTitle(Object chapter) {
    return 'Chapitel $chapter';
  }

  @override
  String get switchToFullChapter => 'Midar al segnapagina dal chapitel cumplet';

  @override
  String get bookmarkSheetCancel =>
      'Interrumper e serrar il fegl dals segnapaginas';

  @override
  String get pickCustomAccent => 'Eleger ina colur d\'accent persunalisada';

  @override
  String get apply => 'Applitgar';

  @override
  String get custom => 'Persunalisà';

  @override
  String get brightnessSystem => 'Sistem';

  @override
  String get brightnessLight => 'Cler';

  @override
  String get brightnessDark => 'Stgir';

  @override
  String get selectBook => 'Eleger in cudesch';

  @override
  String get bookmarkFilterAll => 'Tut';

  @override
  String get bookmarkFilterUnlabeled => 'Senza etichetta';

  @override
  String get bookmarkSortRecent => 'Ils pli novs l\'emprim';

  @override
  String get bookmarkSortCanonical => 'Successiun canonica';

  @override
  String get chapterRetry => 'Empruvar danovamain';

  @override
  String get fontSize => 'Grondezza da la scrittira';

  @override
  String fontSizePixels(Object size) {
    return '$size px';
  }

  @override
  String get fontSizeSlider => 'Regulatur per la grondezza da la scrittira';

  @override
  String get fontSizeSliderHint => 'Far glischnar per adattar da 12 fin 28';

  @override
  String get fontPreview =>
      '\"En il cumenzament ha Dieu creà il tschiel e la terra.\" — Gen 1:1';

  @override
  String get showVerseNumbersSubtitle =>
      'Mussar ils numer da versets sin la pagina da lectura.';

  @override
  String get showSectionHeadingsSubtitle =>
      'Mussar ils titels da las secziuns e dals psalms tranter ils passadis.';

  @override
  String get wordsOfChristSubtitle =>
      'Mussar ils pleds da Jesus en cotschen. Deactivar per duvrar ina suletta colur dal text.';

  @override
  String get verseFormatTitle => 'Format dals versets';

  @override
  String get verseFormatSubtitle =>
      'Eleger co ch\'il text da la Scrittira vegn disponì.';

  @override
  String get paragraphMode => 'Paragraf';

  @override
  String get verseListMode => 'Gliesta da versets';

  @override
  String get paragraphModeTooltip => 'Modus da paragraf';

  @override
  String get verseListModeTooltip => 'Modus da gliesta da versets';

  @override
  String get paragraphModeDescription =>
      'Il text curra senza interrupziun en paragrafis indentads, sco en ina Bibla stampada.';

  @override
  String get verseListModeDescription =>
      'Mintga paragraf da la Scrittira cumenza sin sia atgna lingia, per ch\'ils grupps da versets sajan pli visibels.';

  @override
  String get deleteBookmarkTooltip => 'Stizzar il segnapagina';

  @override
  String deleteBookmarkSemantics(Object reference) {
    return 'Stizzar il segnapagina $reference';
  }

  @override
  String sortBookmarksTooltip(Object sortOrder) {
    return 'Urden: $sortOrder';
  }

  @override
  String get noBookmarksYet => 'Anc nagins segnapaginas.';

  @override
  String get noBookmarksYetHint =>
      'Tutgar l\'icona dal segnapagina durant la lectura per memorisar in lieu.';

  @override
  String bookmarkReferenceNavigationError(Object reference) {
    return 'Impussibel da navigar a $reference.';
  }

  @override
  String themeCardSemantics(Object description, Object name, Object selected) {
    return 'Tema $name$selected. $description';
  }

  @override
  String get selectedThemeSuffix => ', tschernì actualmain';

  @override
  String get customisableAccentDescription => 'Colur d\'accent adattabla.';

  @override
  String get fixedPaletteDescription => 'Paletta fixa.';

  @override
  String accentColourTitle(Object themeName) {
    return 'Colur d\'accent — $themeName';
  }

  @override
  String get brightnessMode => 'MODUS DA LUMIÈRE';

  @override
  String get lightMode => 'Modus cler';

  @override
  String get followSystemMode => 'Suandar il modus dal sistem';

  @override
  String get darkMode => 'Modus stgir';

  @override
  String get customColourPicker => 'Selecziunader da colurs persunalisadas';

  @override
  String get customColourTooltip => 'Colur persunalisada...';

  @override
  String get couldNotLoadBooks =>
      'Impussibel da chargiar la gliesta dals cudeschs. Empruvar danovamain.';

  @override
  String chapterLabel(Object chapter) {
    return 'Chapitel $chapter';
  }

  @override
  String get traditionalOrderBooks => 'Cudeschs en successiun tradiziunala';

  @override
  String get alphabeticalOrderBooks => 'Cudeschs en successiun alfabetica';

  @override
  String get home => 'Pagina iniziala';

  @override
  String get addBookmarkTooltip => 'Agiuntar in segnapagina';

  @override
  String get chooseBookChapter => 'Eleger cudesch e chapitel';

  @override
  String get chooseVerse => 'Eleger in verset';

  @override
  String get bookChapterQuickNavigation =>
      'Navigaziun svelta al cudesch e chapitel';

  @override
  String get verseQuickNavigation => 'Navigaziun svelta al verset';

  @override
  String get backToBooks => 'Enavos als cudeschs';

  @override
  String get selectBookTitle => 'Eleger in cudesch';

  @override
  String selectChapterTitle(Object bookName) {
    return 'Eleger chapitel ($bookName)';
  }

  @override
  String chapterSelectionLabel(Object chapter) {
    return 'Chapitel $chapter';
  }

  @override
  String verseSelectionLabel(Object verse) {
    return 'Verset $verse';
  }

  @override
  String fullChapterReference(Object bookName, Object chapter) {
    return 'Chapitel cumplet: $bookName $chapter';
  }

  @override
  String get memorizeHint => 'Emprender ordador';

  @override
  String get addNoteHint => 'Agiuntar ina remartga...';

  @override
  String get languageSearchHint => 'Tschertgar linguas';

  @override
  String get languageModuleInstalled => 'Installà';

  @override
  String get languageModulePending => 'Translaziun automatica pendenta';

  @override
  String get languageNoMatches =>
      'Nagina lingua na correspunda a la tschertga.';

  @override
  String get languageCatalogDescription =>
      'Las linguas installadas funcziunan senza internet. Autras linguas vegnan agiuntadas sco moduls translatads automaticamain.';

  @override
  String get saveBookmarkSemantics => 'Memorisar il segnapagina';

  @override
  String get couldNotLoadChapter =>
      'Impussibel da chargiar il chapitel. Empruvar danovamain.';

  @override
  String get couldNotLoadChapters =>
      'Impussibel da chargiar ils chapitels. Empruvar danovamain.';

  @override
  String verseWithText(Object text, Object verse) {
    return 'Verset $verse: $text';
  }

  @override
  String accentSwatchSemantics(Object name, Object selected) {
    return 'Colur d\'accent $name$selected';
  }

  @override
  String get oldTestament => 'Testament vegl';

  @override
  String get newTestament => 'Testament nov';

  @override
  String get deuterocanonApocrypha => 'Deuterocanon / Apocrypha';
}
