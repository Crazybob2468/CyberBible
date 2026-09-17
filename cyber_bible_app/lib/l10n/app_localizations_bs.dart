// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Bosnian (`bs`).
class AppLocalizationsBs extends AppLocalizations {
  AppLocalizationsBs([String locale = 'bs']) : super(locale);

  @override
  String get settingsTitle => 'Postavke';

  @override
  String get languageSection => 'Jezik';

  @override
  String get useSystemLanguage => 'Koristite sistemski jezik';

  @override
  String get useSystemLanguageSubtitle =>
      'Podrazumevano podudarite jezik uređaja.';

  @override
  String get currentLanguage => 'Trenutni jezik';

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
  String get displaySection => 'Display';

  @override
  String get verseNumbers => 'Stihovi brojevi';

  @override
  String get sectionHeadings => 'Naslovi sekcija';

  @override
  String get redLetterText => 'Red-Letter Text';

  @override
  String get selectABook => 'Odaberite knjigu';

  @override
  String get traditionalOrder => 'Tradicionalni poredak';

  @override
  String get alphabeticalOrder => 'Abecednim redom';

  @override
  String get bookmarks => 'Bookmarks';

  @override
  String get retry => 'Pokušajte ponovo';

  @override
  String get chooseTheme => 'Odaberite temu';

  @override
  String get customisableThemes => 'Prilagodljive teme';

  @override
  String get customisableThemesSubtitle =>
      'Dodirnite karticu da odaberete boju za naglašavanje. \"Classic White\" takođe podržava svetle, tamne i sistemske režime.';

  @override
  String get setThemes => 'POSTAVI TEME';

  @override
  String get setThemesSubtitle =>
      'Fiksne, ručno rađene palete. Nije potrebno prilagođavanje - samo dodirnite za primjenu.';

  @override
  String get deleteBookmarkQuestion => 'Izbrisati oznaku?';

  @override
  String get cancel => 'Otkaži';

  @override
  String get delete => 'Izbriši';

