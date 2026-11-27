// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Dutch Flemish (`nl`).
class AppLocalizationsNl extends AppLocalizations {
  AppLocalizationsNl([String locale = 'nl']) : super(locale);

  @override
  String get settingsTitle => 'Instellingen';

  @override
  String get languageSection => 'Taal';

  @override
  String get useSystemLanguage => 'Systeemtaal gebruiken';

  @override
  String get useSystemLanguageSubtitle =>
      'Stel standaard de taal van je apparaat in.';

  @override
  String get currentLanguage => 'Huidige taal';

  @override
  String get appLanguage => 'App-taal';

  @override
  String get chooseLanguage => 'Kies taal';

  @override
  String get theme => 'Thema';

  @override
  String get appearance => 'Uiterlijk';

  @override
  String get textSection => 'Tekst';

  @override
  String get readingFormatSection => 'Leesformaat';

  @override
  String get displaySection => 'Weergave';

  @override
  String get verseNumbers => 'Versnummers';

  @override
  String get sectionHeadings => 'Sectiekoppen';

  @override
  String get redLetterText => 'Rode tekst';

  @override
  String get selectABook => 'Kies een boek';

  @override
  String get traditionalOrder => 'Traditionele volgorde';

  @override
  String get alphabeticalOrder => 'Alfabetische volgorde';

  @override
  String get bookmarks => 'Bladwijzers';

  @override
  String get retry => 'Opnieuw proberen';

  @override
  String get chooseTheme => 'Kies thema';

  @override
  String get customisableThemes => 'Aanpasbare thema’s';

  @override
  String get customisableThemesSubtitle =>
      'Tik op een kaart om een accentkleur te kiezen. „Classic White” ondersteunt ook de modi Licht, Donker en Systeem.';

  @override
  String get setThemes => 'MOTYWEN INSTELLEN';

  @override
  String get setThemesSubtitle =>
      'Vaste, met de hand gemaakte paletten. Aanpassen is niet nodig — tik om toe te passen.';

  @override
  String get deleteBookmarkQuestion => 'Bladwijzer verwijderen?';

  @override
  String get cancel => 'Annuleren';

  @override
  String get delete => 'Verwijderen';

  @override
  String get bookmarkSaved => 'Bladwijzer opgeslagen';

  @override
  String get couldNotDeleteBookmark =>
      'De bladwijzer kon niet worden verwijderd.';

  @override
  String couldNotNavigate(Object reference) {
    return 'Kon niet navigeren naar $reference.';
  }

  @override
  String get pageNotFound => 'Pagina niet gevonden';

  @override
  String noRouteDefined(Object routeName) {
    return 'Geen route gedefinieerd voor „$routeName”';
  }

  @override
  String get english => 'Engels';

  @override
  String get spanish => 'Español';

  @override
  String get systemDefault => 'Systeemstandaard';

  @override
  String get languageStatusEnglish => 'Engelse terugvaltaal actief';

  @override
  String get languageStatusSystem => 'Systeemtaal wordt gebruikt';

  @override
  String languageStatusSelected(Object languageName) {
    return 'Geselecteerde taal: $languageName';
  }

  @override
  String get themeLabel => 'Thema';

  @override
  String get notFoundTitle => 'Pagina niet gevonden';

  @override
  String get loadingCyberBible => 'Cyber Bible wordt geladen…';

  @override
  String get couldNotOpenDatabase =>
      'De Bijbeldatabase kon niet worden geopend. Probeer het opnieuw.';

  @override
  String get homeTagline => 'Een gratis en open source Bijbelstudie-app';

  @override
  String get readTheBible => 'Lees de Bijbel';

  @override
  String get settingsTooltip => 'Instellingen';

  @override
  String get themeChoose => 'Kies thema';

  @override
  String get customThemes => 'Aanpasbare thema’s';

  @override
  String get customThemesSubtitle =>
      'Tik op een kaart om een accentkleur te kiezen. „Classic White” ondersteunt ook de modi Licht, Donker en Systeem.';

  @override
  String get setThemesLabel => 'MOTYWEN INSTELLEN';

  @override
  String get deleteBookmarkDialog => 'Bladwijzer verwijderen?';

  @override
  String removeBookmarkMessage(Object details, Object reference) {
    return '„$reference”$details verwijderen?\n\nDit kan niet ongedaan worden gemaakt.';
  }

  @override
  String get couldNotLoadBookmarks =>
      'De bladwijzers konden niet worden geladen. Probeer het opnieuw.';

