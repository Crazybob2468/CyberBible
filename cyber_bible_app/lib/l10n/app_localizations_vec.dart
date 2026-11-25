// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Venetian (`vec`).
class AppLocalizationsVec extends AppLocalizations {
  AppLocalizationsVec([String locale = 'vec']) : super(locale);

  @override
  String get settingsTitle => 'Impostassion';

  @override
  String get languageSection => 'Łéngua';

  @override
  String get useSystemLanguage => 'Dòpara la łéngua del sistema';

  @override
  String get useSystemLanguageSubtitle =>
      'Dòpara la łéngua del dispoxitivo come predefinìa.';

  @override
  String get currentLanguage => 'Łéngua atual';

  @override
  String get appLanguage => 'Łéngua de l\'aplicassion';

  @override
  String get chooseLanguage => 'Sernir na łéngua';

  @override
  String get theme => 'Tema';

  @override
  String get appearance => 'Aparensa';

  @override
  String get textSection => 'Testo';

  @override
  String get readingFormatSection => 'Formato de łetura';

  @override
  String get displaySection => 'Vizualixassion';

  @override
  String get verseNumbers => 'Nùmeri dei versi';

  @override
  String get sectionHeadings => 'Titoli de łe session';

  @override
  String get redLetterText => 'Testo roso';

  @override
  String get selectABook => 'Sernir un libro';

  @override
  String get traditionalOrder => 'Ordine tradissional';

  @override
  String get alphabeticalOrder => 'Ordine alfabetego';

  @override
  String get bookmarks => 'Segnalibri';

  @override
  String get retry => 'Provar n\'altra volta';

  @override
  String get chooseTheme => 'Sernir un tema';

  @override
  String get customisableThemes => 'Temi personalixabili';

  @override
  String get customisableThemesSubtitle =>
      'Toca na scheda par sernir un cołor de risalto. \"Classic White\" suporta anca i modi ciaro, scuro e sistema.';

  @override
  String get setThemes => 'TEMI FISI';

  @override
  String get setThemesSubtitle =>
      'Pale­te fise, fate co cura. No ghe xe da personalixar; toca par aplicar.';

  @override
  String get deleteBookmarkQuestion => 'Cancełar el segnalibro?';

  @override
  String get cancel => 'Anułar';

  @override
  String get delete => 'Cancełar';

  @override
  String get bookmarkSaved => 'Segnalibro salvà';

  @override
  String get couldNotDeleteBookmark =>
      'No se ga podesto cancełar el segnalibro.';

  @override
  String couldNotNavigate(Object reference) {
    return 'No se ga podesto ndar a $reference.';
  }

  @override
  String get pageNotFound => 'Pagina mìa trovà';

  @override
  String noRouteDefined(Object routeName) {
    return 'Nissuna strada definìa par \"$routeName\"';
  }

  @override
  String get english => 'Ingleze';

  @override
  String get spanish => 'Spagnoło';

  @override
  String get systemDefault => 'Predefinìo del sistema';

  @override
  String get languageStatusEnglish =>
      'Se dòpara l\'ingleze come łéngua de riserva';

  @override
  String get languageStatusSystem => 'Se dòpara la łéngua del sistema';

  @override
  String languageStatusSelected(Object languageName) {
    return 'Łéngua sernìa: $languageName';
  }

  @override
  String get themeLabel => 'Tema';

  @override
  String get notFoundTitle => 'Pagina mìa trovà';

  @override
  String get loadingCyberBible => 'Se sta cargando la Bìbia Cìber...';

  @override
  String get couldNotOpenDatabase =>
      'No se ga podesto vèrxar el database de la Bìbia. Prova n\'altra volta.';

  @override
  String get homeTagline =>
      'Na aplicassion gratuita e a codice verto par studiar la Bìbia';

  @override
  String get readTheBible => 'Łézer la Bìbia';

  @override
  String get settingsTooltip => 'Impostassion';

  @override
  String get themeChoose => 'Sernir un tema';

  @override
  String get customThemes => 'Temi personalixabili';

  @override
  String get customThemesSubtitle =>
      'Toca na scheda par sernir un cołor de risalto. \"Classic White\" suporta anca i modi ciaro, scuro e sistema.';

  @override
  String get setThemesLabel => 'TEMI FISI';

  @override
  String get deleteBookmarkDialog => 'Cancełar el segnalibro?';

