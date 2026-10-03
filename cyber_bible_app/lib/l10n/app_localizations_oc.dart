// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Occitan (`oc`).
class AppLocalizationsOc extends AppLocalizations {
  AppLocalizationsOc([String locale = 'oc']) : super(locale);

  @override
  String get settingsTitle => 'Paramètres';

  @override
  String get languageSection => 'Lenga';

  @override
  String get useSystemLanguage => 'Utilizar la lenga del sistèma';

  @override
  String get useSystemLanguageSubtitle =>
      'Utilizar la lenga de l\'aparelh coma lenga per defaut.';

  @override
  String get currentLanguage => 'Lenga actuala';

  @override
  String get appLanguage => 'Lenga de l\'aplicacion';

  @override
  String get chooseLanguage => 'Causir una lenga';

  @override
  String get theme => 'Tèma';

  @override
  String get appearance => 'Aparéncia';

  @override
  String get textSection => 'Tèxte';

  @override
  String get readingFormatSection => 'Format de lectura';

  @override
  String get displaySection => 'Afichatge';

  @override
  String get verseNumbers => 'Numèros dels vèrses';

  @override
  String get sectionHeadings => 'Títols de seccion';

  @override
  String get redLetterText => 'Tèxte en roge';

  @override
  String get selectABook => 'Causir un libre';

  @override
  String get traditionalOrder => 'Òrdre tradicional';

  @override
  String get alphabeticalOrder => 'Òrdre alfabetica';

  @override
  String get bookmarks => 'Marcapaginas';

  @override
  String get retry => 'Tornar ensajar';

  @override
  String get chooseTheme => 'Causir un tèma';

  @override
  String get customisableThemes => 'Tèmas personalizables';

  @override
  String get customisableThemesSubtitle =>
      'Tocatz una carta per causir una color d\'accent. \"Classic White\" sosten tanben los mòdes Clar, Escur e Sistèma.';

  @override
  String get setThemes => 'TÈMAS FIXES';

  @override
  String get setThemesSubtitle =>
      'Paletas fixas elaboradas amb suènh. Cap de personalizacion es necessària; tocatz per aplicar.';

  @override
  String get deleteBookmarkQuestion => 'Suprimir lo marcapagina?';

  @override
  String get cancel => 'Anullar';

  @override
  String get delete => 'Suprimir';

  @override
  String get bookmarkSaved => 'Marcapagina enregistrat';

  @override
  String get couldNotDeleteBookmark => 'Impossible de suprimir lo marcapagina.';

  @override
  String couldNotNavigate(Object reference) {
    return 'Impossible d\'anar a $reference.';
  }

  @override
  String get pageNotFound => 'Pagina pas trobada';

  @override
  String noRouteDefined(Object routeName) {
    return 'Cap d\'itinerari definit per \"$routeName\"';
  }

  @override
  String get english => 'Anglés';

  @override
  String get spanish => 'Espanhòl';

  @override
  String get systemDefault => 'Defaut del sistèma';

  @override
  String get languageStatusEnglish =>
      'L\'anglés es utilizat coma lenga de secors';

  @override
  String get languageStatusSystem => 'La lenga del sistèma es utilizada';

  @override
  String languageStatusSelected(Object languageName) {
    return 'Lenga causida: $languageName';
  }

  @override
  String get themeLabel => 'Tèma';

  @override
  String get notFoundTitle => 'Pagina pas trobada';

  @override
  String get loadingCyberBible => 'Cargament de la Bíblia Cibernetica...';

  @override
  String get couldNotOpenDatabase =>
      'Impossible de dobrir la basa de donadas de la Bíblia. Tornatz ensajar.';

  @override
  String get homeTagline =>
      'Una aplicacion gratuita e de còdi dobèrt per estudiar la Bíblia';

  @override
  String get readTheBible => 'Legir la Bíblia';

  @override
  String get settingsTooltip => 'Paramètres';

  @override
  String get themeChoose => 'Causir un tèma';

  @override
  String get customThemes => 'Tèmas personalizables';

  @override
  String get customThemesSubtitle =>
      'Tocatz una carta per causir una color d\'accent. \"Classic White\" sosten tanben los mòdes Clar, Escur e Sistèma.';

  @override
  String get setThemesLabel => 'TÈMAS FIXES';

  @override
  String get deleteBookmarkDialog => 'Suprimir lo marcapagina?';

