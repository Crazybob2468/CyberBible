// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Norwegian Nynorsk (`nn`).
class AppLocalizationsNn extends AppLocalizations {
  AppLocalizationsNn([String locale = 'nn']) : super(locale);

  @override
  String get settingsTitle => 'Innstillingar';

  @override
  String get languageSection => 'Språk';

  @override
  String get useSystemLanguage => 'Bruk systemspråk';

  @override
  String get useSystemLanguageSubtitle =>
      'Bruk språket på eininga som standard.';

  @override
  String get currentLanguage => 'Gjeldande språk';

  @override
  String get appLanguage => 'Appspråk';

  @override
  String get chooseLanguage => 'Vel språk';

  @override
  String get theme => 'Tema';

  @override
  String get appearance => 'Utsjånad';

  @override
  String get textSection => 'Tekst';

  @override
  String get readingFormatSection => 'Leseformat';

  @override
  String get displaySection => 'Vising';

  @override
  String get verseNumbers => 'Versnummer';

  @override
  String get sectionHeadings => 'Seksjonsoverskrifter';

  @override
  String get redLetterText => 'Raud skrift';

  @override
  String get selectABook => 'Vel ei bok';

  @override
  String get traditionalOrder => 'Tradisjonell rekkjefølgje';

  @override
  String get alphabeticalOrder => 'Alfabetisk rekkjefølgje';

  @override
  String get bookmarks => 'Bokmerke';

  @override
  String get retry => 'Prøv igjen';

  @override
  String get chooseTheme => 'Vel tema';

  @override
  String get customisableThemes => 'Tema som kan tilpassast';

  @override
  String get customisableThemesSubtitle =>
      'Trykk på eit kort for å velja ein aksentfarge. \"Classic White\" støttar òg lys, mørk og systemmodus.';

  @override
  String get setThemes => 'FASTE TEMA';

  @override
  String get setThemesSubtitle =>
      'Faste, handlaga fargepalettar. Ingen tilpassing trengst; trykk for å bruka.';

  @override
  String get deleteBookmarkQuestion => 'Slett bokmerket?';

  @override
  String get cancel => 'Avbryt';

  @override
  String get delete => 'Slett';

  @override
  String get bookmarkSaved => 'Bokmerket er lagra';

  @override
  String get couldNotDeleteBookmark => 'Klarte ikkje å sletta bokmerket.';

  @override
  String couldNotNavigate(Object reference) {
    return 'Klarte ikkje å gå til $reference.';
  }

  @override
  String get pageNotFound => 'Fann ikkje sida';

