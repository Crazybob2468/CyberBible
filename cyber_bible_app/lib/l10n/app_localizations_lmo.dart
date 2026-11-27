// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Lombard (`lmo`).
class AppLocalizationsLmo extends AppLocalizations {
  AppLocalizationsLmo([String locale = 'lmo']) : super(locale);

  @override
  String get settingsTitle => 'Impostaziun';

  @override
  String get languageSection => 'Lengua';

  @override
  String get useSystemLanguage => 'Duperà el linguacch del sistèm';

  @override
  String get useSystemLanguageSubtitle =>
      'Currispund a la lengua del dispusitif per predefiniziun.';

  @override
  String get currentLanguage => 'Lingua atual';

  @override
  String get appLanguage => 'Linguagg del aplicaziun';

  @override
  String get chooseLanguage => 'Scegli la lengua';

  @override
  String get theme => 'Tema';

  @override
  String get appearance => 'Aspet';

  @override
  String get textSection => 'Test';

  @override
  String get readingFormatSection => 'Format de letura';

  @override
  String get displaySection => 'Sqerm';

  @override
  String get verseNumbers => 'Numer di versi';

  @override
  String get sectionHeadings => 'Intestaziun di seziun';

  @override
  String get redLetterText => 'Test a letra rossa';

  @override
  String get selectABook => 'Seleziuna un liber';

  @override
  String get traditionalOrder => 'Orden tradiziunal';

  @override
  String get alphabeticalOrder => 'Ordin alfabetich';

  @override
  String get bookmarks => 'Segnalibro';

  @override
  String get retry => 'Pruva ancamò';

  @override
  String get chooseTheme => 'Scegli Tema';

  @override
  String get customisableThemes => 'Temi personalizabil';

  @override
  String get customisableThemesSubtitle =>
      'Tocca una scheda per sceglier un culur d’acent. “Bianc classich” suporta anca i modalità Lus, Scür e Sistema.';

  @override
  String get setThemes => 'IMPOSTA TEMI';

  @override
  String get setThemesSubtitle =>
      'Palett fiss, artigianal. Nissun personalizaziun l’è necesaria, basta toccà per aplicà.';

  @override
  String get deleteBookmarkQuestion => 'Eliminar segnalibro?';

  @override
  String get cancel => 'scancella';

  @override
  String get delete => 'Scancellar';

  @override
  String get bookmarkSaved => 'Segnalibro salvà';

  @override
  String get couldNotDeleteBookmark => 'Pudeva minga cancelà el segnalibro.';

  @override
  String couldNotNavigate(Object reference) {
    return 'Pudeva minga navigar a $reference.';
  }

  @override
  String get pageNotFound => 'Pagina minga truvada';

  @override
  String noRouteDefined(Object routeName) {
    return 'Nissun percors definì per “$routeName”';
  }

  @override
  String get english => 'ingles';

  @override
  String get spanish => 'Spagnol';

  @override
  String get systemDefault => 'Predefinì del sistèm';

  @override
  String get languageStatusEnglish => 'Fallback inglès atif';

  @override
  String get languageStatusSystem => 'Duperà el linguacch del sistèm';

  @override
  String languageStatusSelected(Object languageName) {
    return 'Lengua selezionada: $languageName';
  }

  @override
  String get themeLabel => 'Tema';

  @override
  String get notFoundTitle => 'Pagina minga truvada';

  @override
  String get loadingCyberBible => 'Caricament de la Bibbia Ciber...';

  @override
  String get couldNotOpenDatabase =>
      'Pudeva minga dervir el database de la Bibbia. Per piasé pruva ancamò.';

  @override
  String get homeTagline =>
      'Un\'aplicaziun gratuita e open source per stüdiar la Bibbia';

  @override
  String get readTheBible => 'Legg la Bibbia';

  @override
  String get settingsTooltip => 'Impostaziun';

  @override
  String get themeChoose => 'Scegli Tema';

  @override
  String get customThemes => 'Temi personalizabil';

  @override
  String get customThemesSubtitle =>
      'Tocca una scheda per sceglier un culur d’acent. “Bianc classich” suporta anca i modalità Lus, Scür e Sistema.';

  @override
  String get setThemesLabel => 'IMPOSTA TEMI';

  @override
  String get deleteBookmarkDialog => 'Eliminar segnalibro?';

  @override
  String removeBookmarkMessage(Object details, Object reference) {
    return 'Cavar via “$reference”$details?\n\nChestu pœu no vèss disfà.';
  }

