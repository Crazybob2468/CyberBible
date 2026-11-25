// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Catalan Valencian (`ca`).
class AppLocalizationsCa extends AppLocalizations {
  AppLocalizationsCa([String locale = 'ca']) : super(locale);

  @override
  String get settingsTitle => 'Configuració';

  @override
  String get languageSection => 'Idioma';

  @override
  String get useSystemLanguage => 'Utilitza l\'idioma del sistema';

  @override
  String get useSystemLanguageSubtitle =>
      'Coincideix amb l\'idioma del dispositiu per defecte.';

  @override
  String get currentLanguage => 'Idioma actual';

  @override
  String get appLanguage => 'Idioma de l\'aplicació';

  @override
  String get chooseLanguage => 'Tria l\'idioma';

  @override
  String get theme => 'Tema';

  @override
  String get appearance => 'Aparença';

  @override
  String get textSection => 'Text';

  @override
  String get readingFormatSection => 'Format de lectura';

  @override
  String get displaySection => 'Visualització';

  @override
  String get verseNumbers => 'Números de verset';

  @override
  String get sectionHeadings => 'Encapçalaments de secció';

  @override
  String get redLetterText => 'Text en lletres vermelles';

  @override
  String get selectABook => 'Selecciona un llibre';

  @override
  String get traditionalOrder => 'Ordre tradicional';

  @override
  String get alphabeticalOrder => 'Ordre alfabètic';

  @override
  String get bookmarks => 'Punts de llibre';

  @override
  String get retry => 'Torna-ho a provar';

  @override
  String get chooseTheme => 'Tria un tema';

  @override
  String get customisableThemes => 'Temes personalitzables';

  @override
  String get customisableThemesSubtitle =>
      'Toca una targeta per triar un color d\'accent. \"Blanc clàssic\" també admet els modes Clar, Fosc i Sistema.';

  @override
  String get setThemes => 'TEMES PREDEFINITS';

  @override
  String get setThemesSubtitle =>
      'Paletes fixes, creades a mà. No cal personalitzar-les; només toca per aplicar-les.';

  @override
  String get deleteBookmarkQuestion => 'Voleu suprimir el punt de llibre?';

  @override
  String get cancel => 'Cancel·la';

  @override
  String get delete => 'Suprimeix';

  @override
  String get bookmarkSaved => 'S\'ha desat el punt de llibre';

  @override
  String get couldNotDeleteBookmark =>
      'No s\'ha pogut suprimir el punt de llibre.';

  @override
  String couldNotNavigate(Object reference) {
    return 'No s\'ha pogut anar a $reference.';
  }

  @override
  String get pageNotFound => 'No s\'ha trobat la pàgina';

  @override
  String noRouteDefined(Object routeName) {
    return 'No s\'ha definit cap ruta per a \"$routeName\"';
  }

  @override
  String get english => 'Anglès';

  @override
  String get spanish => 'Espanyol';

  @override
  String get systemDefault => 'Valor predeterminat del sistema';

  @override
  String get languageStatusEnglish =>
      'La llengua de reserva anglesa està activa';

  @override
  String get languageStatusSystem => 'S\'està utilitzant l\'idioma del sistema';

  @override
  String languageStatusSelected(Object languageName) {
    return 'Idioma seleccionat: $languageName';
  }

  @override
  String get themeLabel => 'Tema';

  @override
  String get notFoundTitle => 'No s\'ha trobat la pàgina';

  @override
  String get loadingCyberBible => 'S\'està carregant Cyber Bible...';

  @override
  String get couldNotOpenDatabase =>
      'No s\'ha pogut obrir la base de dades de la Bíblia. Torneu-ho a provar.';

  @override
  String get homeTagline =>
      'Una aplicació gratuïta i de codi obert per a l\'estudi de la Bíblia';

  @override
  String get readTheBible => 'Llegeix la Bíblia';

  @override
  String get settingsTooltip => 'Configuració';

  @override
  String get themeChoose => 'Tria un tema';

  @override
  String get customThemes => 'Temes personalitzables';

  @override
  String get customThemesSubtitle =>
      'Toca una targeta per triar un color d\'accent. \"Blanc clàssic\" també admet els modes Clar, Fosc i Sistema.';

  @override
  String get setThemesLabel => 'TEMES PREDEFINITS';

