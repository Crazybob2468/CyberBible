// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Asturian Asturleonese Bable Leonese (`ast`).
class AppLocalizationsAst extends AppLocalizations {
  AppLocalizationsAst([String locale = 'ast']) : super(locale);

  @override
  String get settingsTitle => 'Axustes';

  @override
  String get languageSection => 'Llingua';

  @override
  String get useSystemLanguage => 'Usar la llingua del sistema';

  @override
  String get useSystemLanguageSubtitle =>
      'Usar por defeutu la llingua del preséu.';

  @override
  String get currentLanguage => 'Llingua actual';

  @override
  String get appLanguage => 'Llingua de l\'aplicación';

  @override
  String get chooseLanguage => 'Escoyer llingua';

  @override
  String get theme => 'Estilu';

  @override
  String get appearance => 'Aspeutu';

  @override
  String get textSection => 'Testu';

  @override
  String get readingFormatSection => 'Formatu de llectura';

  @override
  String get displaySection => 'Visualización';

  @override
  String get verseNumbers => 'Númberos de versículos';

  @override
  String get sectionHeadings => 'Títulos de seición';

  @override
  String get redLetterText => 'Testu en colloráu';

  @override
  String get selectABook => 'Escoyer un llibru';

  @override
  String get traditionalOrder => 'Orde tradicional';

  @override
  String get alphabeticalOrder => 'Orde alfabéticu';

  @override
  String get bookmarks => 'Marcadores';

  @override
  String get retry => 'Reintentar';

  @override
  String get chooseTheme => 'Escoyer estilu';

  @override
  String get customisableThemes => 'Estilos personalizables';

  @override
  String get customisableThemesSubtitle =>
      'Toca una tarxeta pa escoyer un collor. \"Classic White\" tamién permite los modos claru, escuru y del sistema.';

  @override
  String get setThemes => 'ESTILOS FIXOS';

  @override
  String get setThemesSubtitle =>
      'Paletes fixes feches a mano. Nun fai falta personalizar nada; toca pa aplicala.';

  @override
  String get deleteBookmarkQuestion => '¿Desaniciar el marcador?';

  @override
  String get cancel => 'Encaboxar';

  @override
  String get delete => 'Desaniciar';

  @override
  String get bookmarkSaved => 'Marcador guardáu';

  @override
  String get couldNotDeleteBookmark => 'Nun se pudo desaniciar el marcador.';

  @override
  String couldNotNavigate(Object reference) {
    return 'Nun se pudo dir a $reference.';
  }

  @override
  String get pageNotFound => 'Páxina non alcontrada';

  @override
  String noRouteDefined(Object routeName) {
    return 'Nun hai una ruta definida pa \"$routeName\"';
  }

  @override
  String get english => 'Inglés';

  @override
  String get spanish => 'Español';

  @override
  String get systemDefault => 'Valor del sistema';

  @override
  String get languageStatusEnglish => 'El respaldu n\'inglés ta activu';

  @override
  String get languageStatusSystem => 'Usando la llingua del sistema';

  @override
  String languageStatusSelected(Object languageName) {
    return 'Llingua escoyida: $languageName';
  }

  @override
  String get themeLabel => 'Estilu';

  @override
  String get notFoundTitle => 'Páxina non alcontrada';

  @override
  String get loadingCyberBible => 'Cargando Biblia Ciber...';

  @override
  String get couldNotOpenDatabase =>
      'Nun se pudo abrir la base de datos de la Biblia. Prueba otra vegada.';

  @override
  String get homeTagline =>
      'Una aplicación llibre y abierta d\'estudiu bíblicu';

  @override
  String get readTheBible => 'Lleer la Biblia';

  @override
  String get settingsTooltip => 'Axustes';

  @override
  String get themeChoose => 'Escoyer estilu';

  @override
  String get customThemes => 'Estilos personalizables';

  @override
  String get customThemesSubtitle =>
      'Toca una tarxeta pa escoyer un collor. \"Classic White\" tamién permite los modos claru, escuru y del sistema.';

  @override
  String get setThemesLabel => 'ESTILOS FIXOS';

  @override
  String get deleteBookmarkDialog => '¿Desaniciar el marcador?';