  @override
  String get couldNotLoadBookmarks =>
      'Pudeva minga cargà i segnalibro. Per piasé pruva ancamò.';

  @override
  String get bookmarkSavedMessage => 'Segnalibro salvà';

  @override
  String get couldNotSaveBookmark => 'Pudeva minga salvà el segnalibro.';

  @override
  String get noBookmarksMatchFilter =>
      'Nissun segnalibro currispunt a chestu filter.';

  @override
  String get clearFilter => 'Cancella el filter';

  @override
  String get traditionalOrderLabel => 'Orden tradiziunal';

  @override
  String get alphabeticalOrderLabel => 'Ordin alfabetich';

  @override
  String get bookmarksTabLabel => 'Segnalibro';

  @override
  String get fullChapter => 'Capitul cumplet';

  @override
  String get addBookmark => 'Aggiungi segnalibro';

  @override
  String get selectVerse => 'Seleziuna versi';

  @override
  String get labelOptional => 'Etichetta (facultatif)';

  @override
  String get notesOptional => 'Note (facultatif)';

  @override
  String get save => 'Salvar';

  @override
  String get goToVerse => 'Vai al Verso';

  @override
  String verseTitle(Object verse) {
    return 'Verse $verse';
  }

  @override
  String chapterTitle(Object chapter) {
    return 'Chapter $chapter';
  }

  @override
  String get switchToFullChapter => 'Passa al segnalibro del capitul cumplet';

  @override
  String get bookmarkSheetCancel => 'Annulla, sara el foji del segnalibro';

  @override
  String get pickCustomAccent => 'Scegli un acent personalizà';

  @override
  String get apply => 'Aplicar';

  @override
  String get custom => 'Personalizad';

  @override
  String get brightnessSystem => 'Sistema';

  @override
  String get brightnessLight => 'Ciar';

  @override
  String get brightnessDark => 'Scur';

  @override
  String get selectBook => 'Seleziuna un liber';

  @override
  String get bookmarkFilterAll => 'Tuts';

  @override
  String get bookmarkFilterUnlabeled => 'Minga etichetad';

  @override
  String get bookmarkSortRecent => 'Prim recent';

  @override
  String get bookmarkSortCanonical => 'Orden canonich';

  @override
  String get chapterRetry => 'Pruva ancamò';

  @override
  String get fontSize => 'Dimensiun del font';

  @override
  String fontSizePixels(Object size) {
    return '$size px';
  }

  @override
  String get fontSizeSlider => 'Cursur dimensiun del font';

  @override
  String get fontSizeSliderHint => 'Scorri per regular de 12 a 28';

  @override
  String get fontPreview =>
      '“In del principi Dio g’ha creà el ciel e la terra.” — Gen 1:1.';

  @override
  String get showVerseNumbersSubtitle =>
      'Mostra i sorascritt del numer di versi in de la scherma de letura.';

  @override
  String get showSectionHeadingsSubtitle =>
      'Mostra i titul de la seziun e del Salm intra i passagg.';

  @override
  String get wordsOfChristSubtitle =>
      'Mostra i parolle de Gesù in ross. Disabilita per un singul culur de test.';

  @override
  String get verseFormatTitle => 'Formà di versi';

  @override
  String get verseFormatSubtitle =>
      'Scegli come l’è dispost el test de la scritüra.';

  @override
  String get paragraphMode => 'Paragraf';

  @override
  String get verseListMode => 'Lista di versi';

  @override
  String get paragraphModeTooltip => 'Modalità paragraf';

  @override
  String get verseListModeTooltip => 'Modalità lista di versi';

  @override
  String get paragraphModeDescription =>
      'El test el circula semper cun paragraf rientrà, cuma una Bibbia stampada.';

  @override
  String get verseListModeDescription =>
      'Ogni paragraf de la scritura al comença in su la soa riga, e insì l’è facil de individuar i grup de versi.';

  @override
  String get deleteBookmarkTooltip => 'Cancella segnalibro';

  @override
  String deleteBookmarkSemantics(Object reference) {
    return 'Cancella segnalibro $reference';
  }

  @override
  String sortBookmarksTooltip(Object sortOrder) {
    return 'Urdina: $sortOrder';
  }

  @override
  String get noBookmarksYet => 'Ancamò nissun segnalibro.';

  @override
  String get noBookmarksYetHint =>
      'Tocca l’icona del segnalibro mentre legg per salvà una posiziun.';