  @override
  String get bookmarkSaved => 'Oznaka je sačuvana';

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
    return 'Nema definirane rute za \"$routeName\"';
  }

  @override
  String get english => 'engleski';

  @override
  String get spanish => 'Español';

  @override
  String get systemDefault => 'Sistemski zadani';

  @override
  String get languageStatusEnglish => 'Aktivan rezervni engleski';

  @override
  String get languageStatusSystem => 'Korištenje sistemskog jezika';

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
      'Nije moguće otvoriti biblijsku bazu podataka. Molimo pokušajte ponovo.';

  @override
  String get homeTagline =>
      'Besplatna aplikacija za proučavanje Biblije otvorenog koda';

  @override
  String get readTheBible => 'Čitajte Bibliju';

  @override
  String get settingsTooltip => 'Postavke';

  @override
  String get themeChoose => 'Odaberite temu';

  @override
  String get customThemes => 'Prilagodljive teme';

  @override
  String get customThemesSubtitle =>
      'Dodirnite karticu da odaberete boju za naglašavanje. \"Classic White\" takođe podržava svetle, tamne i sistemske režime.';

  @override
  String get setThemesLabel => 'POSTAVI TEME';

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
  String get bookmarkSavedMessage => 'Oznaka je sačuvana';

  @override
  String get couldNotSaveBookmark => 'Nije moguće sačuvati oznaku.';

  @override
  String get noBookmarksMatchFilter =>
      'Nijedna oznaka ne odgovara ovom filteru.';

  @override
  String get clearFilter => 'Obriši filter';

  @override
  String get traditionalOrderLabel => 'Tradicionalni poredak';

  @override
  String get alphabeticalOrderLabel => 'Abecednim redom';

  @override
  String get bookmarksTabLabel => 'Bookmarks';

  @override
  String get fullChapter => 'Cijelo poglavlje';

  @override
  String get addBookmark => 'Dodaj Bookmark';

  @override
  String get selectVerse => 'Odaberite Stih';

  @override
  String get labelOptional => 'Oznaka (opcionalno)';

  @override
  String get notesOptional => 'Bilješke (opcionalno)';

  @override
  String get save => 'Sačuvaj';

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
  String get switchToFullChapter => 'Prebacite se na oznaku cijelog poglavlja';

  @override
  String get bookmarkSheetCancel => 'Otkaži, zatvori list sa oznakama';

  @override
  String get pickCustomAccent => 'Odaberite prilagođeni naglasak';

  @override
  String get apply => 'Prijavite se';

  @override
  String get custom => 'Custom';

  @override
  String get brightnessSystem => 'Sistem';

  @override
  String get brightnessLight => 'Light';

  @override
  String get brightnessDark => 'Dark';

  @override
  String get selectBook => 'Odaberite knjigu';

  @override
  String get bookmarkFilterAll => 'Sve';

  @override
  String get bookmarkFilterUnlabeled => 'Unlabeled';

  @override
  String get bookmarkSortRecent => 'Nedavno prvo';

  @override
  String get bookmarkSortCanonical => 'Kanonski poredak';

  @override
  String get chapterRetry => 'Pokušajte ponovo';

  @override
  String get fontSize => 'Veličina fonta';

  @override
  String fontSizePixels(Object size) {
    return '$size px';
  }

  @override
  String get fontSizeSlider => 'Klizač veličine fonta';

  @override
  String get fontSizeSliderHint => 'Prevucite za podešavanje od 12 do 28';

  @override
  String get fontPreview =>
      '\"U početku stvori Bog nebo i zemlju.\" — Postanje 1:1';

  @override
  String get showVerseNumbersSubtitle =>
      'Prikaži nadskripte brojeva stiha na ekranu za čitanje.';

  @override
  String get showSectionHeadingsSubtitle =>
      'Prikaži naslove odjeljaka i psalama između pasusa.';

  @override
  String get wordsOfChristSubtitle =>
      'Pokažite Isusove riječi crvenom bojom. Onemogući za jednu boju teksta.';

  @override
  String get verseFormatTitle => 'Format stiha';

  @override
  String get verseFormatSubtitle =>
      'Odaberite kako će biti raspoređen tekst iz Svetih pisama.';

  @override
  String get paragraphMode => 'Paragraf';

  @override
  String get verseListMode => 'Lista stihova';

  @override
  String get paragraphModeTooltip => 'Mod paragrafa';

  @override
  String get verseListModeTooltip => 'Režim liste stihova';

  @override
  String get paragraphModeDescription =>
      'Tekst teče neprekidno sa uvučenim paragrafima, poput štampane Biblije.';

  @override
  String get verseListModeDescription =>
      'Svaki odlomak Svetih pisama počinje svojim redom, čineći grupe stihova lakim za uočavanje.';

  @override
  String get deleteBookmarkTooltip => 'Obriši oznaku';

  @override
  String deleteBookmarkSemantics(Object reference) {
    return 'Obriši oznaku $reference';
  }

  @override
  String sortBookmarksTooltip(Object sortOrder) {
    return 'Sortiraj: $sortOrder';
  }

  @override
  String get noBookmarksYet => 'Još nema oznaka.';

  @override
  String get noBookmarksYetHint =>
      'Dodirnite ikonu oznake dok čitate da sačuvate lokaciju.';

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
  String get customisableAccentDescription => 'Prilagodljiva akcentna boja.';

  @override
  String get fixedPaletteDescription => 'Fiksna paleta.';

  @override
  String accentColourTitle(Object themeName) {
    return 'Boja akcenta — $themeName';
  }

  @override
  String get brightnessMode => 'BRIGHTNESS MODE';

  @override
  String get lightMode => 'Lagani način rada';

  @override
  String get followSystemMode => 'Pratite sistemski način rada';

  @override
  String get darkMode => 'Tamni mod';

  @override
  String get customColourPicker => 'Prilagođeni birač boja';

  @override
  String get customColourTooltip => 'Boja po narudžbi…';

  @override
  String get couldNotLoadBooks =>
      'Nije moguće učitati listu knjiga. Molimo pokušajte ponovo.';

  @override
  String chapterLabel(Object chapter) {
    return 'Poglavlje $chapter';
  }

  @override
  String get traditionalOrderBooks => 'Tradicionalne knjige narudžbi';

  @override
  String get alphabeticalOrderBooks => 'Knjige po abecednom redu';

  @override
  String get home => 'Dom';

  @override
  String get addBookmarkTooltip => 'Dodaj oznaku';

  @override
  String get chooseBookChapter => 'Odaberite knjigu i poglavlje';

  @override
  String get chooseVerse => 'Odaberite stih';

  @override
  String get bookChapterQuickNavigation => 'Brza navigacija knjiga i poglavlja';

  @override
  String get verseQuickNavigation => 'Brza navigacija u stihu';

  @override
  String get backToBooks => 'Nazad na knjige';

  @override
  String get selectBookTitle => 'Odaberite Rezerviraj';

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
  String get addNoteHint => 'Dodajte napomenu...';

  @override
  String get languageSearchHint => 'Traži jezike';

  @override
  String get languageModuleInstalled => 'Instalirano';

  @override
  String get languageModulePending => 'Mašinski prijevod je na čekanju';

  @override
  String get languageNoMatches =>
      'Nijedan jezik ne odgovara vašem pretraživanju.';

  @override
  String get languageCatalogDescription =>
      'Jezici označeni kao instalirani rade van mreže. Ostali jezici će biti dodati kao mašinski prevedeni moduli.';

  @override
  String get saveBookmarkSemantics => 'Sačuvaj obeleživač';

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
    return '$name akcentna boja$selected';
  }

  @override
  String get oldTestament => 'Stari zavjet';

  @override
  String get newTestament => 'Novi zavjet';

  @override
  String get deuterocanonApocrypha => 'Deuterokanon / Apokrifi';
}
