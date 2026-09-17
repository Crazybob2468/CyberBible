// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Afrikaans (`af`).
class AppLocalizationsAf extends AppLocalizations {
  AppLocalizationsAf([String locale = 'af']) : super(locale);

  @override
  String get settingsTitle => 'Instellings';

  @override
  String get languageSection => 'Taal';

  @override
  String get useSystemLanguage => 'Gebruik stelseltaal';

  @override
  String get useSystemLanguageSubtitle => 'Pas verstek by die toestel se taal.';

  @override
  String get currentLanguage => 'Huidige taal';

  @override
  String get appLanguage => 'Programtaal';

  @override
  String get chooseLanguage => 'Kies taal';

  @override
  String get theme => 'Tema';

  @override
  String get appearance => 'Voorkoms';

  @override
  String get textSection => 'Teks';

  @override
  String get readingFormatSection => 'Leesformaat';

  @override
  String get displaySection => 'Vertoon';

  @override
  String get verseNumbers => 'Versnommers';

  @override
  String get sectionHeadings => 'Afdelingopskrifte';

  @override
  String get redLetterText => 'Rooiletterteks';

  @override
  String get selectABook => 'Kies \'n boek';

  @override
  String get traditionalOrder => 'Tradisionele volgorde';

  @override
  String get alphabeticalOrder => 'Alfabetiese volgorde';

  @override
  String get bookmarks => 'Boekmerke';

  @override
  String get retry => 'Probeer weer';

  @override
  String get chooseTheme => 'Kies tema';

  @override
  String get customisableThemes => 'Aanpasbare temas';

  @override
  String get customisableThemesSubtitle =>
      'Tik \'n kaart om \'n aksentkleur te kies. \"Klassieke Wit\" ondersteun ook Lig-, Donker- en Stelselmodusse.';

  @override
  String get setThemes => 'VASGESTELDE TEMAS';

  @override
  String get setThemesSubtitle =>
      'Vaste, sorgvuldig saamgestelde palette. Geen aanpassing nodig nie - tik net om toe te pas.';

  @override
  String get deleteBookmarkQuestion => 'Skrap boekmerk?';

  @override
  String get cancel => 'Kanselleer';

  @override
  String get delete => 'Skrap';

  @override
  String get bookmarkSaved => 'Boekmerk gestoor';

  @override
  String get couldNotDeleteBookmark => 'Kon nie boekmerk skrap nie.';

  @override
  String couldNotNavigate(Object reference) {
    return 'Kon nie na $reference navigeer nie.';
  }

  @override
  String get pageNotFound => 'Bladsy nie gevind nie';

  @override
  String noRouteDefined(Object routeName) {
    return 'Geen roete vir \"$routeName\" gedefinieer nie';
  }

  @override
  String get english => 'Engels';

  @override
  String get spanish => 'Spaans';

  @override
  String get systemDefault => 'Stelselverstek';

  @override
  String get languageStatusEnglish => 'Engelse terugval aktief';

  @override
  String get languageStatusSystem => 'Gebruik stelseltaal';

  @override
  String languageStatusSelected(Object languageName) {
    return 'Gekose taal: $languageName';
  }

  @override
  String get themeLabel => 'Tema';

  @override
  String get notFoundTitle => 'Bladsy nie gevind nie';

  @override
  String get loadingCyberBible => 'Laai Cyber Bible...';

  @override
  String get couldNotOpenDatabase =>
      'Kon nie die Bybeldatabasis oopmaak nie. Probeer asseblief weer.';

  @override
  String get homeTagline => '\'n Gratis oopbron-Bybelstudieprogram';

  @override
  String get readTheBible => 'Lees die Bybel';

  @override
  String get settingsTooltip => 'Instellings';

  @override
  String get themeChoose => 'Kies tema';

  @override
  String get customThemes => 'Aanpasbare temas';

  @override
  String get customThemesSubtitle =>
      'Tik \'n kaart om \'n aksentkleur te kies. \"Klassieke Wit\" ondersteun ook Lig-, Donker- en Stelselmodusse.';

  @override
  String get setThemesLabel => 'VASGESTELDE TEMAS';

  @override
  String get deleteBookmarkDialog => 'Skrap boekmerk?';

