// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Silesian (`szl`).
class AppLocalizationsSzl extends AppLocalizations {
  AppLocalizationsSzl([String locale = 'szl']) : super(locale);

  @override
  String get settingsTitle => 'Ustawiynia';

  @override
  String get languageSection => 'Język';

  @override
  String get useSystemLanguage => 'Używanie jynzyka';

  @override
  String get useSystemLanguageSubtitle =>
      'Łōnczy sie jynzyk urzyndnika bez default.';

  @override
  String get currentLanguage => 'Ôbecny jynzyk';

  @override
  String get appLanguage => 'Język aplikacyjny';

  @override
  String get chooseLanguage => 'Wybierz jynzyk';

  @override
  String get theme => 'Temat';

  @override
  String get appearance => 'Wyglōndać';

  @override
  String get textSection => 'Tekst';

  @override
  String get readingFormatSection => 'Format czytania';

  @override
  String get displaySection => 'Wyświetlacz';

  @override
  String get verseNumbers => 'Wersje Numery';

  @override
  String get sectionHeadings => 'Strōny, co linkujōm do Kategoryjo';

  @override
  String get redLetterText => 'Tekst czerwōnyj litery';

  @override
  String get selectABook => 'Wybierz ksiōnżkę';

  @override
  String get traditionalOrder => 'Tradycyjny porzōndek';

  @override
  String get alphabeticalOrder => 'Alfabetyczny porzōndek';

  @override
  String get bookmarks => 'Bajtli';

  @override
  String get retry => 'Wrócić sie nazôd';

  @override
  String get chooseTheme => 'Wybierz tema';

  @override
  String get customisableThemes => 'Temat dostosowalny';

  @override
  String get customisableThemesSubtitle =>
      'Wkludnij kartã, coby wybrać barwy akcentu. \"Klasyczny Biały\" tyż wspiyra mody światła, mrocy i systymu.';

  @override
  String get setThemes => 'Zestaw tematyki';

  @override
  String get setThemesSubtitle =>
      'Stabilne, ręcznie wykōnane palety. Niy ma potrzeby dostosowanio ino kliknij, coby sie zastosować.';

  @override
  String get deleteBookmarkQuestion => 'Delektuj znakiy zaciōngniynte?';

  @override
  String get cancel => 'Cancel';

  @override
  String get delete => 'Zdejmij';

  @override
  String get bookmarkSaved => 'Bookmark ôsparzōny';

  @override
  String get couldNotDeleteBookmark => 'Niy idzie usuwać znaku.';

  @override
  String couldNotNavigate(Object reference) {
    return 'Niy idzie nawigać do $reference.';
  }

  @override
  String get pageNotFound => 'Désolé Żŏdny wynik ôdd';

  @override
  String noRouteDefined(Object routeName) {
    return 'Żŏdnego szlaku zdefiniowanego do \"$routeName\"';
  }

  @override
  String get english => 'Anglikŏ';

  @override
  String get spanish => 'Hiszpański';

  @override
  String get systemDefault => 'Systym felerny';

  @override
  String get languageStatusEnglish => 'Anglikŏ aktywna';

  @override
  String get languageStatusSystem => 'Używanie jynzyka';

  @override
  String languageStatusSelected(Object languageName) {
    return 'Tytuł jap. [rōmaji]: $languageName';
  }

  @override
  String get themeLabel => 'Temat';

  @override
  String get notFoundTitle => 'Désolé Żŏdny wynik ôdd';

  @override
  String get loadingCyberBible => 'Ładowanie Biblii cybernetycznyj...';

  @override
  String get couldNotOpenDatabase =>
      'Niy idzie otworzyć bazy danych Biblijnych. Proszê pok3adaæ jeszcze raz.';

  @override
  String get homeTagline =>
      'Bezpłatne i ôtwarty źrōdło Biblijne studiowanie aplikacyje';

  @override
  String get readTheBible => '(cz) Czytanie Biblii';

  @override
  String get settingsTooltip => 'Ustawiynia';

  @override
  String get themeChoose => 'Wybierz tema';

  @override
  String get customThemes => 'Temat dostosowalny';

  @override
  String get customThemesSubtitle =>
      'Wkludnij kartã, coby wybrać barwy akcentu. \"Klasyczny Biały\" tyż wspiyra mody światła, mrocy i systymu.';

  @override
  String get setThemesLabel => 'Zestaw tematyki';

  @override
  String get deleteBookmarkDialog => 'Delektuj znakiy zaciōngniynte?';

