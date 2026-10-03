// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Kurdish (`ku`).
class AppLocalizationsKu extends AppLocalizations {
  AppLocalizationsKu([String locale = 'ku']) : super(locale);

  @override
  String get settingsTitle => 'Mîheng';

  @override
  String get languageSection => 'Ziman';

  @override
  String get useSystemLanguage => 'Zimanê pergalê bi kar bîne';

  @override
  String get useSystemLanguageSubtitle =>
      'Bi serişte zimanê cîhazê bi kar bîne.';

  @override
  String get currentLanguage => 'Zimanê niha';

  @override
  String get appLanguage => 'Zimanê sepanê';

  @override
  String get chooseLanguage => 'Ziman hilbijêre';

  @override
  String get theme => 'Mijar';

  @override
  String get appearance => 'Dîtin';

  @override
  String get textSection => 'Nivîs';

  @override
  String get readingFormatSection => 'Formata xwendinê';

  @override
  String get displaySection => 'Nîşandan';

  @override
  String get verseNumbers => 'Hejmara ayetan';

  @override
  String get sectionHeadings => 'Sernavên beşan';

  @override
  String get redLetterText => 'Nivîsa bi sor';

  @override
  String get selectABook => 'Pirtûkek hilbijêre';

  @override
  String get traditionalOrder => 'Rêza kevneşopî';

  @override
  String get alphabeticalOrder => 'Rêza alfabeyî';

  @override
  String get bookmarks => 'Nîşanên rûpelê';

  @override
  String get retry => 'Dîsa biceribîne';

  @override
  String get chooseTheme => 'Mijar hilbijêre';

  @override
  String get customisableThemes => 'Mijarên têne xweşkirin';

  @override
  String get customisableThemesSubtitle =>
      'Ji bo hilbijartina rengê balê li karekê bide. \"Classic White\" jî modên Ronî, Tarî û Pergalê piştgirî dike.';

  @override
  String get setThemes => 'MIJARAN BIDE RÊKXISTIN';

  @override
  String get setThemesSubtitle =>
      'Paletên sabît, bi dest hatine çêkirin. Pêdiviya xweşkirinê tune ye - ji bo sepandinê li ser bide.';

  @override
  String get deleteBookmarkQuestion => 'Nîşana rûpelê jê bibe?';

  @override
  String get cancel => 'Betal';

  @override
  String get delete => 'Jê bibe';

  @override
  String get bookmarkSaved => 'Nîşana rûpelê hat tomar kirin';

  @override
  String get couldNotDeleteBookmark => 'Nîşana rûpelê nehat jêbirin.';

  @override
  String couldNotNavigate(Object reference) {
    return 'Nekarî çûna $reference.';
  }

  @override
  String get pageNotFound => 'Rûpel nehat dîtin';

  @override
  String noRouteDefined(Object routeName) {
    return 'Ji bo \"$routeName\" rê tune ye';
  }

  @override
  String get english => 'Îngilîzî';

  @override
  String get spanish => 'Spanî';

  @override
  String get systemDefault => 'Standarda pergalê';

  @override
  String get languageStatusEnglish => 'Vegera Îngilîzî çalak e';

  @override
  String get languageStatusSystem => 'Zimanê pergalê tê bikaranîn';

  @override
  String languageStatusSelected(Object languageName) {
    return 'Zimanê hilbijartî: $languageName';
  }

  @override
  String get themeLabel => 'Mijar';

  @override
  String get notFoundTitle => 'Rûpel nehat dîtin';

  @override
  String get loadingCyberBible => 'Cyber Bible tê barkirin...';

  @override
  String get couldNotOpenDatabase =>
      'Danegira Încîlê nehat vekirin. Ji kerema xwe dîsa biceribîne.';

  @override
  String get homeTagline =>
      'Sepanek belaş û çavkaniya vekirî ji bo xwendina Încîlê';

  @override
  String get readTheBible => 'Încîlê bixwîne';

  @override
  String get settingsTooltip => 'Mîheng';

  @override
  String get themeChoose => 'Mijar hilbijêre';

  @override
  String get customThemes => 'Mijarên têne xweşkirin';

  @override
  String get customThemesSubtitle =>
      'Ji bo hilbijartina rengê balê li karekê bide. \"Classic White\" jî modên Ronî, Tarî û Pergalê piştgirî dike.';

  @override
  String get setThemesLabel => 'MIJARAN BIDE RÊKXISTIN';

  @override
  String get deleteBookmarkDialog => 'Nîşana rûpelê jê bibe?';