  @override
  String removeBookmarkMessage(Object details, Object reference) {
    return 'Verwyder \"$reference\"$details?\n\nDit kan nie ontdoen word nie.';
  }

  @override
  String get couldNotLoadBookmarks =>
      'Kon nie boekmerke laai nie. Probeer asseblief weer.';

  @override
  String get bookmarkSavedMessage => 'Boekmerk gestoor';

  @override
  String get couldNotSaveBookmark => 'Kon nie boekmerk stoor nie.';

  @override
  String get noBookmarksMatchFilter =>
      'Geen boekmerke pas by hierdie filter nie.';

  @override
  String get clearFilter => 'Maak filter skoon';

  @override
  String get traditionalOrderLabel => 'Tradisionele volgorde';

  @override
  String get alphabeticalOrderLabel => 'Alfabetiese volgorde';

  @override
  String get bookmarksTabLabel => 'Boekmerke';

  @override
  String get fullChapter => 'Volledige hoofstuk';

  @override
  String get addBookmark => 'Voeg boekmerk by';

  @override
  String get selectVerse => 'Kies vers';

  @override
  String get labelOptional => 'Etiket (opsioneel)';

  @override
  String get notesOptional => 'Notas (opsioneel)';

  @override
  String get save => 'Stoor';

  @override
  String get goToVerse => 'Gaan na vers';

  @override
  String verseTitle(Object verse) {
    return 'Vers $verse';
  }

  @override
  String chapterTitle(Object chapter) {
    return 'Hoofstuk $chapter';
  }

  @override
  String get switchToFullChapter =>
      'Skakel oor na boekmerk vir volledige hoofstuk';

  @override
  String get bookmarkSheetCancel => 'Kanselleer, sluit boekmerkblad';

  @override
  String get pickCustomAccent => 'Kies \'n pasgemaakte aksent';

  @override
  String get apply => 'Pas toe';

  @override
  String get custom => 'Pasgemaak';

  @override
  String get brightnessSystem => 'Stelsel';

  @override
  String get brightnessLight => 'Lig';

  @override
  String get brightnessDark => 'Donker';

  @override
  String get selectBook => 'Kies \'n boek';

  @override
  String get bookmarkFilterAll => 'Alles';

  @override
  String get bookmarkFilterUnlabeled => 'Sonder etiket';

  @override
  String get bookmarkSortRecent => 'Mees onlangs eerste';

  @override
  String get bookmarkSortCanonical => 'Kanonieke volgorde';

  @override
  String get chapterRetry => 'Probeer weer';

  @override
  String get fontSize => 'Lettergrootte';

  @override
  String fontSizePixels(Object size) {
    return '$size px';
  }

  @override
  String get fontSizeSlider => 'Lettergrootte-skuifbalk';

  @override
  String get fontSizeSliderHint => 'Swiep om van 12 na 28 aan te pas';

  @override
  String get fontPreview =>
      '\"In die begin het God die hemel en die aarde geskep.\" - Gen 1:1';

  @override
  String get showVerseNumbersSubtitle =>
      'Wys versnommers as boskrif in die leesskerm.';

  @override
  String get showSectionHeadingsSubtitle =>
      'Wys afdeling- en Psalmopskrifte tussen gedeeltes.';

  @override
  String get wordsOfChristSubtitle =>
      'Wys Jesus se woorde in rooi. Deaktiveer vir een tekskleur.';

  @override
  String get verseFormatTitle => 'Versformaat';

  @override
  String get verseFormatSubtitle => 'Kies hoe die Skrifteks uitgelê word.';

  @override
  String get paragraphMode => 'Paragraaf';

  @override
  String get verseListMode => 'Verslys';

  @override
  String get paragraphModeTooltip => 'Paragraafmodus';

  @override
  String get verseListModeTooltip => 'Verslysmodus';

  @override
  String get paragraphModeDescription =>
      'Teks vloei aaneenlopend met ingekeepte paragrawe, soos \'n gedrukte Bybel.';

  @override
  String get verseListModeDescription =>
      'Elke Skrifparagraaf begin op sy eie reël, sodat versgroepe maklik raakgesien word.';

  @override
  String get deleteBookmarkTooltip => 'Skrap boekmerk';

  @override
  String deleteBookmarkSemantics(Object reference) {
    return 'Skrap boekmerk $reference';
  }

