// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Maltese (`mt`).
class AppLocalizationsMt extends AppLocalizations {
  AppLocalizationsMt([String locale = 'mt']) : super(locale);

  @override
  String get settingsTitle => 'Issettjar';

  @override
  String get languageSection => 'Lingwa';

  @override
  String get useSystemLanguage => 'Uża l-lingwa tas-sistema';

  @override
  String get useSystemLanguageSubtitle =>
      'Uża l-lingwa tat-tagħmir bħala default.';

  @override
  String get currentLanguage => 'Lingwa attwali';

  @override
  String get appLanguage => 'Lingwa tal-app';

  @override
  String get chooseLanguage => 'Agħżel lingwa';

  @override
  String get theme => 'Tema';

  @override
  String get appearance => 'Dehra';

  @override
  String get textSection => 'Test';

  @override
  String get readingFormatSection => 'Format tal-qari';

  @override
  String get displaySection => 'Wiri';

  @override
  String get verseNumbers => 'Numri tal-versi';

  @override
  String get sectionHeadings => 'Titli tat-taqsimiet';

  @override
  String get redLetterText => 'Test bl-aħmar';

  @override
  String get selectABook => 'Agħżel ktieb';

  @override
  String get traditionalOrder => 'Ordni tradizzjonali';

  @override
  String get alphabeticalOrder => 'Ordni alfabetiku';

  @override
  String get bookmarks => 'Favoriti';

  @override
  String get retry => 'Erġa\' pprova';

  @override
  String get chooseTheme => 'Agħżel tema';

  @override
  String get customisableThemes => 'Temi personalizzabbli';

  @override
  String get customisableThemesSubtitle =>
      'Tektek karta biex tagħżel kulur tal-aċċent. \"Classic White\" jappoġġa wkoll il-modi Dawl, Skur u Sistema.';

  @override
  String get setThemes => 'TEMI STABBILITI';

  @override
  String get setThemesSubtitle =>
      'Paletti fissi magħmula bl-idejn. Ma teħtieġx tibdil; tektek biex tapplika.';

  @override
  String get deleteBookmarkQuestion => 'Tħassar il-favorit?';

  @override
  String get cancel => 'Ikkanċella';

  @override
  String get delete => 'Ħassar';

  @override
  String get bookmarkSaved => 'Il-favorit ġie salvat';

  @override
  String get couldNotDeleteBookmark => 'Ma setax jitħassar il-favorit.';

  @override
  String couldNotNavigate(Object reference) {
    return 'Ma setax jinfetaħ $reference.';
  }

  @override
  String get pageNotFound => 'Il-paġna ma nstabitx';

  @override
  String noRouteDefined(Object routeName) {
    return 'Ma ġietx definita rotta għal \"$routeName\"';
  }

  @override
  String get english => 'Ingliż';

  @override
  String get spanish => 'Spanjol';

  @override
  String get systemDefault => 'Default tas-sistema';

  @override
  String get languageStatusEnglish =>
      'Qed tintuża l-lingwa Ingliża bħala alternattiva';

  @override
  String get languageStatusSystem => 'Qed tintuża l-lingwa tas-sistema';

  @override
  String languageStatusSelected(Object languageName) {
    return 'Lingwa magħżula: $languageName';
  }

  @override
  String get themeLabel => 'Tema';

  @override
  String get notFoundTitle => 'Il-paġna ma nstabitx';

  @override
  String get loadingCyberBible => 'Qed titgħabba l-Bibbja Ċibernetika...';

  @override
  String get couldNotOpenDatabase =>
      'Ma setgħetx tinfetaħ id-database tal-Bibbja. Erġa\' pprova.';

  @override
  String get homeTagline =>
      'App bla ħlas u b\'sors miftuħ għall-istudju tal-Bibbja';

  @override
  String get readTheBible => 'Aqra l-Bibbja';

  @override
  String get settingsTooltip => 'Issettjar';

  @override
  String get themeChoose => 'Agħżel tema';

  @override
  String get customThemes => 'Temi personalizzabbli';

  @override
  String get customThemesSubtitle =>
      'Tektek karta biex tagħżel kulur tal-aċċent. \"Classic White\" jappoġġa wkoll il-modi Dawl, Skur u Sistema.';

  @override
  String get setThemesLabel => 'TEMI STABBILITI';

  @override
  String get deleteBookmarkDialog => 'Tħassar il-favorit?';

  @override
  String removeBookmarkMessage(Object details, Object reference) {
    return 'Tneħħi \"$reference\"$details?\n\nDin l-azzjoni ma tistax titreġġa\' lura.';
  }

