// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Croatian (`hr`).
class AppLocalizationsHr extends AppLocalizations {
  AppLocalizationsHr([String locale = 'hr']) : super(locale);

  @override
  String get settingsTitle => 'postavke';

  @override
  String get languageSection => 'Jezik';

  @override
  String get useSystemLanguage => 'Koristite jezik sustava';

  @override
  String get useSystemLanguageSubtitle =>
      'Podudaranje jezika uređaja prema zadanim postavkama.';

  @override
  String get currentLanguage => 'Trenutačni jezik';

  @override
  String get appLanguage => 'Jezik aplikacije';

  @override
  String get chooseLanguage => 'Odaberite jezik';

  @override
  String get theme => 'Tema';

  @override
  String get appearance => 'Izgled';

  @override
  String get textSection => 'Tekst';

  @override
  String get readingFormatSection => 'Format čitanja';

  @override
  String get displaySection => 'Prikaz';

  @override
  String get verseNumbers => 'Brojevi stihova';

  @override
  String get sectionHeadings => 'Naslovi odjeljaka';

  @override
  String get redLetterText => 'Tekst crvenim slovima';

  @override
  String get selectABook => 'Odaberite knjigu';

  @override
  String get traditionalOrder => 'Tradicionalni poredak';

  @override
  String get alphabeticalOrder => 'Abecedni red';

  @override
  String get bookmarks => 'Knjižne oznake';

  @override
  String get retry => 'Pokušaj ponovo';

  @override
  String get chooseTheme => 'Odaberite temu';

  @override
  String get customisableThemes => 'Prilagodljive teme';

  @override
  String get customisableThemesSubtitle =>
      'Dodirnite karticu za odabir boje isticanja. \"Classic White\" također podržava svijetle, tamne i sustavne načine rada.';

  @override
  String get setThemes => 'POSTAVITE TEME';

  @override
  String get setThemesSubtitle =>
      'Fiksne, ručno izrađene palete. Nije potrebna prilagodba — samo dodirnite za primjenu.';

  @override
  String get deleteBookmarkQuestion => 'Izbrisati oznaku?';

  @override
  String get cancel => 'Otkazati';

  @override
  String get delete => 'Izbrisati';

  @override
  String get bookmarkSaved => 'Oznaka spremljena';

  @override
  String get couldNotDeleteBookmark => 'Nije moguće izbrisati oznaku.';

  @override
  String couldNotNavigate(Object reference) {
    return 'Nije moguće navigirati do $reference.';
  }

  @override
  String get pageNotFound => 'Stranica nije pronađena';

  @override
  String noRouteDefined(Object routeName) {
    return 'Nije definirana ruta za \"$routeName\"';
  }

  @override
  String get english => 'engleski';

  @override
  String get spanish => 'španjolski';

  @override
  String get systemDefault => 'Zadana vrijednost sustava';

  @override
  String get languageStatusEnglish => 'Aktivan rezervni engleski';

  @override
  String get languageStatusSystem => 'Korištenje jezika sustava';

  @override
  String languageStatusSelected(Object languageName) {
    return 'Odabrani jezik: $languageName';
  }

  @override
  String get themeLabel => 'Tema';

  @override
  String get notFoundTitle => 'Stranica nije pronađena';

  @override
  String get loadingCyberBible => 'Učitavanje Cyber ​​Biblije...';

  @override
  String get couldNotOpenDatabase =>
      'Ne mogu otvoriti biblijsku bazu podataka. Molimo pokušajte ponovo.';

  @override
  String get homeTagline =>
      'Besplatna aplikacija za proučavanje Biblije otvorenog koda';

  @override
  String get readTheBible => 'Čitaj Bibliju';

  @override
  String get settingsTooltip => 'postavke';

  @override
  String get themeChoose => 'Odaberite temu';

  @override
  String get customThemes => 'Prilagodljive teme';

  @override
  String get customThemesSubtitle =>
      'Dodirnite karticu za odabir boje isticanja. \"Classic White\" također podržava svijetle, tamne i sustavne načine rada.';

  @override
  String get setThemesLabel => 'POSTAVITE TEME';

  @override
  String get deleteBookmarkDialog => 'Izbrisati oznaku?';

