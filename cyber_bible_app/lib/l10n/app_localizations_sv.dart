// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Swedish (`sv`).
class AppLocalizationsSv extends AppLocalizations {
  AppLocalizationsSv([String locale = 'sv']) : super(locale);

  @override
  String get settingsTitle => 'Inställningar';

  @override
  String get languageSection => 'Språk';

  @override
  String get useSystemLanguage => 'Använd systemspråk';

  @override
  String get useSystemLanguageSubtitle => 'Matcha enhetens språk som standard.';

  @override
  String get currentLanguage => 'Aktuellt språk';

  @override
  String get appLanguage => 'Appens språk';

  @override
  String get chooseLanguage => 'Välj språk';

  @override
  String get theme => 'Tema';

  @override
  String get appearance => 'Utseende';

  @override
  String get textSection => 'Text';

  @override
  String get readingFormatSection => 'Läsformat';

  @override
  String get displaySection => 'Visa';

  @override
  String get verseNumbers => 'Versnummer';

  @override
  String get sectionHeadings => 'Avsnittsrubriker';

  @override
  String get redLetterText => 'Röd bokstäver text';

  @override
  String get selectABook => 'Välj en bok';

  @override
  String get traditionalOrder => 'Traditionell ordning';

  @override
  String get alphabeticalOrder => 'Alfabetisk ordning';

  @override
  String get bookmarks => 'Bokmärken';

  @override
  String get retry => 'Försöka igen';

  @override
  String get chooseTheme => 'Välj Tema';

  @override
  String get customisableThemes => 'Anpassningsbara teman';

  @override
  String get customisableThemesSubtitle =>
      'Tryck på ett kort för att välja en accentfärg. \"Classic White\" stöder även ljus, mörk och systemlägen.';

  @override
  String get setThemes => 'SÄTT TEMAN';

  @override
  String get setThemesSubtitle =>
      'Fasta, handgjorda paletter. Ingen anpassning behövs – tryck bara för att ansöka.';

  @override
  String get deleteBookmarkQuestion => 'Ta bort bokmärke?';

  @override
  String get cancel => 'Avboka';

  @override
  String get delete => 'Radera';

  @override
  String get bookmarkSaved => 'Bokmärket har sparats';

  @override
  String get couldNotDeleteBookmark => 'Det gick inte att ta bort bokmärket.';

  @override
  String couldNotNavigate(Object reference) {
    return 'Kunde inte navigera till $reference.';
  }

  @override
  String get pageNotFound => 'Sidan hittades inte';

  @override
  String noRouteDefined(Object routeName) {
    return 'Ingen rutt definierad för \"$routeName\"';
  }

  @override
  String get english => 'engelska';

  @override
  String get spanish => 'Español';

  @override
  String get systemDefault => 'System standard';

  @override
  String get languageStatusEnglish => 'Engelska fallback aktiv';

  @override
  String get languageStatusSystem => 'Använda systemspråk';

  @override
  String languageStatusSelected(Object languageName) {
    return 'Valt språk: $languageName';
  }

  @override
  String get themeLabel => 'Tema';

  @override
  String get notFoundTitle => 'Sidan hittades inte';

  @override
  String get loadingCyberBible => 'Laddar cyberbibeln...';

  @override
  String get couldNotOpenDatabase =>
      'Det gick inte att öppna bibeldatabasen. Försök igen.';

  @override
  String get homeTagline => 'En gratis bibelstudieapp med öppen källkod';

  @override
  String get readTheBible => 'Läs Bibeln';

  @override
  String get settingsTooltip => 'Inställningar';

  @override
  String get themeChoose => 'Välj Tema';

  @override
  String get customThemes => 'Anpassningsbara teman';

  @override
  String get customThemesSubtitle =>
      'Tryck på ett kort för att välja en accentfärg. \"Classic White\" stöder även ljus, mörk och systemlägen.';

  @override
  String get setThemesLabel => 'SÄTT TEMAN';

