// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Danish (`da`).
class AppLocalizationsDa extends AppLocalizations {
  AppLocalizationsDa([String locale = 'da']) : super(locale);

  @override
  String get settingsTitle => 'Indstillinger';

  @override
  String get languageSection => 'Sprog';

  @override
  String get useSystemLanguage => 'Brug systemsprog';

  @override
  String get useSystemLanguageSubtitle => 'Brug enhedens sprog som standard.';

  @override
  String get currentLanguage => 'Nuværende sprog';

  @override
  String get appLanguage => 'Appens sprog';

  @override
  String get chooseLanguage => 'Vælg sprog';

  @override
  String get theme => 'Tema';

  @override
  String get appearance => 'Udseende';

  @override
  String get textSection => 'Tekst';

  @override
  String get readingFormatSection => 'Læseformat';

  @override
  String get displaySection => 'Visning';

  @override
  String get verseNumbers => 'Versnumre';

  @override
  String get sectionHeadings => 'Afsnitsoverskrifter';

  @override
  String get redLetterText => 'Rød skrift';

  @override
  String get selectABook => 'Vælg en bog';

  @override
  String get traditionalOrder => 'Traditionel rækkefølge';

  @override
  String get alphabeticalOrder => 'Alfabetisk rækkefølge';

  @override
  String get bookmarks => 'Bogmærker';

  @override
  String get retry => 'Prøv igen';

  @override
  String get chooseTheme => 'Vælg tema';

  @override
  String get customisableThemes => 'Tilpasselige temaer';

  @override
  String get customisableThemesSubtitle =>
      'Tryk på et kort for at vælge en fremhævelsesfarve. \"Klassisk hvid\" understøtter også lys, mørk og systemtilstand.';

  @override
  String get setThemes => 'FASTLAGTE TEMAER';

  @override
  String get setThemesSubtitle =>
      'Faste, håndlavede paletter. Ingen tilpasning nødvendig - tryk blot for at anvende.';

  @override
  String get deleteBookmarkQuestion => 'Slet bogmærke?';

  @override
  String get cancel => 'Annuller';

  @override
  String get delete => 'Slet';

  @override
  String get bookmarkSaved => 'Bogmærke gemt';

  @override
  String get couldNotDeleteBookmark => 'Kunne ikke slette bogmærket.';

  @override
  String couldNotNavigate(Object reference) {
    return 'Kunne ikke navigere til $reference.';
  }

  @override
  String get pageNotFound => 'Siden blev ikke fundet';

  @override
  String noRouteDefined(Object routeName) {
    return 'Ingen rute defineret for \"$routeName\"';
  }

  @override
  String get english => 'Engelsk';

  @override
  String get spanish => 'Spansk';

  @override
  String get systemDefault => 'Systemstandard';

  @override
  String get languageStatusEnglish => 'Engelsk reserve er aktiv';

  @override
  String get languageStatusSystem => 'Bruger systemsprog';

  @override
  String languageStatusSelected(Object languageName) {
    return 'Valgt sprog: $languageName';
  }

  @override
  String get themeLabel => 'Tema';

  @override
  String get notFoundTitle => 'Siden blev ikke fundet';

  @override
  String get loadingCyberBible => 'Indlæser Cyber Bible...';

  @override
  String get couldNotOpenDatabase =>
      'Kunne ikke åbne Bibeldatabasen. Prøv igen.';

  @override
  String get homeTagline => 'En gratis Bibelstudieapp med åben kildekode';

  @override
  String get readTheBible => 'Læs Bibelen';

  @override
  String get settingsTooltip => 'Indstillinger';

  @override
  String get themeChoose => 'Vælg tema';

  @override
  String get customThemes => 'Tilpasselige temaer';

  @override
  String get customThemesSubtitle =>
      'Tryk på et kort for at vælge en fremhævelsesfarve. \"Klassisk hvid\" understøtter også lys, mørk og systemtilstand.';

  @override
  String get setThemesLabel => 'FASTLAGTE TEMAER';

  @override
  String get deleteBookmarkDialog => 'Slet bogmærke?';

