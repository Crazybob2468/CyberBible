// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Quechua (`qu`).
class AppLocalizationsQu extends AppLocalizations {
  AppLocalizationsQu([String locale = 'qu']) : super(locale);

  @override
  String get settingsTitle => 'Ajustes nisqa';

  @override
  String get languageSection => 'Simi';

  @override
  String get useSystemLanguage => 'Sistema simita llamk\'achiy';

  @override
  String get useSystemLanguageSubtitle =>
      'Dispositivo simiwan tupachiy ñawpaqmanta.';

  @override
  String get currentLanguage => 'Kunan rimay';

  @override
  String get appLanguage => 'App simi';

  @override
  String get chooseLanguage => 'Simita akllay';

  @override
  String get theme => 'Rimay';

  @override
  String get appearance => 'Rikchaynin';

  @override
  String get textSection => 'Qillqa';

  @override
  String get readingFormatSection => 'Ñawinchay Formato';

  @override
  String get displaySection => 'Qawachiy';

  @override
  String get verseNumbers => 'Versiculokuna Yupaykuna';

  @override
  String get sectionHeadings => 'T’aqa Umakuna';

  @override
  String get redLetterText => 'Puka-Qillqa Qillqa';

  @override
  String get selectABook => 'Huk Librota akllay';

  @override
  String get traditionalOrder => 'Ñawpa pachamanta kamachiy';

  @override
  String get alphabeticalOrder => 'Alfabeto nisqaman hina orden';

  @override
  String get bookmarks => 'Marcadores nisqakuna';

  @override
  String get retry => 'Wakmanta kallpachakuy';

  @override
  String get chooseTheme => 'Tema nisqapi akllay';

  @override
  String get customisableThemes => 'Temas personalizables nisqa';

  @override
  String get customisableThemesSubtitle =>
      'Tarjetata ñit’iy acento colorta akllanaykipaq. \"Classic White\" nisqapas K\'anchay, Tutayaq chaymanta Sistema nisqa modokunatam yanapan.';

  @override
  String get setThemes => 'TEMAKUNA AKLLAY';

  @override
  String get setThemesSubtitle =>
      'Allinchasqa, makiwan ruwasqa paletakuna. Mana personalización necesitakunchu — ñit\'iylla churanaykipaq.';

  @override
  String get deleteBookmarkQuestion => '¿Marcadorta chinkachiy?';

  @override
  String get cancel => 'Sayachiy';

  @override
  String get delete => 'Chinkachiy';

  @override
  String get bookmarkSaved => 'Marcador waqaychasqa';

  @override
  String get couldNotDeleteBookmark => 'Mana atirqanchu marcadorta qulluyta.';

  @override
  String couldNotNavigate(Object reference) {
    return 'Mana $reference nisqaman puriyta atirqanchu.';
  }

  @override
  String get pageNotFound => 'Pagina Mana Tarisqachu';

  @override
  String noRouteDefined(Object routeName) {
    return '\"$routeName\" nisqapaqqa manam ñan sut\'inchasqachu.';
  }

  @override
  String get english => 'Ingles Simi';

  @override
  String get spanish => 'Español';

  @override
  String get systemDefault => 'Llamkana ñawpaqmanta churasqa';

  @override
  String get languageStatusEnglish => 'Inglés simipi fallback activo';

  @override
  String get languageStatusSystem => 'Sistema simita llamk’achispa';

  @override
  String languageStatusSelected(Object languageName) {
    return 'Akllasqa simi: $languageName.';
  }

  @override
  String get themeLabel => 'Rimay';

  @override
  String get notFoundTitle => 'Pagina Mana Tarisqachu';

  @override
  String get loadingCyberBible => 'Cargando Ciber Biblia...';

  @override
  String get couldNotOpenDatabase =>
      'Bibliamanta base de datos nisqa mana kichayta atirqanchu. Ama hina kaspa, hukmanta kallpachakuy.';

  @override
  String get homeTagline =>
      'Biblia estudianapaq mana qullqillapaq hinaspa mana qullqillapaq yanapakuy';

  @override
  String get readTheBible => 'Bibliata leey';

  @override
  String get settingsTooltip => 'Ajustes nisqa';

  @override
  String get themeChoose => 'Tema nisqapi akllay';

  @override
  String get customThemes => 'Temas personalizables nisqa';

  @override
  String get customThemesSubtitle =>
      'Tarjetata ñit’iy acento colorta akllanaykipaq. \"Classic White\" nisqapas K\'anchay, Tutayaq chaymanta Sistema nisqa modokunatam yanapan.';

  @override
  String get setThemesLabel => 'TEMAKUNA AKLLAY';

  @override
  String get deleteBookmarkDialog => '¿Marcadorta chinkachiy?';

