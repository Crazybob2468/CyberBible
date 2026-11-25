// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Norwegian Bokmål (`nb`).
class AppLocalizationsNb extends AppLocalizations {
  AppLocalizationsNb([String locale = 'nb']) : super(locale);

  @override
  String get settingsTitle => 'Innstillinger';

  @override
  String get languageSection => 'Språk';

  @override
  String get useSystemLanguage => 'Bruk systemspråk';

  @override
  String get useSystemLanguageSubtitle => 'Tilpass enhetsspråket som standard.';

  @override
  String get currentLanguage => 'Nåværende språk';

  @override
  String get appLanguage => 'Appens språk';

  @override
  String get chooseLanguage => 'Velg språk';

  @override
  String get theme => 'Tema';

  @override
  String get appearance => 'Utseende';

  @override
  String get textSection => 'Tekst';

  @override
  String get readingFormatSection => 'Leseformat';

  @override
  String get displaySection => 'Utstilling';

  @override
  String get verseNumbers => 'Versnummer';

  @override
  String get sectionHeadings => 'Seksjonsoverskrifter';

  @override
  String get redLetterText => 'Tekst med rød bokstav';

  @override
  String get selectABook => 'Velg en bok';

  @override
  String get traditionalOrder => 'Tradisjonell orden';

  @override
  String get alphabeticalOrder => 'Alfabetisk rekkefølge';

  @override
  String get bookmarks => 'Bokmerker';

  @override
  String get retry => 'Prøv på nytt';

  @override
  String get chooseTheme => 'Velg tema';

  @override
  String get customisableThemes => 'Tilpassbare temaer';

  @override
  String get customisableThemesSubtitle =>
      'Trykk på et kort for å velge en aksentfarge. \"Classic White\" støtter også lys, mørk og systemmodus.';

  @override
  String get setThemes => 'ANGI TEMAER';

  @override
  String get setThemesSubtitle =>
      'Faste, håndlagde paletter. Ingen tilpasning nødvendig – bare trykk for å søke.';

  @override
  String get deleteBookmarkQuestion => 'Vil du slette bokmerket?';

  @override
  String get cancel => 'Kansellere';

  @override
  String get delete => 'Slett';

  @override
  String get bookmarkSaved => 'Bokmerket er lagret';

  @override
  String get couldNotDeleteBookmark => 'Kunne ikke slette bokmerket.';

  @override
  String couldNotNavigate(Object reference) {
    return 'Kunne ikke navigere til $reference.';
  }

  @override
  String get pageNotFound => 'Siden ikke funnet';

  @override
  String noRouteDefined(Object routeName) {
    return 'Ingen rute definert for \"$routeName\"';
  }

  @override
  String get english => 'engelsk';

  @override
  String get spanish => 'Español';

  @override
  String get systemDefault => 'Systemstandard';

  @override
  String get languageStatusEnglish => 'Engelsk fallback aktiv';

  @override
  String get languageStatusSystem => 'Bruk av systemspråk';

  @override
  String languageStatusSelected(Object languageName) {
    return 'Valgt språk: $languageName';
  }

  @override
  String get themeLabel => 'Tema';

  @override
  String get notFoundTitle => 'Siden ikke funnet';

  @override
  String get loadingCyberBible => 'Laster cyberbibelen ...';

  @override
  String get couldNotOpenDatabase =>
      'Kunne ikke åpne bibeldatabasen. Vennligst prøv igjen.';

  @override
  String get homeTagline => 'En gratis og åpen kildekode bibelstudie-app';

  @override
  String get readTheBible => 'Les Bibelen';

  @override
  String get settingsTooltip => 'Innstillinger';

  @override
  String get themeChoose => 'Velg tema';

  @override
  String get customThemes => 'Tilpassbare temaer';

  @override
  String get customThemesSubtitle =>
      'Trykk på et kort for å velge en aksentfarge. \"Classic White\" støtter også lys, mørk og systemmodus.';

  @override
  String get setThemesLabel => 'ANGI TEMAER';

  @override
  String get deleteBookmarkDialog => 'Vil du slette bokmerket?';