  @override
  String removeBookmarkMessage(Object details, Object reference) {
    return 'Ukloniti \"$reference\"$details?\n\nOvo se ne može poništiti.';
  }

  @override
  String get couldNotLoadBookmarks =>
      'Nije moguće učitati oznake. Molimo pokušajte ponovo.';

  @override
  String get bookmarkSavedMessage => 'Oznaka spremljena';

  @override
  String get couldNotSaveBookmark => 'Nije moguće spremiti oznaku.';

  @override
  String get noBookmarksMatchFilter =>
      'Nijedna oznaka ne odgovara ovom filtru.';

  @override
  String get clearFilter => 'Očisti filter';

  @override
  String get traditionalOrderLabel => 'Tradicionalni poredak';

  @override
  String get alphabeticalOrderLabel => 'Abecedni red';

  @override
  String get bookmarksTabLabel => 'Knjižne oznake';

  @override
  String get fullChapter => 'Cijelo poglavlje';

  @override
  String get addBookmark => 'Dodaj oznaku';

  @override
  String get selectVerse => 'Odaberite Stih';

  @override
  String get labelOptional => 'Oznaka (nije obavezno)';

  @override
  String get notesOptional => 'Bilješke (nije obavezno)';

  @override
  String get save => 'Uštedjeti';

  @override
  String get goToVerse => 'Idi na Verse';

  @override
  String verseTitle(Object verse) {
    return 'Stih $verse';
  }

  @override
  String chapterTitle(Object chapter) {
    return 'Poglavlje $chapter';
  }

  @override
  String get switchToFullChapter => 'Prijeđi na oznaku cijelog poglavlja';

  @override
  String get bookmarkSheetCancel => 'Odustani, zatvori list s oznakama';

  @override
  String get pickCustomAccent => 'Odaberite prilagođeni naglasak';

  @override
  String get apply => 'primijeniti';

  @override
  String get custom => 'Običaj';

  @override
  String get brightnessSystem => 'sustav';

  @override
  String get brightnessLight => 'Svjetlo';

  @override
  String get brightnessDark => 'tamno';

  @override
  String get selectBook => 'Odaberite knjigu';

  @override
  String get bookmarkFilterAll => 'Sve';

  @override
  String get bookmarkFilterUnlabeled => 'Bez natpisa';

  @override
  String get bookmarkSortRecent => 'Prvo nedavno';

  @override
  String get bookmarkSortCanonical => 'Kanonski poredak';

  @override
  String get chapterRetry => 'Pokušaj ponovo';

  @override
  String get fontSize => 'Veličina fonta';

  @override
  String fontSizePixels(Object size) {
    return '$size px';
  }

  @override
  String get fontSizeSlider => 'Klizač veličine fonta';

  @override
  String get fontSizeSliderHint =>
      'Prijeđite prstom za podešavanje od 12 do 28';

  @override
  String get fontPreview =>
      '\"U početku stvori Bog nebo i zemlju.\" — Post 1:1';

  @override
  String get showVerseNumbersSubtitle =>
      'Prikaži nadskripte brojeva stihova na ekranu za čitanje.';

  @override
  String get showSectionHeadingsSubtitle =>
      'Pokažite naslove odjeljaka i psalama između odlomaka.';

  @override
  String get wordsOfChristSubtitle =>
      'Pokaži Isusove riječi crvenom bojom. Onemogući za jednu boju teksta.';

  @override
  String get verseFormatTitle => 'Format stiha';

  @override
  String get verseFormatSubtitle =>
      'Odaberite kako će biti postavljen tekst svetog pisma.';

  @override
  String get paragraphMode => 'stavak';

  @override
  String get verseListMode => 'Popis stihova';

  @override
  String get paragraphModeTooltip => 'Način odlomka';

  @override
  String get verseListModeTooltip => 'Način popisa stihova';

  @override
  String get paragraphModeDescription =>
      'Tekst kontinuirano teče s uvučenim odlomcima, poput tiskane Biblije.';

  @override
  String get verseListModeDescription =>
      'Svaki odlomak iz Svetih pisama počinje u vlastitom retku, što čini skupine stihova lakima za uočavanje.';

  @override
  String get deleteBookmarkTooltip => 'Izbriši oznaku';

  @override
  String deleteBookmarkSemantics(Object reference) {
    return 'Izbriši oznaku $reference';
  }