  @override
  String removeBookmarkMessage(Object details, Object reference) {
    return '¿\"$reference\"$details nisqamanta hurquy?\n\nKaytaqa manam kutichiyta atikunmanchu.';
  }

  @override
  String get couldNotLoadBookmarks =>
      'Mana marcadorkunata kargayta atirqanchu. Ama hina kaspa, hukmanta kallpachakuy.';

  @override
  String get bookmarkSavedMessage => 'Marcador waqaychasqa';

  @override
  String get couldNotSaveBookmark => 'Mana atirqanchu marcadorta waqaychayta.';

  @override
  String get noBookmarksMatchFilter =>
      'Mana ima marcadorkunapas kay filtrowan tupanchu.';

  @override
  String get clearFilter => 'Ch’uya filtro';

  @override
  String get traditionalOrderLabel => 'Ñawpa pachamanta kamachiy';

  @override
  String get alphabeticalOrderLabel => 'Alfabeto nisqaman hina orden';

  @override
  String get bookmarksTabLabel => 'Marcadores nisqakuna';

  @override
  String get fullChapter => 'Huk hunt’asqa capitulo';

  @override
  String get addBookmark => 'Marcadorta yapay';

  @override
  String get selectVerse => 'Versículo nisqapi akllay';

  @override
  String get labelOptional => 'Etiqueta (munasqa) .';

  @override
  String get notesOptional => 'Notas (munasqa) .';

  @override
  String get save => 'Waqaychay';

  @override
  String get goToVerse => 'Versículo nisqaman riy';

  @override
  String verseTitle(Object verse) {
    return 'Versiculo $verse.';
  }

  @override
  String chapterTitle(Object chapter) {
    return 'Kaptulo $chapter.';
  }

  @override
  String get switchToFullChapter =>
      'Huk hunt’asqa capitulo marcadorman cambiay';

  @override
  String get bookmarkSheetCancel => 'Cancelar, marcador raphita wichqay';

  @override
  String get pickCustomAccent => 'Acento personalizado nisqa akllay';

  @override
  String get apply => 'Ruwachiy';

  @override
  String get custom => 'Chullachasqa';

  @override
  String get brightnessSystem => 'Sistema';

  @override
  String get brightnessLight => 'Kanchi';

  @override
  String get brightnessDark => 'Tutayasqa';

  @override
  String get selectBook => 'Huk Librota akllay';

  @override
  String get bookmarkFilterAll => 'Llapan';

  @override
  String get bookmarkFilterUnlabeled => 'Mana etiquetayuq';

  @override
  String get bookmarkSortRecent => 'Kunanllaraq ñawpaqta';

  @override
  String get bookmarkSortCanonical => 'Orden canónico nisqa';

  @override
  String get chapterRetry => 'Wakmanta kallpachakuy';

  @override
  String get fontSize => 'Fuentepa sayaynin';

  @override
  String fontSizePixels(Object size) {
    return '$size px';
  }

  @override
  String get fontSizeSlider => 'Fuente sayay deslizador';

  @override
  String get fontSizeSliderHint => '12manta 28kama allichanaykipaqqa llalliy';

  @override
  String get fontPreview =>
      '\"Qallariypiqa Diosmi hanaq pachata kay pachatapas kamarqan\". — Gn 1:1';

  @override
  String get showVerseNumbersSubtitle =>
      'Ñawinchanapaq pantallapi versiculo yupaypa hawanpi qillqakunata qawachiy.';

  @override
  String get showSectionHeadingsSubtitle =>
      'Seccionkunata hinaspa Salmokunapa titulonkunata qawachiy pasajekunapa chawpinpi.';

  @override
  String get wordsOfChristSubtitle =>
      'Jesuspa rimasqanta pukawan qawachiy. Huk qillqa llimp\'ipaq mana llamk\'achiy.';

  @override
  String get verseFormatTitle => 'Versículo Formato nisqa';

  @override
  String get verseFormatSubtitle =>
      'Texto texto imayna churasqa kasqanmanta akllay.';

  @override
  String get paragraphMode => 'Parrafo';

  @override
  String get verseListMode => 'Versiculokuna lista';

  @override
  String get paragraphModeTooltip => 'Modo parrafo nisqa';

  @override
  String get verseListModeTooltip => 'Versiculo-lista nisqa modo';

  @override
  String get paragraphModeDescription =>
      'Textoqa sapa kutillanmi purin indentado parrafokunawan, imprimisqa Biblia hina.';

  @override
  String get verseListModeDescription =>
      'Sapa textoq parrafonqa chirullanpin qallarin, chhaynapin mana sasachakuspalla reparakun versiculokunaq t’aqankuna.';

  @override
  String get deleteBookmarkTooltip => 'Marcadorta chinkachiy';

