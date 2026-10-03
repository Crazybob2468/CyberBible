// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Interlingua (`ia`).
class AppLocalizationsIa extends AppLocalizations {
  AppLocalizationsIa([String locale = 'ia']) : super(locale);

  @override
  String get settingsTitle => 'Configuration';

  @override
  String get languageSection => 'Lingua';

  @override
  String get useSystemLanguage => 'Usar le lingua del systema';

  @override
  String get useSystemLanguageSubtitle =>
      'Usar le lingua del apparato como selection predefinite.';

  @override
  String get currentLanguage => 'Lingua actual';

  @override
  String get appLanguage => 'Lingua del application';

  @override
  String get chooseLanguage => 'Seliger un lingua';

  @override
  String get theme => 'Thema';

  @override
  String get appearance => 'Aspecto';

  @override
  String get textSection => 'Texto';

  @override
  String get readingFormatSection => 'Formato de lectura';

  @override
  String get displaySection => 'Presentation';

  @override
  String get verseNumbers => 'Numeros de versiculo';

  @override
  String get sectionHeadings => 'Titulos de section';

  @override
  String get redLetterText => 'Texto in rubie';

  @override
  String get selectABook => 'Seliger un libro';

  @override
  String get traditionalOrder => 'Ordine traditional';

  @override
  String get alphabeticalOrder => 'Ordine alphabetic';

  @override
  String get bookmarks => 'Marcapaginas';

  @override
  String get retry => 'Tentar de novo';

  @override
  String get chooseTheme => 'Seliger un thema';

  @override
  String get customisableThemes => 'Themas personalisabile';

  @override
  String get customisableThemesSubtitle =>
      'Toca un carta pro seliger un color accentual. \"Classic White\" supporta etiam le modos Clar, Obscur e Systema.';

  @override
  String get setThemes => 'THEMAS FIXE';

  @override
  String get setThemesSubtitle =>
      'Palettas fixe, elaborate con attention. Nulle adaptation necessari; toca pro applicar.';

  @override
  String get deleteBookmarkQuestion => 'Deler le marcapagina?';

  @override
  String get cancel => 'Cancellar';

  @override
  String get delete => 'Deler';

  @override
  String get bookmarkSaved => 'Marcapagina salvate';

  @override
  String get couldNotDeleteBookmark => 'Impossibile deler le marcapagina.';

  @override
  String couldNotNavigate(Object reference) {
    return 'Impossibile navigar a $reference.';
  }

  @override
  String get pageNotFound => 'Pagina non trovate';

  @override
  String noRouteDefined(Object routeName) {
    return 'Nulle ruta definite pro \"$routeName\"';
  }

  @override
  String get english => 'Anglese';

  @override
  String get spanish => 'Espaniol';

  @override
  String get systemDefault => 'Predefinition del systema';

  @override
  String get languageStatusEnglish =>
      'Le anglese es usate como lingua de reserva';

  @override
  String get languageStatusSystem => 'Le lingua del systema es usate';

  @override
  String languageStatusSelected(Object languageName) {
    return 'Lingua seligite: $languageName';
  }

  @override
  String get themeLabel => 'Thema';

  @override
  String get notFoundTitle => 'Pagina non trovate';

  @override
  String get loadingCyberBible => 'Carga del Biblia Cyber...';

  @override
  String get couldNotOpenDatabase =>
      'Impossibile aperir le base de datos del Biblia. Tenta de novo.';

  @override
  String get homeTagline =>
      'Un application gratuite e de codice aperte pro studiar le Biblia';

  @override
  String get readTheBible => 'Leger le Biblia';

  @override
  String get settingsTooltip => 'Configuration';

  @override
  String get themeChoose => 'Seliger un thema';

  @override
  String get customThemes => 'Themas personalisabile';

  @override
  String get customThemesSubtitle =>
      'Toca un carta pro seliger un color accentual. \"Classic White\" supporta etiam le modos Clar, Obscur e Systema.';

  @override
  String get setThemesLabel => 'THEMAS FIXE';

  @override
  String get deleteBookmarkDialog => 'Deler le marcapagina?';