  @override
  String get couldNotLoadBookmarks =>
      'Ma setgħux jitgħabbew il-favoriti. Erġa\' pprova.';

  @override
  String get bookmarkSavedMessage => 'Il-favorit ġie salvat';

  @override
  String get couldNotSaveBookmark => 'Ma setax jiġi salvat il-favorit.';

  @override
  String get noBookmarksMatchFilter =>
      'L-ebda favorit ma jaqbel ma\' dan il-filtru.';

  @override
  String get clearFilter => 'Neħħi l-filtru';

  @override
  String get traditionalOrderLabel => 'Ordni tradizzjonali';

  @override
  String get alphabeticalOrderLabel => 'Ordni alfabetiku';

  @override
  String get bookmarksTabLabel => 'Favoriti';

  @override
  String get fullChapter => 'Kapitlu sħiħ';

  @override
  String get addBookmark => 'Żid mal-favoriti';

  @override
  String get selectVerse => 'Agħżel vers';

  @override
  String get labelOptional => 'Tikketta (mhux obbligatorja)';

  @override
  String get notesOptional => 'Noti (mhux obbligatorji)';

  @override
  String get save => 'Issejvja';

  @override
  String get goToVerse => 'Mur għall-vers';

  @override
  String verseTitle(Object verse) {
    return 'Vers $verse';
  }

  @override
  String chapterTitle(Object chapter) {
    return 'Kapitlu $chapter';
  }

  @override
  String get switchToFullChapter => 'Ibdel għal favorit tal-kapitlu sħiħ';

  @override
  String get bookmarkSheetCancel =>
      'Ikkanċella u agħlaq il-pannell tal-favoriti';

  @override
  String get pickCustomAccent => 'Agħżel kulur tal-aċċent personalizzat';

  @override
  String get apply => 'Applika';

  @override
  String get custom => 'Personalizzat';

  @override
  String get brightnessSystem => 'Sistema';

  @override
  String get brightnessLight => 'Dawl';

  @override
  String get brightnessDark => 'Skur';

  @override
  String get selectBook => 'Agħżel ktieb';

  @override
  String get bookmarkFilterAll => 'Kollha';

  @override
  String get bookmarkFilterUnlabeled => 'Mingħajr tikketta';

  @override
  String get bookmarkSortRecent => 'L-ewwel l-aktar riċenti';

  @override
  String get bookmarkSortCanonical => 'Ordni kanonika';

  @override
  String get chapterRetry => 'Erġa\' pprova';

  @override
  String get fontSize => 'Daqs tat-tipa';

  @override
  String fontSizePixels(Object size) {
    return '$size px';
  }

  @override
  String get fontSizeSlider => 'Kontroll tad-daqs tat-tipa';

  @override
  String get fontSizeSliderHint => 'Żerżaq biex taġġusta minn 12 sa 28';

  @override
  String get fontPreview =>
      '\"Fil-bidu Alla ħalaq is-smewwiet u l-art.\" — Ġen 1:1';

  @override
  String get showVerseNumbersSubtitle =>
      'Uri n-numri tal-versi fuq l-iskrin tal-qari.';

  @override
  String get showSectionHeadingsSubtitle =>
      'Uri t-titli tat-taqsimiet u tas-Salmi bejn is-siltiet.';

  @override
  String get wordsOfChristSubtitle =>
      'Uri kliem Ġesù bl-aħmar. Itfi din l-għażla biex tuża kulur wieħed għat-test kollu.';

  @override
  String get verseFormatTitle => 'Format tal-versi';

  @override
  String get verseFormatSubtitle =>
      'Agħżel kif jitqassam it-test tal-Iskrittura.';

  @override
  String get paragraphMode => 'Paragrafu';

  @override
  String get verseListMode => 'Lista ta\' versi';

  @override
  String get paragraphModeTooltip => 'Modalità ta\' paragrafu';

  @override
  String get verseListModeTooltip => 'Modalità ta\' lista ta\' versi';

  @override
  String get paragraphModeDescription =>
      'It-test jimxi kontinwament f\'paragrafi indentati, bħal f\'Bibbja stampata.';

  @override
  String get verseListModeDescription =>
      'Kull paragrafu tal-Iskrittura jibda fuq linja tiegħu, biex il-gruppi tal-versi jintgħarfu faċilment.';

  @override
  String get deleteBookmarkTooltip => 'Ħassar favorit';

  @override
  String deleteBookmarkSemantics(Object reference) {
    return 'Ħassar il-favorit $reference';
  }

