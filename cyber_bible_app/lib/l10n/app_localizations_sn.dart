// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Shona (`sn`).
class AppLocalizationsSn extends AppLocalizations {
  AppLocalizationsSn([String locale = 'sn']) : super(locale);

  @override
  String get settingsTitle => 'Zvirongwa';

  @override
  String get languageSection => 'Mutauro';

  @override
  String get useSystemLanguage => 'Shandisa mutauro wefoni';

  @override
  String get useSystemLanguageSubtitle =>
      'Shandisa mutauro wemudziyo semutauro wekutanga.';

  @override
  String get currentLanguage => 'Mutauro uripo';

  @override
  String get appLanguage => 'Mutauro weapp';

  @override
  String get chooseLanguage => 'Sarudza mutauro';

  @override
  String get theme => 'Chitarisiko';

  @override
  String get appearance => 'Chimiro';

  @override
  String get textSection => 'Mashoko';

  @override
  String get readingFormatSection => 'Marongerwo ekuverenga';

  @override
  String get displaySection => 'Ratidza';

  @override
  String get verseNumbers => 'Nhamba dzendima';

  @override
  String get sectionHeadings => 'Misoro yezvikamu';

  @override
  String get redLetterText => 'Mashoko matsvuku';

  @override
  String get selectABook => 'Sarudza bhuku';

  @override
  String get traditionalOrder => 'Kurongeka kwechinyakare';

  @override
  String get alphabeticalOrder => 'Kurongeka kwemavara';

  @override
  String get bookmarks => 'Zviratidzo';

  @override
  String get retry => 'Edza zvakare';

  @override
  String get chooseTheme => 'Sarudza chitarisiko';

  @override
  String get customisableThemes => 'Zvimiro zvinogona kuchinjwa';

  @override
  String get customisableThemesSubtitle =>
      'Bata kadhi kuti usarudze ruvara. \"Classic White\" inotsigirawo zvimiro zveChiedza, Rima neSisitimu.';

  @override
  String get setThemes => 'ZVIMIRO ZVISINGACHINJWI';

  @override
  String get setThemesSubtitle =>
      'Mavara akagadzirwa zvakanaka asingachinjwi. Hapana zvimwe zvinodiwa; bata kuti ushandise.';

  @override
  String get deleteBookmarkQuestion => 'Dzima chiratidzo?';

  @override
  String get cancel => 'Kanzura';

  @override
  String get delete => 'Dzima';

  @override
  String get bookmarkSaved => 'Chiratidzo chachengetwa';

  @override
  String get couldNotDeleteBookmark => 'Chiratidzo hachina kukwanisa kudzimwa.';

  @override
  String couldNotNavigate(Object reference) {
    return 'Hazvina kukwanisika kuenda ku$reference.';
  }

  @override
  String get pageNotFound => 'Peji harina kuwanikwa';

  @override
  String noRouteDefined(Object routeName) {
    return 'Hapana nzira yakatarwa ye\"$routeName\"';
  }

  @override
  String get english => 'Chirungu';

  @override
  String get spanish => 'Chipanishi';

  @override
  String get systemDefault => 'Zvinogara zvichishandiswa nesisitimu';

  @override
  String get languageStatusEnglish =>
      'Chirungu chiri kushandiswa semutauro wekutsiva';

  @override
  String get languageStatusSystem => 'Mutauro wesisitimu uri kushandiswa';

  @override
  String languageStatusSelected(Object languageName) {
    return 'Mutauro wasarudzwa: $languageName';
  }

  @override
  String get themeLabel => 'Chitarisiko';

  @override
  String get notFoundTitle => 'Peji harina kuwanikwa';

  @override
  String get loadingCyberBible => 'Cyber Bible iri kuvhurwa...';

  @override
  String get couldNotOpenDatabase =>
      'Dhatabhesi reBhaibheri harina kukwanisa kuvhurwa. Edza zvakare.';

  @override
  String get homeTagline =>
      'App yemahara uye ine kodhi yakavhurika yekudzidza Bhaibheri';

  @override
  String get readTheBible => 'Verenga Bhaibheri';

  @override
  String get settingsTooltip => 'Zvirongwa';

  @override
  String get themeChoose => 'Sarudza chitarisiko';

  @override
  String get customThemes => 'Zvimiro zvinogona kuchinjwa';

  @override
  String get customThemesSubtitle =>
      'Bata kadhi kuti usarudze ruvara. \"Classic White\" inotsigirawo zvimiro zveChiedza, Rima neSisitimu.';

  @override
  String get setThemesLabel => 'ZVIMIRO ZVISINGACHINJWI';