  @override
  String get bookmarkSavedMessage => 'Bladwijzer opgeslagen';

  @override
  String get couldNotSaveBookmark =>
      'De bladwijzer kon niet worden opgeslagen.';

  @override
  String get noBookmarksMatchFilter =>
      'Geen bladwijzers komen overeen met dit filter.';

  @override
  String get clearFilter => 'Filter wissen';

  @override
  String get traditionalOrderLabel => 'Traditionele volgorde';

  @override
  String get alphabeticalOrderLabel => 'Alfabetische volgorde';

  @override
  String get bookmarksTabLabel => 'Bladwijzers';

  @override
  String get fullChapter => 'Heel hoofdstuk';

  @override
  String get addBookmark => 'Bladwijzer toevoegen';

  @override
  String get selectVerse => 'Kies vers';

  @override
  String get labelOptional => 'Label (optioneel)';

  @override
  String get notesOptional => 'Notities (optioneel)';

  @override
  String get save => 'Opslaan';

  @override
  String get goToVerse => 'Ga naar vers';

  @override
  String verseTitle(Object verse) {
    return 'Vers $verse';
  }

  @override
  String chapterTitle(Object chapter) {
    return 'Hoofdstuk $chapter';
  }

  @override
  String get switchToFullChapter =>
      'Overschakelen naar bladwijzer voor volledig hoofdstuk';

  @override
  String get bookmarkSheetCancel => 'Annuleren en bladwijzerpaneel sluiten';

  @override
  String get pickCustomAccent => 'Aangepaste accentkleur kiezen';

  @override
  String get apply => 'Toepassen';

  @override
  String get custom => 'Aangepast';

  @override
  String get brightnessSystem => 'Systeem';

  @override
  String get brightnessLight => 'Licht';

  @override
  String get brightnessDark => 'Donker';

  @override
  String get selectBook => 'Kies een boek';

  @override
  String get bookmarkFilterAll => 'Alle';

  @override
  String get bookmarkFilterUnlabeled => 'Zonder label';

  @override
  String get bookmarkSortRecent => 'Nieuwste eerst';

  @override
  String get bookmarkSortCanonical => 'Bijbelvolgorde';

  @override
  String get chapterRetry => 'Opnieuw proberen';

  @override
  String get fontSize => 'Lettergrootte';

  @override
  String fontSizePixels(Object size) {
    return '$size px';
  }

  @override
  String get fontSizeSlider => 'Schuifregelaar voor lettergrootte';

  @override
  String get fontSizeSliderHint =>
      'Veeg om de grootte aan te passen van 12 tot 28';

  @override
  String get fontPreview =>
      '„In het begin schiep God de hemel en de aarde.” — Gen 1:1';

  @override
  String get showVerseNumbersSubtitle =>
      'Toon superscript versnummers in het leesscherm.';

  @override
  String get showSectionHeadingsSubtitle =>
      'Toon tussen passages de koppen van gedeelten en Psalmen.';

  @override
  String get wordsOfChristSubtitle =>
      'Toon de woorden van Jezus in rood. Schakel dit uit voor één tekstkleur.';

  @override
  String get verseFormatTitle => 'Versnotatie';

  @override
  String get verseFormatSubtitle =>
      'Kies hoe de Bijbeltekst wordt weergegeven.';

  @override
  String get paragraphMode => 'Alinea';

  @override
  String get verseListMode => 'Verslijst';

  @override
  String get paragraphModeTooltip => 'Alineamodus';

  @override
  String get verseListModeTooltip => 'Verslijstmodus';

  @override
  String get paragraphModeDescription =>
      'De tekst loopt door met ingesprongen alinea’s, zoals in een gedrukte Bijbel.';

  @override
  String get verseListModeDescription =>
      'Elke alinea uit de Bijbel begint op een eigen regel, zodat versgroepen makkelijk te herkennen zijn.';

  @override
  String get deleteBookmarkTooltip => 'Bladwijzer verwijderen';

  @override
  String deleteBookmarkSemantics(Object reference) {
    return 'Bladwijzer $reference verwijderen';
  }

  @override
  String sortBookmarksTooltip(Object sortOrder) {
    return 'Sorteren: $sortOrder';
  }

  @override
  String get noBookmarksYet => 'Nog geen bladwijzers.';

  @override
  String get noBookmarksYetHint =>
      'Tik tijdens het lezen op het bladwijzerpictogram om een locatie op te slaan.';

