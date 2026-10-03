// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Kölsch (`ksh`).
class AppLocalizationsKsh extends AppLocalizations {
  AppLocalizationsKsh([String locale = 'ksh']) : super(locale);

  @override
  String get settingsTitle => 'Enschtällunge';

  @override
  String get languageSection => 'Sproch';

  @override
  String get useSystemLanguage => 'Däm System sing Sproch bruche';

  @override
  String get useSystemLanguageSubtitle =>
      'Däm Apparat sing Sproch als Voreinschtällung bruche.';

  @override
  String get currentLanguage => 'Jetzije Sproch';

  @override
  String get appLanguage => 'App-Sproch';

  @override
  String get chooseLanguage => 'En Sproch uussöhke';

  @override
  String get theme => 'Design';

  @override
  String get appearance => 'Ußsinn';

  @override
  String get textSection => 'Tex';

  @override
  String get readingFormatSection => 'Läse-Format';

  @override
  String get displaySection => 'Aanzeije';

  @override
  String get verseNumbers => 'Vers-Nummern';

  @override
  String get sectionHeadings => 'Övverschrifte';

  @override
  String get redLetterText => 'Rode Tex';

  @override
  String get selectABook => 'En Buch uussöhke';

  @override
  String get traditionalOrder => 'Traditionelle Riej';

  @override
  String get alphabeticalOrder => 'Alphabetische Riej';

  @override
  String get bookmarks => 'Läsezeiche';

  @override
  String get retry => 'Noh ens probiere';

  @override
  String get chooseTheme => 'En Design uussöhke';

  @override
  String get customisableThemes => 'Aapassbare Designs';

  @override
  String get customisableThemesSubtitle =>
      'Op ene Kaad tippe, öm en Akzentfärv uussöhke. \"Classic White\" kann och hell, donkel un System-Modus.';

  @override
  String get setThemes => 'FESTE DESIGNS';

  @override
  String get setThemesSubtitle =>
      'Feste Färvpalletten, met Sorg jemaat. Nix zo ändere; tippe, öm et aanzewände.';

  @override
  String get deleteBookmarkQuestion => 'Läsezeiche läsche?';

  @override
  String get cancel => 'Afbreche';

  @override
  String get delete => 'Läsche';

  @override
  String get bookmarkSaved => 'Läsezeiche jespeichert';

  @override
  String get couldNotDeleteBookmark =>
      'Dat Läsezeiche kunnt nit jelöscht wäde.';

  @override
  String couldNotNavigate(Object reference) {
    return 'Kunnt nit noh $reference jon.';
  }

  @override
  String get pageNotFound => 'Sigg nit jefunge';

  @override
  String noRouteDefined(Object routeName) {
    return 'Kein Wääch för \"$routeName\" aanjejovve';
  }

  @override
  String get english => 'Englesch';

  @override
  String get spanish => 'Schpaanesch';

  @override
  String get systemDefault => 'System-Voreinschtällung';

  @override
  String get languageStatusEnglish => 'Englesch es als Ersatz-Sproch aan';

  @override
  String get languageStatusSystem => 'Däm System sing Sproch es aan';

  @override
  String languageStatusSelected(Object languageName) {
    return 'Uusjesöhkte Sproch: $languageName';
  }

  @override
  String get themeLabel => 'Design';

  @override
  String get notFoundTitle => 'Sigg nit jefunge';

  @override
  String get loadingCyberBible => 'Cyber Bible weed jelade...';

  @override
  String get couldNotOpenDatabase =>
      'De Bibel-Datebank kunnt nit opjemaat wäde. Probier et noh ens.';

  @override
  String get homeTagline => 'En freie Open-Source-App för et Bibelstudium';

  @override
  String get readTheBible => 'De Bibel läse';

  @override
  String get settingsTooltip => 'Enschtällunge';

  @override
  String get themeChoose => 'En Design uussöhke';

  @override
  String get customThemes => 'Aapassbare Designs';

  @override
  String get customThemesSubtitle =>
      'Op ene Kaad tippe, öm en Akzentfärv uussöhke. \"Classic White\" kann och hell, donkel un System-Modus.';

  @override
  String get setThemesLabel => 'FESTE DESIGNS';

  @override
  String get deleteBookmarkDialog => 'Läsezeiche läsche?';

