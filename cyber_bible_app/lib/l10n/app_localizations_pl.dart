// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Polish (`pl`).
class AppLocalizationsPl extends AppLocalizations {
  AppLocalizationsPl([String locale = 'pl']) : super(locale);

  @override
  String get settingsTitle => 'Ustawienia';

  @override
  String get languageSection => 'Język';

  @override
  String get useSystemLanguage => 'Używaj języka systemowego';

  @override
  String get useSystemLanguageSubtitle => 'Domyślnie używaj języka urządzenia.';

  @override
  String get currentLanguage => 'Bieżący język';

  @override
  String get appLanguage => 'Język aplikacji';

  @override
  String get chooseLanguage => 'Wybierz język';

  @override
  String get theme => 'Motyw';

  @override
  String get appearance => 'Wygląd';

  @override
  String get textSection => 'Tekst';

  @override
  String get readingFormatSection => 'Format czytania';

  @override
  String get displaySection => 'Wyświetlanie';

  @override
  String get verseNumbers => 'Numery wersetów';

  @override
  String get sectionHeadings => 'Nagłówki sekcji';

  @override
  String get redLetterText => 'Czerwony tekst';

  @override
  String get selectABook => 'Wybierz księgę';

  @override
  String get traditionalOrder => 'Kolejność tradycyjna';

  @override
  String get alphabeticalOrder => 'Kolejność alfabetyczna';

  @override
  String get bookmarks => 'Zakładki';

  @override
  String get retry => 'Ponów';

  @override
  String get chooseTheme => 'Wybierz motyw';

  @override
  String get customisableThemes => 'Motywy z możliwością dostosowania';

  @override
  String get customisableThemesSubtitle =>
      'Dotknij karty, aby wybrać kolor akcentu. „Classic White” obsługuje także tryby Jasny, Ciemny i Systemowy.';

  @override
  String get setThemes => 'USTAW MOTYWY';

  @override
  String get setThemesSubtitle =>
      'Stałe, ręcznie przygotowane palety. Nie wymagają dostosowania — dotknij, aby zastosować.';

  @override
  String get deleteBookmarkQuestion => 'Usunąć zakładkę?';

  @override
  String get cancel => 'Anuluj';

  @override
  String get delete => 'Usuń';

  @override
  String get bookmarkSaved => 'Zakładka została zapisana';

  @override
  String get couldNotDeleteBookmark => 'Nie udało się usunąć zakładki.';

  @override
  String couldNotNavigate(Object reference) {
    return 'Nie można przejść do $reference.';
  }

  @override
  String get pageNotFound => 'Nie znaleziono strony';

  @override
  String noRouteDefined(Object routeName) {
    return 'Nie zdefiniowano trasy dla „$routeName”';
  }

  @override
  String get english => 'Angielski';

  @override
  String get spanish => 'Español';

  @override
  String get systemDefault => 'Domyślne ustawienie systemowe';

  @override
  String get languageStatusEnglish => 'Aktywny język zapasowy: angielski';

  @override
  String get languageStatusSystem => 'Używany jest język systemowy';

  @override
  String languageStatusSelected(Object languageName) {
    return 'Wybrany język: $languageName';
  }

  @override
  String get themeLabel => 'Motyw';

  @override
  String get notFoundTitle => 'Nie znaleziono strony';

  @override
  String get loadingCyberBible => 'Ładowanie Cyber Bible…';

  @override
  String get couldNotOpenDatabase =>
      'Nie można otworzyć bazy Biblii. Spróbuj ponownie.';

  @override
  String get homeTagline =>
      'Bezpłatna aplikacja open source do studiowania Biblii';

  @override
  String get readTheBible => 'Czytaj Biblię';

  @override
  String get settingsTooltip => 'Ustawienia';

  @override
  String get themeChoose => 'Wybierz motyw';

  @override
  String get customThemes => 'Motywy niestandardowe';

  @override
  String get customThemesSubtitle =>
      'Dotknij karty, aby wybrać kolor akcentu. „Classic White” obsługuje także tryby Jasny, Ciemny i Systemowy.';

  @override
  String get setThemesLabel => 'USTAW MOTYWY';

  @override
  String get deleteBookmarkDialog => 'Usunąć zakładkę?';

  @override
  String removeBookmarkMessage(Object details, Object reference) {
    return 'Usunąć „$reference”$details?\n\nTej operacji nie można cofnąć.';
  }

