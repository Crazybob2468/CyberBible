// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Romanian Moldavian Moldovan (`ro`).
class AppLocalizationsRo extends AppLocalizations {
  AppLocalizationsRo([String locale = 'ro']) : super(locale);

  @override
  String get settingsTitle => 'Setări';

  @override
  String get languageSection => 'Limbă';

  @override
  String get useSystemLanguage => 'Utilizați limbajul sistemului';

  @override
  String get useSystemLanguageSubtitle =>
      'Potriviți limba dispozitivului în mod implicit.';

  @override
  String get currentLanguage => 'Limba actuală';

  @override
  String get appLanguage => 'Limba aplicației';

  @override
  String get chooseLanguage => 'Alegeți limba';

  @override
  String get theme => 'Temă';

  @override
  String get appearance => 'Aspect';

  @override
  String get textSection => 'Text';

  @override
  String get readingFormatSection => 'Format de citire';

  @override
  String get displaySection => 'Afişa';

  @override
  String get verseNumbers => 'Numerele versurilor';

  @override
  String get sectionHeadings => 'Titluri de secțiuni';

  @override
  String get redLetterText => 'Text cu litere roșii';

  @override
  String get selectABook => 'Selectați o carte';

  @override
  String get traditionalOrder => 'Ordine tradițională';

  @override
  String get alphabeticalOrder => 'Ordinea alfabetică';

  @override
  String get bookmarks => 'Marcaje';

  @override
  String get retry => 'Reîncercați';

  @override
  String get chooseTheme => 'Alegeți Tema';

  @override
  String get customisableThemes => 'Teme personalizabile';

  @override
  String get customisableThemesSubtitle =>
      'Atingeți un card pentru a alege o culoare de accent. „Classic White” acceptă și modurile Light, Dark și System.';

  @override
  String get setThemes => 'SETĂ TEME';

  @override
  String get setThemesSubtitle =>
      'Palete fixe, lucrate manual. Nu este nevoie de personalizare - doar atingeți pentru a aplica.';

  @override
  String get deleteBookmarkQuestion => 'Ștergeți marcajul?';

  @override
  String get cancel => 'Anula';

  @override
  String get delete => 'Şterge';

  @override
  String get bookmarkSaved => 'Marcaj salvat';

  @override
  String get couldNotDeleteBookmark => 'Nu s-a putut șterge marcajul.';

  @override
  String couldNotNavigate(Object reference) {
    return 'Nu s-a putut naviga la $reference.';
  }

  @override
  String get pageNotFound => 'Pagina nu a fost găsită';

  @override
  String noRouteDefined(Object routeName) {
    return 'Nu a fost definită nicio rută pentru „$routeName”';
  }

  @override
  String get english => 'engleză';

  @override
  String get spanish => 'Español';

  @override
  String get systemDefault => 'Implicit de sistem';

  @override
  String get languageStatusEnglish => 'Alternativa engleză activă';

  @override
  String get languageStatusSystem => 'Folosind limbajul sistemului';

  @override
  String languageStatusSelected(Object languageName) {
    return 'Limba selectată: $languageName';
  }

  @override
  String get themeLabel => 'Temă';

  @override
  String get notFoundTitle => 'Pagina nu a fost găsită';

  @override
  String get loadingCyberBible => 'Se încarcă Cyber ​​Bible...';

  @override
  String get couldNotOpenDatabase =>
      'Nu s-a putut deschide baza de date a Bibliei. Vă rugăm să încercați din nou.';

  @override
  String get homeTagline =>
      'O aplicație gratuită și open source pentru studiul Bibliei';

  @override
  String get readTheBible => 'Citiți Biblia';

  @override
  String get settingsTooltip => 'Setări';

  @override
  String get themeChoose => 'Alegeți Tema';

  @override
  String get customThemes => 'Teme personalizabile';

  @override
  String get customThemesSubtitle =>
      'Atingeți un card pentru a alege o culoare de accent. „Classic White” acceptă și modurile Light, Dark și System.';

  @override
  String get setThemesLabel => 'SETĂ TEME';

  @override
  String get deleteBookmarkDialog => 'Ștergeți marcajul?';