  @override
  String removeBookmarkMessage(Object details, Object reference) {
    return '\"$reference\"$details fottmaache?\n\nDat kann mer nit zeröckjängisch maache.';
  }

  @override
  String get couldNotLoadBookmarks =>
      'De Läsezeiche kunnte nit jelade wäde. Probier et noh ens.';

  @override
  String get bookmarkSavedMessage => 'Läsezeiche jespeichert';

  @override
  String get couldNotSaveBookmark =>
      'Dat Läsezeiche kunnt nit jespeichert wäde.';

  @override
  String get noBookmarksMatchFilter => 'Kei Läsezeiche paß op dä Filter.';

  @override
  String get clearFilter => 'Filter fottmaache';

  @override
  String get traditionalOrderLabel => 'Traditionelle Riej';

  @override
  String get alphabeticalOrderLabel => 'Alphabetische Riej';

  @override
  String get bookmarksTabLabel => 'Läsezeiche';

  @override
  String get fullChapter => 'Dat janze Kapitel';

  @override
  String get addBookmark => 'Läsezeiche dobei donn';

  @override
  String get selectVerse => 'En Vers uussöhke';

  @override
  String get labelOptional => 'Bezeichnunge (freiwillisch)';

  @override
  String get notesOptional => 'Notize (freiwillisch)';

  @override
  String get save => 'Späichere';

  @override
  String get goToVerse => 'Zum Vers jon';

  @override
  String verseTitle(Object verse) {
    return 'Vers $verse';
  }

  @override
  String chapterTitle(Object chapter) {
    return 'Kapitel $chapter';
  }

  @override
  String get switchToFullChapter =>
      'Op et Läsezeiche för et janze Kapitel wääßele';

  @override
  String get bookmarkSheetCancel =>
      'Afbreche un dä Läsezeiche-Paneel zoumaache';

  @override
  String get pickCustomAccent => 'En eije Akzentfärv uussöhke';

  @override
  String get apply => 'Aanwände';

  @override
  String get custom => 'Eigen';

  @override
  String get brightnessSystem => 'System';

  @override
  String get brightnessLight => 'Hell';

  @override
  String get brightnessDark => 'Donkel';

  @override
  String get selectBook => 'En Buch uussöhke';

  @override
  String get bookmarkFilterAll => 'All';

  @override
  String get bookmarkFilterUnlabeled => 'Ohne Bezeichnunge';

  @override
  String get bookmarkSortRecent => 'Dat Nejste eetz';

  @override
  String get bookmarkSortCanonical => 'Kanonische Riej';

  @override
  String get chapterRetry => 'Noh ens probiere';

  @override
  String get fontSize => 'Schreffjröße';

  @override
  String fontSizePixels(Object size) {
    return '$size px';
  }

  @override
  String get fontSizeSlider => 'Schieber för d\'Schreffjröße';

  @override
  String get fontSizeSliderHint => 'Schiebe, öm zwesche 12 un 28 aanzepasse';

  @override
  String get fontPreview =>
      '\"Am Aanfang hät Jott Himmel un Ääd jemaat.\" — Gen 1:1';

  @override
  String get showVerseNumbersSubtitle =>
      'Vers-Nummern em Läsebildschirm aanzeije.';

  @override
  String get showSectionHeadingsSubtitle =>
      'Övverschrifte un Psalm-Titel zwesche de Passaje aanzeije.';

  @override
  String get wordsOfChristSubtitle =>
      'De Wööd vum Jesus rood aanzeije. Ußschalde för ene einje Tex-Färv.';

  @override
  String get verseFormatTitle => 'Vers-Format';

  @override
  String get verseFormatSubtitle =>
      'Uussöhke, wie dä Schrift-Tex aajesaat weed.';

  @override
  String get paragraphMode => 'Absatz';

  @override
  String get verseListMode => 'Vers-Leß';

  @override
  String get paragraphModeTooltip => 'Absatz-Modus';

  @override
  String get verseListModeTooltip => 'Vers-Leß-Modus';

  @override
  String get paragraphModeDescription =>
      'Dä Tex lööf wie en jedrocke Bibel fottlaufend enjeröckelt wigger.';

  @override
  String get verseListModeDescription =>
      'Jeder Schrift-Absatz fängk en ener eije Zeil aan, domet mer Vers-Gruppe joot erkennt.';