  @override
  String bookmarkReferenceNavigationError(Object reference) {
    return 'Pudeva minga navigar a $reference.';
  }

  @override
  String themeCardSemantics(Object description, Object name, Object selected) {
    return '$name theme$selected. $description';
  }

  @override
  String get selectedThemeSuffix => ', atualment seleziunà';

  @override
  String get customisableAccentDescription => 'Culur de acent personalizabil.';

  @override
  String get fixedPaletteDescription => 'Paletta fissa.';

  @override
  String accentColourTitle(Object themeName) {
    return 'Culur del acent — $themeName';
  }

  @override
  String get brightnessMode => 'MODALITÀ DE LUMINOSITÀ';

  @override
  String get lightMode => 'Modalità lüs';

  @override
  String get followSystemMode => 'Segui la modalità sistema';

  @override
  String get darkMode => 'Modalità scüra';

  @override
  String get customColourPicker => 'Seleziunadur de culur personalizà';

  @override
  String get customColourTooltip => 'Culur personalizà...';

  @override
  String get couldNotLoadBooks =>
      'Pudeva minga cargà l\'elenc di liber. Per piasé pruva ancamò.';

  @override
  String chapterLabel(Object chapter) {
    return 'Chapter $chapter';
  }

  @override
  String get traditionalOrderBooks => 'Liber de urden tradiziunai';

  @override
  String get alphabeticalOrderBooks => 'Liber de urden alfabetich';

  @override
  String get home => 'Cà';

  @override
  String get addBookmarkTooltip => 'Aggiungi segnalibro';

  @override
  String get chooseBookChapter => 'Scegli liber e capitul';

  @override
  String get chooseVerse => 'Scegli verset';

  @override
  String get bookChapterQuickNavigation =>
      'Navigaziun rapida del liber e del capitul';

  @override
  String get verseQuickNavigation => 'Navigaziun rapida versi';

  @override
  String get backToBooks => 'Torna ai liber';

  @override
  String get selectBookTitle => 'Seleziuna Liber';

  @override
  String selectChapterTitle(Object bookName) {
    return 'Seleziuna el capitul ($bookName)';
  }

  @override
  String chapterSelectionLabel(Object chapter) {
    return 'Chapter $chapter';
  }

  @override
  String verseSelectionLabel(Object verse) {
    return 'Verse $verse';
  }

  @override
  String fullChapterReference(Object bookName, Object chapter) {
    return 'Capitul cumplet: $bookName $chapter';
  }

  @override
  String get memorizeHint => 'Memorizar';

  @override
  String get addNoteHint => 'Aggiungi una nota...';

  @override
  String get languageSearchHint => 'Cerca lengue';

  @override
  String get languageModuleInstalled => 'Instalà';

  @override
  String get languageModulePending => 'Traduziun automatich en attesa';

  @override
  String get languageNoMatches =>
      'Nissüna lengua currispunt a la vòstra ricerca.';

  @override
  String get languageCatalogDescription =>
      'I lengue segnade cuma installà funzionan fœura linea. Olter lengue saran giuntà cuma modul tradott automaticamente.';

  @override
  String get saveBookmarkSemantics => 'Salva segnalibro';

  @override
  String get couldNotLoadChapter =>
      'Pudeva minga cargar el capitul. Per piasé pruva ancamò.';

  @override
  String get couldNotLoadChapters =>
      'Pudeva minga cargar i capitul. Per piasé pruva ancamò.';

  @override
  String verseWithText(Object text, Object verse) {
    return 'Verse $verse: $text';
  }

  @override
  String accentSwatchSemantics(Object name, Object selected) {
    return '$name culur del accent$selected';
  }

  @override
  String get oldTestament => 'Antich Testament';

  @override
  String get newTestament => 'Nœuf Testament';

  @override
  String get deuterocanonApocrypha => 'Deuterocanon / Apocrif';

  @override
  String footnoteTitle(Object caller) {
    return 'Footnote $caller';
  }

  @override
  String get closeFootnote => 'Close footnote';

  @override
  String couldNotOpenFootnote(Object reference) {
    return 'Could not open footnote $reference.';
  }

  @override
  String get chapterFootnotesTitle => 'Footnotes';

  @override
  String openScriptureReference(Object reference) {
    return 'Open $reference';
  }

  @override
  String get couldNotLoadFootnotes =>
      'Could not load footnotes. Please try again.';
}