  @override
  String removeBookmarkMessage(Object details, Object reference) {
    return 'Eliminați „$reference”$details?\n\nAcest lucru nu poate fi anulat.';
  }

  @override
  String get couldNotLoadBookmarks =>
      'Marcajele nu au putut fi încărcate. Vă rugăm să încercați din nou.';

  @override
  String get bookmarkSavedMessage => 'Marcaj salvat';

  @override
  String get couldNotSaveBookmark => 'Marcajul nu a putut fi salvat.';

  @override
  String get noBookmarksMatchFilter =>
      'Niciun marcaj nu se potrivește cu acest filtru.';

  @override
  String get clearFilter => 'Șterge filtrul';

  @override
  String get traditionalOrderLabel => 'Ordine tradițională';

  @override
  String get alphabeticalOrderLabel => 'Ordinea alfabetică';

  @override
  String get bookmarksTabLabel => 'Marcaje';

  @override
  String get fullChapter => 'Capitolul complet';

  @override
  String get addBookmark => 'Adăugați marcaj';

  @override
  String get selectVerse => 'Selectează vers';

  @override
  String get labelOptional => 'Etichetă (opțional)';

  @override
  String get notesOptional => 'Note (opțional)';

  @override
  String get save => 'Salva';

  @override
  String get goToVerse => 'Du-te la Verse';

  @override
  String verseTitle(Object verse) {
    return 'Verse $verse';
  }

  @override
  String chapterTitle(Object chapter) {
    return 'Capitolul $chapter';
  }

  @override
  String get switchToFullChapter => 'Comutați la marcajul întregului capitol';

  @override
  String get bookmarkSheetCancel => 'Anulează, închide foaia cu marcaj';

  @override
  String get pickCustomAccent => 'Alegeți un accent personalizat';

  @override
  String get apply => 'Aplicați';

  @override
  String get custom => 'Personalizat';

  @override
  String get brightnessSystem => 'Sistem';

  @override
  String get brightnessLight => 'Aprinde';

  @override
  String get brightnessDark => 'Întuneric';

  @override
  String get selectBook => 'Selectați o carte';

  @override
  String get bookmarkFilterAll => 'Toate';

  @override
  String get bookmarkFilterUnlabeled => 'Neetichetat';

  @override
  String get bookmarkSortRecent => 'Recent mai întâi';

  @override
  String get bookmarkSortCanonical => 'Ordine canonică';

  @override
  String get chapterRetry => 'Reîncercați';

  @override
  String get fontSize => 'Dimensiunea fontului';

  @override
  String fontSizePixels(Object size) {
    return '$size px';
  }

  @override
  String get fontSizeSlider => 'Glisor pentru dimensiunea fontului';

  @override
  String get fontSizeSliderHint => 'Glisați pentru a ajusta de la 12 la 28';

  @override
  String get fontPreview =>
      '„La început Dumnezeu a creat cerurile și pământul”. — Geneza 1:1';

  @override
  String get showVerseNumbersSubtitle =>
      'Afișați indicele cu numărul de versuri în ecranul de citire.';

  @override
  String get showSectionHeadingsSubtitle =>
      'Afișați titlurile de secțiuni și psalmi între pasaje.';

  @override
  String get wordsOfChristSubtitle =>
      'Arată cuvintele lui Isus cu roșu. Dezactivați pentru o singură culoare de text.';

  @override
  String get verseFormatTitle => 'Format de vers';

  @override
  String get verseFormatSubtitle =>
      'Alegeți cum este prezentat textul scripturii.';

  @override
  String get paragraphMode => 'Paragraf';

  @override
  String get verseListMode => 'Lista de versuri';

  @override
  String get paragraphModeTooltip => 'Modul paragraf';

  @override
  String get verseListModeTooltip => 'Modul liste de versuri';

  @override
  String get paragraphModeDescription =>
      'Textul curge continuu cu paragrafe indentate, ca o Biblie tipărită.';

  @override
  String get verseListModeDescription =>
      'Fiecare paragraf din scripturi începe pe propriul său rând, făcând grupurile de versete ușor de identificat.';

  @override
  String get deleteBookmarkTooltip => 'Ștergeți marcajul';

  @override
  String deleteBookmarkSemantics(Object reference) {
    return 'Ștergeți marcajul $reference';
  }

