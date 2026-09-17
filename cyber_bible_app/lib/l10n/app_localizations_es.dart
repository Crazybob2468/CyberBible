// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Spanish Castilian (`es`).
class AppLocalizationsEs extends AppLocalizations {
  AppLocalizationsEs([String locale = 'es']) : super(locale);

  @override
  String get settingsTitle => 'Configuración';

  @override
  String get languageSection => 'Idioma';

  @override
  String get useSystemLanguage => 'Usar idioma del sistema';

  @override
  String get useSystemLanguageSubtitle =>
      'Coincidir con el idioma del dispositivo de forma predeterminada.';

  @override
  String get currentLanguage => 'Idioma actual';

  @override
  String get appLanguage => 'Idioma de la aplicación';

  @override
  String get chooseLanguage => 'Elegir idioma';

  @override
  String get theme => 'Tema';

  @override
  String get appearance => 'Apariencia';

  @override
  String get textSection => 'Texto';

  @override
  String get readingFormatSection => 'Formato de lectura';

  @override
  String get displaySection => 'Pantalla';

  @override
  String get verseNumbers => 'Números de versículo';

  @override
  String get sectionHeadings => 'Encabezados de sección';

  @override
  String get redLetterText => 'Texto rojo';

  @override
  String get selectABook => 'Seleccionar un libro';

  @override
  String get traditionalOrder => 'Orden tradicional';

  @override
  String get alphabeticalOrder => 'Orden alfabético';

  @override
  String get bookmarks => 'Marcadores';

  @override
  String get retry => 'Reintentar';

  @override
  String get chooseTheme => 'Elegir tema';

  @override
  String get customisableThemes => 'Temas personalizables';

  @override
  String get customisableThemesSubtitle =>
      'Toca una tarjeta para elegir un color de acento. \"Classic White\" también admite modos claro, oscuro y del sistema.';

  @override
  String get setThemes => 'TEMAS FIJOS';

  @override
  String get setThemesSubtitle =>
      'Paletas fijas y diseñadas a mano. No hace falta personalizarlas: solo toca para aplicarlas.';

  @override
  String get deleteBookmarkQuestion => '¿Eliminar marcador?';

  @override
  String get cancel => 'Cancelar';

  @override
  String get delete => 'Eliminar';

  @override
  String get bookmarkSaved => 'Marcador guardado';

  @override
  String get couldNotDeleteBookmark => 'No se pudo eliminar el marcador.';

  @override
  String couldNotNavigate(Object reference) {
    return 'No se pudo navegar a $reference.';
  }

  @override
  String get pageNotFound => 'Página no encontrada';

  @override
  String noRouteDefined(Object routeName) {
    return 'No hay una ruta definida para \"$routeName\"';
  }

  @override
  String get english => 'Inglés';

  @override
  String get spanish => 'Español';

  @override
  String get systemDefault => 'Predeterminado del sistema';

  @override
  String get languageStatusEnglish => 'Fallo de idioma inglés activo';

  @override
  String get languageStatusSystem => 'Usando el idioma del sistema';

  @override
  String languageStatusSelected(Object languageName) {
    return 'Idioma seleccionado: $languageName';
  }

  @override
  String get themeLabel => 'Tema';

  @override
  String get notFoundTitle => 'Página no encontrada';

  @override
  String get loadingCyberBible => 'Cargando Cyber Bible...';

  @override
  String get couldNotOpenDatabase =>
      'No se pudo abrir la base de datos de la Biblia. Inténtalo de nuevo.';

  @override
  String get homeTagline =>
      'Una aplicación bíblica gratuita y de código abierto';

  @override
  String get readTheBible => 'Leer la Biblia';

  @override
  String get settingsTooltip => 'Configuración';

  @override
  String get themeChoose => 'Elegir tema';

  @override
  String get customThemes => 'Temas personalizables';

  @override
  String get customThemesSubtitle =>
      'Toca una tarjeta para elegir un color de acento. \"Classic White\" también admite modos claro, oscuro y del sistema.';

  @override
  String get setThemesLabel => 'TEMAS FIJOS';

  @override
  String get deleteBookmarkDialog => '¿Eliminar marcador?';

  @override
  String removeBookmarkMessage(Object details, Object reference) {
    return '¿Eliminar \"$reference\"$details?\n\nEsto no se puede deshacer.';
  }

  @override
  String get couldNotLoadBookmarks =>
      'No se pudieron cargar los marcadores. Inténtalo de nuevo.';

  @override
  String get bookmarkSavedMessage => 'Marcador guardado';

  @override
  String get couldNotSaveBookmark => 'No se pudo guardar el marcador.';

  @override
  String get noBookmarksMatchFilter =>
      'Ningún marcador coincide con este filtro.';

  @override
  String get clearFilter => 'Borrar filtro';

  @override
  String get traditionalOrderLabel => 'Orden tradicional';

  @override
  String get alphabeticalOrderLabel => 'Orden alfabético';

  @override
  String get bookmarksTabLabel => 'Marcadores';

  @override
  String get fullChapter => 'Capítulo completo';

  @override
  String get addBookmark => 'Añadir marcador';

  @override
  String get selectVerse => 'Seleccionar versículo';

  @override
  String get labelOptional => 'Etiqueta (opcional)';

  @override
  String get notesOptional => 'Notas (opcional)';

  @override
  String get save => 'Guardar';

  @override
  String get goToVerse => 'Ir al versículo';

  @override
  String verseTitle(Object verse) {
    return 'Versículo $verse';
  }

  @override
  String chapterTitle(Object chapter) {
    return 'Capítulo $chapter';
  }