  @override
  String removeBookmarkMessage(Object details, Object reference) {
    return 'Tirar via \"$reference\"$details?\n\nSta operassion no se pol desfar.';
  }

  @override
  String get couldNotLoadBookmarks =>
      'No se ga podesto cargar i segnalibri. Prova n\'altra volta.';

  @override
  String get bookmarkSavedMessage => 'Segnalibro salvà';

  @override
  String get couldNotSaveBookmark => 'No se ga podesto salvar el segnalibro.';

  @override
  String get noBookmarksMatchFilter =>
      'Nissun segnalibro el corisponde a sto filtro.';

  @override
  String get clearFilter => 'Tirar via el filtro';

  @override
  String get traditionalOrderLabel => 'Ordine tradissional';

  @override
  String get alphabeticalOrderLabel => 'Ordine alfabetego';

  @override
  String get bookmarksTabLabel => 'Segnalibri';

  @override
  String get fullChapter => 'Capìtoło intiero';

  @override
  String get addBookmark => 'Zontar un segnalibro';

  @override
  String get selectVerse => 'Sernir un verso';

  @override
  String get labelOptional => 'Eticheta (facoltativa)';

  @override
  String get notesOptional => 'Note (facoltative)';

  @override
  String get save => 'Salvar';

  @override
  String get goToVerse => 'Ndar al verso';

  @override
  String verseTitle(Object verse) {
    return 'Verso $verse';
  }

  @override
  String chapterTitle(Object chapter) {
    return 'Capìtoło $chapter';
  }

  @override
  String get switchToFullChapter => 'Passar al segnalibro del capìtoło intiero';

  @override
  String get bookmarkSheetCancel => 'Anułar e serar el panèl dei segnalibri';

  @override
  String get pickCustomAccent => 'Sernir un cołor de risalto personalizà';

  @override
  String get apply => 'Aplicar';

  @override
  String get custom => 'Personalizà';

  @override
  String get brightnessSystem => 'Sistema';

  @override
  String get brightnessLight => 'Ciaro';

  @override
  String get brightnessDark => 'Scuro';

  @override
  String get selectBook => 'Sernir un libro';

  @override
  String get bookmarkFilterAll => 'Tuti';

  @override
  String get bookmarkFilterUnlabeled => 'Sensa eticheta';

  @override
  String get bookmarkSortRecent => 'I più resenti par primi';

  @override
  String get bookmarkSortCanonical => 'Ordine canonico';

  @override
  String get chapterRetry => 'Provar n\'altra volta';

  @override
  String get fontSize => 'Dimension de la caràtere';

  @override
  String fontSizePixels(Object size) {
    return '$size px';
  }

  @override
  String get fontSizeSlider => 'Regolador de la dimension de la caràtere';

  @override
  String get fontSizeSliderHint => 'Sposta par sistemar da 12 a 28';

  @override
  String get fontPreview =>
      '\"Al principio Dio el ga creà el cielo e la tera.\" — Gen 1:1';

  @override
  String get showVerseNumbersSubtitle =>
      'Mostrar i nùmeri dei versi su la schermada de łetura.';

  @override
  String get showSectionHeadingsSubtitle =>
      'Mostrar i titoli de łe session e dei Salmi tra i pasagi.';

  @override
  String get wordsOfChristSubtitle =>
      'Mostrar in roso łe parole de Gesù. Desativa par doparar un cołor solo.';

  @override
  String get verseFormatTitle => 'Formato dei versi';

  @override
  String get verseFormatSubtitle =>
      'Sernir come metar in pagina el testo de la Scritura.';

  @override
  String get paragraphMode => 'Paragrafo';

  @override
  String get verseListMode => 'Lista de versi';

  @override
  String get paragraphModeTooltip => 'Modo paragrafo';

  @override
  String get verseListModeTooltip => 'Modo lista de versi';

  @override
  String get paragraphModeDescription =>
      'El testo el scor de seguito in paragrafi rientrà, come in na Bìbia stampà.';

  @override
  String get verseListModeDescription =>
      'Ogni paragrafo de la Scritura el comincia su na riga so, par trovar fàcilmente i gruppi de versi.';

  @override
  String get deleteBookmarkTooltip => 'Cancełar segnalibro';

  @override
  String deleteBookmarkSemantics(Object reference) {
    return 'Cancełar el segnalibro $reference';
  }