  @override
  String get deleteBookmarkDialog => 'Ta bort bokmärke?';

  @override
  String removeBookmarkMessage(Object details, Object reference) {
    return 'Ta bort \"$reference\"$details?\n\nDetta kan inte ångras.';
  }

  @override
  String get couldNotLoadBookmarks =>
      'Det gick inte att ladda bokmärken. Försök igen.';

  @override
  String get bookmarkSavedMessage => 'Bokmärket har sparats';

  @override
  String get couldNotSaveBookmark => 'Det gick inte att spara bokmärket.';

  @override
  String get noBookmarksMatchFilter => 'Inga bokmärken matchar detta filter.';

  @override
  String get clearFilter => 'Rensa filter';

  @override
  String get traditionalOrderLabel => 'Traditionell ordning';

  @override
  String get alphabeticalOrderLabel => 'Alfabetisk ordning';

  @override
  String get bookmarksTabLabel => 'Bokmärken';

  @override
  String get fullChapter => 'Hela kapitlet';

  @override
  String get addBookmark => 'Lägg till bokmärke';

  @override
  String get selectVerse => 'Välj Vers';

  @override
  String get labelOptional => 'Etikett (valfritt)';

  @override
  String get notesOptional => 'Anteckningar (valfritt)';

  @override
  String get save => 'Spara';

  @override
  String get goToVerse => 'Gå till Vers';

  @override
  String verseTitle(Object verse) {
    return 'Vers $verse';
  }

  @override
  String chapterTitle(Object chapter) {
    return 'Kapitel $chapter';
  }

  @override
  String get switchToFullChapter => 'Byt till bokmärke för hela kapitel';

  @override
  String get bookmarkSheetCancel => 'Avbryt, stäng bokmärkesarket';

  @override
  String get pickCustomAccent => 'Välj en anpassad accent';

  @override
  String get apply => 'Tillämpas';

  @override
  String get custom => 'Beställnings';

  @override
  String get brightnessSystem => 'System';

  @override
  String get brightnessLight => 'Ljus';

  @override
  String get brightnessDark => 'Mörk';

  @override
  String get selectBook => 'Välj en bok';

  @override
  String get bookmarkFilterAll => 'Alla';

  @override
  String get bookmarkFilterUnlabeled => 'Omärkt';

  @override
  String get bookmarkSortRecent => 'Nyligen först';

  @override
  String get bookmarkSortCanonical => 'Kanonisk ordning';

  @override
  String get chapterRetry => 'Försöka igen';

  @override
  String get fontSize => 'Fontstorlek';

  @override
  String fontSizePixels(Object size) {
    return '$size px';
  }

  @override
  String get fontSizeSlider => 'Reglage för teckenstorlek';

  @override
  String get fontSizeSliderHint => 'Svep för att justera från 12 till 28';

  @override
  String get fontPreview =>
      '\"I begynnelsen skapade Gud himlarna och jorden.\" — 1 Mos 1:1';

  @override
  String get showVerseNumbersSubtitle =>
      'Visa versnummer upphöjd i lässkärmen.';

  @override
  String get showSectionHeadingsSubtitle =>
      'Visa avsnitt och psalmrubriker mellan avsnitten.';

  @override
  String get wordsOfChristSubtitle =>
      'Visa Jesu ord i rött. Inaktivera för en enskild textfärg.';

  @override
  String get verseFormatTitle => 'Versformat';

  @override
  String get verseFormatSubtitle => 'Välj hur skrifttexten ska läggas upp.';

  @override
  String get paragraphMode => 'Stycke';

  @override
  String get verseListMode => 'Verslista';

  @override
  String get paragraphModeTooltip => 'Styckeläge';

  @override
  String get verseListModeTooltip => 'Verslista läge';

  @override
  String get paragraphModeDescription =>
      'Text flödar kontinuerligt med indragna stycken, som en tryckt bibel.';

  @override
  String get verseListModeDescription =>
      'Varje skriftställe börjar på sin egen rad, vilket gör versgrupper lätta att upptäcka.';

