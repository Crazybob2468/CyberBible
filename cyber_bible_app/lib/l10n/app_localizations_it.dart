// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Italian (`it`).
class AppLocalizationsIt extends AppLocalizations {
  AppLocalizationsIt([String locale = 'it']) : super(locale);

  @override
  String get settingsTitle => 'Impostazioni';

  @override
  String get languageSection => 'Lingua';

  @override
  String get useSystemLanguage => 'Usa la lingua del sistema';

  @override
  String get useSystemLanguageSubtitle =>
      'Usa la lingua del dispositivo per impostazione predefinita.';

  @override
  String get currentLanguage => 'Lingua attuale';

  @override
  String get appLanguage => 'Lingua dell\'app';

  @override
  String get chooseLanguage => 'Scegli lingua';

  @override
  String get theme => 'Tema';

  @override
  String get appearance => 'Aspetto';

  @override
  String get textSection => 'Testo';

  @override
  String get readingFormatSection => 'Formato di lettura';

  @override
  String get displaySection => 'Visualizzazione';

  @override
  String get verseNumbers => 'Numeri dei versetti';

  @override
  String get sectionHeadings => 'Titoli delle sezioni';

  @override
  String get redLetterText => 'Testo in rosso';

  @override
  String get selectABook => 'Seleziona un libro';

  @override
  String get traditionalOrder => 'Ordine tradizionale';

  @override
  String get alphabeticalOrder => 'Ordine alfabetico';

  @override
  String get bookmarks => 'Segnalibri';

  @override
  String get retry => 'Riprova';

  @override
  String get chooseTheme => 'Scegli tema';

  @override
  String get customisableThemes => 'TEMI PERSONALIZZABILI';

  @override
  String get customisableThemesSubtitle =>
      'Tocca una scheda per scegliere un colore d\'accento. Classic White supporta anche le modalità Chiara, Scura e Sistema.';

  @override
  String get setThemes => 'TEMI FISSI';

  @override
  String get setThemesSubtitle =>
      'Palette fisse e realizzate a mano. Nessuna personalizzazione necessaria: tocca per applicare.';

  @override
  String get deleteBookmarkQuestion => 'Eliminare il segnalibro?';

  @override
  String get cancel => 'Annulla';

  @override
  String get delete => 'Elimina';

  @override
  String get bookmarkSaved => 'Segnalibro salvato';

  @override
  String get couldNotDeleteBookmark => 'Impossibile eliminare il segnalibro.';

  @override
  String couldNotNavigate(Object reference) {
    return 'Impossibile raggiungere $reference.';
  }

  @override
  String get pageNotFound => 'Pagina non trovata';

  @override
  String noRouteDefined(Object routeName) {
    return 'Nessun percorso definito per \"$routeName\"';
  }

  @override
  String get english => 'Inglese';

  @override
  String get spanish => 'Spagnolo';

  @override
  String get systemDefault => 'Predefinito del sistema';

  @override
  String get languageStatusEnglish => 'Fallback inglese attivo';

  @override
  String get languageStatusSystem => 'Lingua del sistema in uso';

  @override
  String languageStatusSelected(Object languageName) {
    return 'Lingua selezionata: $languageName';
  }

  @override
  String get themeLabel => 'Tema';

  @override
  String get notFoundTitle => 'Pagina non trovata';

  @override
  String get loadingCyberBible => 'Caricamento di Cyber Bible...';

  @override
  String get couldNotOpenDatabase =>
      'Impossibile aprire il database della Bibbia. Riprova.';

  @override
  String get homeTagline =>
      'Un\'app gratuita e open source per lo studio della Bibbia';

  @override
  String get readTheBible => 'Leggi la Bibbia';

  @override
  String get settingsTooltip => 'Impostazioni';

  @override
  String get themeChoose => 'Scegli tema';

  @override
  String get customThemes => 'Temi personalizzabili';

  @override
  String get customThemesSubtitle =>
      'Tocca una scheda per scegliere un colore d\'accento. Classic White supporta anche le modalità Chiara, Scura e Sistema.';

  @override
  String get setThemesLabel => 'TEMI FISSI';

  @override
  String get deleteBookmarkDialog => 'Eliminare il segnalibro?';