  @override
  String bookmarkReferenceNavigationError(Object reference) {
    return 'Kon niet navigeren naar $reference.';
  }

  @override
  String themeCardSemantics(Object description, Object name, Object selected) {
    return 'Thema $name$selected. $description';
  }

  @override
  String get selectedThemeSuffix => ', momenteel geselecteerd';

  @override
  String get customisableAccentDescription => 'Aanpasbare accentkleur.';

  @override
  String get fixedPaletteDescription => 'Vast kleurenpalet.';

  @override
  String accentColourTitle(Object themeName) {
    return 'Accentkleur — $themeName';
  }

  @override
  String get brightnessMode => 'HELDERHEIDSMODUS';

  @override
  String get lightMode => 'Lichte modus';

  @override
  String get followSystemMode => 'Systeem volgen';

  @override
  String get darkMode => 'Donkere modus';

  @override
  String get customColourPicker => 'Aangepaste kleurenkiezer';

  @override
  String get customColourTooltip => 'Aangepaste kleur…';

  @override
  String get couldNotLoadBooks =>
      'De boekenlijst kon niet worden geladen. Probeer het opnieuw.';

  @override
  String chapterLabel(Object chapter) {
    return 'Hoofdstuk $chapter';
  }

  @override
  String get traditionalOrderBooks => 'Boeken in traditionele volgorde';

  @override
  String get alphabeticalOrderBooks => 'Boeken in alfabetische volgorde';

  @override
  String get home => 'Startpagina';

  @override
  String get addBookmarkTooltip => 'Bladwijzer toevoegen';

  @override
  String get chooseBookChapter => 'Kies een boek en hoofdstuk';

  @override
  String get chooseVerse => 'Kies een vers';

  @override
  String get bookChapterQuickNavigation =>
      'Snel navigeren naar boek en hoofdstuk';

  @override
  String get verseQuickNavigation => 'Snel navigeren naar een vers';

  @override
  String get backToBooks => 'Terug naar boeken';

  @override
  String get selectBookTitle => 'Boek selecteren';

  @override
  String selectChapterTitle(Object bookName) {
    return 'Hoofdstuk selecteren ($bookName)';
  }

  @override
  String chapterSelectionLabel(Object chapter) {
    return 'Hoofdstuk $chapter';
  }

  @override
  String verseSelectionLabel(Object verse) {
    return 'Vers $verse';
  }

  @override
  String fullChapterReference(Object bookName, Object chapter) {
    return 'Heel hoofdstuk: $bookName $chapter';
  }

  @override
  String get memorizeHint => 'Memoriseren';

  @override
  String get addNoteHint => 'Notitie toevoegen...';

  @override
  String get languageSearchHint => 'Talen zoeken';

  @override
  String get languageModuleInstalled => 'Geïnstalleerd';

  @override
  String get languageModulePending => 'Machinevertaling in afwachting';

  @override
  String get languageNoMatches =>
      'Geen talen komen overeen met je zoekopdracht.';

  @override
  String get languageCatalogDescription =>
      'Geïnstalleerde talen werken offline. Andere talen worden later als machinevertaalde modules toegevoegd.';

  @override
  String get saveBookmarkSemantics => 'Bladwijzer opslaan';

  @override
  String get couldNotLoadChapter =>
      'Het hoofdstuk kon niet worden geladen. Probeer het opnieuw.';

  @override
  String get couldNotLoadChapters =>
      'De hoofdstukken konden niet worden geladen. Probeer het opnieuw.';

  @override
  String verseWithText(Object text, Object verse) {
    return 'Vers $verse: $text';
  }

  @override
  String accentSwatchSemantics(Object name, Object selected) {
    return 'Accentkleur $name$selected';
  }

  @override
  String get oldTestament => 'Oude Testament';

  @override
  String get newTestament => 'Nieuwe Testament';

  @override
  String get deuterocanonApocrypha => 'Deuterocanon / Apocriefen';

  @override
  String footnoteTitle(Object caller) {
    return 'Voetnoot $caller';
  }

  @override
  String get closeFootnote => 'Voetnoot sluiten';

  @override
  String couldNotOpenFootnote(Object reference) {
    return 'Voetnoot $reference kan niet worden geopend.';
  }

  @override
  String get chapterFootnotesTitle => 'Voetnoten';

  @override
  String openScriptureReference(Object reference) {
    return '$reference openen';
  }

  @override
  String get couldNotLoadFootnotes =>
      'Voetnoten konden niet worden geladen. Probeer het opnieuw.';
}