  @override
  String deleteBookmarkSemantics(Object reference) {
    return 'Marcadorta qulluy $reference.';
  }

  @override
  String sortBookmarksTooltip(Object sortOrder) {
    return 'T\'aqay: $sortOrder.';
  }

  @override
  String get noBookmarksYet => 'Manaraqmi marcadorkuna kanchu.';

  @override
  String get noBookmarksYetHint =>
      'Ñawinchachkaspayki marcadorpa icononta ñitiy maypi kasqaykita waqaychanaykipaq.';

  @override
  String bookmarkReferenceNavigationError(Object reference) {
    return 'Mana $reference nisqaman puriyta atirqanchu.';
  }

  @override
  String themeCardSemantics(Object description, Object name, Object selected) {
    return '$name tema$selected. $description sutiyuq runaqa.';
  }

  @override
  String get selectedThemeSuffix => ', kunan akllasqa';

  @override
  String get customisableAccentDescription => 'Acento color personalizable.';

  @override
  String get fixedPaletteDescription => 'Paleta allichasqa.';

  @override
  String accentColourTitle(Object themeName) {
    return 'Acento llimp\'i — $themeName';
  }

  @override
  String get brightnessMode => 'MODO DE LIMPIEZA';

  @override
  String get lightMode => 'Modo de luz';

  @override
  String get followSystemMode => 'Sistema modota qatipay';

  @override
  String get darkMode => 'Modo tutayaq';

  @override
  String get customColourPicker => 'Sapanchasqa llimp’i akllana';

  @override
  String get customColourTooltip => 'Color personalizado...';

  @override
  String get couldNotLoadBooks =>
      'Librokuna listataqa manam cargayta atirqachu. Ama hina kaspa, hukmanta kallpachakuy.';

  @override
  String chapterLabel(Object chapter) {
    return 'Kaptulo $chapter.';
  }

  @override
  String get traditionalOrderBooks => 'Tradicional orden librokuna';

  @override
  String get alphabeticalOrderBooks => 'Alfabeto nisqaman hina orden librokuna';

  @override
  String get home => 'Wasi';

  @override
  String get addBookmarkTooltip => 'Marcadorta yapay';

  @override
  String get chooseBookChapter => 'Librota hinaspa capitulota akllay';

  @override
  String get chooseVerse => 'Versiculota akllay';

  @override
  String get bookChapterQuickNavigation => 'Libro y capitulo usqhaylla puriy';

  @override
  String get verseQuickNavigation => 'Versículo usqhaylla puriy';

  @override
  String get backToBooks => 'Librokunaman kutiy';

  @override
  String get selectBookTitle => 'Libro nisqapi akllay';

  @override
  String selectChapterTitle(Object bookName) {
    return 'Kapitulota akllay ($bookName) .';
  }

  @override
  String chapterSelectionLabel(Object chapter) {
    return 'Kaptulo $chapter.';
  }

  @override
  String verseSelectionLabel(Object verse) {
    return 'Versiculo $verse.';
  }

  @override
  String fullChapterReference(Object bookName, Object chapter) {
    return 'Tukuy raki: $bookName $chapter';
  }

  @override
  String get memorizeHint => 'Umaykipi hap’iy';

  @override
  String get addNoteHint => 'Huk qillqasqata yapay...';

  @override
  String get languageSearchHint => 'Simikunata maskay';

  @override
  String get languageModuleInstalled => 'Instalasqa';

  @override
  String get languageModulePending => 'Maquinawan tikray pendiente';

  @override
  String get languageNoMatches => 'Mana ima simikuna maskasqaykiwan tupanchu.';

  @override
  String get languageCatalogDescription =>
      'Instalado hina marcasqa simikuna mana tinkisqa llamk\'anku. Huk simikuna makinawan tikrasqa módulos hina yapasqa kanqa.';

  @override
  String get saveBookmarkSemantics => 'Marcadorta waqaychay';

  @override
  String get couldNotLoadChapter =>
      'Mana atirqanchu capitulota cargayta. Ama hina kaspa, hukmanta kallpachakuy.';

  @override
  String get couldNotLoadChapters =>
      'Mana capitulokunata cargayta atirqanchu. Ama hina kaspa, hukmanta kallpachakuy.';

  @override
  String verseWithText(Object text, Object verse) {
    return 'Versiculo $verse: $text.';
  }

  @override
  String accentSwatchSemantics(Object name, Object selected) {
    return '$name acento llimp\'i$selected.';
  }

  @override
  String get oldTestament => 'Ñawpa Rimanakuy';

  @override
  String get newTestament => 'Mosoq Testamento';

  @override
  String get deuterocanonApocrypha => 'Deuterocanon / Apocrifa';
}