  @override
  String noRouteDefined(Object routeName) {
    return 'Ingen rute er definert for \"$routeName\"';
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
  String get languageStatusSystem => 'Brukar systemspråket';

  @override
  String languageStatusSelected(Object languageName) {
    return 'Valt språk: $languageName';
  }

  @override
  String get themeLabel => 'Tema';

  @override
  String get notFoundTitle => 'Fann ikkje sida';

  @override
  String get loadingCyberBible => 'Lastar Cyber Bible...';

  @override
  String get couldNotOpenDatabase =>
      'Klarte ikkje å opna bibeldatabasen. Prøv igjen.';

  @override
  String get homeTagline => 'Ei gratis bibelstudieapp med open kjeldekode';

  @override
  String get readTheBible => 'Les Bibelen';

  @override
  String get settingsTooltip => 'Innstillingar';

  @override
  String get themeChoose => 'Vel tema';

  @override
  String get customThemes => 'Tema som kan tilpassast';

  @override
  String get customThemesSubtitle =>
      'Trykk på eit kort for å velja ein aksentfarge. \"Classic White\" støttar òg lys, mørk og systemmodus.';

  @override
  String get setThemesLabel => 'FASTE TEMA';

  @override
  String get deleteBookmarkDialog => 'Slett bokmerket?';

  @override
  String removeBookmarkMessage(Object details, Object reference) {
    return 'Fjern \"$reference\"$details?\n\nDette kan ikkje angrast.';
  }

  @override
  String get couldNotLoadBookmarks =>
      'Klarte ikkje å lasta bokmerka. Prøv igjen.';

  @override
  String get bookmarkSavedMessage => 'Bokmerket er lagra';

  @override
  String get couldNotSaveBookmark => 'Klarte ikkje å lagra bokmerket.';

  @override
  String get noBookmarksMatchFilter =>
      'Ingen bokmerke passar til dette filteret.';

  @override
  String get clearFilter => 'Tøm filteret';

  @override
  String get traditionalOrderLabel => 'Tradisjonell rekkjefølgje';

  @override
  String get alphabeticalOrderLabel => 'Alfabetisk rekkjefølgje';

  @override
  String get bookmarksTabLabel => 'Bokmerke';

  @override
  String get fullChapter => 'Heile kapittelet';

  @override
  String get addBookmark => 'Legg til bokmerke';

  @override
  String get selectVerse => 'Vel vers';

  @override
  String get labelOptional => 'Etikett (valfri)';

  @override
  String get notesOptional => 'Notat (valfrie)';

  @override
  String get save => 'Lagra';

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
  String get switchToFullChapter => 'Byt til bokmerke for heile kapittelet';

  @override
  String get bookmarkSheetCancel => 'Avbryt og lukk bokmerkepanelet';

  @override
  String get pickCustomAccent => 'Vel ein eigendefinert aksentfarge';

  @override
  String get apply => 'Bruk';

  @override
  String get custom => 'Eigendefinert';

  @override
  String get brightnessSystem => 'Systemet';

  @override
  String get brightnessLight => 'Lys';

  @override
  String get brightnessDark => 'Mørk';

  @override
  String get selectBook => 'Vel ei bok';

  @override
  String get bookmarkFilterAll => 'Alle';

  @override
  String get bookmarkFilterUnlabeled => 'Utan etikett';

  @override
  String get bookmarkSortRecent => 'Nyaste først';

  @override
  String get bookmarkSortCanonical => 'Kanonisk rekkjefølgje';

  @override
  String get chapterRetry => 'Prøv igjen';

  @override
  String get fontSize => 'Skriftstorleik';

  @override
  String fontSizePixels(Object size) {
    return '$size px';
  }

  @override
  String get fontSizeSlider => 'Glidebrytar for skriftstorleik';

  @override
  String get fontSizeSliderHint => 'Dra for å justera frå 12 til 28';

  @override
  String get fontPreview =>
      '\"I opphavet skapte Gud himmelen og jorda.\" — Gen 1:1';

  @override
  String get showVerseNumbersSubtitle => 'Vis heva versnummer på leseskjermen.';

  @override
  String get showSectionHeadingsSubtitle =>
      'Vis overskrifter for avsnitt og salmar mellom tekststykka.';

  @override
  String get wordsOfChristSubtitle =>
      'Vis Jesu ord med raud skrift. Slå av for éin tekstfarge.';

  @override
  String get verseFormatTitle => 'Versformat';

  @override
  String get verseFormatSubtitle => 'Vel korleis skrifta skal setjast opp.';

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
      'Teksten flyt samanhengande med innrykte avsnitt, som i ein trykt bibel.';

  @override
  String get verseListModeDescription =>
      'Kvart skriftavsnitt byrjar på si eiga linje, slik at versgrupper er lette å finna.';

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
  String get noBookmarksYet => 'Ingen bokmerke enno.';

  @override
  String get noBookmarksYetHint =>
      'Trykk på bokmerkeikonet medan du les for å lagra ein stad.';

  @override
  String bookmarkReferenceNavigationError(Object reference) {
    return 'Klarte ikkje å gå til $reference.';
  }

  @override
  String themeCardSemantics(Object description, Object name, Object selected) {
    return 'Temaet $name$selected. $description';
  }

  @override
  String get selectedThemeSuffix => ', valt no';

  @override
  String get customisableAccentDescription => 'Aksentfarge som kan tilpassast.';

  @override
  String get fixedPaletteDescription => 'Fast fargepalett.';

  @override
  String accentColourTitle(Object themeName) {
    return 'Aksentfarge — $themeName';
  }

  @override
  String get brightnessMode => 'LYSMODUS';

  @override
  String get lightMode => 'Lys modus';

  @override
  String get followSystemMode => 'Følg systemmodus';

  @override
  String get darkMode => 'Mørk modus';

  @override
  String get customColourPicker => 'Veljar for eigendefinert farge';

  @override
  String get customColourTooltip => 'Eigendefinert farge…';

  @override
  String get couldNotLoadBooks => 'Klarte ikkje å lasta boklista. Prøv igjen.';

  @override
  String chapterLabel(Object chapter) {
    return 'Kapittel $chapter';
  }

  @override
  String get traditionalOrderBooks => 'Bøker i tradisjonell rekkjefølgje';

  @override
  String get alphabeticalOrderBooks => 'Bøker i alfabetisk rekkjefølgje';

  @override
  String get home => 'Heim';

  @override
  String get addBookmarkTooltip => 'Legg til bokmerke';

  @override
  String get chooseBookChapter => 'Vel bok og kapittel';

  @override
  String get chooseVerse => 'Vel vers';

  @override
  String get bookChapterQuickNavigation =>
      'Snøggnavigering til bok og kapittel';

  @override
  String get verseQuickNavigation => 'Snøggnavigering til vers';

  @override
  String get backToBooks => 'Tilbake til bøkene';

  @override
  String get selectBookTitle => 'Vel bok';

  @override
  String selectChapterTitle(Object bookName) {
    return 'Vel kapittel ($bookName)';
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
    return 'Heile kapittelet: $bookName $chapter';
  }

  @override
  String get memorizeHint => 'Lær utanåt';

  @override
  String get addNoteHint => 'Legg til eit notat...';

  @override
  String get languageSearchHint => 'Søk etter språk';

  @override
  String get languageModuleInstalled => 'Installert';

  @override
  String get languageModulePending => 'Maskinomsetjing ventar';

  @override
  String get languageNoMatches => 'Ingen språk passar til søket ditt.';

  @override
  String get languageCatalogDescription =>
      'Installerte språk fungerer utan nett. Andre språk kjem som maskinomsette modular.';

  @override
  String get saveBookmarkSemantics => 'Lagra bokmerke';

  @override
  String get couldNotLoadChapter =>
      'Klarte ikkje å lasta kapittelet. Prøv igjen.';

  @override
  String get couldNotLoadChapters =>
      'Klarte ikkje å lasta kapitla. Prøv igjen.';

  @override
  String verseWithText(Object text, Object verse) {
    return 'Vers $verse: $text';
  }

  @override
  String accentSwatchSemantics(Object name, Object selected) {
    return 'Aksentfargen $name$selected';
  }

  @override
  String get oldTestament => 'Det gamle testamentet';

  @override
  String get newTestament => 'Det nye testamentet';

  @override
  String get deuterocanonApocrypha => 'Deuterokanoniske bøker / apokryfane';
}
