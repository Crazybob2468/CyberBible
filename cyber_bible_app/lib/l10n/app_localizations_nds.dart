// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Low German Low Saxon (`nds`).
class AppLocalizationsNds extends AppLocalizations {
  AppLocalizationsNds([String locale = 'nds']) : super(locale);

  @override
  String get settingsTitle => 'Instellen';

  @override
  String get languageSection => 'Spraak';

  @override
  String get useSystemLanguage => 'Systemspraak bruken';

  @override
  String get useSystemLanguageSubtitle =>
      'De Spraak vun dat Reedschap as Standard bruken.';

  @override
  String get currentLanguage => 'Aktuelle Spraak';

  @override
  String get appLanguage => 'App-Spraak';

  @override
  String get chooseLanguage => 'Spraak utsöken';

  @override
  String get theme => 'Muster';

  @override
  String get appearance => 'Utsicht';

  @override
  String get textSection => 'Text';

  @override
  String get readingFormatSection => 'Leesformaat';

  @override
  String get displaySection => 'Anwiesen';

  @override
  String get verseNumbers => 'Versnummern';

  @override
  String get sectionHeadings => 'Afsnittköpp';

  @override
  String get redLetterText => 'Rode Schrift';

  @override
  String get selectABook => 'En Book utsöken';

  @override
  String get traditionalOrder => 'Överlevert Reeg';

  @override
  String get alphabeticalOrder => 'Alfabeet-Reeg';

  @override
  String get bookmarks => 'Marken';

  @override
  String get retry => 'Nochmaal versöken';

  @override
  String get chooseTheme => 'En Muster utsöken';

  @override
  String get customisableThemes => 'Anpassbare Muster';

  @override
  String get customisableThemesSubtitle =>
      'Tippt op en Kaart, üm en Akzentklöör utto söken. \"Classic White\" ünnerstütt ok Hell-, Düster- un System-Modus.';

  @override
  String get setThemes => 'FASTE MUSTER';

  @override
  String get setThemesSubtitle =>
      'Faste Klöörsammlungen, mit Sorg utarbeidt. Keen Anpassung nödig; tippt, üm dat antowennen.';

  @override
  String get deleteBookmarkQuestion => 'Marke wegmaken?';

  @override
  String get cancel => 'Afbreken';

  @override
  String get delete => 'Wegmaken';

  @override
  String get bookmarkSaved => 'Marke sekert';

  @override
  String get couldNotDeleteBookmark => 'De Marke kunn nich wegmaakt warrn.';

  @override
  String couldNotNavigate(Object reference) {
    return 'Nich na $reference gahn.';
  }

  @override
  String get pageNotFound => 'Siet nich funnen';

  @override
  String noRouteDefined(Object routeName) {
    return 'Keen Weg för \"$routeName\" fastleggt';
  }

  @override
  String get english => 'Engelsch';

  @override
  String get spanish => 'Spaansch';

  @override
  String get systemDefault => 'Systemstandard';

  @override
  String get languageStatusEnglish => 'Engelsch warrt as Ersatzspraak bruukt';

  @override
  String get languageStatusSystem => 'Systemspraak warrt bruukt';

  @override
  String languageStatusSelected(Object languageName) {
    return 'Utsöchte Spraak: $languageName';
  }

  @override
  String get themeLabel => 'Muster';

  @override
  String get notFoundTitle => 'Siet nich funnen';

  @override
  String get loadingCyberBible => 'Cyber-Bibel warrt laadt...';

  @override
  String get couldNotOpenDatabase =>
      'De Bibel-Datenbank kunn nich opmaakt warrn. Versöök dat nochmaal.';

  @override
  String get homeTagline => 'En fre\'e un open-source App för\'t Bibelstudium';

  @override
  String get readTheBible => 'De Bibel lesen';

  @override
  String get settingsTooltip => 'Instellen';

  @override
  String get themeChoose => 'En Muster utsöken';

  @override
  String get customThemes => 'Anpassbare Muster';

  @override
  String get customThemesSubtitle =>
      'Tippt op en Kaart, üm en Akzentklöör utto söken. \"Classic White\" ünnerstütt ok Hell-, Düster- un System-Modus.';