  @override
  String removeBookmarkMessage(Object details, Object reference) {
    return 'Suprimir \"$reference\"$details?\n\nAquesta accion pòt pas èsser anullada.';
  }

  @override
  String get couldNotLoadBookmarks =>
      'Impossible de cargar los marcapaginas. Tornatz ensajar.';

  @override
  String get bookmarkSavedMessage => 'Marcapagina enregistrat';

  @override
  String get couldNotSaveBookmark =>
      'Impossible d\'enregistrar lo marcapagina.';

  @override
  String get noBookmarksMatchFilter =>
      'Cap de marcapagina correspond pas a aqueste filtre.';

  @override
  String get clearFilter => 'Escafar lo filtre';

  @override
  String get traditionalOrderLabel => 'Òrdre tradicional';

  @override
  String get alphabeticalOrderLabel => 'Òrdre alfabetica';

  @override
  String get bookmarksTabLabel => 'Marcapaginas';

  @override
  String get fullChapter => 'Capítol complet';

  @override
  String get addBookmark => 'Apondre un marcapagina';

  @override
  String get selectVerse => 'Causir un vèrs';

  @override
  String get labelOptional => 'Etiqueta (opcionala)';

  @override
  String get notesOptional => 'Nòtas (opcionalas)';

  @override
  String get save => 'Enregistrar';

  @override
  String get goToVerse => 'Anar al vèrs';

  @override
  String verseTitle(Object verse) {
    return 'Vèrs $verse';
  }

  @override
  String chapterTitle(Object chapter) {
    return 'Capítol $chapter';
  }

  @override
  String get switchToFullChapter =>
      'Cambiar per un marcapagina del capítol complet';

  @override
  String get bookmarkSheetCancel =>
      'Anullar e tampar lo panèl dels marcapaginas';

  @override
  String get pickCustomAccent => 'Causir una color d\'accent personalizada';

  @override
  String get apply => 'Aplicar';

  @override
  String get custom => 'Personalizat';

  @override
  String get brightnessSystem => 'Sistèma';

  @override
  String get brightnessLight => 'Clar';

  @override
  String get brightnessDark => 'Escur';

  @override
  String get selectBook => 'Causir un libre';

  @override
  String get bookmarkFilterAll => 'Totes';

  @override
  String get bookmarkFilterUnlabeled => 'Sens etiqueta';

  @override
  String get bookmarkSortRecent => 'Mai recents d\'en primièr';

  @override
  String get bookmarkSortCanonical => 'Òrdre canonic';

  @override
  String get chapterRetry => 'Tornar ensajar';

  @override
  String get fontSize => 'Talha dels caractèrs';

  @override
  String fontSizePixels(Object size) {
    return '$size px';
  }

  @override
  String get fontSizeSlider => 'Regulador de la talha dels caractèrs';

  @override
  String get fontSizeSliderHint => 'Liscar per ajustar de 12 a 28';

  @override
  String get fontPreview =>
      '\"Al començament, Dieu creèt lo cèl e la tèrra.\" — Gen 1:1';

  @override
  String get showVerseNumbersSubtitle =>
      'Afichar los numèros dels vèrses sus l\'ecran de lectura.';

  @override
  String get showSectionHeadingsSubtitle =>
      'Afichar los títols de seccion e dels Psalmes entre los passatges.';

  @override
  String get wordsOfChristSubtitle =>
      'Afichar las paraulas de Jèsus en roge. Desactivatz per utilizar una sola color de tèxte.';

  @override
  String get verseFormatTitle => 'Format dels vèrses';

  @override
  String get verseFormatSubtitle =>
      'Causissètz cossí lo tèxte de l\'Escriptura es dispausat.';

  @override
  String get paragraphMode => 'Paragraf';

  @override
  String get verseListMode => 'Lista de vèrses';

  @override
  String get paragraphModeTooltip => 'Mòde paragraf';

  @override
  String get verseListModeTooltip => 'Mòde lista de vèrses';

  @override
  String get paragraphModeDescription =>
      'Lo tèxte s\'escampa en continuitat dins de paragrafes indentats, coma dins una Bíblia estampada.';

  @override
  String get verseListModeDescription =>
      'Cada paragraf de l\'Escriptura comença sus sa pròpria linha, per facilitar lo repèratge dels grops de vèrses.';

  @override
  String get deleteBookmarkTooltip => 'Suprimir lo marcapagina';