  @override
  String removeBookmarkMessage(Object details, Object reference) {
    return 'Rimuovere \"$reference\"$details?\n\nQuesta azione non può essere annullata.';
  }

  @override
  String get couldNotLoadBookmarks =>
      'Impossibile caricare i segnalibri. Riprova.';

  @override
  String get bookmarkSavedMessage => 'Segnalibro salvato';

  @override
  String get couldNotSaveBookmark => 'Impossibile salvare il segnalibro.';

  @override
  String get noBookmarksMatchFilter =>
      'Nessun segnalibro corrisponde a questo filtro.';

  @override
  String get clearFilter => 'Cancella filtro';

  @override
  String get traditionalOrderLabel => 'Ordine tradizionale';

  @override
  String get alphabeticalOrderLabel => 'Ordine alfabetico';

  @override
  String get bookmarksTabLabel => 'Segnalibri';

  @override
  String get fullChapter => 'Capitolo completo';

  @override
  String get addBookmark => 'Aggiungi segnalibro';

  @override
  String get selectVerse => 'Seleziona versetto';

  @override
  String get labelOptional => 'Etichetta (facoltativa)';

  @override
  String get notesOptional => 'Note (facoltative)';

  @override
  String get save => 'Salva';

  @override
  String get goToVerse => 'Vai al versetto';

  @override
  String verseTitle(Object verse) {
    return 'Versetto $verse';
  }

  @override
  String chapterTitle(Object chapter) {
    return 'Capitolo $chapter';
  }

  @override
  String get switchToFullChapter => 'Passa al segnalibro del capitolo completo';

  @override
  String get bookmarkSheetCancel => 'Annulla, chiudi il pannello segnalibro';

  @override
  String get pickCustomAccent => 'Scegli un accento personalizzato';

  @override
  String get apply => 'Applica';

  @override
  String get custom => 'Personalizzato';

  @override
  String get brightnessSystem => 'Sistema';

  @override
  String get brightnessLight => 'Chiaro';

  @override
  String get brightnessDark => 'Scuro';

  @override
  String get selectBook => 'Seleziona un libro';

  @override
  String get bookmarkFilterAll => 'Tutti';

  @override
  String get bookmarkFilterUnlabeled => 'Senza etichetta';

  @override
  String get bookmarkSortRecent => 'Più recenti prima';

  @override
  String get bookmarkSortCanonical => 'Ordine canonico';

  @override
  String get chapterRetry => 'Riprova';

  @override
  String get fontSize => 'Dimensione carattere';

  @override
  String fontSizePixels(Object size) {
    return '$size px';
  }

  @override
  String get fontSizeSlider => 'Cursore dimensione carattere';

  @override
  String get fontSizeSliderHint => 'Scorri per regolare da 12 a 28';

  @override
  String get fontPreview =>
      '\"In principio Dio creò i cieli e la terra.\" — Gen 1:1';

  @override
  String get showVerseNumbersSubtitle =>
      'Mostra i numeri dei versetti nella schermata di lettura.';

  @override
  String get showSectionHeadingsSubtitle =>
      'Mostra i titoli delle sezioni e dei Salmi tra i brani.';

  @override
  String get wordsOfChristSubtitle =>
      'Mostra in rosso le parole di Gesù. Disattiva per un unico colore del testo.';

  @override
  String get verseFormatTitle => 'Formato dei versetti';

  @override
  String get verseFormatSubtitle =>
      'Scegli come disporre il testo delle Scritture.';

  @override
  String get paragraphMode => 'Paragrafo';

  @override
  String get verseListMode => 'Elenco versetti';

  @override
  String get paragraphModeTooltip => 'Modalità paragrafo';

  @override
  String get verseListModeTooltip => 'Modalità elenco versetti';

  @override
  String get paragraphModeDescription =>
      'Il testo scorre continuamente in paragrafi rientrati, come in una Bibbia stampata.';

  @override
  String get verseListModeDescription =>
      'Ogni paragrafo scritturale inizia su una nuova riga, rendendo facili da individuare i gruppi di versetti.';

  @override
  String get deleteBookmarkTooltip => 'Elimina segnalibro';