  @override
  String get deleteBookmarkDialog => 'Voleu suprimir el punt de llibre?';

  @override
  String removeBookmarkMessage(Object details, Object reference) {
    return 'Voleu eliminar \"$reference\"$details?\n\nAquesta acció no es pot desfer.';
  }

  @override
  String get couldNotLoadBookmarks =>
      'No s\'han pogut carregar els punts de llibre. Torneu-ho a provar.';

  @override
  String get bookmarkSavedMessage => 'S\'ha desat el punt de llibre';

  @override
  String get couldNotSaveBookmark => 'No s\'ha pogut desar el punt de llibre.';

  @override
  String get noBookmarksMatchFilter =>
      'Cap punt de llibre no coincideix amb aquest filtre.';

  @override
  String get clearFilter => 'Esborra el filtre';

  @override
  String get traditionalOrderLabel => 'Ordre tradicional';

  @override
  String get alphabeticalOrderLabel => 'Ordre alfabètic';

  @override
  String get bookmarksTabLabel => 'Punts de llibre';

  @override
  String get fullChapter => 'Capítol complet';

  @override
  String get addBookmark => 'Afegeix un punt de llibre';

  @override
  String get selectVerse => 'Selecciona un verset';

  @override
  String get labelOptional => 'Etiqueta (opcional)';

  @override
  String get notesOptional => 'Notes (opcional)';

  @override
  String get save => 'Desa';

  @override
  String get goToVerse => 'Ves al verset';

  @override
  String verseTitle(Object verse) {
    return 'Verset $verse';
  }

  @override
  String chapterTitle(Object chapter) {
    return 'Capítol $chapter';
  }

  @override
  String get switchToFullChapter =>
      'Canvia al punt de llibre del capítol complet';

  @override
  String get bookmarkSheetCancel =>
      'Cancel·la i tanca el full de punt de llibre';

  @override
  String get pickCustomAccent => 'Tria un accent personalitzat';

  @override
  String get apply => 'Aplica';

  @override
  String get custom => 'Personalitzat';

  @override
  String get brightnessSystem => 'Sistema';

  @override
  String get brightnessLight => 'Clar';

  @override
  String get brightnessDark => 'Fosc';

  @override
  String get selectBook => 'Selecciona un llibre';

  @override
  String get bookmarkFilterAll => 'Tots';

  @override
  String get bookmarkFilterUnlabeled => 'Sense etiqueta';

  @override
  String get bookmarkSortRecent => 'Més recents primer';

  @override
  String get bookmarkSortCanonical => 'Ordre canònic';

  @override
  String get chapterRetry => 'Torna-ho a provar';

  @override
  String get fontSize => 'Mida de la lletra';

  @override
  String fontSizePixels(Object size) {
    return '$size px';
  }

  @override
  String get fontSizeSlider => 'Control lliscant de la mida de la lletra';

  @override
  String get fontSizeSliderHint => 'Llisca per ajustar de 12 a 28';

  @override
  String get fontPreview =>
      '\"Al principi Déu va crear el cel i la terra.\" - Gn 1:1';

  @override
  String get showVerseNumbersSubtitle =>
      'Mostra els números de verset en superíndex a la pantalla de lectura.';

  @override
  String get showSectionHeadingsSubtitle =>
      'Mostra encapçalaments de secció i de Salms entre passatges.';

  @override
  String get wordsOfChristSubtitle =>
      'Mostra les paraules de Jesús en vermell. Desactiva-ho per a un sol color de text.';

  @override
  String get verseFormatTitle => 'Format de verset';

  @override
  String get verseFormatSubtitle =>
      'Tria com es distribueix el text de les Escriptures.';

  @override
  String get paragraphMode => 'Paràgraf';

  @override
  String get verseListMode => 'Llista de versets';

  @override
  String get paragraphModeTooltip => 'Mode de paràgraf';

  @override
  String get verseListModeTooltip => 'Mode de llista de versets';

  @override
  String get paragraphModeDescription =>
      'El text flueix contínuament amb paràgrafs sagnats, com en una Bíblia impresa.';

  @override
  String get verseListModeDescription =>
      'Cada paràgraf de les Escriptures comença en una línia pròpia, cosa que facilita veure els grups de versets.';

  @override
  String get deleteBookmarkTooltip => 'Suprimeix el punt de llibre';