  @override
  String removeBookmarkMessage(Object details, Object reference) {
    return '¿Quitar \"$reference\"$details?\n\nNun se pue desfacer.';
  }

  @override
  String get couldNotLoadBookmarks =>
      'Nun se pudieron cargar los marcadores. Prueba otra vegada.';

  @override
  String get bookmarkSavedMessage => 'Marcador guardáu';

  @override
  String get couldNotSaveBookmark => 'Nun se pudo guardar el marcador.';

  @override
  String get noBookmarksMatchFilter =>
      'Nun hai marcadores que concasen con esti filtru.';

  @override
  String get clearFilter => 'Llimpiar filtru';

  @override
  String get traditionalOrderLabel => 'Orde tradicional';

  @override
  String get alphabeticalOrderLabel => 'Orde alfabéticu';

  @override
  String get bookmarksTabLabel => 'Marcadores';

  @override
  String get fullChapter => 'Capítulu enteru';

  @override
  String get addBookmark => 'Amestar marcador';

  @override
  String get selectVerse => 'Escoyer versículu';

  @override
  String get labelOptional => 'Etiqueta (opcional)';

  @override
  String get notesOptional => 'Notes (opcional)';

  @override
  String get save => 'Guardar';

  @override
  String get goToVerse => 'Dir al versículu';

  @override
  String verseTitle(Object verse) {
    return 'Versículu $verse';
  }

  @override
  String chapterTitle(Object chapter) {
    return 'Capítulu $chapter';
  }

  @override
  String get switchToFullChapter => 'Cambiar al marcador del capítulu enteru';

  @override
  String get bookmarkSheetCancel => 'Encaboxar y zarrar la fueya de marcadores';

  @override
  String get pickCustomAccent => 'Escoyer un collor d\'acentu';

  @override
  String get apply => 'Aplicar';

  @override
  String get custom => 'Personalizáu';

  @override
  String get brightnessSystem => 'Sistema';

  @override
  String get brightnessLight => 'Claru';

  @override
  String get brightnessDark => 'Escuru';

  @override
  String get selectBook => 'Escoyer un llibru';

  @override
  String get bookmarkFilterAll => 'Too';

  @override
  String get bookmarkFilterUnlabeled => 'Ensin etiqueta';

  @override
  String get bookmarkSortRecent => 'Lo más recién primero';

  @override
  String get bookmarkSortCanonical => 'Orde canónicu';

  @override
  String get chapterRetry => 'Reintentar';

  @override
  String get fontSize => 'Tamañu de lletra';

  @override
  String fontSizePixels(Object size) {
    return '$size px';
  }

  @override
  String get fontSizeSlider => 'Control de tamañu de lletra';

  @override
  String get fontSizeSliderHint => 'Esliza pa axustar de 12 a 28';

  @override
  String get fontPreview =>
      '\"Al principiu Dios creó los cielos y la tierra.\" — Xén 1:1';

  @override
  String get showVerseNumbersSubtitle =>
      'Amosar los númberos de versículos na pantalla de llectura.';

  @override
  String get showSectionHeadingsSubtitle =>
      'Amosar títulos de seición y de salmos ente pasaxes.';

  @override
  String get wordsOfChristSubtitle =>
      'Amosar en colloráu les pallabres de Xesús. Desactívalu pa un solo collor de testu.';

  @override
  String get verseFormatTitle => 'Formatu de versículos';

  @override
  String get verseFormatSubtitle =>
      'Escueyi cómo s\'ordenará\'l testu bíblicu.';

  @override
  String get paragraphMode => 'Párrafu';

  @override
  String get verseListMode => 'Llista de versículos';

  @override
  String get paragraphModeTooltip => 'Mou de párrafu';

  @override
  String get verseListModeTooltip => 'Mou de llista de versículos';

  @override
  String get paragraphModeDescription =>
      'El testu flúi de siguío con párrafos sangraos, como nuna Biblia impresa.';

  @override
  String get verseListModeDescription =>
      'Cada párrafu bíblicu entama na so propia llinia, pa ver meyor los grupos de versículos.';

  @override
  String get deleteBookmarkTooltip => 'Desaniciar marcador';

  @override
  String deleteBookmarkSemantics(Object reference) {
    return 'Desaniciar marcador $reference';
  }