  @override
  String get couldNotLoadBookmarks =>
      'Nie udało się wczytać zakładek. Spróbuj ponownie.';

  @override
  String get bookmarkSavedMessage => 'Zakładka została zapisana';

  @override
  String get couldNotSaveBookmark => 'Nie udało się zapisać zakładki.';

  @override
  String get noBookmarksMatchFilter =>
      'Żadna zakładka nie pasuje do tego filtra.';

  @override
  String get clearFilter => 'Wyczyść filtr';

  @override
  String get traditionalOrderLabel => 'Kolejność tradycyjna';

  @override
  String get alphabeticalOrderLabel => 'Kolejność alfabetyczna';

  @override
  String get bookmarksTabLabel => 'Zakładki';

  @override
  String get fullChapter => 'Cały rozdział';

  @override
  String get addBookmark => 'Dodaj zakładkę';

  @override
  String get selectVerse => 'Wybierz werset';

  @override
  String get labelOptional => 'Etykieta (opcjonalnie)';

  @override
  String get notesOptional => 'Notatki (opcjonalnie)';

  @override
  String get save => 'Zapisz';

  @override
  String get goToVerse => 'Przejdź do wersetu';

  @override
  String verseTitle(Object verse) {
    return 'Werset $verse';
  }

  @override
  String chapterTitle(Object chapter) {
    return 'Rozdział $chapter';
  }

  @override
  String get switchToFullChapter => 'Przełącz na zakładkę całego rozdziału';

  @override
  String get bookmarkSheetCancel => 'Anuluj i zamknij panel zakładek';

  @override
  String get pickCustomAccent => 'Wybierz własny kolor akcentu';

  @override
  String get apply => 'Zastosuj';

  @override
  String get custom => 'Niestandardowy';

  @override
  String get brightnessSystem => 'Systemowy';

  @override
  String get brightnessLight => 'Jasny';

  @override
  String get brightnessDark => 'Ciemny';

  @override
  String get selectBook => 'Wybierz księgę';

  @override
  String get bookmarkFilterAll => 'Wszystkie';

  @override
  String get bookmarkFilterUnlabeled => 'Bez etykiety';

  @override
  String get bookmarkSortRecent => 'Od najnowszych';

  @override
  String get bookmarkSortCanonical => 'Kolejność kanoniczna';

  @override
  String get chapterRetry => 'Ponów';

  @override
  String get fontSize => 'Rozmiar czcionki';

  @override
  String fontSizePixels(Object size) {
    return '$size px';
  }

  @override
  String get fontSizeSlider => 'Suwak rozmiaru czcionki';

  @override
  String get fontSizeSliderHint => 'Przesuń, aby ustawić rozmiar od 12 do 28';

  @override
  String get fontPreview =>
      '„Na początku Bóg stworzył niebo i ziemię”. — Rdz 1,1';

  @override
  String get showVerseNumbersSubtitle =>
      'Pokazuj numery wersetów jako indeksy górne na ekranie czytania.';

  @override
  String get showSectionHeadingsSubtitle =>
      'Pokazuj nagłówki sekcji i Psalmów między fragmentami.';

  @override
  String get wordsOfChristSubtitle =>
      'Pokazuj słowa Jezusa na czerwono. Wyłącz, aby używać jednego koloru tekstu.';

  @override
  String get verseFormatTitle => 'Format wersetów';

  @override
  String get verseFormatSubtitle =>
      'Wybierz sposób układu tekstu Pisma Świętego.';

  @override
  String get paragraphMode => 'Akapit';

  @override
  String get verseListMode => 'Lista wersetów';

  @override
  String get paragraphModeTooltip => 'Tryb akapitów';

  @override
  String get verseListModeTooltip => 'Tryb listy wersetów';

  @override
  String get paragraphModeDescription =>
      'Tekst płynie ciągle z wciętymi akapitami, jak w drukowanej Biblii.';

  @override
  String get verseListModeDescription =>
      'Każdy akapit Pisma Świętego zaczyna się w osobnym wierszu, co ułatwia rozpoznawanie grup wersetów.';

  @override
  String get deleteBookmarkTooltip => 'Usuń zakładkę';

  @override
  String deleteBookmarkSemantics(Object reference) {
    return 'Usuń zakładkę $reference';
  }

