// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Galician (`gl`).
class AppLocalizationsGl extends AppLocalizations {
  AppLocalizationsGl([String locale = 'gl']) : super(locale);

  @override
  String get settingsTitle => 'Configuración';

  @override
  String get languageSection => 'Idioma';

  @override
  String get useSystemLanguage => 'Usar o idioma do sistema';

  @override
  String get useSystemLanguageSubtitle =>
      'Coincidir co idioma do dispositivo de forma predeterminada.';

  @override
  String get currentLanguage => 'Idioma actual';

  @override
  String get appLanguage => 'Idioma da aplicación';

  @override
  String get chooseLanguage => 'Escoller idioma';

  @override
  String get theme => 'Tema';

  @override
  String get appearance => 'Aparencia';

  @override
  String get textSection => 'Texto';

  @override
  String get readingFormatSection => 'Formato de lectura';

  @override
  String get displaySection => 'Visualización';

  @override
  String get verseNumbers => 'Números de versículo';

  @override
  String get sectionHeadings => 'Encabezados de sección';

  @override
  String get redLetterText => 'Texto en letras vermellas';

  @override
  String get selectABook => 'Seleccionar un libro';

  @override
  String get traditionalOrder => 'Orde tradicional';

  @override
  String get alphabeticalOrder => 'Orde alfabética';

  @override
  String get bookmarks => 'Marcadores';

  @override
  String get retry => 'Tentar de novo';

  @override
  String get chooseTheme => 'Escoller tema';

  @override
  String get customisableThemes => 'Temas personalizables';

  @override
  String get customisableThemesSubtitle =>
      'Toque unha tarxeta para escoller unha cor de realce. \"Classic White\" tamén admite os modos claro, escuro e sistema.';

  @override
  String get setThemes => 'ESTABLECER TEMAS';

  @override
  String get setThemesSubtitle =>
      'Paletas fixas, creadas a man. Non se precisa personalización; só toque para aplicar.';

  @override
  String get deleteBookmarkQuestion => 'Eliminar o marcador?';

  @override
  String get cancel => 'Cancelar';

  @override
  String get delete => 'Eliminar';

  @override
  String get bookmarkSaved => 'Marcador gardado';

  @override
  String get couldNotDeleteBookmark => 'Non se puido eliminar o marcador.';

  @override
  String couldNotNavigate(Object reference) {
    return 'Non se puido navegar a $reference.';
  }

  @override
  String get pageNotFound => 'Páxina non atopada';

  @override
  String noRouteDefined(Object routeName) {
    return 'Non hai ningunha ruta definida para \"$routeName\"';
  }

  @override
  String get english => 'Inglés';

  @override
  String get spanish => 'Español';

  @override
  String get systemDefault => 'Predeterminado do sistema';

  @override
  String get languageStatusEnglish => 'Alternativa en inglés activa';

  @override
  String get languageStatusSystem => 'Usando o idioma do sistema';

  @override
  String languageStatusSelected(Object languageName) {
    return 'Idioma seleccionado: $languageName';
  }

  @override
  String get themeLabel => 'Tema';

  @override
  String get notFoundTitle => 'Páxina non atopada';

  @override
  String get loadingCyberBible => 'Cargando Cyber Bible...';

  @override
  String get couldNotOpenDatabase =>
      'Non se puido abrir a base de datos da Biblia. Ténteo de novo.';

  @override
  String get homeTagline =>
      'Unha aplicación gratuíta e de código aberto para estudar a Biblia';

  @override
  String get readTheBible => 'Ler a Biblia';

  @override
  String get settingsTooltip => 'Configuración';

  @override
  String get themeChoose => 'Escoller tema';

  @override
  String get customThemes => 'Temas personalizables';

  @override
  String get customThemesSubtitle =>
      'Toque unha tarxeta para escoller unha cor de realce. \"Classic White\" tamén admite os modos claro, escuro e sistema.';

  @override
  String get setThemesLabel => 'ESTABLECER TEMAS';

  @override
  String get deleteBookmarkDialog => 'Eliminar o marcador?';