  @override
  String removeBookmarkMessage(Object details, Object reference) {
    return 'Fjern \"$reference\"$details?\n\nDette kan ikke fortrydes.';
  }

  @override
  String get couldNotLoadBookmarks =>
      'Kunne ikke indlæse bogmærker. Prøv igen.';

  @override
  String get bookmarkSavedMessage => 'Bogmærke gemt';

  @override
  String get couldNotSaveBookmark => 'Kunne ikke gemme bogmærket.';

  @override
  String get noBookmarksMatchFilter => 'Ingen bogmærker matcher dette filter.';

  @override
  String get clearFilter => 'Ryd filter';

  @override
  String get traditionalOrderLabel => 'Traditionel rækkefølge';

  @override
  String get alphabeticalOrderLabel => 'Alfabetisk rækkefølge';

  @override
  String get bookmarksTabLabel => 'Bogmærker';

  @override
  String get fullChapter => 'Hele kapitlet';

  @override
  String get addBookmark => 'Tilføj bogmærke';

  @override
  String get selectVerse => 'Vælg vers';

  @override
  String get labelOptional => 'Etiket (valgfrit)';

  @override
  String get notesOptional => 'Noter (valgfrit)';

  @override
  String get save => 'Gem';

  @override
  String get goToVerse => 'Gå til vers';

  @override
  String verseTitle(Object verse) {
    return 'Vers $verse';
  }

  @override
  String chapterTitle(Object chapter) {
    return 'Kapitel $chapter';
  }

  @override
  String get switchToFullChapter => 'Skift til bogmærke for hele kapitlet';

  @override
  String get bookmarkSheetCancel => 'Annuller, luk bogmærkeark';

  @override
  String get pickCustomAccent => 'Vælg en brugerdefineret fremhævelsesfarve';

  @override
  String get apply => 'Anvend';

  @override
  String get custom => 'Brugerdefineret';

  @override
  String get brightnessSystem => 'System';

  @override
  String get brightnessLight => 'Lys';

  @override
  String get brightnessDark => 'Mørk';

  @override
  String get selectBook => 'Vælg en bog';

  @override
  String get bookmarkFilterAll => 'Alle';

  @override
  String get bookmarkFilterUnlabeled => 'Uden etiket';

  @override
  String get bookmarkSortRecent => 'Seneste først';

  @override
  String get bookmarkSortCanonical => 'Kanonisk rækkefølge';

  @override
  String get chapterRetry => 'Prøv igen';

  @override
  String get fontSize => 'Skriftstørrelse';

  @override
  String fontSizePixels(Object size) {
    return '$size px';
  }

  @override
  String get fontSizeSlider => 'Skyder til skriftstørrelse';

  @override
  String get fontSizeSliderHint => 'Stryg for at justere fra 12 til 28';

  @override
  String get fontPreview =>
      '\"I begyndelsen skabte Gud himlen og jorden.\" - 1 Mos 1:1';

  @override
  String get showVerseNumbersSubtitle =>
      'Vis versnumre som hævet skrift på læseskærmen.';

  @override
  String get showSectionHeadingsSubtitle =>
      'Vis afsnits- og salmeoverskrifter mellem passager.';

  @override
  String get wordsOfChristSubtitle =>
      'Vis Jesu ord med rødt. Deaktiver for én tekstfarve.';

  @override
  String get verseFormatTitle => 'Versformat';

  @override
  String get verseFormatSubtitle => 'Vælg, hvordan skriftteksten opstilles.';

  @override
  String get paragraphMode => 'Afsnit';

  @override
  String get verseListMode => 'Versliste';

  @override
  String get paragraphModeTooltip => 'Afsnitstilstand';

  @override
  String get verseListModeTooltip => 'Verslistetilstand';

  @override
  String get paragraphModeDescription =>
      'Teksten flyder sammenhængende med indrykkede afsnit som i en trykt bibel.';

  @override
  String get verseListModeDescription =>
      'Hvert skriftafsnit begynder på sin egen linje, så versgrupper er lette at se.';

  @override
  String get deleteBookmarkTooltip => 'Slet bogmærke';

  @override
  String deleteBookmarkSemantics(Object reference) {
    return 'Slet bogmærke $reference';
  }