  @override
  String removeBookmarkMessage(Object details, Object reference) {
    return '\"$reference\"$details rake?\n\nEv nayê vegerandin.';
  }

  @override
  String get couldNotLoadBookmarks =>
      'Nîşanên rûpelê nehatin barkirin. Ji kerema xwe dîsa biceribîne.';

  @override
  String get bookmarkSavedMessage => 'Nîşana rûpelê hat tomar kirin';

  @override
  String get couldNotSaveBookmark => 'Nîşana rûpelê nehat tomar kirin.';

  @override
  String get noBookmarksMatchFilter =>
      'Tu nîşana rûpelê bi vê fîlterê re nagunce.';

  @override
  String get clearFilter => 'Fîlterê paqij bike';

  @override
  String get traditionalOrderLabel => 'Rêza kevneşopî';

  @override
  String get alphabeticalOrderLabel => 'Rêza alfabeyî';

  @override
  String get bookmarksTabLabel => 'Nîşanên rûpelê';

  @override
  String get fullChapter => 'Beşa tevahî';

  @override
  String get addBookmark => 'Nîşana rûpelê lê zêde bike';

  @override
  String get selectVerse => 'Ayet hilbijêre';

  @override
  String get labelOptional => 'Etîket (bijarte)';

  @override
  String get notesOptional => 'Têbînî (bijarte)';

  @override
  String get save => 'Tomar bike';

  @override
  String get goToVerse => 'Biçe ayetê';

  @override
  String verseTitle(Object verse) {
    return 'Ayet $verse';
  }

  @override
  String chapterTitle(Object chapter) {
    return 'Beş $chapter';
  }

  @override
  String get switchToFullChapter => 'Biçe nîşana beşa tevahî';

  @override
  String get bookmarkSheetCancel => 'Betal bike, pelê nîşanan bigire';

  @override
  String get pickCustomAccent => 'Rengê bala taybet hilbijêre';

  @override
  String get apply => 'Bisepîne';

  @override
  String get custom => 'Taybet';

  @override
  String get brightnessSystem => 'Pergal';

  @override
  String get brightnessLight => 'Ronî';

  @override
  String get brightnessDark => 'Tarî';

  @override
  String get selectBook => 'Pirtûk hilbijêre';

  @override
  String get bookmarkFilterAll => 'Hemû';

  @override
  String get bookmarkFilterUnlabeled => 'Bê etîket';

  @override
  String get bookmarkSortRecent => 'Herî nû pêşî';

  @override
  String get bookmarkSortCanonical => 'Rêza kanonî';

  @override
  String get chapterRetry => 'Dîsa biceribîne';

  @override
  String get fontSize => 'Mezinahiya tîpan';

  @override
  String fontSizePixels(Object size) {
    return '$size px';
  }

  @override
  String get fontSizeSlider => 'Xişika mezinahiya tîpan';

  @override
  String get fontSizeSliderHint => 'Ji 12 heta 28 biguhezîne';

  @override
  String get fontPreview =>
      '\"Di destpêkê de Xwedê ezman û erd afirand.\" - Destpêbûn 1:1';

  @override
  String get showVerseNumbersSubtitle =>
      'Di ekrana xwendinê de hejmarên ayetan ên jor-nivîs nîşan bide.';

  @override
  String get showSectionHeadingsSubtitle =>
      'Di nav beşan de sernavên beş û Zebûran nîşan bide.';

  @override
  String get wordsOfChristSubtitle =>
      'Gotinên Îsa bi sor nîşan bide. Ji bo yek rengê nivîsê neçalak bike.';

  @override
  String get verseFormatTitle => 'Formata ayetan';

  @override
  String get verseFormatSubtitle =>
      'Bawernameya nivîsê çawa were rêzkirin hilbijêre.';

  @override
  String get paragraphMode => 'Paragraf';

  @override
  String get verseListMode => 'Lîsteya ayetan';

  @override
  String get paragraphModeTooltip => 'Moda paragrafê';

  @override
  String get verseListModeTooltip => 'Moda lîsteya ayetan';

  @override
  String get paragraphModeDescription =>
      'Nivîs bi berdewamî bi paragrafên şemitandî diherike, wek Încîleke çapkirî.';

  @override
  String get verseListModeDescription =>
      'Her paragrafê nivîsê li ser rêzeke cuda dest pê dike, ku dîtina komên ayetan hêsan dike.';

  @override
  String get deleteBookmarkTooltip => 'Nîşana rûpelê jê bibe';