  @override
  String get deleteBookmarkTooltip => 'Ta bort bokmärke';

  @override
  String deleteBookmarkSemantics(Object reference) {
    return 'Ta bort bokmärke $reference';
  }

  @override
  String sortBookmarksTooltip(Object sortOrder) {
    return 'Sortera: $sortOrder';
  }

  @override
  String get noBookmarksYet => 'Inga bokmärken än.';

  @override
  String get noBookmarksYetHint =>
      'Tryck på bokmärkesikonen medan du läser för att spara en plats.';

  @override
  String bookmarkReferenceNavigationError(Object reference) {
    return 'Kunde inte navigera till $reference.';
  }

  @override
  String themeCardSemantics(Object description, Object name, Object selected) {
    return '$name tema$selected. $description';
  }

  @override
  String get selectedThemeSuffix => ', för närvarande vald';

  @override
  String get customisableAccentDescription => 'Anpassningsbar accentfärg.';

  @override
  String get fixedPaletteDescription => 'Fast palett.';

  @override
  String accentColourTitle(Object themeName) {
    return 'Accentfärg — $themeName';
  }

  @override
  String get brightnessMode => 'LJUSSTYRKA';

  @override
  String get lightMode => 'Ljusläge';

  @override
  String get followSystemMode => 'Följ systemläget';

  @override
  String get darkMode => 'Mörkt läge';

  @override
  String get customColourPicker => 'Anpassad färgväljare';

  @override
  String get customColourTooltip => 'Anpassad färg...';

  @override
  String get couldNotLoadBooks =>
      'Det gick inte att läsa in boklistan. Försök igen.';

  @override
  String chapterLabel(Object chapter) {
    return 'Kapitel $chapter';
  }

  @override
  String get traditionalOrderBooks => 'Traditionella orderböcker';

  @override
  String get alphabeticalOrderBooks => 'Alfabetiska orderböcker';

  @override
  String get home => 'Hem';

  @override
  String get addBookmarkTooltip => 'Lägg till bokmärke';

  @override
  String get chooseBookChapter => 'Välj bok och kapitel';

  @override
  String get chooseVerse => 'Välj vers';

  @override
  String get bookChapterQuickNavigation => 'Snabbnavigering i bok och kapitel';

  @override
  String get verseQuickNavigation => 'Vers snabbnavigering';

  @override
  String get backToBooks => 'Tillbaka till böcker';

  @override
  String get selectBookTitle => 'Välj Boka';

  @override
  String selectChapterTitle(Object bookName) {
    return 'Välj kapitel ($bookName)';
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
    return 'Hela kapitlet: $bookName $chapter';
  }

  @override
  String get memorizeHint => 'Memorera';

  @override
  String get addNoteHint => 'Lägg till en anteckning...';

  @override
  String get languageSearchHint => 'Sök efter språk';

  @override
  String get languageModuleInstalled => 'Installerad';

  @override
  String get languageModulePending => 'Maskinöversättning väntar';

  @override
  String get languageNoMatches => 'Inga språk matchar din sökning.';

  @override
  String get languageCatalogDescription =>
      'Språk som är markerade som installerade fungerar offline. Andra språk kommer att läggas till som maskinöversatta moduler.';

  @override
  String get saveBookmarkSemantics => 'Spara bokmärke';

  @override
  String get couldNotLoadChapter =>
      'Det gick inte att ladda kapitlet. Försök igen.';

  @override
  String get couldNotLoadChapters =>
      'Det gick inte att ladda kapitel. Försök igen.';

  @override
  String verseWithText(Object text, Object verse) {
    return 'Vers $verse: $text';
  }

  @override
  String accentSwatchSemantics(Object name, Object selected) {
    return '$name accentfärg$selected';
  }

  @override
  String get oldTestament => 'Gamla testamentet';

  @override
  String get newTestament => 'Nya testamentet';

  @override
  String get deuterocanonApocrypha => 'Deuterokanon / Apokryfer';
}