  @override
  String get setThemesLabel => 'FASTE MUSTER';

  @override
  String get deleteBookmarkDialog => 'Marke wegmaken?';

  @override
  String removeBookmarkMessage(Object details, Object reference) {
    return '\"$reference\"$details wegmaken?\n\nDat lett sik nich torüchnehmen.';
  }

  @override
  String get couldNotLoadBookmarks =>
      'De Marken kunn nich laadt warrn. Versöök dat nochmaal.';

  @override
  String get bookmarkSavedMessage => 'Marke sekert';

  @override
  String get couldNotSaveBookmark => 'De Marke kunn nich sekert warrn.';

  @override
  String get noBookmarksMatchFilter => 'Keen Marke passt op disse Filter.';

  @override
  String get clearFilter => 'Filter wegmaken';

  @override
  String get traditionalOrderLabel => 'Överlevert Reeg';

  @override
  String get alphabeticalOrderLabel => 'Alfabeet-Reeg';

  @override
  String get bookmarksTabLabel => 'Marken';

  @override
  String get fullChapter => 'Dat hele Kapitel';

  @override
  String get addBookmark => 'Marke tofögen';

  @override
  String get selectVerse => 'En Vers utsöken';

  @override
  String get labelOptional => 'Beteken (optional)';

  @override
  String get notesOptional => 'Notizen (optional)';

  @override
  String get save => 'Sekern';

  @override
  String get goToVerse => 'Na den Vers gahn';

  @override
  String verseTitle(Object verse) {
    return 'Vers $verse';
  }

  @override
  String chapterTitle(Object chapter) {
    return 'Kapitel $chapter';
  }

  @override
  String get switchToFullChapter => 'Op Marke för dat hele Kapitel wesseln';

  @override
  String get bookmarkSheetCancel => 'Afbreken un dat Marken-Finster tomaken';

  @override
  String get pickCustomAccent => 'En egen Akzentklöör utsöken';

  @override
  String get apply => 'Anwennen';

  @override
  String get custom => 'Egen';

  @override
  String get brightnessSystem => 'System';

  @override
  String get brightnessLight => 'Hell';

  @override
  String get brightnessDark => 'Düster';

  @override
  String get selectBook => 'En Book utsöken';

  @override
  String get bookmarkFilterAll => 'All';

  @override
  String get bookmarkFilterUnlabeled => 'Ahn Beteken';

  @override
  String get bookmarkSortRecent => 'Niegste toeerst';

  @override
  String get bookmarkSortCanonical => 'Kanonische Reeg';

  @override
  String get chapterRetry => 'Nochmaal versöken';

  @override
  String get fontSize => 'Schriftgrött';

  @override
  String fontSizePixels(Object size) {
    return '$size px';
  }

  @override
  String get fontSizeSlider => 'Regler för de Schriftgrött';

  @override
  String get fontSizeSliderHint => 'Schuven, üm twüschen 12 un 28 to ännern';

  @override
  String get fontPreview =>
      '\"In\'n Anfang hett Gott Himmel un Eer maakt.\" — 1. Mose 1:1';

  @override
  String get showVerseNumbersSubtitle =>
      'Versnummern op den Leesbildschirm wiesen.';

  @override
  String get showSectionHeadingsSubtitle =>
      'Afsnitt- un Psalmköpp twüschen de Textstellen wiesen.';

  @override
  String get wordsOfChristSubtitle =>
      'Jesus sien Wöör rot wiesen. Utschakeln, wenn all Text een Klöör hebben schall.';

  @override
  String get verseFormatTitle => 'Versformaat';

  @override
  String get verseFormatSubtitle => 'Utsöken, wo de Schrifttext anwiest warrt.';

  @override
  String get paragraphMode => 'Afsnitt';

  @override
  String get verseListMode => 'Verslist';

  @override
  String get paragraphModeTooltip => 'Afsnitt-Modus';

  @override
  String get verseListModeTooltip => 'Verslist-Modus';

  @override
  String get paragraphModeDescription =>
      'De Text löppt as in en druckte Bibel in indückte Afsnitte wieder.';

  @override
  String get verseListModeDescription =>
      'Elk Schrift-Afsnitt fangt op sien egen Reeg an, dormit Versgruppen licht to finnen sünd.';