  @override
  String removeBookmarkMessage(Object details, Object reference) {
    return 'Remover \"$reference\"$details?\n\nIsto non pote esser revertite.';
  }

  @override
  String get couldNotLoadBookmarks =>
      'Impossibile cargar le marcapaginas. Tenta de novo.';

  @override
  String get bookmarkSavedMessage => 'Marcapagina salvate';

  @override
  String get couldNotSaveBookmark => 'Impossibile salveguardar le marcapagina.';

  @override
  String get noBookmarksMatchFilter =>
      'Nulle marcapagina corresponde a iste filtro.';

  @override
  String get clearFilter => 'Vacuar le filtro';

  @override
  String get traditionalOrderLabel => 'Ordine traditional';

  @override
  String get alphabeticalOrderLabel => 'Ordine alphabetic';

  @override
  String get bookmarksTabLabel => 'Marcapaginas';

  @override
  String get fullChapter => 'Capitulo integre';

  @override
  String get addBookmark => 'Adder marcapagina';

  @override
  String get selectVerse => 'Seliger un versiculo';

  @override
  String get labelOptional => 'Etiquetta (optional)';

  @override
  String get notesOptional => 'Notas (optional)';

  @override
  String get save => 'Salveguardar';

  @override
  String get goToVerse => 'Ir al versiculo';

  @override
  String verseTitle(Object verse) {
    return 'Versiculo $verse';
  }

  @override
  String chapterTitle(Object chapter) {
    return 'Capitulo $chapter';
  }

  @override
  String get switchToFullChapter =>
      'Cambiar a marcapagina del capitulo integre';

  @override
  String get bookmarkSheetCancel =>
      'Cancellar e clauder le pannello de marcapaginas';

  @override
  String get pickCustomAccent => 'Seliger un color accentual personalisate';

  @override
  String get apply => 'Applicar';

  @override
  String get custom => 'Personalisate';

  @override
  String get brightnessSystem => 'Systema';

  @override
  String get brightnessLight => 'Clar';

  @override
  String get brightnessDark => 'Obscur';

  @override
  String get selectBook => 'Seliger un libro';

  @override
  String get bookmarkFilterAll => 'Tote';

  @override
  String get bookmarkFilterUnlabeled => 'Sin etiquetta';

  @override
  String get bookmarkSortRecent => 'Le plus recente primo';

  @override
  String get bookmarkSortCanonical => 'Ordine canonic';

  @override
  String get chapterRetry => 'Tentar de novo';

  @override
  String get fontSize => 'Dimension del characteres';

  @override
  String fontSizePixels(Object size) {
    return '$size px';
  }

  @override
  String get fontSizeSlider => 'Regulator del dimension del characteres';

  @override
  String get fontSizeSliderHint => 'Glissa pro ajustar de 12 a 28';

  @override
  String get fontPreview =>
      '\"In le initio Deo creava le celo e le terra.\" — Gen 1:1';

  @override
  String get showVerseNumbersSubtitle =>
      'Monstrar le numeros de versiculo in le schermo de lectura.';

  @override
  String get showSectionHeadingsSubtitle =>
      'Monstrar le titulos de section e de Psalmos inter le passageos.';

  @override
  String get wordsOfChristSubtitle =>
      'Monstrar le parolas de Jesus in rubie. Disactiva pro usar un sol color de texto.';

  @override
  String get verseFormatTitle => 'Formato de versiculo';

  @override
  String get verseFormatSubtitle =>
      'Selige como disponer le texto del Scriptura.';

  @override
  String get paragraphMode => 'Paragrapho';

  @override
  String get verseListMode => 'Lista de versiculos';

  @override
  String get paragraphModeTooltip => 'Modo paragrapho';

  @override
  String get verseListModeTooltip => 'Modo lista de versiculos';

  @override
  String get paragraphModeDescription =>
      'Le texto flue continuemente in paragraphos indentate, como in un Biblia imprimite.';

  @override
  String get verseListModeDescription =>
      'Cata paragrapho del Scriptura comencia sur su proprie linea, pro facilitar le recognition del gruppos de versiculos.';

  @override
  String get deleteBookmarkTooltip => 'Deler marcapagina';