  @override
  String sortBookmarksTooltip(Object sortOrder) {
    return 'Sorteer: $sortOrder';
  }

  @override
  String get noBookmarksYet => 'Nog geen boekmerke nie.';

  @override
  String get noBookmarksYetHint =>
      'Tik die boekmerkikoon terwyl jy lees om \'n plek te stoor.';

  @override
  String bookmarkReferenceNavigationError(Object reference) {
    return 'Kon nie na $reference navigeer nie.';
  }

  @override
  String themeCardSemantics(Object description, Object name, Object selected) {
    return '$name-tema$selected. $description';
  }

  @override
  String get selectedThemeSuffix => ', tans gekies';

  @override
  String get customisableAccentDescription => 'Aanpasbare aksentkleur.';

  @override
  String get fixedPaletteDescription => 'Vaste palet.';

  @override
  String accentColourTitle(Object themeName) {
    return 'Aksentkleur - $themeName';
  }

  @override
  String get brightnessMode => 'HELDERHEIDSMODUS';

  @override
  String get lightMode => 'Ligmodus';

  @override
  String get followSystemMode => 'Volg stelselmodus';

  @override
  String get darkMode => 'Donkermodus';

  @override
  String get customColourPicker => 'Pasgemaakte kleurkieser';

  @override
  String get customColourTooltip => 'Pasgemaakte kleur...';

  @override
  String get couldNotLoadBooks =>
      'Kon nie die boeklys laai nie. Probeer asseblief weer.';

  @override
  String chapterLabel(Object chapter) {
    return 'Hoofstuk $chapter';
  }

  @override
  String get traditionalOrderBooks => 'Boeke in tradisionele volgorde';

  @override
  String get alphabeticalOrderBooks => 'Boeke in alfabetiese volgorde';

  @override
  String get home => 'Tuis';

  @override
  String get addBookmarkTooltip => 'Voeg boekmerk by';

  @override
  String get chooseBookChapter => 'Kies boek en hoofstuk';

  @override
  String get chooseVerse => 'Kies vers';

  @override
  String get bookChapterQuickNavigation =>
      'Vinnige navigasie vir boek en hoofstuk';

  @override
  String get verseQuickNavigation => 'Vinnige navigasie vir vers';

  @override
  String get backToBooks => 'Terug na boeke';

  @override
  String get selectBookTitle => 'Kies boek';

  @override
  String selectChapterTitle(Object bookName) {
    return 'Kies hoofstuk ($bookName)';
  }

  @override
  String chapterSelectionLabel(Object chapter) {
    return 'Hoofstuk $chapter';
  }

  @override
  String verseSelectionLabel(Object verse) {
    return 'Vers $verse';
  }

  @override
  String fullChapterReference(Object bookName, Object chapter) {
    return 'Volledige hoofstuk: $bookName $chapter';
  }

  @override
  String get memorizeHint => 'Memoriseer';

  @override
  String get addNoteHint => 'Voeg \'n nota by...';

  @override
  String get languageSearchHint => 'Soek tale';

  @override
  String get languageModuleInstalled => 'Geïnstalleer';

  @override
  String get languageModulePending => 'Masjienvertaling hangende';

  @override
  String get languageNoMatches => 'Geen tale pas by jou soektog nie.';

  @override
  String get languageCatalogDescription =>
      'Tale wat as geïnstalleer gemerk is, werk vanlyn. Ander tale sal as masjienvertaalde modules bygevoeg word.';

  @override
  String get saveBookmarkSemantics => 'Stoor boekmerk';

  @override
  String get couldNotLoadChapter =>
      'Kon nie die hoofstuk laai nie. Probeer asseblief weer.';

  @override
  String get couldNotLoadChapters =>
      'Kon nie hoofstukke laai nie. Probeer asseblief weer.';

  @override
  String verseWithText(Object text, Object verse) {
    return 'Vers $verse: $text';
  }

  @override
  String accentSwatchSemantics(Object name, Object selected) {
    return '$name-aksentkleur$selected';
  }

  @override
  String get oldTestament => 'Ou Testament';

  @override
  String get newTestament => 'Nuwe Testament';

  @override
  String get deuterocanonApocrypha => 'Deuterokanon / Apokriewe';
}
