// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Ligurian (`lij`).
class AppLocalizationsLij extends AppLocalizations {
  AppLocalizationsLij([String locale = 'lij']) : super(locale);

  @override
  String get settingsTitle => 'Impostaçioin';

  @override
  String get languageSection => 'Lengua';

  @override
  String get useSystemLanguage => 'Utilizzâ o lenguaggio do scistema';

  @override
  String get useSystemLanguageSubtitle =>
      'Corresponde a-a lengua do dispoxitivo pe impostaçion.';

  @override
  String get currentLanguage => 'Lengua corrente';

  @override
  String get appLanguage => 'Lenguaggio de l\'app';

  @override
  String get chooseLanguage => 'Scegli a lengua';

  @override
  String get theme => 'Tema';

  @override
  String get appearance => 'Apparensa';

  @override
  String get textSection => 'Testo';

  @override
  String get readingFormatSection => 'Formato de lettua';

  @override
  String get displaySection => 'Visualizzaçion';

  @override
  String get verseNumbers => 'Numeri di versci';

  @override
  String get sectionHeadings => 'Intestaçioin de seçioin';

  @override
  String get redLetterText => 'Testo à lettia rossa';

  @override
  String get selectABook => 'Seleçionâ un Libbro .';

  @override
  String get traditionalOrder => 'Ordine tradiçionâ';

  @override
  String get alphabeticalOrder => 'Ordine alfabetico';

  @override
  String get bookmarks => 'Segnalibri';

  @override
  String get retry => 'Provâ torna';

  @override
  String get chooseTheme => 'Scegli Tema';

  @override
  String get customisableThemes => 'Temi personalizzabili';

  @override
  String get customisableThemesSubtitle =>
      'Tocca unna scheda pe çerne un cô d\'açento. \"Gianco clascico\" o sostëgne ascì e modalitæ Luxe, Scuo e Scistema.';

  @override
  String get setThemes => 'IMPOSTÂ DI TEMI';

  @override
  String get setThemesSubtitle =>
      'Palette fisse, fæte à man. No gh\'é beseugno de personalizzaçion – basta toccâ pe applicâlo.';

  @override
  String get deleteBookmarkQuestion => 'Cancellâ o segnalibro?';

  @override
  String get cancel => 'Annulla';

  @override
  String get delete => 'Cancellâ';

  @override
  String get bookmarkSaved => 'Segnalibro sarvou';

  @override
  String get couldNotDeleteBookmark =>
      'No l\'é stæto poscibile cancellâ o segnalibro.';

  @override
  String couldNotNavigate(Object reference) {
    return 'No l\'é stæto poscibile navigâ pe $reference.';
  }

  @override
  String get pageNotFound => 'Pagina no attrovâ';

  @override
  String noRouteDefined(Object routeName) {
    return 'Nisciun percorso definio pe «$routeName»';
  }

  @override
  String get english => 'Ingleise';

  @override
  String get spanish => 'Spagnòllo';

  @override
  String get systemDefault => 'Predefinio do scistema';

  @override
  String get languageStatusEnglish => 'Fallback in ingleise attivo';

  @override
  String get languageStatusSystem => 'Pe mezo do lenguaggio de scistema';

  @override
  String languageStatusSelected(Object languageName) {
    return 'Lengua seleçionâ: $languageName';
  }

  @override
  String get themeLabel => 'Tema';

  @override
  String get notFoundTitle => 'Pagina no attrovâ';

  @override
  String get loadingCyberBible => 'Carregando a Bibbia Cyber...';

  @override
  String get couldNotOpenDatabase =>
      'No l\'é stæto poscibile arvî a banca de dæti da Bibbia. Pe favô, provâ torna.';

  @override
  String get homeTagline =>
      'Unn\'app gratuita e à codiçe averta pe-o studio da Bibbia';

  @override
  String get readTheBible => 'Leze a Bibbia .';

  @override
  String get settingsTooltip => 'Impostaçioin';

  @override
  String get themeChoose => 'Scegli Tema';

  @override
  String get customThemes => 'Temi personalizzabili';

  @override
  String get customThemesSubtitle =>
      'Tocca unna scheda pe çerne un cô d\'açento. \"Gianco clascico\" o sostëgne ascì e modalitæ Luxe, Scuo e Scistema.';

  @override
  String get setThemesLabel => 'IMPOSTÂ DI TEMI';

  @override
  String get deleteBookmarkDialog => 'Cancellâ o segnalibro?';