  @override
  String removeBookmarkMessage(Object details, Object reference) {
    return 'Wyjmij \"$reference\"$details?\n\nTo niy idzie zlikwidować.';
  }

  @override
  String get couldNotLoadBookmarks =>
      'Niy idzie ładować znakōw. Proszê pok3adaæ jeszcze raz.';

  @override
  String get bookmarkSavedMessage => 'Bookmark ôsparzōny';

  @override
  String get couldNotSaveBookmark => 'Niy idzie zapisać marki.';

  @override
  String get noBookmarksMatchFilter =>
      'Niy ma znakōw, co by pasowały do tego filtra.';

  @override
  String get clearFilter => 'Jasny filtr';

  @override
  String get traditionalOrderLabel => 'Tradycyjny porzōndek';

  @override
  String get alphabeticalOrderLabel => 'Alfabetyczny porzōndek';

  @override
  String get bookmarksTabLabel => 'Bajtli';

  @override
  String get fullChapter => 'Rozdział pełny';

  @override
  String get addBookmark => 'Dodaj znakiy ksiyngi';

  @override
  String get selectVerse => 'Wybierz werset';

  @override
  String get labelOptional => 'Ôbiōr (opcyjny)';

  @override
  String get notesOptional => 'Ôbiōr (opcyjny)';

  @override
  String get save => 'Zachowuj';

  @override
  String get goToVerse => '-Werstań do wersyje';

  @override
  String verseTitle(Object verse) {
    return 'Wersje $verse';
  }

  @override
  String chapterTitle(Object chapter) {
    return 'Rozdzioł $chapter';
  }

  @override
  String get switchToFullChapter => 'Przesun do pełnego rozdziału znakiym';

  @override
  String get bookmarkSheetCancel => 'Cancel, Close Bookmark Sheet';

  @override
  String get pickCustomAccent => 'Z akcentym';

  @override
  String get apply => 'Przikłŏd';

  @override
  String get custom => 'Zwyczajne';

  @override
  String get brightnessSystem => 'Systym';

  @override
  String get brightnessLight => 'Światło';

  @override
  String get brightnessDark => 'Ciymno';

  @override
  String get selectBook => 'Wybierz ksiōnżkę';

  @override
  String get bookmarkFilterAll => 'Wszystko';

  @override
  String get bookmarkFilterUnlabeled => 'Unlabeled';

  @override
  String get bookmarkSortRecent => 'Niydowno piyrwyj';

  @override
  String get bookmarkSortCanonical => 'KanonizacyjoModify';

  @override
  String get chapterRetry => 'Wrócić sie nazôd';

  @override
  String get fontSize => 'Rozmiar fōntu';

  @override
  String fontSizePixels(Object size) {
    return '$size px';
  }

  @override
  String get fontSizeSlider => 'Font size slider';

  @override
  String get fontSizeSliderHint => 'Произношение на dostosować dostosować [pl';

  @override
  String get fontPreview =>
      '\"Na poczōntku Bóg stworzōł niebo i ziymia\". — Gen. 1:1';

  @override
  String get showVerseNumbersSubtitle =>
      'Pokŏż superskrypty numer wiersza na ekranie czytanio.';

  @override
  String get showSectionHeadingsSubtitle =>
      'Pokaż sekcyjo i psalmy miyndzy fragmentami.';

  @override
  String get wordsOfChristSubtitle =>
      'Pokaż słowa Jezusa we czerwōnym. Niy idzie wykluczyć jednego koloru tekstu.';

  @override
  String get verseFormatTitle => 'Format artykułu';

  @override
  String get verseFormatSubtitle => 'Wybierz, jak tekst je ôkryślōny.';

  @override
  String get paragraphMode => 'Paragraf';

  @override
  String get verseListMode => 'Lista wersōw';

  @override
  String get paragraphModeTooltip => 'Mode paragrafu';

  @override
  String get verseListModeTooltip => 'Modele werse-list';

  @override
  String get paragraphModeDescription =>
      'Tekst bez przerwy płynie z indyntywnymi paragrafami, jak drukowana Biblijŏ.';

  @override
  String get verseListModeDescription =>
      'Kożdy paragraf Pisma zaczyna sie ôd swojij linije, czyniōnc grupy wersetōw łacnymi do widzynio.';

  @override
  String get deleteBookmarkTooltip => 'Zdejmij znakiy ôdbiornika';

  @override
  String deleteBookmarkSemantics(Object reference) {
    return 'Delete bookmark $reference';
  }