  @override
  String get deleteBookmarkTooltip => 'Marke wegmaken';

  @override
  String deleteBookmarkSemantics(Object reference) {
    return 'Marke $reference wegmaken';
  }

  @override
  String sortBookmarksTooltip(Object sortOrder) {
    return 'Sorteren: $sortOrder';
  }

  @override
  String get noBookmarksYet => 'Noch keen Marken.';

  @override
  String get noBookmarksYetHint =>
      'Tippt bi\'t Lesen op dat Marken-Bild, üm en Steed to sekern.';

  @override
  String bookmarkReferenceNavigationError(Object reference) {
    return 'Nich na $reference gahn.';
  }

  @override
  String themeCardSemantics(Object description, Object name, Object selected) {
    return 'Muster $name$selected. $description';
  }

  @override
  String get selectedThemeSuffix => ', opstunns utsöcht';

  @override
  String get customisableAccentDescription => 'Anpassbare Akzentklöör.';

  @override
  String get fixedPaletteDescription => 'Fast Klöörsammlung.';

  @override
  String accentColourTitle(Object themeName) {
    return 'Akzentklöör — $themeName';
  }

  @override
  String get brightnessMode => 'HELLIGKEIT-MODUS';

  @override
  String get lightMode => 'Hell-Modus';

  @override
  String get followSystemMode => 'System-Modus folgen';

  @override
  String get darkMode => 'Düster-Modus';

  @override
  String get customColourPicker => 'Egen Klöör utsöken';

  @override
  String get customColourTooltip => 'Egen Klöör...';

  @override
  String get couldNotLoadBooks =>
      'De Booklist kunn nich laadt warrn. Versöök dat nochmaal.';

  @override
  String chapterLabel(Object chapter) {
    return 'Kapitel $chapter';
  }

  @override
  String get traditionalOrderBooks => 'Böker in överlevert Reeg';

  @override
  String get alphabeticalOrderBooks => 'Böker na Alfabeet';

  @override
  String get home => 'Start';

  @override
  String get addBookmarkTooltip => 'Marke tofögen';

  @override
  String get chooseBookChapter => 'Book un Kapitel utsöken';

  @override
  String get chooseVerse => 'En Vers utsöken';

  @override
  String get bookChapterQuickNavigation => 'Fix na Book un Kapitel gahn';

  @override
  String get verseQuickNavigation => 'Fix na den Vers gahn';

  @override
  String get backToBooks => 'Torüch na de Böker';

  @override
  String get selectBookTitle => 'En Book utsöken';

  @override
  String selectChapterTitle(Object bookName) {
    return 'Kapitel utsöken ($bookName)';
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
    return 'Heel Kapitel: $bookName $chapter';
  }

  @override
  String get memorizeHint => 'Utwennig lehren';

  @override
  String get addNoteHint => 'En Notiz tofögen...';

  @override
  String get languageSearchHint => 'Spraak söken';

  @override
  String get languageModuleInstalled => 'Installeert';

  @override
  String get languageModulePending => 'Maschinenöversetten steiht ut';

  @override
  String get languageNoMatches => 'Keen Spraak passt op de Söök.';

  @override
  String get languageCatalogDescription =>
      'Installierte Spraken funkschoneert ahn Internet. Anner Spraken kaamt as maschinenöversette Modulen dorto.';

  @override
  String get saveBookmarkSemantics => 'Marke sekern';

  @override
  String get couldNotLoadChapter =>
      'Dat Kapitel kunn nich laadt warrn. Versöök dat nochmaal.';

  @override
  String get couldNotLoadChapters =>
      'De Kapitels kunn nich laadt warrn. Versöök dat nochmaal.';

  @override
  String verseWithText(Object text, Object verse) {
    return 'Vers $verse: $text';
  }

  @override
  String accentSwatchSemantics(Object name, Object selected) {
    return 'Akzentklöör $name$selected';
  }

  @override
  String get oldTestament => 'Oll Testament';

  @override
  String get newTestament => 'Nieg Testament';

  @override
  String get deuterocanonApocrypha => 'Deuterokanon / Apokryphen';
}