  @override
  String get deleteBookmarkDialog => 'Dzima chiratidzo?';

  @override
  String removeBookmarkMessage(Object details, Object reference) {
    return 'Bvisa \"$reference\"$details?\n\nIzvi hazvigoni kudzorerwa.';
  }

  @override
  String get couldNotLoadBookmarks =>
      'Zviratidzo hazvina kukwanisa kuvhurwa. Edza zvakare.';

  @override
  String get bookmarkSavedMessage => 'Chiratidzo chachengetwa';

  @override
  String get couldNotSaveBookmark =>
      'Chiratidzo hachina kukwanisa kuchengetwa.';

  @override
  String get noBookmarksMatchFilter =>
      'Hapana chiratidzo chinoenderana nesefa iyi.';

  @override
  String get clearFilter => 'Bvisa sefa';

  @override
  String get traditionalOrderLabel => 'Kurongeka kwechinyakare';

  @override
  String get alphabeticalOrderLabel => 'Kurongeka kwemavara';

  @override
  String get bookmarksTabLabel => 'Zviratidzo';

  @override
  String get fullChapter => 'Chitsauko chose';

  @override
  String get addBookmark => 'Wedzera chiratidzo';

  @override
  String get selectVerse => 'Sarudza ndima';

  @override
  String get labelOptional => 'Zita (hazvidiwi)';

  @override
  String get notesOptional => 'Manotsi (haadiwi)';

  @override
  String get save => 'Chengeta';

  @override
  String get goToVerse => 'Enda kundima';

  @override
  String verseTitle(Object verse) {
    return 'Ndima $verse';
  }

  @override
  String chapterTitle(Object chapter) {
    return 'Chitsauko $chapter';
  }

  @override
  String get switchToFullChapter => 'Chinja kuchiratidzo chechitsauko chose';

  @override
  String get bookmarkSheetCancel => 'Kanzura uye vhara pepanhau rezviratidzo';

  @override
  String get pickCustomAccent => 'Sarudza ruvara rwako';

  @override
  String get apply => 'Shandisa';

  @override
  String get custom => 'Yako';

  @override
  String get brightnessSystem => 'Sisitimu';

  @override
  String get brightnessLight => 'Chiedza';

  @override
  String get brightnessDark => 'Rima';

  @override
  String get selectBook => 'Sarudza bhuku';

  @override
  String get bookmarkFilterAll => 'Zvose';

  @override
  String get bookmarkFilterUnlabeled => 'Hazvina zita';

  @override
  String get bookmarkSortRecent => 'Zvitsva kutanga';

  @override
  String get bookmarkSortCanonical => 'Kurongeka kwemabhuku eBhaibheri';

  @override
  String get chapterRetry => 'Edza zvakare';

  @override
  String get fontSize => 'Kukura kwemavara';

  @override
  String fontSizePixels(Object size) {
    return '$size px';
  }

  @override
  String get fontSizeSlider => 'Chinotsvedza chekukura kwemavara';

  @override
  String get fontSizeSliderHint =>
      'Svedza kuti uchinje kubva pa12 kusvika pa28';

  @override
  String get fontPreview =>
      '\"Pakutanga Mwari akasika denga nenyika.\" — Gen 1:1';

  @override
  String get showVerseNumbersSubtitle =>
      'Ratidza nhamba dzendima pachiratidziro chekuverenga.';

  @override
  String get showSectionHeadingsSubtitle =>
      'Ratidza misoro yezvikamu neMapisarema pakati pezvikamu.';

  @override
  String get wordsOfChristSubtitle =>
      'Ratidza mashoko aJesu nemavara matsvuku. Dzima izvi kuti mashoko ave neruvara rumwe.';

  @override
  String get verseFormatTitle => 'Marongerwo endima';

  @override
  String get verseFormatSubtitle => 'Sarudza marongerwo emashoko eMagwaro.';

  @override
  String get paragraphMode => 'Ndima yemashoko';

  @override
  String get verseListMode => 'Rondedzero yendima';

  @override
  String get paragraphModeTooltip => 'Chimiro chendima yemashoko';

  @override
  String get verseListModeTooltip => 'Chimiro cherondedzero yendima';

  @override
  String get paragraphModeDescription =>
      'Mashoko anoyerera ari muzvikamu zvakapinzwa mukati, sezviri muBhaibheri rakadhindwa.';

  @override
  String get verseListModeDescription =>
      'Chikamu chimwe nechimwe cheMagwaro chinotanga pamutsetse wacho kuti mapoka endima aonekwe nyore.';

  @override
  String get deleteBookmarkTooltip => 'Dzima chiratidzo';