  @override
  String sortBookmarksTooltip(Object sortOrder) {
    return 'Sort: $sortOrder';
  }

  @override
  String get noBookmarksYet => 'Jeszcze niy ma znakōw.';

  @override
  String get noBookmarksYetHint =>
      'Kliknij na ikōn znakōw, jak czytasz, coby uratować miyjsce.';

  @override
  String bookmarkReferenceNavigationError(Object reference) {
    return 'Niy idzie nawigać do $reference.';
  }

  @override
  String themeCardSemantics(Object description, Object name, Object selected) {
    return '$name tema$selected. $description';
  }

  @override
  String get selectedThemeSuffix => 'Ôbjyrkany ôbjyrk';

  @override
  String get customisableAccentDescription => 'Dostosowany do akcentu.';

  @override
  String get fixedPaletteDescription => 'Stały palet.';

  @override
  String accentColourTitle(Object themeName) {
    return 'Barwy akcentu — $themeName';
  }

  @override
  String get brightnessMode => 'Mody jasności';

  @override
  String get lightMode => 'Mody światła';

  @override
  String get followSystemMode => 'Idź za modelym systymu';

  @override
  String get darkMode => 'Mody mroczne';

  @override
  String get customColourPicker => 'Piker barwy spōsobnyj';

  @override
  String get customColourTooltip => 'Barwy spōsobne...';

  @override
  String get couldNotLoadBooks =>
      'Niy poradzã sie wyforsztelować trefnijszygo listu ksiōnżek. Proszê pok3adaæ jeszcze raz.';

  @override
  String chapterLabel(Object chapter) {
    return 'Rozdzioł $chapter';
  }

  @override
  String get traditionalOrderBooks => 'Tradycyjne porzōndkiModify';

  @override
  String get alphabeticalOrderBooks => 'Alfabetyczny porzōndek';

  @override
  String get home => 'Dōm';

  @override
  String get addBookmarkTooltip => 'Dodaj ksiyngi';

  @override
  String get chooseBookChapter => 'Ksiōnżka i rozdział';

  @override
  String get chooseVerse => 'Wybierz wiersz';

  @override
  String get bookChapterQuickNavigation =>
      'Ksiōnżka i Kapituła Szybkigo Nawigacyje';

  @override
  String get verseQuickNavigation => 'Szybko nawigacyjoModify';

  @override
  String get backToBooks => 'Wrōć do Ksiyngi';

  @override
  String get selectBookTitle => 'Wybierz Ksiōnżka';

  @override
  String selectChapterTitle(Object bookName) {
    return 'Wybierz Kapituł ($bookName)';
  }

  @override
  String chapterSelectionLabel(Object chapter) {
    return 'Wybierz rozdzioł $chapter';
  }

  @override
  String verseSelectionLabel(Object verse) {
    return 'Wersje $verse';
  }

  @override
  String fullChapterReference(Object bookName, Object chapter) {
    return 'Modele: $bookName $chapter';
  }

  @override
  String get memorizeHint => 'Memorize';

  @override
  String get addNoteHint => 'Dodaj notat...';

  @override
  String get languageSearchHint => 'Gŏdki wyszukiwania';

  @override
  String get languageModuleInstalled => 'Instaluj';

  @override
  String get languageModulePending => 'Tłumaczōnŏ maszyna';

  @override
  String get languageNoMatches =>
      'Żŏdny jynzyk niy pasuje do Twojego wyszukiwanio.';

  @override
  String get languageCatalogDescription =>
      'Gŏdki ôznaczōne za zainstalowane roboty offline. Inksze godki bydōm dowane jako moduly przekłŏdane maszynami.';

  @override
  String get saveBookmarkSemantics => 'Zarezerwuj znaki';

  @override
  String get couldNotLoadChapter =>
      'Niy idzie sie ôbrac rozdziału. Proszê pok3adaæ jeszcze raz.';

  @override
  String get couldNotLoadChapters =>
      'Niy idzie ładować rozdziałōw. Proszê pok3adaæ jeszcze raz.';

  @override
  String verseWithText(Object text, Object verse) {
    return 'Wersje $verse: $text';
  }

  @override
  String accentSwatchSemantics(Object name, Object selected) {
    return '$name akcent barwy$selected';
  }

  @override
  String get oldTestament => 'Nowy Testament';

  @override
  String get newTestament => 'Nowy Testament';

  @override
  String get deuterocanonApocrypha => 'Deuterocanon / Apocrypha';
}