  @override
  String removeBookmarkMessage(Object details, Object reference) {
    return 'Vil du fjerne \"$reference\"$details?\n\nDette kan ikke angres.';
  }

  @override
  String get couldNotLoadBookmarks =>
      'Kunne ikke laste inn bokmerker. Vennligst prøv igjen.';

  @override
  String get bookmarkSavedMessage => 'Bokmerket er lagret';

  @override
  String get couldNotSaveBookmark => 'Kunne ikke lagre bokmerket.';

  @override
  String get noBookmarksMatchFilter =>
      'Ingen bokmerker samsvarer med dette filteret.';

  @override
  String get clearFilter => 'Tøm filter';

  @override
  String get traditionalOrderLabel => 'Tradisjonell orden';

  @override
  String get alphabeticalOrderLabel => 'Alfabetisk rekkefølge';

  @override
  String get bookmarksTabLabel => 'Bokmerker';

  @override
  String get fullChapter => 'Helt kapittel';

  @override
  String get addBookmark => 'Legg til bokmerke';

  @override
  String get selectVerse => 'Velg Vers';

  @override
  String get labelOptional => 'Etikett (valgfritt)';

  @override
  String get notesOptional => 'Merknader (valgfritt)';

  @override
  String get save => 'Spare';

  @override
  String get goToVerse => 'Gå til vers';

  @override
  String verseTitle(Object verse) {
    return 'Vers $verse';
  }

  @override
  String chapterTitle(Object chapter) {
    return 'Kapittel $chapter';
  }

  @override
  String get switchToFullChapter => 'Bytt til bokmerke for hele kapittelet';

  @override
  String get bookmarkSheetCancel => 'Avbryt, lukk bokmerkearket';

  @override
  String get pickCustomAccent => 'Velg en tilpasset aksent';

  @override
  String get apply => 'Søke';

  @override
  String get custom => 'Skikk';

  @override
  String get brightnessSystem => 'System';

  @override
  String get brightnessLight => 'Lys';

  @override
  String get brightnessDark => 'Mørk';

  @override
  String get selectBook => 'Velg en bok';

  @override
  String get bookmarkFilterAll => 'Alle';

  @override
  String get bookmarkFilterUnlabeled => 'Umerket';

  @override
  String get bookmarkSortRecent => 'Nylig først';

  @override
  String get bookmarkSortCanonical => 'Kanonisk rekkefølge';

  @override
  String get chapterRetry => 'Prøv på nytt';

  @override
  String get fontSize => 'Skriftstørrelse';

  @override
  String fontSizePixels(Object size) {
    return '$size px';
  }

  @override
  String get fontSizeSlider => 'Skyveknapp for skriftstørrelse';

  @override
  String get fontSizeSliderHint => 'Sveip for å justere fra 12 til 28';

  @override
  String get fontPreview =>
      '\"I begynnelsen skapte Gud himmelen og jorden.\" — 1 Mos 1:1';

  @override
  String get showVerseNumbersSubtitle => 'Vis versnummer hevet i leseskjermen.';

  @override
  String get showSectionHeadingsSubtitle =>
      'Vis avsnitt og salmeoverskrifter mellom avsnitt.';

  @override
  String get wordsOfChristSubtitle =>
      'Vis Jesu ord i rødt. Deaktiver for én enkelt tekstfarge.';

  @override
  String get verseFormatTitle => 'Versformat';

  @override
  String get verseFormatSubtitle =>
      'Velg hvordan skriftteksten skal legges opp.';

  @override
  String get paragraphMode => 'Avsnitt';

  @override
  String get verseListMode => 'Versliste';

  @override
  String get paragraphModeTooltip => 'Avsnittsmodus';

  @override
  String get verseListModeTooltip => 'Verslistemodus';

  @override
  String get paragraphModeDescription =>
      'Tekst flyter kontinuerlig med innrykkede avsnitt, som en trykt bibel.';

  @override
  String get verseListModeDescription =>
      'Hvert skriftsted begynner på sin egen linje, noe som gjør versgrupper lette å få øye på.';

  @override
  String get deleteBookmarkTooltip => 'Slett bokmerke';

  @override
  String deleteBookmarkSemantics(Object reference) {
    return 'Slett bokmerket $reference';
  }