  @override
  String deleteBookmarkSemantics(Object reference) {
    return 'Dzima chiratidzo $reference';
  }

  @override
  String sortBookmarksTooltip(Object sortOrder) {
    return 'Ronga: $sortOrder';
  }

  @override
  String get noBookmarksYet => 'Hapana zviratidzo parizvino.';

  @override
  String get noBookmarksYetHint =>
      'Bata chiratidzo chebhukumaki paunenge uchiverenga kuti uchengetedze nzvimbo.';

  @override
  String bookmarkReferenceNavigationError(Object reference) {
    return 'Hazvina kukwanisika kuenda ku$reference.';
  }

  @override
  String themeCardSemantics(Object description, Object name, Object selected) {
    return 'Chimiro $name$selected. $description';
  }

  @override
  String get selectedThemeSuffix => ', chasarudzwa iye zvino';

  @override
  String get customisableAccentDescription => 'Ruvara runogona kuchinjwa.';

  @override
  String get fixedPaletteDescription => 'Mavara asingachinjwi.';

  @override
  String accentColourTitle(Object themeName) {
    return 'Ruvara — $themeName';
  }

  @override
  String get brightnessMode => 'CHIMIRO CHERUVARA';

  @override
  String get lightMode => 'Chimiro chechiedza';

  @override
  String get followSystemMode => 'Tevedzera chimiro chesisitimu';

  @override
  String get darkMode => 'Chimiro cherima';

  @override
  String get customColourPicker => 'Sarudza ruvara rwako';

  @override
  String get customColourTooltip => 'Ruvara rwako...';

  @override
  String get couldNotLoadBooks =>
      'Rondedzero yemabhuku haina kukwanisa kuvhurwa. Edza zvakare.';

  @override
  String chapterLabel(Object chapter) {
    return 'Chitsauko $chapter';
  }

  @override
  String get traditionalOrderBooks => 'Mabhuku akarongwa sezvagara zvakadaro';

  @override
  String get alphabeticalOrderBooks => 'Mabhuku akarongwa nemavara';

  @override
  String get home => 'Kumba';

  @override
  String get addBookmarkTooltip => 'Wedzera chiratidzo';

  @override
  String get chooseBookChapter => 'Sarudza bhuku nechitsauko';

  @override
  String get chooseVerse => 'Sarudza ndima';

  @override
  String get bookChapterQuickNavigation =>
      'Enda nokukurumidza kubhuku nechitsauko';

  @override
  String get verseQuickNavigation => 'Enda nokukurumidza kundima';

  @override
  String get backToBooks => 'Dzokera kumabhuku';

  @override
  String get selectBookTitle => 'Sarudza bhuku';

  @override
  String selectChapterTitle(Object bookName) {
    return 'Sarudza chitsauko ($bookName)';
  }

  @override
  String chapterSelectionLabel(Object chapter) {
    return 'Chitsauko $chapter';
  }

  @override
  String verseSelectionLabel(Object verse) {
    return 'Ndima $verse';
  }

  @override
  String fullChapterReference(Object bookName, Object chapter) {
    return 'Chitsauko chose: $bookName $chapter';
  }

  @override
  String get memorizeHint => 'Bata nemusoro';

  @override
  String get addNoteHint => 'Wedzera katsamba...';

  @override
  String get languageSearchHint => 'Tsvaga mitauro';

  @override
  String get languageModuleInstalled => 'Yakaiswa';

  @override
  String get languageModulePending => 'Shanduro yemuchina yakamirira';

  @override
  String get languageNoMatches => 'Hapana mutauro unoenderana nezvawatsvaga.';

  @override
  String get languageCatalogDescription =>
      'Mitauro yakaiswa inoshanda isina internet. Mimwe mitauro ichawedzerwa seshanduro dzemuchina.';

  @override
  String get saveBookmarkSemantics => 'Chengeta chiratidzo';

  @override
  String get couldNotLoadChapter =>
      'Chitsauko hachina kukwanisa kuvhurwa. Edza zvakare.';

  @override
  String get couldNotLoadChapters =>
      'Zvitsauko hazvina kukwanisa kuvhurwa. Edza zvakare.';

  @override
  String verseWithText(Object text, Object verse) {
    return 'Ndima $verse: $text';
  }

  @override
  String accentSwatchSemantics(Object name, Object selected) {
    return 'Ruvara $name$selected';
  }

  @override
  String get oldTestament => 'Testamende Yekare';

  @override
  String get newTestament => 'Testamende Itsva';

  @override
  String get deuterocanonApocrypha => 'Mamwe mabhuku / Apokirifa';
}