  @override
  String sortBookmarksTooltip(Object sortOrder) {
    return 'Sortare: $sortOrder';
  }

  @override
  String get noBookmarksYet => 'Încă nu există marcaje.';

  @override
  String get noBookmarksYetHint =>
      'Atingeți pictograma marcaj în timp ce citiți pentru a salva o locație.';

  @override
  String bookmarkReferenceNavigationError(Object reference) {
    return 'Nu s-a putut naviga la $reference.';
  }

  @override
  String themeCardSemantics(Object description, Object name, Object selected) {
    return 'Tema $name$selected. $description';
  }

  @override
  String get selectedThemeSuffix => ', selectat în prezent';

  @override
  String get customisableAccentDescription =>
      'Culoare de accent personalizabilă.';

  @override
  String get fixedPaletteDescription => 'Paleta fixa.';

  @override
  String accentColourTitle(Object themeName) {
    return 'Culoare de accent — $themeName';
  }

  @override
  String get brightnessMode => 'MODUL DE LUMINARE';

  @override
  String get lightMode => 'Modul de lumină';

  @override
  String get followSystemMode => 'Urmați modul sistem';

  @override
  String get darkMode => 'Modul întunecat';

  @override
  String get customColourPicker => 'Selector de culori personalizat';

  @override
  String get customColourTooltip => 'Culoare personalizată...';

  @override
  String get couldNotLoadBooks =>
      'Nu s-a putut încărca lista de cărți. Vă rugăm să încercați din nou.';

  @override
  String chapterLabel(Object chapter) {
    return 'Capitolul $chapter';
  }

  @override
  String get traditionalOrderBooks => 'Carnete de comenzi tradiționale';

  @override
  String get alphabeticalOrderBooks => 'Caiet de ordine alfabetice';

  @override
  String get home => 'Acasă';

  @override
  String get addBookmarkTooltip => 'Adăugați marcaj';

  @override
  String get chooseBookChapter => 'Alege cartea și capitolul';

  @override
  String get chooseVerse => 'Alege versul';

  @override
  String get bookChapterQuickNavigation =>
      'Navigare rapidă în cărți și capitole';

  @override
  String get verseQuickNavigation => 'Navigare rapidă în vers';

  @override
  String get backToBooks => 'Înapoi la cărți';

  @override
  String get selectBookTitle => 'Selectați Carte';

  @override
  String selectChapterTitle(Object bookName) {
    return 'Selectați capitolul ($bookName)';
  }

  @override
  String chapterSelectionLabel(Object chapter) {
    return 'Capitolul $chapter';
  }

  @override
  String verseSelectionLabel(Object verse) {
    return 'Verse $verse';
  }

  @override
  String fullChapterReference(Object bookName, Object chapter) {
    return 'Capitolul complet: $bookName $chapter';
  }

  @override
  String get memorizeHint => 'Memora';

  @override
  String get addNoteHint => 'Adăugați o notă...';

  @override
  String get languageSearchHint => 'Căutați limbi';

  @override
  String get languageModuleInstalled => 'Instalat';

  @override
  String get languageModulePending => 'Traducere automată în așteptare';

  @override
  String get languageNoMatches => 'Nicio limbă nu corespunde căutării dvs.';

  @override
  String get languageCatalogDescription =>
      'Limbile marcate ca instalate funcționează offline. Alte limbi vor fi adăugate ca module traduse automat.';

  @override
  String get saveBookmarkSemantics => 'Salvați marcajul';

  @override
  String get couldNotLoadChapter =>
      'Capitolul nu a putut fi încărcat. Vă rugăm să încercați din nou.';

  @override
  String get couldNotLoadChapters =>
      'Nu s-au putut încărca capitolele. Vă rugăm să încercați din nou.';

  @override
  String verseWithText(Object text, Object verse) {
    return 'Versetul $verse: $text';
  }

  @override
  String accentSwatchSemantics(Object name, Object selected) {
    return '$name culoare de accent$selected';
  }

  @override
  String get oldTestament => 'Vechiul Testament';

  @override
  String get newTestament => 'Noul Testament';

  @override
  String get deuterocanonApocrypha => 'Deuterocanon / Apocrife';
}