  @override
  String sortBookmarksTooltip(Object sortOrder) {
    return 'Sorter: $sortOrder';
  }

  @override
  String get noBookmarksYet => 'Ingen bokmerker ennå.';

  @override
  String get noBookmarksYetHint =>
      'Trykk på bokmerkeikonet mens du leser for å lagre en plassering.';

  @override
  String bookmarkReferenceNavigationError(Object reference) {
    return 'Kunne ikke navigere til $reference.';
  }

  @override
  String themeCardSemantics(Object description, Object name, Object selected) {
    return '$name tema$selected. $description';
  }

  @override
  String get selectedThemeSuffix => ', valgt for øyeblikket';

  @override
  String get customisableAccentDescription => 'Tilpassbar aksentfarge.';

  @override
  String get fixedPaletteDescription => 'Fast palett.';

  @override
  String accentColourTitle(Object themeName) {
    return 'Aksentfarge — $themeName';
  }

  @override
  String get brightnessMode => 'LYSSTYRKE MODUS';

  @override
  String get lightMode => 'Lysmodus';

  @override
  String get followSystemMode => 'Følg systemmodus';

  @override
  String get darkMode => 'Mørk modus';

  @override
  String get customColourPicker => 'Egendefinert fargevelger';

  @override
  String get customColourTooltip => 'Egendefinert farge...';

  @override
  String get couldNotLoadBooks =>
      'Kunne ikke laste inn boklisten. Vennligst prøv igjen.';

  @override
  String chapterLabel(Object chapter) {
    return 'Kapittel $chapter';
  }

  @override
  String get traditionalOrderBooks => 'Tradisjonelle ordrebøker';

  @override
  String get alphabeticalOrderBooks => 'Alfabetiske ordrebøker';

  @override
  String get home => 'Hjem';

  @override
  String get addBookmarkTooltip => 'Legg til bokmerke';

  @override
  String get chooseBookChapter => 'Velg bok og kapittel';

  @override
  String get chooseVerse => 'Velg vers';

  @override
  String get bookChapterQuickNavigation => 'Bok og kapittel hurtignavigering';

  @override
  String get verseQuickNavigation => 'Rask navigering av vers';

  @override
  String get backToBooks => 'Tilbake til bøker';

  @override
  String get selectBookTitle => 'Velg Bok';

  @override
  String selectChapterTitle(Object bookName) {
    return 'Velg kapittel ($bookName)';
  }

  @override
  String chapterSelectionLabel(Object chapter) {
    return 'Kapittel $chapter';
  }

  @override
  String verseSelectionLabel(Object verse) {
    return 'Vers $verse';
  }

  @override
  String fullChapterReference(Object bookName, Object chapter) {
    return 'Fullstendig kapittel: $bookName $chapter';
  }

  @override
  String get memorizeHint => 'Huske';

  @override
  String get addNoteHint => 'Legg til et notat...';

  @override
  String get languageSearchHint => 'Søk etter språk';

  @override
  String get languageModuleInstalled => 'Installert';

  @override
  String get languageModulePending => 'Maskinoversettelse venter';

  @override
  String get languageNoMatches => 'Ingen språk samsvarer med søket ditt.';

  @override
  String get languageCatalogDescription =>
      'Språk merket som installert fungerer offline. Andre språk vil bli lagt til som maskinoversatte moduler.';

  @override
  String get saveBookmarkSemantics => 'Lagre bokmerke';

  @override
  String get couldNotLoadChapter =>
      'Kunne ikke laste kapittelet. Vennligst prøv igjen.';

  @override
  String get couldNotLoadChapters =>
      'Kunne ikke laste inn kapitler. Vennligst prøv igjen.';

  @override
  String verseWithText(Object text, Object verse) {
    return 'Vers $verse: $text';
  }

  @override
  String accentSwatchSemantics(Object name, Object selected) {
    return '$name aksentfarge$selected';
  }

  @override
  String get oldTestament => 'Det gamle testamente';

  @override
  String get newTestament => 'Det nye testamente';

  @override
  String get deuterocanonApocrypha => 'Deuterokanon / Apokryfe';
}