  @override
  String deleteBookmarkSemantics(Object reference) {
    return 'Deler marcapagina $reference';
  }

  @override
  String sortBookmarksTooltip(Object sortOrder) {
    return 'Ordinar: $sortOrder';
  }

  @override
  String get noBookmarksYet => 'Necun marcapagina ancora.';

  @override
  String get noBookmarksYetHint =>
      'Toca le icone de marcapagina durante le lectura pro salveguardar un loco.';

  @override
  String bookmarkReferenceNavigationError(Object reference) {
    return 'Impossibile navigar a $reference.';
  }

  @override
  String themeCardSemantics(Object description, Object name, Object selected) {
    return 'Thema $name$selected. $description';
  }

  @override
  String get selectedThemeSuffix => ', seligite actualmente';

  @override
  String get customisableAccentDescription =>
      'Color accentual personalisabile.';

  @override
  String get fixedPaletteDescription => 'Paletta fixe.';

  @override
  String accentColourTitle(Object themeName) {
    return 'Color accentual — $themeName';
  }

  @override
  String get brightnessMode => 'MODO DE LUMINOSITATE';

  @override
  String get lightMode => 'Modo clar';

  @override
  String get followSystemMode => 'Sequer le modo del systema';

  @override
  String get darkMode => 'Modo obscur';

  @override
  String get customColourPicker => 'Selector de color personalisate';

  @override
  String get customColourTooltip => 'Color personalisate...';

  @override
  String get couldNotLoadBooks =>
      'Impossibile cargar le lista de libros. Tenta de novo.';

  @override
  String chapterLabel(Object chapter) {
    return 'Capitulo $chapter';
  }

  @override
  String get traditionalOrderBooks => 'Libros in ordine traditional';

  @override
  String get alphabeticalOrderBooks => 'Libros in ordine alphabetic';

  @override
  String get home => 'Initio';

  @override
  String get addBookmarkTooltip => 'Adder marcapagina';

  @override
  String get chooseBookChapter => 'Seliger libro e capitulo';

  @override
  String get chooseVerse => 'Seliger un versiculo';

  @override
  String get bookChapterQuickNavigation =>
      'Navigation rapide al libro e al capitulo';

  @override
  String get verseQuickNavigation => 'Navigation rapide al versiculo';

  @override
  String get backToBooks => 'Retornar al libros';

  @override
  String get selectBookTitle => 'Seliger libro';

  @override
  String selectChapterTitle(Object bookName) {
    return 'Seliger capitulo ($bookName)';
  }

  @override
  String chapterSelectionLabel(Object chapter) {
    return 'Capitulo $chapter';
  }

  @override
  String verseSelectionLabel(Object verse) {
    return 'Versiculo $verse';
  }

  @override
  String fullChapterReference(Object bookName, Object chapter) {
    return 'Capitulo integre: $bookName $chapter';
  }

  @override
  String get memorizeHint => 'Memorisar';

  @override
  String get addNoteHint => 'Adder un nota...';

  @override
  String get languageSearchHint => 'Cercar linguas';

  @override
  String get languageModuleInstalled => 'Installate';

  @override
  String get languageModulePending => 'Traduction automatic in espera';

  @override
  String get languageNoMatches => 'Nulle lingua corresponde a tu cerca.';

  @override
  String get languageCatalogDescription =>
      'Le linguas marcate como installate functiona sin connexion. Altere linguas essera addite como modulos traducite automaticamente.';

  @override
  String get saveBookmarkSemantics => 'Salveguardar marcapagina';

  @override
  String get couldNotLoadChapter =>
      'Impossibile cargar le capitulo. Tenta de novo.';

  @override
  String get couldNotLoadChapters =>
      'Impossibile cargar le capitulos. Tenta de novo.';

  @override
  String verseWithText(Object text, Object verse) {
    return 'Versiculo $verse: $text';
  }

  @override
  String accentSwatchSemantics(Object name, Object selected) {
    return 'Color accentual $name$selected';
  }

  @override
  String get oldTestament => 'Testamento Ancian';

  @override
  String get newTestament => 'Nove Testamento';

  @override
  String get deuterocanonApocrypha => 'Deuterocanone / Apocrypha';
}