  @override
  String sortBookmarksTooltip(Object sortOrder) {
    return 'Ordinar: $sortOrder';
  }

  @override
  String get noBookmarksYet => 'No ghe xe ancora segnalibri.';

  @override
  String get noBookmarksYetHint =>
      'Toca l\'icona del segnalibro mentre te łézi par salvar un posto.';

  @override
  String bookmarkReferenceNavigationError(Object reference) {
    return 'No se ga podesto ndar a $reference.';
  }

  @override
  String themeCardSemantics(Object description, Object name, Object selected) {
    return 'Tema $name$selected. $description';
  }

  @override
  String get selectedThemeSuffix => ', sernìo in sto momento';

  @override
  String get customisableAccentDescription =>
      'Cołor de risalto personalizabile.';

  @override
  String get fixedPaletteDescription => 'Paleta de cołori fisa.';

  @override
  String accentColourTitle(Object themeName) {
    return 'Cołor de risalto — $themeName';
  }

  @override
  String get brightnessMode => 'MODO DE LUMINOSITÀ';

  @override
  String get lightMode => 'Modo ciaro';

  @override
  String get followSystemMode => 'Seguir el modo del sistema';

  @override
  String get darkMode => 'Modo scuro';

  @override
  String get customColourPicker => 'Sernidor de cołor personalizà';

  @override
  String get customColourTooltip => 'Cołor personalizà...';

  @override
  String get couldNotLoadBooks =>
      'No se ga podesto cargar la lista dei libri. Prova n\'altra volta.';

  @override
  String chapterLabel(Object chapter) {
    return 'Capìtoło $chapter';
  }

  @override
  String get traditionalOrderBooks => 'Libri in ordine tradissional';

  @override
  String get alphabeticalOrderBooks => 'Libri in ordine alfabetego';

  @override
  String get home => 'Casa';

  @override
  String get addBookmarkTooltip => 'Zontar un segnalibro';

  @override
  String get chooseBookChapter => 'Sernir el libro e el capìtoło';

  @override
  String get chooseVerse => 'Sernir un verso';

  @override
  String get bookChapterQuickNavigation =>
      'Navigassion ràpida al libro e al capìtoło';

  @override
  String get verseQuickNavigation => 'Navigassion ràpida al verso';

  @override
  String get backToBooks => 'Tornar ai libri';

  @override
  String get selectBookTitle => 'Sernir un libro';

  @override
  String selectChapterTitle(Object bookName) {
    return 'Sernir el capìtoło ($bookName)';
  }

  @override
  String chapterSelectionLabel(Object chapter) {
    return 'Capìtoło $chapter';
  }

  @override
  String verseSelectionLabel(Object verse) {
    return 'Verso $verse';
  }

  @override
  String fullChapterReference(Object bookName, Object chapter) {
    return 'Capìtoło intiero: $bookName $chapter';
  }

  @override
  String get memorizeHint => 'Imparar a memoria';

  @override
  String get addNoteHint => 'Zontar na nota...';

  @override
  String get languageSearchHint => 'Sercar łéngue';

  @override
  String get languageModuleInstalled => 'Instalà';

  @override
  String get languageModulePending => 'Tradussion automatica in atesa';

  @override
  String get languageNoMatches => 'Nissuna łéngua la corisponde a la to serca.';

  @override
  String get languageCatalogDescription =>
      'Łe łéngue instalà łe funsiona sensa internet. Łe altre łéngue łe vegnarà zontà come moduli tradoti automaticamente.';

  @override
  String get saveBookmarkSemantics => 'Salvar el segnalibro';

  @override
  String get couldNotLoadChapter =>
      'No se ga podesto cargar el capìtoło. Prova n\'altra volta.';

  @override
  String get couldNotLoadChapters =>
      'No se ga podesto cargar i capìtołi. Prova n\'altra volta.';

  @override
  String verseWithText(Object text, Object verse) {
    return 'Verso $verse: $text';
  }

  @override
  String accentSwatchSemantics(Object name, Object selected) {
    return 'Cołor de risalto $name$selected';
  }

  @override
  String get oldTestament => 'Testamento Vecio';

  @override
  String get newTestament => 'Testamento Novo';

  @override
  String get deuterocanonApocrypha => 'Deuterocanone / Apocrifi';
}