  @override
  String get deleteBookmarkTooltip => 'Läsezeiche läsche';

  @override
  String deleteBookmarkSemantics(Object reference) {
    return 'Läsezeiche $reference läsche';
  }

  @override
  String sortBookmarksTooltip(Object sortOrder) {
    return 'Sortiere: $sortOrder';
  }

  @override
  String get noBookmarksYet => 'Noch kei Läsezeiche.';

  @override
  String get noBookmarksYetHint =>
      'Tippe beim Läse op et Läsezeiche-Zeiche, öm en Stell ze späichere.';

  @override
  String bookmarkReferenceNavigationError(Object reference) {
    return 'Kunnt nit noh $reference jon.';
  }

  @override
  String themeCardSemantics(Object description, Object name, Object selected) {
    return 'Design $name$selected. $description';
  }

  @override
  String get selectedThemeSuffix => ', jetz uussjesöhk';

  @override
  String get customisableAccentDescription => 'Aapassbare Akzentfärv.';

  @override
  String get fixedPaletteDescription => 'Feste Färvpallett.';

  @override
  String accentColourTitle(Object themeName) {
    return 'Akzentfärv — $themeName';
  }

  @override
  String get brightnessMode => 'HELLIGKEITS-MODUS';

  @override
  String get lightMode => 'Hell-Modus';

  @override
  String get followSystemMode => 'Däm System-Modus folje';

  @override
  String get darkMode => 'Donkel-Modus';

  @override
  String get customColourPicker => 'Eigen Färv uussöhke';

  @override
  String get customColourTooltip => 'Eigen Färv...';

  @override
  String get couldNotLoadBooks =>
      'De Bücher-Leß kunnt nit jelade wäde. Probier et noh ens.';

  @override
  String chapterLabel(Object chapter) {
    return 'Kapitel $chapter';
  }

  @override
  String get traditionalOrderBooks => 'Bücher en traditionelle Riej';

  @override
  String get alphabeticalOrderBooks => 'Bücher alphabetisch sorjeet';

  @override
  String get home => 'Aanvang';

  @override
  String get addBookmarkTooltip => 'Läsezeiche dobei donn';

  @override
  String get chooseBookChapter => 'Buch un Kapitel uussöhke';

  @override
  String get chooseVerse => 'En Vers uussöhke';

  @override
  String get bookChapterQuickNavigation => 'Schnäll zom Buch un Kapitel jon';

  @override
  String get verseQuickNavigation => 'Schnäll zum Vers jon';

  @override
  String get backToBooks => 'Zeröck zo de Bücher';

  @override
  String get selectBookTitle => 'En Buch uussöhke';

  @override
  String selectChapterTitle(Object bookName) {
    return 'Kapitel uussöhke ($bookName)';
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
    return 'Dat janze Kapitel: $bookName $chapter';
  }

  @override
  String get memorizeHint => 'Ußwenndisch lerne';

  @override
  String get addNoteHint => 'En Notiz dobei donn...';

  @override
  String get languageSearchHint => 'Sprooche söke';

  @override
  String get languageModuleInstalled => 'Installiert';

  @override
  String get languageModulePending => 'Maschine-Övversetzung steiht noch uß';

  @override
  String get languageNoMatches => 'Kei Sproch paß op dinge Suech.';

  @override
  String get languageCatalogDescription =>
      'Installierte Sprooche loufe ohne Internet. Andere Sprooche kumme als maschinell övversetzte Module dobei.';

  @override
  String get saveBookmarkSemantics => 'Läsezeiche späichere';

  @override
  String get couldNotLoadChapter =>
      'Dat Kapitel kunnt nit jelade wäde. Probier et noh ens.';

  @override
  String get couldNotLoadChapters =>
      'De Kapitel kunnte nit jelade wäde. Probier et noh ens.';

  @override
  String verseWithText(Object text, Object verse) {
    return 'Vers $verse: $text';
  }

  @override
  String accentSwatchSemantics(Object name, Object selected) {
    return 'Akzentfärv $name$selected';
  }

  @override
  String get oldTestament => 'Aahle Testament';

  @override
  String get newTestament => 'Neue Testament';

  @override
  String get deuterocanonApocrypha => 'Deuterokanon / Apokryphe';
}