  @override
  String removeBookmarkMessage(Object details, Object reference) {
    return 'Quere eliminar \"$reference\"$details?\n\nEsta acción non se pode desfacer.';
  }

  @override
  String get couldNotLoadBookmarks =>
      'Non se puideron cargar os marcadores. Ténteo de novo.';

  @override
  String get bookmarkSavedMessage => 'Marcador gardado';

  @override
  String get couldNotSaveBookmark => 'Non se puido gardar o marcador.';

  @override
  String get noBookmarksMatchFilter =>
      'Non hai marcadores que coincidan con este filtro.';

  @override
  String get clearFilter => 'Limpar filtro';

  @override
  String get traditionalOrderLabel => 'Orde tradicional';

  @override
  String get alphabeticalOrderLabel => 'Orde alfabética';

  @override
  String get bookmarksTabLabel => 'Marcadores';

  @override
  String get fullChapter => 'Capítulo completo';

  @override
  String get addBookmark => 'Engadir marcador';

  @override
  String get selectVerse => 'Seleccionar versículo';

  @override
  String get labelOptional => 'Etiqueta (opcional)';

  @override
  String get notesOptional => 'Notas (opcional)';

  @override
  String get save => 'Gardar';

  @override
  String get goToVerse => 'Ir ao versículo';

  @override
  String verseTitle(Object verse) {
    return 'Versículo $verse';
  }

  @override
  String chapterTitle(Object chapter) {
    return 'Capítulo $chapter';
  }

  @override
  String get switchToFullChapter => 'Cambiar ao marcador do capítulo completo';

  @override
  String get bookmarkSheetCancel => 'Cancelar, pechar a folla de marcadores';

  @override
  String get pickCustomAccent => 'Escoller realce personalizado';

  @override
  String get apply => 'Aplicar';

  @override
  String get custom => 'Personalizado';

  @override
  String get brightnessSystem => 'Sistema';

  @override
  String get brightnessLight => 'Claro';

  @override
  String get brightnessDark => 'Escuro';

  @override
  String get selectBook => 'Seleccionar un libro';

  @override
  String get bookmarkFilterAll => 'Todos';

  @override
  String get bookmarkFilterUnlabeled => 'Sen etiqueta';

  @override
  String get bookmarkSortRecent => 'Máis recentes primeiro';

  @override
  String get bookmarkSortCanonical => 'Orde canónica';

  @override
  String get chapterRetry => 'Tentar de novo';

  @override
  String get fontSize => 'Tamaño da fonte';

  @override
  String fontSizePixels(Object size) {
    return '$size px';
  }

  @override
  String get fontSizeSlider => 'Control deslizante do tamaño da fonte';

  @override
  String get fontSizeSliderHint => 'Deslice para axustar de 12 a 28';

  @override
  String get fontPreview =>
      '\"No principio Deus creou os ceos e a terra.\" — Xén 1:1';

  @override
  String get showVerseNumbersSubtitle =>
      'Mostrar os superíndices dos números de versículo na pantalla de lectura.';

  @override
  String get showSectionHeadingsSubtitle =>
      'Mostrar os encabezados de sección e de Salmos entre pasaxes.';

  @override
  String get wordsOfChristSubtitle =>
      'Mostrar en vermello as palabras de Xesús. Desactive para usar unha soa cor de texto.';

  @override
  String get verseFormatTitle => 'Formato de versículo';

  @override
  String get verseFormatSubtitle =>
      'Escolla como se dispón o texto das Escrituras.';

  @override
  String get paragraphMode => 'Parágrafo';

  @override
  String get verseListMode => 'Lista de versículos';

  @override
  String get paragraphModeTooltip => 'Modo parágrafo';

  @override
  String get verseListModeTooltip => 'Modo lista de versículos';

  @override
  String get paragraphModeDescription =>
      'O texto flúe continuamente con parágrafos sangrados, como nunha Biblia impresa.';

  @override
  String get verseListModeDescription =>
      'Cada parágrafo das Escrituras comeza na súa propia liña, facilitando ver os grupos de versículos.';

  @override
  String get deleteBookmarkTooltip => 'Eliminar marcador';

  @override
  String deleteBookmarkSemantics(Object reference) {
    return 'Eliminar o marcador $reference';
  }