  @override
  String get switchToFullChapter => 'Cambiar a marcador de capítulo completo';

  @override
  String get bookmarkSheetCancel => 'Cancelar, cerrar el panel del marcador';

  @override
  String get pickCustomAccent => 'Elegir un color de acento personalizado';

  @override
  String get apply => 'Aplicar';

  @override
  String get custom => 'Personalizado';

  @override
  String get brightnessSystem => 'Sistema';

  @override
  String get brightnessLight => 'Claro';

  @override
  String get brightnessDark => 'Oscuro';

  @override
  String get selectBook => 'Seleccionar un libro';

  @override
  String get bookmarkFilterAll => 'Todos';

  @override
  String get bookmarkFilterUnlabeled => 'Sin etiquetar';

  @override
  String get bookmarkSortRecent => 'Más recientes primero';

  @override
  String get bookmarkSortCanonical => 'Orden canónico';

  @override
  String get chapterRetry => 'Reintentar';

  @override
  String get fontSize => 'Tamaño de fuente';

  @override
  String fontSizePixels(Object size) {
    return '$size px';
  }

  @override
  String get fontSizeSlider => 'Control deslizante del tamaño de fuente';

  @override
  String get fontSizeSliderHint => 'Desliza para ajustar de 12 a 28';

  @override
  String get fontPreview =>
      '\"En el principio creó Dios los cielos y la tierra.\" — Gn 1:1';

  @override
  String get showVerseNumbersSubtitle =>
      'Mostrar superíndices de números de versículo en la pantalla de lectura.';

  @override
  String get showSectionHeadingsSubtitle =>
      'Mostrar encabezados de secciones y salmos entre los pasajes.';

  @override
  String get wordsOfChristSubtitle =>
      'Mostrar en rojo las palabras de Jesús. Desactívalo para usar un solo color.';

  @override
  String get verseFormatTitle => 'Formato del versículo';

  @override
  String get verseFormatSubtitle => 'Elige cómo se organiza el texto bíblico.';

  @override
  String get paragraphMode => 'Párrafo';

  @override
  String get verseListMode => 'Lista de versículos';

  @override
  String get paragraphModeTooltip => 'Modo de párrafo';

  @override
  String get verseListModeTooltip => 'Modo de lista de versículos';

  @override
  String get paragraphModeDescription =>
      'El texto fluye continuamente con párrafos indentados, como una Biblia impresa.';

  @override
  String get verseListModeDescription =>
      'Cada párrafo bíblico comienza en su propia línea para localizar grupos de versículos fácilmente.';

  @override
  String get deleteBookmarkTooltip => 'Eliminar marcador';

  @override
  String deleteBookmarkSemantics(Object reference) {
    return 'Eliminar marcador $reference';
  }

  @override
  String sortBookmarksTooltip(Object sortOrder) {
    return 'Ordenar: $sortOrder';
  }

  @override
  String get noBookmarksYet => 'Aún no hay marcadores.';

  @override
  String get noBookmarksYetHint =>
      'Toca el icono de marcador mientras lees para guardar una ubicación.';

  @override
  String bookmarkReferenceNavigationError(Object reference) {
    return 'No se pudo navegar a $reference.';
  }

  @override
  String themeCardSemantics(Object description, Object name, Object selected) {
    return 'Tema $name$selected. $description';
  }

  @override
  String get selectedThemeSuffix => ', seleccionado actualmente';

  @override
  String get customisableAccentDescription => 'Color de acento personalizable.';

  @override
  String get fixedPaletteDescription => 'Paleta fija.';

  @override
  String accentColourTitle(Object themeName) {
    return 'Color de acento — $themeName';
  }

  @override
  String get brightnessMode => 'MODO DE BRILLO';

  @override
  String get lightMode => 'Modo claro';

  @override
  String get followSystemMode => 'Seguir el modo del sistema';

  @override
  String get darkMode => 'Modo oscuro';

  @override
  String get customColourPicker => 'Selector de color personalizado';

  @override
  String get customColourTooltip => 'Color personalizado…';

  @override
  String get couldNotLoadBooks =>
      'No se pudo cargar la lista de libros. Inténtalo de nuevo.';

  @override
  String chapterLabel(Object chapter) {
    return 'Capítulo $chapter';
  }

  @override
  String get traditionalOrderBooks => 'Libros en orden tradicional';

  @override
  String get alphabeticalOrderBooks => 'Libros en orden alfabético';

  @override
  String get home => 'Inicio';

  @override
  String get addBookmarkTooltip => 'Añadir marcador';

  @override
  String get chooseBookChapter => 'Elegir libro y capítulo';

  @override
  String get chooseVerse => 'Elegir versículo';

  @override
  String get bookChapterQuickNavigation =>
      'Navegación rápida de libro y capítulo';

  @override
  String get verseQuickNavigation => 'Navegación rápida de versículo';

  @override
  String get backToBooks => 'Volver a los libros';

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
  String get addNoteHint => 'Añadir una nota...';

  @override
  String get saveBookmarkSemantics => 'Guardar marcador';

  @override
  String get couldNotLoadChapter =>
      'No se pudo cargar el capítulo. Inténtalo de nuevo.';

  @override
  String get couldNotLoadChapters =>
      'No se pudieron cargar los capítulos. Inténtalo de nuevo.';

  @override
  String verseWithText(Object text, Object verse) {
    return 'Versículo $verse: $text';
  }

  @override
  String accentSwatchSemantics(Object name, Object selected) {
    return 'Color de acento $name$selected';
  }
}