  @override
  String sortBookmarksTooltip(Object sortOrder) {
    return 'Ordni: $sortOrder';
  }

  @override
  String get noBookmarksYet => 'Għad m\'hemmx favoriti.';

  @override
  String get noBookmarksYetHint =>
      'Tektek l-ikona tal-favoriti waqt il-qari biex issalva post.';

  @override
  String bookmarkReferenceNavigationError(Object reference) {
    return 'Ma setax jinfetaħ $reference.';
  }

  @override
  String themeCardSemantics(Object description, Object name, Object selected) {
    return 'Tema $name$selected. $description';
  }

  @override
  String get selectedThemeSuffix => ', magħżula bħalissa';

  @override
  String get customisableAccentDescription =>
      'Kulur tal-aċċent personalizzabbli.';

  @override
  String get fixedPaletteDescription => 'Paletta fissa.';

  @override
  String accentColourTitle(Object themeName) {
    return 'Kulur tal-aċċent — $themeName';
  }

  @override
  String get brightnessMode => 'MODALITÀ TAD-DAWL';

  @override
  String get lightMode => 'Modalità tad-dawl';

  @override
  String get followSystemMode => 'Segwi l-modalità tas-sistema';

  @override
  String get darkMode => 'Modalità skura';

  @override
  String get customColourPicker => 'Agħżel kulur personalizzat';

  @override
  String get customColourTooltip => 'Kulur personalizzat...';

  @override
  String get couldNotLoadBooks =>
      'Ma setgħetx titgħabba l-lista tal-kotba. Erġa\' pprova.';

  @override
  String chapterLabel(Object chapter) {
    return 'Kapitlu $chapter';
  }

  @override
  String get traditionalOrderBooks => 'Kotba fl-ordni tradizzjonali';

  @override
  String get alphabeticalOrderBooks => 'Kotba fl-ordni alfabetiku';

  @override
  String get home => 'Dar';

  @override
  String get addBookmarkTooltip => 'Żid mal-favoriti';

  @override
  String get chooseBookChapter => 'Agħżel ktieb u kapitlu';

  @override
  String get chooseVerse => 'Agħżel vers';

  @override
  String get bookChapterQuickNavigation =>
      'Navigazzjoni mgħaġġla għall-ktieb u l-kapitlu';

  @override
  String get verseQuickNavigation => 'Navigazzjoni mgħaġġla għall-vers';

  @override
  String get backToBooks => 'Lura għall-kotba';

  @override
  String get selectBookTitle => 'Agħżel ktieb';

  @override
  String selectChapterTitle(Object bookName) {
    return 'Agħżel kapitlu ($bookName)';
  }

  @override
  String chapterSelectionLabel(Object chapter) {
    return 'Kapitlu $chapter';
  }

  @override
  String verseSelectionLabel(Object verse) {
    return 'Vers $verse';
  }

  @override
  String fullChapterReference(Object bookName, Object chapter) {
    return 'Kapitlu sħiħ: $bookName $chapter';
  }

  @override
  String get memorizeHint => 'Memorizza';

  @override
  String get addNoteHint => 'Żid nota...';

  @override
  String get languageSearchHint => 'Fittex lingwi';

  @override
  String get languageModuleInstalled => 'Installat';

  @override
  String get languageModulePending => 'Traduzzjoni awtomatika pendenti';

  @override
  String get languageNoMatches => 'L-ebda lingwa ma taqbel mat-tfittxija.';

  @override
  String get languageCatalogDescription =>
      'Il-lingwi mmarkati bħala installati jaħdmu mingħajr l-internet. Lingwi oħra se jiżdiedu bħala moduli tradotti awtomatikament.';

  @override
  String get saveBookmarkSemantics => 'Issejvja l-favorit';

  @override
  String get couldNotLoadChapter =>
      'Ma setax jitgħabba l-kapitlu. Erġa\' pprova.';

  @override
  String get couldNotLoadChapters =>
      'Ma setgħux jitgħabbew il-kapitli. Erġa\' pprova.';

  @override
  String verseWithText(Object text, Object verse) {
    return 'Vers $verse: $text';
  }

  @override
  String accentSwatchSemantics(Object name, Object selected) {
    return 'Kulur tal-aċċent $name$selected';
  }

  @override
  String get oldTestament => 'Testment il-Qadim';

  @override
  String get newTestament => 'Testment il-Ġdid';

  @override
  String get deuterocanonApocrypha => 'Dewterokanoniċi / Apokrifi';
}