  @override
  String sortBookmarksTooltip(Object sortOrder) {
    return 'Sortuj: $sortOrder';
  }

  @override
  String get noBookmarksYet => 'Nie ma jeszcze żadnych zakładek.';

  @override
  String get noBookmarksYetHint =>
      'Podczas czytania dotknij ikony zakładki, aby zapisać miejsce.';

  @override
  String bookmarkReferenceNavigationError(Object reference) {
    return 'Nie można przejść do $reference.';
  }

  @override
  String themeCardSemantics(Object description, Object name, Object selected) {
    return 'Motyw $name$selected. $description';
  }

  @override
  String get selectedThemeSuffix => ', obecnie wybrany';

  @override
  String get customisableAccentDescription => 'Dostosowywalny kolor akcentu.';

  @override
  String get fixedPaletteDescription => 'Stała paleta.';

  @override
  String accentColourTitle(Object themeName) {
    return 'Kolor akcentu — $themeName';
  }

  @override
  String get brightnessMode => 'TRYB JASNOŚCI';

  @override
  String get lightMode => 'Tryb jasny';

  @override
  String get followSystemMode => 'Zgodnie z systemem';

  @override
  String get darkMode => 'Tryb ciemny';

  @override
  String get customColourPicker => 'Wybór własnego koloru';

  @override
  String get customColourTooltip => 'Kolor niestandardowy…';

  @override
  String get couldNotLoadBooks =>
      'Nie udało się wczytać listy ksiąg. Spróbuj ponownie.';

  @override
  String chapterLabel(Object chapter) {
    return 'Rozdział $chapter';
  }

  @override
  String get traditionalOrderBooks => 'Księgi w tradycyjnej kolejności';

  @override
  String get alphabeticalOrderBooks => 'Księgi w kolejności alfabetycznej';

  @override
  String get home => 'Strona główna';

  @override
  String get addBookmarkTooltip => 'Dodaj zakładkę';

  @override
  String get chooseBookChapter => 'Wybierz księgę i rozdział';

  @override
  String get chooseVerse => 'Wybierz werset';

  @override
  String get bookChapterQuickNavigation =>
      'Szybka nawigacja do księgi i rozdziału';

  @override
  String get verseQuickNavigation => 'Szybka nawigacja do wersetu';

  @override
  String get backToBooks => 'Wróć do ksiąg';

  @override
  String get selectBookTitle => 'Wybierz księgę';

  @override
  String selectChapterTitle(Object bookName) {
    return 'Wybierz rozdział ($bookName)';
  }

  @override
  String chapterSelectionLabel(Object chapter) {
    return 'Rozdział $chapter';
  }

  @override
  String verseSelectionLabel(Object verse) {
    return 'Werset $verse';
  }

  @override
  String fullChapterReference(Object bookName, Object chapter) {
    return 'Cały rozdział: $bookName $chapter';
  }

  @override
  String get memorizeHint => 'Zapamiętaj';

  @override
  String get addNoteHint => 'Dodaj notatkę...';

  @override
  String get languageSearchHint => 'Szukaj języków';

  @override
  String get languageModuleInstalled => 'Zainstalowany';

  @override
  String get languageModulePending => 'Oczekuje na tłumaczenie maszynowe';

  @override
  String get languageNoMatches => 'Żaden język nie pasuje do wyszukiwania.';

  @override
  String get languageCatalogDescription =>
      'Zainstalowane języki działają offline. Pozostałe języki zostaną później dodane jako moduły tłumaczenia maszynowego.';

  @override
  String get saveBookmarkSemantics => 'Zapisz zakładkę';

  @override
  String get couldNotLoadChapter =>
      'Nie udało się wczytać rozdziału. Spróbuj ponownie.';

  @override
  String get couldNotLoadChapters =>
      'Nie udało się wczytać rozdziałów. Spróbuj ponownie.';

  @override
  String verseWithText(Object text, Object verse) {
    return 'Werset $verse: $text';
  }

  @override
  String accentSwatchSemantics(Object name, Object selected) {
    return 'Próbka koloru akcentu $name$selected';
  }

  @override
  String get oldTestament => 'Stary Testament';

  @override
  String get newTestament => 'Nowy Testament';

  @override
  String get deuterocanonApocrypha => 'Deuterokanoniczne / Apokryfy';
}