  @override
  String removeBookmarkMessage(Object details, Object reference) {
    return 'Remove «$reference»$details?\n\nSto fæto o no peu ëse desfæto.';
  }

  @override
  String get couldNotLoadBookmarks =>
      'No l\'é stæto poscibile carregâ i segnalibri. Pe favô, provâ torna.';

  @override
  String get bookmarkSavedMessage => 'Segnalibro sarvou';

  @override
  String get couldNotSaveBookmark =>
      'No l\'é stæto poscibile sarvâ o segnalibro.';

  @override
  String get noBookmarksMatchFilter =>
      'Nisciun segnalibro o corresponde à sto filtro.';

  @override
  String get clearFilter => 'Cancellâ o filtro';

  @override
  String get traditionalOrderLabel => 'Ordine tradiçionâ';

  @override
  String get alphabeticalOrderLabel => 'Ordine alfabetico';

  @override
  String get bookmarksTabLabel => 'Segnalibri';

  @override
  String get fullChapter => 'Capitolo completo';

  @override
  String get addBookmark => 'Azzonta segnalibro';

  @override
  String get selectVerse => 'Seleçionâ Verso .';

  @override
  String get labelOptional => 'Etichetta (facoltäia)';

  @override
  String get notesOptional => 'Notte (facoltäie)';

  @override
  String get save => 'Salvâ';

  @override
  String get goToVerse => 'Vai a-o Verso 1 .';

  @override
  String verseTitle(Object verse) {
    return 'Verso $verse';
  }

  @override
  String chapterTitle(Object chapter) {
    return 'Capitolo $chapter';
  }

  @override
  String get switchToFullChapter => 'Passâ a-o segnalibro do capitolo intrego';

  @override
  String get bookmarkSheetCancel => 'Annulla, serrâ o feuggio de segnalibro';

  @override
  String get pickCustomAccent => 'Sceglie un açento personalizzou';

  @override
  String get apply => 'Applica';

  @override
  String get custom => 'Personalizzou';

  @override
  String get brightnessSystem => 'Scistema';

  @override
  String get brightnessLight => 'Luxe';

  @override
  String get brightnessDark => 'Scuo';

  @override
  String get selectBook => 'Seleçionâ un Libbro .';

  @override
  String get bookmarkFilterAll => 'Tutti';

  @override
  String get bookmarkFilterUnlabeled => 'Sensa marcâ';

  @override
  String get bookmarkSortRecent => 'Primma reçente';

  @override
  String get bookmarkSortCanonical => 'Ordine canònico';

  @override
  String get chapterRetry => 'Provâ torna';

  @override
  String get fontSize => 'Dimenscion do font';

  @override
  String fontSizePixels(Object size) {
    return '$size px';
  }

  @override
  String get fontSizeSlider => 'Cursô de dimenscion do font';

  @override
  String get fontSizeSliderHint => 'Passâ pe regolâ da-o 12 a-o 28';

  @override
  String get fontPreview =>
      '\"A-o comenso o Segnô o l\'à creou o çê e a tæra.\" — Gen 1:1.';

  @override
  String get showVerseNumbersSubtitle =>
      'Mostra i sorvescriti di numeri de versci inta scherma de lettua.';

  @override
  String get showSectionHeadingsSubtitle =>
      'Mostra e titoli de seçioin e di Salmi tra i passaggi.';

  @override
  String get wordsOfChristSubtitle =>
      'Mostra e paròlle de Gexù in rosso. Disattiva pe un solo cô de testo.';

  @override
  String get verseFormatTitle => 'Formato di versci';

  @override
  String get verseFormatSubtitle =>
      'Scegli comme o testo de scrittua o l’é disposto.';

  @override
  String get paragraphMode => 'Paragrafo';

  @override
  String get verseListMode => 'Lista di versci';

  @override
  String get paragraphModeTooltip => 'Modo paragrafo';

  @override
  String get verseListModeTooltip => 'Modo lista di versci';

  @override
  String get paragraphModeDescription =>
      'O testo o strixella delongo con di paragrafi indentræ, comme unna Bibbia stampâ.';

  @override
  String get verseListModeDescription =>
      'Ògni paragrafo de scrittua o comensa co-a seu pròpia riga, ch’o rende façile da individuâ i gruppi de versci.';

  @override
  String get deleteBookmarkTooltip => 'Cancellâ segnalibro';

  @override
  String deleteBookmarkSemantics(Object reference) {
    return 'Cancellâ o segnalibro $reference';
  }