  @override
  String sortBookmarksTooltip(Object sortOrder) {
    return 'Sortiraj: $sortOrder';
  }

  @override
  String get noBookmarksYet => 'Još nema oznaka.';

  @override
  String get noBookmarksYetHint =>
      'Dodirnite ikonu oznake dok čitate da biste spremili lokaciju.';

  @override
  String bookmarkReferenceNavigationError(Object reference) {
    return 'Nije moguće navigirati do $reference.';
  }

  @override
  String themeCardSemantics(Object description, Object name, Object selected) {
    return '$name tema$selected. $description';
  }

  @override
  String get selectedThemeSuffix => ', trenutno odabrano';

  @override
  String get customisableAccentDescription => 'Prilagodljiva boja naglaska.';

  @override
  String get fixedPaletteDescription => 'Fiksna paleta.';

  @override
  String accentColourTitle(Object themeName) {
    return 'Boja akcenta — $themeName';
  }

  @override
  String get brightnessMode => 'NAČIN SVJETLINE';

  @override
  String get lightMode => 'Svjetlosni način rada';

  @override
  String get followSystemMode => 'Slijedite način rada sustava';

  @override
  String get darkMode => 'Tamni način rada';

  @override
  String get customColourPicker => 'Prilagođeni birač boja';

  @override
  String get customColourTooltip => 'Prilagođena boja…';

  @override
  String get couldNotLoadBooks =>
      'Nije moguće učitati popis knjiga. Molimo pokušajte ponovo.';

  @override
  String chapterLabel(Object chapter) {
    return 'Poglavlje $chapter';
  }

  @override
  String get traditionalOrderBooks => 'Tradicionalne knjige narudžbi';

  @override
  String get alphabeticalOrderBooks => 'Knjige abecednog reda';

  @override
  String get home => 'Dom';

  @override
  String get addBookmarkTooltip => 'Dodaj knjižnu oznaku';

  @override
  String get chooseBookChapter => 'Odaberite knjigu i poglavlje';

  @override
  String get chooseVerse => 'Odaberite stih';

  @override
  String get bookChapterQuickNavigation =>
      'Brza navigacija knjigama i poglavljima';

  @override
  String get verseQuickNavigation => 'Stih brza navigacija';

  @override
  String get backToBooks => 'Natrag na knjige';

  @override
  String get selectBookTitle => 'Odaberite Knjiga';

  @override
  String selectChapterTitle(Object bookName) {
    return 'Odaberite poglavlje ($bookName)';
  }

  @override
  String chapterSelectionLabel(Object chapter) {
    return 'Poglavlje $chapter';
  }

  @override
  String verseSelectionLabel(Object verse) {
    return 'Stih $verse';
  }

  @override
  String fullChapterReference(Object bookName, Object chapter) {
    return 'Cijelo poglavlje: $bookName $chapter';
  }

  @override
  String get memorizeHint => 'Zapamtite';

  @override
  String get addNoteHint => 'Dodaj bilješku...';

  @override
  String get languageSearchHint => 'Traži jezike';

  @override
  String get languageModuleInstalled => 'instalirano';

  @override
  String get languageModulePending => 'Strojni prijevod na čekanju';

  @override
  String get languageNoMatches =>
      'Nijedan jezik ne odgovara vašem pretraživanju.';

  @override
  String get languageCatalogDescription =>
      'Jezici označeni kao instalirani rade izvan mreže. Drugi jezici bit će dodani kao strojno prevedeni moduli.';

  @override
  String get saveBookmarkSemantics => 'Spremi oznaku';

  @override
  String get couldNotLoadChapter =>
      'Nije moguće učitati poglavlje. Molimo pokušajte ponovo.';

  @override
  String get couldNotLoadChapters =>
      'Nije moguće učitati poglavlja. Molimo pokušajte ponovo.';

  @override
  String verseWithText(Object text, Object verse) {
    return 'Stih $verse: $text';
  }

  @override
  String accentSwatchSemantics(Object name, Object selected) {
    return '$name naglašena boja$selected';
  }

  @override
  String get oldTestament => 'Stari zavjet';

  @override
  String get newTestament => 'Novi zavjet';

  @override
  String get deuterocanonApocrypha => 'Deuterokanon / Apokrif';
}