  @override
  String deleteBookmarkSemantics(Object reference) {
    return 'Elimina segnalibro $reference';
  }

  @override
  String sortBookmarksTooltip(Object sortOrder) {
    return 'Ordina: $sortOrder';
  }

  @override
  String get noBookmarksYet => 'Nessun segnalibro.';

  @override
  String get noBookmarksYetHint =>
      'Tocca l\'icona del segnalibro durante la lettura per salvare una posizione.';

  @override
  String bookmarkReferenceNavigationError(Object reference) {
    return 'Impossibile raggiungere $reference.';
  }

  @override
  String themeCardSemantics(Object description, Object name, Object selected) {
    return 'Tema $name$selected. $description';
  }

  @override
  String get selectedThemeSuffix => ', attualmente selezionato';

  @override
  String get customisableAccentDescription =>
      'Colore d\'accento personalizzabile.';

  @override
  String get fixedPaletteDescription => 'Palette fissa.';

  @override
  String accentColourTitle(Object themeName) {
    return 'Colore d\'accento — $themeName';
  }

  @override
  String get brightnessMode => 'MODALITÀ LUMINOSITÀ';

  @override
  String get lightMode => 'Modalità chiara';

  @override
  String get followSystemMode => 'Segui modalità sistema';

  @override
  String get darkMode => 'Modalità scura';

  @override
  String get customColourPicker => 'Selettore colore personalizzato';

  @override
  String get customColourTooltip => 'Colore personalizzato…';

  @override
  String get couldNotLoadBooks =>
      'Impossibile caricare l\'elenco dei libri. Riprova.';

  @override
  String chapterLabel(Object chapter) {
    return 'Capitolo $chapter';
  }

  @override
  String get traditionalOrderBooks => 'Libri in ordine tradizionale';

  @override
  String get alphabeticalOrderBooks => 'Libri in ordine alfabetico';

  @override
  String get home => 'Home';

  @override
  String get addBookmarkTooltip => 'Aggiungi segnalibro';

  @override
  String get chooseBookChapter => 'Scegli libro e capitolo';

  @override
  String get chooseVerse => 'Scegli versetto';

  @override
  String get bookChapterQuickNavigation =>
      'Navigazione rapida di libro e capitolo';

  @override
  String get verseQuickNavigation => 'Navigazione rapida dei versetti';

  @override
  String get backToBooks => 'Torna ai libri';

  @override
  String get selectBookTitle => 'Seleziona libro';

  @override
  String selectChapterTitle(Object bookName) {
    return 'Seleziona capitolo ($bookName)';
  }

  @override
  String chapterSelectionLabel(Object chapter) {
    return 'Capitolo $chapter';
  }

  @override
  String verseSelectionLabel(Object verse) {
    return 'Versetto $verse';
  }

  @override
  String fullChapterReference(Object bookName, Object chapter) {
    return 'Capitolo completo: $bookName $chapter';
  }

  @override
  String get memorizeHint => 'Memorizza';

  @override
  String get addNoteHint => 'Aggiungi una nota...';

  @override
  String get languageSearchHint => 'Cerca lingue';

  @override
  String get languageModuleInstalled => 'Installato';

  @override
  String get languageModulePending => 'Traduzione automatica in attesa';

  @override
  String get languageNoMatches => 'Nessuna lingua corrisponde alla ricerca.';

  @override
  String get languageCatalogDescription =>
      'Le lingue contrassegnate come installate funzionano offline. Le altre saranno aggiunte come moduli tradotti automaticamente.';

  @override
  String get saveBookmarkSemantics => 'Salva segnalibro';

  @override
  String get couldNotLoadChapter =>
      'Impossibile caricare il capitolo. Riprova.';

  @override
  String get couldNotLoadChapters =>
      'Impossibile caricare i capitoli. Riprova.';

  @override
  String verseWithText(Object text, Object verse) {
    return 'Versetto $verse: $text';
  }

  @override
  String accentSwatchSemantics(Object name, Object selected) {
    return 'Colore d\'accento $name$selected';
  }

  @override
  String get oldTestament => 'Antico Testamento';

  @override
  String get newTestament => 'Nuovo Testamento';

  @override
  String get deuterocanonApocrypha => 'Deuterocanone / Apocrifi';
}