  @override
  String deleteBookmarkSemantics(Object reference) {
    return 'Suprimir lo marcapagina $reference';
  }

  @override
  String sortBookmarksTooltip(Object sortOrder) {
    return 'Triar: $sortOrder';
  }

  @override
  String get noBookmarksYet => 'Cap de marcapagina pel moment.';

  @override
  String get noBookmarksYetHint =>
      'Tocatz l\'icòna del marcapagina pendent la lectura per enregistrar un endrech.';

  @override
  String bookmarkReferenceNavigationError(Object reference) {
    return 'Impossible d\'anar a $reference.';
  }

  @override
  String themeCardSemantics(Object description, Object name, Object selected) {
    return 'Tèma $name$selected. $description';
  }

  @override
  String get selectedThemeSuffix => ', actualament causit';

  @override
  String get customisableAccentDescription => 'Color d\'accent personalizabla.';

  @override
  String get fixedPaletteDescription => 'Paleta fixa.';

  @override
  String accentColourTitle(Object themeName) {
    return 'Color d\'accent — $themeName';
  }

  @override
  String get brightnessMode => 'MÒDE DE LUMINOSITAT';

  @override
  String get lightMode => 'Mòde clar';

  @override
  String get followSystemMode => 'Seguir lo mòde del sistèma';

  @override
  String get darkMode => 'Mòde escur';

  @override
  String get customColourPicker => 'Selector de color personalizat';

  @override
  String get customColourTooltip => 'Color personalizada...';

  @override
  String get couldNotLoadBooks =>
      'Impossible de cargar la lista dels libres. Tornatz ensajar.';

  @override
  String chapterLabel(Object chapter) {
    return 'Capítol $chapter';
  }

  @override
  String get traditionalOrderBooks => 'Libres dins l\'òrdre tradicional';

  @override
  String get alphabeticalOrderBooks => 'Libres dins l\'òrdre alfabetica';

  @override
  String get home => 'Acuèlh';

  @override
  String get addBookmarkTooltip => 'Apondre un marcapagina';

  @override
  String get chooseBookChapter => 'Causir un libre e un capítol';

  @override
  String get chooseVerse => 'Causir un vèrs';

  @override
  String get bookChapterQuickNavigation =>
      'Navigacion rapida cap al libre e al capítol';

  @override
  String get verseQuickNavigation => 'Navigacion rapida cap al vèrs';

  @override
  String get backToBooks => 'Tornar als libres';

  @override
  String get selectBookTitle => 'Causir un libre';

  @override
  String selectChapterTitle(Object bookName) {
    return 'Causir un capítol ($bookName)';
  }

  @override
  String chapterSelectionLabel(Object chapter) {
    return 'Capítol $chapter';
  }

  @override
  String verseSelectionLabel(Object verse) {
    return 'Vèrs $verse';
  }

  @override
  String fullChapterReference(Object bookName, Object chapter) {
    return 'Capítol complet: $bookName $chapter';
  }

  @override
  String get memorizeHint => 'Memorizar';

  @override
  String get addNoteHint => 'Apondre una nòta...';

  @override
  String get languageSearchHint => 'Cercar de lengas';

  @override
  String get languageModuleInstalled => 'Installat';

  @override
  String get languageModulePending => 'Traduccion automatica en espèra';

  @override
  String get languageNoMatches =>
      'Cap de lenga correspond pas a vòstra recèrca.';

  @override
  String get languageCatalogDescription =>
      'Las lengas installadas foncionan sens connexion. D\'autras lengas seràn apondudas coma moduls tradusits automaticament.';

  @override
  String get saveBookmarkSemantics => 'Enregistrar lo marcapagina';

  @override
  String get couldNotLoadChapter =>
      'Impossible de cargar lo capítol. Tornatz ensajar.';

  @override
  String get couldNotLoadChapters =>
      'Impossible de cargar los capítols. Tornatz ensajar.';

  @override
  String verseWithText(Object text, Object verse) {
    return 'Vèrs $verse: $text';
  }

  @override
  String accentSwatchSemantics(Object name, Object selected) {
    return 'Color d\'accent $name$selected';
  }

  @override
  String get oldTestament => 'Ancian Testament';

  @override
  String get newTestament => 'Novèl Testament';

  @override
  String get deuterocanonApocrypha => 'Deuterocanonic / Apocrifs';
}