  @override
  String sortBookmarksTooltip(Object sortOrder) {
    return 'Ordenar: $sortOrder';
  }

  @override
  String get noBookmarksYet => 'Aínda non hai marcadores.';

  @override
  String get noBookmarksYetHint =>
      'Toque a icona de marcador mentres le para gardar unha localización.';

  @override
  String bookmarkReferenceNavigationError(Object reference) {
    return 'Non se puido navegar a $reference.';
  }

  @override
  String themeCardSemantics(Object description, Object name, Object selected) {
    return 'Tema $name$selected. $description';
  }

  @override
  String get selectedThemeSuffix => ', seleccionado actualmente';

  @override
  String get customisableAccentDescription => 'Cor de realce personalizable.';

  @override
  String get fixedPaletteDescription => 'Paleta fixa.';

  @override
  String accentColourTitle(Object themeName) {
    return 'Cor de realce — $themeName';
  }

  @override
  String get brightnessMode => 'MODO DE BRILLO';

  @override
  String get lightMode => 'Modo claro';

  @override
  String get followSystemMode => 'Seguir o modo do sistema';

  @override
  String get darkMode => 'Modo escuro';

  @override
  String get customColourPicker => 'Selector de cor personalizada';

  @override
  String get customColourTooltip => 'Cor personalizada…';

  @override
  String get couldNotLoadBooks =>
      'Non se puido cargar a lista de libros. Ténteo de novo.';

  @override
  String chapterLabel(Object chapter) {
    return 'Capítulo $chapter';
  }

  @override
  String get traditionalOrderBooks => 'Libros en orde tradicional';

  @override
  String get alphabeticalOrderBooks => 'Libros en orde alfabética';

  @override
  String get home => 'Inicio';

  @override
  String get addBookmarkTooltip => 'Engadir marcador';

  @override
  String get chooseBookChapter => 'Escoller libro e capítulo';

  @override
  String get chooseVerse => 'Escoller versículo';

  @override
  String get bookChapterQuickNavigation =>
      'Navegación rápida de libro e capítulo';

  @override
  String get verseQuickNavigation => 'Navegación rápida de versículo';

  @override
  String get backToBooks => 'Volver aos libros';

  @override
  String get selectBookTitle => 'Seleccionar libro';

  @override
  String selectChapterTitle(Object bookName) {
    return 'Seleccionar capítulo ($bookName)';
  }

  @override
  String chapterSelectionLabel(Object chapter) {
    return 'Capítulo $chapter';
  }

  @override
  String verseSelectionLabel(Object verse) {
    return 'Versículo $verse';
  }

  @override
  String fullChapterReference(Object bookName, Object chapter) {
    return 'Capítulo completo: $bookName $chapter';
  }

  @override
  String get memorizeHint => 'Memorizar';

  @override
  String get addNoteHint => 'Engadir unha nota...';

  @override
  String get languageSearchHint => 'Buscar idiomas';

  @override
  String get languageModuleInstalled => 'Instalado';

  @override
  String get languageModulePending => 'Tradución automática pendente';

  @override
  String get languageNoMatches =>
      'Non hai idiomas que coincidan coa súa busca.';

  @override
  String get languageCatalogDescription =>
      'Os idiomas marcados como instalados funcionan sen conexión. Os demais idiomas engadiranse como módulos de tradución automática.';

  @override
  String get saveBookmarkSemantics => 'Gardar marcador';

  @override
  String get couldNotLoadChapter =>
      'Non se puido cargar o capítulo. Ténteo de novo.';

  @override
  String get couldNotLoadChapters =>
      'Non se puideron cargar os capítulos. Ténteo de novo.';

  @override
  String verseWithText(Object text, Object verse) {
    return 'Versículo $verse: $text';
  }

  @override
  String accentSwatchSemantics(Object name, Object selected) {
    return 'Cor de realce $name$selected';
  }

  @override
  String get oldTestament => 'Antigo Testamento';

  @override
  String get newTestament => 'Novo Testamento';

  @override
  String get deuterocanonApocrypha => 'Deuterocanónicos / Apócrifos';
}