  @override
  String deleteBookmarkSemantics(Object reference) {
    return 'Suprimeix el punt de llibre $reference';
  }

  @override
  String sortBookmarksTooltip(Object sortOrder) {
    return 'Ordena: $sortOrder';
  }

  @override
  String get noBookmarksYet => 'Encara no hi ha punts de llibre.';

  @override
  String get noBookmarksYetHint =>
      'Toca la icona de punt de llibre mentre llegeixes per desar una ubicació.';

  @override
  String bookmarkReferenceNavigationError(Object reference) {
    return 'No s\'ha pogut anar a $reference.';
  }

  @override
  String themeCardSemantics(Object description, Object name, Object selected) {
    return 'Tema $name$selected. $description';
  }

  @override
  String get selectedThemeSuffix => ', seleccionat actualment';

  @override
  String get customisableAccentDescription =>
      'Color d\'accent personalitzable.';

  @override
  String get fixedPaletteDescription => 'Paleta fixa.';

  @override
  String accentColourTitle(Object themeName) {
    return 'Color d\'accent - $themeName';
  }

  @override
  String get brightnessMode => 'MODE DE BRILLANTOR';

  @override
  String get lightMode => 'Mode clar';

  @override
  String get followSystemMode => 'Segueix el mode del sistema';

  @override
  String get darkMode => 'Mode fosc';

  @override
  String get customColourPicker => 'Selector de color personalitzat';

  @override
  String get customColourTooltip => 'Color personalitzat...';

  @override
  String get couldNotLoadBooks =>
      'No s\'ha pogut carregar la llista de llibres. Torneu-ho a provar.';

  @override
  String chapterLabel(Object chapter) {
    return 'Capítol $chapter';
  }

  @override
  String get traditionalOrderBooks => 'Llibres en ordre tradicional';

  @override
  String get alphabeticalOrderBooks => 'Llibres en ordre alfabètic';

  @override
  String get home => 'Inici';

  @override
  String get addBookmarkTooltip => 'Afegeix un punt de llibre';

  @override
  String get chooseBookChapter => 'Tria el llibre i el capítol';

  @override
  String get chooseVerse => 'Tria el verset';

  @override
  String get bookChapterQuickNavigation =>
      'Navegació ràpida de llibre i capítol';

  @override
  String get verseQuickNavigation => 'Navegació ràpida de verset';

  @override
  String get backToBooks => 'Torna als llibres';

  @override
  String get selectBookTitle => 'Selecciona un llibre';

  @override
  String selectChapterTitle(Object bookName) {
    return 'Selecciona un capítol ($bookName)';
  }

  @override
  String chapterSelectionLabel(Object chapter) {
    return 'Capítol $chapter';
  }

  @override
  String verseSelectionLabel(Object verse) {
    return 'Verset $verse';
  }

  @override
  String fullChapterReference(Object bookName, Object chapter) {
    return 'Capítol complet: $bookName $chapter';
  }

  @override
  String get memorizeHint => 'Memoritza';

  @override
  String get addNoteHint => 'Afegeix una nota...';

  @override
  String get languageSearchHint => 'Cerca idiomes';

  @override
  String get languageModuleInstalled => 'Instal·lat';

  @override
  String get languageModulePending => 'Traducció automàtica pendent';

  @override
  String get languageNoMatches => 'Cap idioma no coincideix amb la cerca.';

  @override
  String get languageCatalogDescription =>
      'Els idiomes marcats com a instal·lats funcionen sense connexió. S\'afegiran altres idiomes com a mòduls traduïts automàticament.';

  @override
  String get saveBookmarkSemantics => 'Desa el punt de llibre';

  @override
  String get couldNotLoadChapter =>
      'No s\'ha pogut carregar el capítol. Torneu-ho a provar.';

  @override
  String get couldNotLoadChapters =>
      'No s\'han pogut carregar els capítols. Torneu-ho a provar.';

  @override
  String verseWithText(Object text, Object verse) {
    return 'Verset $verse: $text';
  }

  @override
  String accentSwatchSemantics(Object name, Object selected) {
    return 'Color d\'accent $name$selected';
  }

  @override
  String get oldTestament => 'Antic Testament';

  @override
  String get newTestament => 'Nou Testament';

  @override
  String get deuterocanonApocrypha => 'Deuterocanònic / Apòcrifs';
}