  @override
  String sortBookmarksTooltip(Object sortOrder) {
    return 'Ordina: $sortOrder';
  }

  @override
  String get noBookmarksYet => 'Ancon nisciun segnalibro.';

  @override
  String get noBookmarksYetHint =>
      'Tocca l\'icoña do segnalibro tanto che leze pe sarvâ unna poxiçion.';

  @override
  String bookmarkReferenceNavigationError(Object reference) {
    return 'No l\'é stæto poscibile navigâ pe $reference.';
  }

  @override
  String themeCardSemantics(Object description, Object name, Object selected) {
    return '$name theme$selected. $description';
  }

  @override
  String get selectedThemeSuffix => ', attualmente seleçionou .';

  @override
  String get customisableAccentDescription =>
      'Colore d\'açento personalizzabile.';

  @override
  String get fixedPaletteDescription => 'Paletta fissa.';

  @override
  String accentColourTitle(Object themeName) {
    return 'Colore de l\'açento — $themeName';
  }

  @override
  String get brightnessMode => 'MODALITÆ LUMINOSO';

  @override
  String get lightMode => 'Modo luxe';

  @override
  String get followSystemMode => 'Segui a modalitæ scistema';

  @override
  String get darkMode => 'Modo scuo';

  @override
  String get customColourPicker => 'Seleçionatô de cô personalizzou';

  @override
  String get customColourTooltip => 'Colore personalizzou...';

  @override
  String get couldNotLoadBooks =>
      'No l\'é stæto poscibile carregâ a lista di libbri. Pe favô, provâ torna.';

  @override
  String chapterLabel(Object chapter) {
    return 'Capitolo $chapter';
  }

  @override
  String get traditionalOrderBooks => 'Libbri d\'ordine tradiçionæ';

  @override
  String get alphabeticalOrderBooks => 'Libbri d\'ordine alfabetico';

  @override
  String get home => 'Casa';

  @override
  String get addBookmarkTooltip => 'Azzonta segnalibro';

  @override
  String get chooseBookChapter => 'Sceglie o libbro e o capitolo .';

  @override
  String get chooseVerse => 'Sceglie o verscio .';

  @override
  String get bookChapterQuickNavigation =>
      'Navigaçion spedia pe-i libbri e i capitoli';

  @override
  String get verseQuickNavigation => 'Navigaçion spedia di versci';

  @override
  String get backToBooks => 'Torna a-i libbri';

  @override
  String get selectBookTitle => 'Seleçionâ Libro .';

  @override
  String selectChapterTitle(Object bookName) {
    return 'Seleçionâ o Capitolo ($bookName)';
  }

  @override
  String chapterSelectionLabel(Object chapter) {
    return 'Capitolo $chapter';
  }

  @override
  String verseSelectionLabel(Object verse) {
    return 'Verso $verse';
  }

  @override
  String fullChapterReference(Object bookName, Object chapter) {
    return 'Capitolo completo: $bookName $chapter';
  }

  @override
  String get memorizeHint => 'Memorizzâ';

  @override
  String get addNoteHint => 'Azzonta unna nòtta...';

  @override
  String get languageSearchHint => 'Reçerca e lengue';

  @override
  String get languageModuleInstalled => 'Installou';

  @override
  String get languageModulePending => 'Traduçion automatica in attesa';

  @override
  String get languageNoMatches =>
      'Nisciuña lengua a corresponde a-a vòstra reçerca.';

  @override
  String get languageCatalogDescription =>
      'E lengue marcæ comme installæ fonçioñan feua linia. De atre lengue saian azzonto comme mòdoli traduti à machina.';

  @override
  String get saveBookmarkSemantics => 'Salvâ segnalibro';

  @override
  String get couldNotLoadChapter =>
      'No l\'é stæto poscibile carregâ o capitolo. Pe favô, provâ torna.';

  @override
  String get couldNotLoadChapters =>
      'No l\'é stæto poscibile carregâ i capitoli. Pe favô, provâ torna.';

  @override
  String verseWithText(Object text, Object verse) {
    return 'Verso $verse: $text';
  }

  @override
  String accentSwatchSemantics(Object name, Object selected) {
    return '$name cô d\'açento$selected';
  }

  @override
  String get oldTestament => 'Vegio Testamento';

  @override
  String get newTestament => 'Neuvo Testamento';

  @override
  String get deuterocanonApocrypha => 'Deuterocanone / Apòcrifi';
}