  @override
  String deleteBookmarkSemantics(Object reference) {
    return 'Nîşana rûpelê $reference jê bibe';
  }

  @override
  String sortBookmarksTooltip(Object sortOrder) {
    return 'Rêz bike: $sortOrder';
  }

  @override
  String get noBookmarksYet => 'Hîn nîşana rûpelê tune ye.';

  @override
  String get noBookmarksYetHint =>
      'Dema xwendinê ji bo tomarkirina cihî li ser îkona nîşana rûpelê bide.';

  @override
  String bookmarkReferenceNavigationError(Object reference) {
    return 'Nekarî çûna $reference.';
  }

  @override
  String themeCardSemantics(Object description, Object name, Object selected) {
    return 'Mijara $name$selected. $description';
  }

  @override
  String get selectedThemeSuffix => ', niha hilbijartî';

  @override
  String get customisableAccentDescription => 'Rengê bala tê xweşkirin.';

  @override
  String get fixedPaletteDescription => 'Paleta sabît.';

  @override
  String accentColourTitle(Object themeName) {
    return 'Rengê balê - $themeName';
  }

  @override
  String get brightnessMode => 'MODA RONAHIYÊ';

  @override
  String get lightMode => 'Moda ronî';

  @override
  String get followSystemMode => 'Moda pergalê bişopîne';

  @override
  String get darkMode => 'Moda tarî';

  @override
  String get customColourPicker => 'Hilbijêrê rengê taybet';

  @override
  String get customColourTooltip => 'Rengê taybet...';

  @override
  String get couldNotLoadBooks =>
      'Lîsteya pirtûkan nehat barkirin. Ji kerema xwe dîsa biceribîne.';

  @override
  String chapterLabel(Object chapter) {
    return 'Beş $chapter';
  }

  @override
  String get traditionalOrderBooks => 'Pirtûk bi rêza kevneşopî';

  @override
  String get alphabeticalOrderBooks => 'Pirtûk bi rêza alfabeyî';

  @override
  String get home => 'Mal';

  @override
  String get addBookmarkTooltip => 'Nîşana rûpelê lê zêde bike';

  @override
  String get chooseBookChapter => 'Pirtûk û beş hilbijêre';

  @override
  String get chooseVerse => 'Ayet hilbijêre';

  @override
  String get bookChapterQuickNavigation => 'Gerîna zû ya pirtûk û beşê';

  @override
  String get verseQuickNavigation => 'Gerîna zû ya ayetê';

  @override
  String get backToBooks => 'Vegere pirtûkan';

  @override
  String get selectBookTitle => 'Pirtûk hilbijêre';

  @override
  String selectChapterTitle(Object bookName) {
    return 'Beş hilbijêre ($bookName)';
  }

  @override
  String chapterSelectionLabel(Object chapter) {
    return 'Beş $chapter';
  }

  @override
  String verseSelectionLabel(Object verse) {
    return 'Ayet $verse';
  }

  @override
  String fullChapterReference(Object bookName, Object chapter) {
    return 'Beşa tevahî: $bookName $chapter';
  }

  @override
  String get memorizeHint => 'Ji bîr bike';

  @override
  String get addNoteHint => 'Têbînî lê zêde bike...';

  @override
  String get languageSearchHint => 'Zimanan bigere';

  @override
  String get languageModuleInstalled => 'Hat sazkirin';

  @override
  String get languageModulePending => 'Wergera makîneyê li bendê ye';

  @override
  String get languageNoMatches => 'Tu ziman bi lêgerîna te re nagunce.';

  @override
  String get languageCatalogDescription =>
      'Zimanên ku wek sazkirî hatine nîşankirin offline dixebitin. Zimanên din dê wek modulên wergera makîneyê werin zêdekirin.';

  @override
  String get saveBookmarkSemantics => 'Nîşana rûpelê tomar bike';

  @override
  String get couldNotLoadChapter =>
      'Beş nehat barkirin. Ji kerema xwe dîsa biceribîne.';

  @override
  String get couldNotLoadChapters =>
      'Beş nehatin barkirin. Ji kerema xwe dîsa biceribîne.';

  @override
  String verseWithText(Object text, Object verse) {
    return 'Ayet $verse: $text';
  }

  @override
  String accentSwatchSemantics(Object name, Object selected) {
    return 'Rengê bala $name$selected';
  }

  @override
  String get oldTestament => 'Peymana Kevn';

  @override
  String get newTestament => 'Peymana Nû';

  @override
  String get deuterocanonApocrypha => 'Deuterokanon / Apokrîfa';
}