  @override
  String sortBookmarksTooltip(Object sortOrder) {
    return 'Ordenar: $sortOrder';
  }

  @override
  String get noBookmarksYet => 'Entá nun hai marcadores.';

  @override
  String get noBookmarksYetHint =>
      'Toca la icona de marcador mientres llees pa guardar un llugar.';

  @override
  String bookmarkReferenceNavigationError(Object reference) {
    return 'Nun se pudo dir a $reference.';
  }

  @override
  String themeCardSemantics(Object description, Object name, Object selected) {
    return 'Estilu $name$selected. $description';
  }

  @override
  String get selectedThemeSuffix => ', escoyíu anguaño';

  @override
  String get customisableAccentDescription =>
      'Collor d\'acentu personalizable.';

  @override
  String get fixedPaletteDescription => 'Paleta fixa.';

  @override
  String accentColourTitle(Object themeName) {
    return 'Collor d\'acentu — $themeName';
  }

  @override
  String get brightnessMode => 'MOU DE BRILLU';

  @override
  String get lightMode => 'Mou claru';

  @override
  String get followSystemMode => 'Siguir el mou del sistema';

  @override
  String get darkMode => 'Mou escuru';

  @override
  String get customColourPicker => 'Selector de collor personalizáu';

  @override
  String get customColourTooltip => 'Collor personalizáu...';

  @override
  String get couldNotLoadBooks =>
      'Nun se pudo cargar la llista de llibros. Prueba otra vegada.';

  @override
  String chapterLabel(Object chapter) {
    return 'Capítulu $chapter';
  }

  @override
  String get traditionalOrderBooks => 'Llibros n\'orde tradicional';

  @override
  String get alphabeticalOrderBooks => 'Llibros n\'orde alfabéticu';

  @override
  String get home => 'Aniciu';

  @override
  String get addBookmarkTooltip => 'Amestar marcador';

  @override
  String get chooseBookChapter => 'Escoyer llibru y capítulu';

  @override
  String get chooseVerse => 'Escoyer versículu';

  @override
  String get bookChapterQuickNavigation =>
      'Navegación rápida de llibru y capítulu';

  @override
  String get verseQuickNavigation => 'Navegación rápida de versículos';

  @override
  String get backToBooks => 'Volver a los llibros';

  @override
  String get selectBookTitle => 'Escoyer llibru';

  @override
  String selectChapterTitle(Object bookName) {
    return 'Escoyer capítulu ($bookName)';
  }

  @override
  String chapterSelectionLabel(Object chapter) {
    return 'Capítulu $chapter';
  }

  @override
  String verseSelectionLabel(Object verse) {
    return 'Versículu $verse';
  }

  @override
  String fullChapterReference(Object bookName, Object chapter) {
    return 'Capítulu enteru: $bookName $chapter';
  }

  @override
  String get memorizeHint => 'Memorizar';

  @override
  String get addNoteHint => 'Amestar una nota...';

  @override
  String get languageSearchHint => 'Buscar llingües';

  @override
  String get languageModuleInstalled => 'Instaláu';

  @override
  String get languageModulePending => 'Traducción automática pendiente';

  @override
  String get languageNoMatches => 'Nun hai llingües que concasen cola busca.';

  @override
  String get languageCatalogDescription =>
      'Les llingües marcaes como instalaes funcionen ensin conexón. Otres llingües amestaránse como módulos de traducción automática.';

  @override
  String get saveBookmarkSemantics => 'Guardar marcador';

  @override
  String get couldNotLoadChapter =>
      'Nun se pudo cargar el capítulu. Prueba otra vegada.';

  @override
  String get couldNotLoadChapters =>
      'Nun se pudieron cargar los capítulos. Prueba otra vegada.';

  @override
  String verseWithText(Object text, Object verse) {
    return 'Versículu $verse: $text';
  }

  @override
  String accentSwatchSemantics(Object name, Object selected) {
    return 'Collor d\'acentu $name$selected';
  }

  @override
  String get oldTestament => 'Antiguu Testamentu';

  @override
  String get newTestament => 'Nuevu Testamentu';

  @override
  String get deuterocanonApocrypha => 'Deuterocanón / Apócrifos';
}