  @override
  String sortBookmarksTooltip(Object sortOrder) {
    return 'Sortér: $sortOrder';
  }

  @override
  String get noBookmarksYet => 'Ingen bogmærker endnu.';

  @override
  String get noBookmarksYetHint =>
      'Tryk på bogmærkeikonet, mens du læser, for at gemme en placering.';

  @override
  String bookmarkReferenceNavigationError(Object reference) {
    return 'Kunne ikke navigere til $reference.';
  }

  @override
  String themeCardSemantics(Object description, Object name, Object selected) {
    return 'Temaet $name$selected. $description';
  }

  @override
  String get selectedThemeSuffix => ', aktuelt valgt';

  @override
  String get customisableAccentDescription => 'Tilpasselig fremhævelsesfarve.';

  @override
  String get fixedPaletteDescription => 'Fast palet.';

  @override
  String accentColourTitle(Object themeName) {
    return 'Fremhævelsesfarve - $themeName';
  }

  @override
  String get brightnessMode => 'LYSSTYRKE';

  @override
  String get lightMode => 'Lys tilstand';

  @override
  String get followSystemMode => 'Følg systemtilstand';

  @override
  String get darkMode => 'Mørk tilstand';

  @override
  String get customColourPicker => 'Brugerdefineret farvevælger';

  @override
  String get customColourTooltip => 'Brugerdefineret farve...';

  @override
  String get couldNotLoadBooks => 'Kunne ikke indlæse boglisten. Prøv igen.';

  @override
  String chapterLabel(Object chapter) {
    return 'Kapitel $chapter';
  }

  @override
  String get traditionalOrderBooks => 'Bøger i traditionel rækkefølge';

  @override
  String get alphabeticalOrderBooks => 'Bøger i alfabetisk rækkefølge';

  @override
  String get home => 'Hjem';

  @override
  String get addBookmarkTooltip => 'Tilføj bogmærke';

  @override
  String get chooseBookChapter => 'Vælg bog og kapitel';

  @override
  String get chooseVerse => 'Vælg vers';

  @override
  String get bookChapterQuickNavigation =>
      'Hurtig navigation for bog og kapitel';

  @override
  String get verseQuickNavigation => 'Hurtig navigation for vers';

  @override
  String get backToBooks => 'Tilbage til bøger';

  @override
  String get selectBookTitle => 'Vælg bog';

  @override
  String selectChapterTitle(Object bookName) {
    return 'Vælg kapitel ($bookName)';
  }

  @override
  String chapterSelectionLabel(Object chapter) {
    return 'Kapitel $chapter';
  }

  @override
  String verseSelectionLabel(Object verse) {
    return 'Vers $verse';
  }

  @override
  String fullChapterReference(Object bookName, Object chapter) {
    return 'Hele kapitlet: $bookName $chapter';
  }

  @override
  String get memorizeHint => 'Lær udenad';

  @override
  String get addNoteHint => 'Tilføj en note...';

  @override
  String get languageSearchHint => 'Søg efter sprog';

  @override
  String get languageModuleInstalled => 'Installeret';

  @override
  String get languageModulePending => 'Maskinoversættelse afventer';

  @override
  String get languageNoMatches => 'Ingen sprog matcher din søgning.';

  @override
  String get languageCatalogDescription =>
      'Sprog markeret som installerede fungerer offline. Andre sprog tilføjes som maskinoversatte moduler.';

  @override
  String get saveBookmarkSemantics => 'Gem bogmærke';

  @override
  String get couldNotLoadChapter => 'Kunne ikke indlæse kapitlet. Prøv igen.';

  @override
  String get couldNotLoadChapters =>
      'Kunne ikke indlæse kapitlerne. Prøv igen.';

  @override
  String verseWithText(Object text, Object verse) {
    return 'Vers $verse: $text';
  }

  @override
  String accentSwatchSemantics(Object name, Object selected) {
    return 'Fremhævelsesfarven $name$selected';
  }

  @override
  String get oldTestament => 'Det Gamle Testamente';

  @override
  String get newTestament => 'Det Nye Testamente';

  @override
  String get deuterocanonApocrypha => 'Deuterokanon / Apokryfer';
}
