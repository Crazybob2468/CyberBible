// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Breton (`br`).
class AppLocalizationsBr extends AppLocalizations {
  AppLocalizationsBr([String locale = 'br']) : super(locale);

  @override
  String get settingsTitle => 'Arventennoù';

  @override
  String get languageSection => 'Yezh';

  @override
  String get useSystemLanguage => 'Implijout yezh ar reizhiad';

  @override
  String get useSystemLanguageSubtitle =>
      'Klotañ gant yezh an dafariad dre ziouer.';

  @override
  String get currentLanguage => 'Yezh a-vremañ';

  @override
  String get appLanguage => 'Yezh an arload';

  @override
  String get chooseLanguage => 'Dibabit ar yezh';

  @override
  String get theme => 'Dodenn';

  @override
  String get appearance => 'Tres';

  @override
  String get textSection => 'Testenn';

  @override
  String get readingFormatSection => 'Furmad lenn';

  @override
  String get displaySection => 'Dispakañ';

  @override
  String get verseNumbers => 'Niveroù gwerzennoù';

  @override
  String get sectionHeadings => 'Titloù ar rannoù';

  @override
  String get redLetterText => 'Testenn gant lizherennoù ruz';

  @override
  String get selectABook => 'Dibab ul levr';

  @override
  String get traditionalOrder => 'Urzh hengounel |';

  @override
  String get alphabeticalOrder => 'Urzh al lizherenneg |';

  @override
  String get bookmarks => 'Sinedoù';

  @override
  String get retry => 'Adklask';

  @override
  String get chooseTheme => 'Dibab an tem';

  @override
  String get customisableThemes => 'Temoù personelaet';

  @override
  String get customisableThemesSubtitle =>
      'Pouezit war ur gartenn evit dibab ul liv pouez-mouezh. \"Classic White\" a skor ivez ar modoù Gouloù, Teñval ha Reizhiad.';

  @override
  String get setThemes => 'LAKAÑ TEMOU';

  @override
  String get setThemesSubtitle =>
      'Paledoù fiziet, savet gant an dorn. N\'eus ket ezhomm da bersonelaat — pouezit hepken evit arverañ.';

  @override
  String get deleteBookmarkQuestion => 'Dilemel ar sinedoù ?';

  @override
  String get cancel => 'Nullañ';

  @override
  String get delete => 'Dilemel';

  @override
  String get bookmarkSaved => 'Enrollet eo bet ar sinedoù';

  @override
  String get couldNotDeleteBookmark => 'N\'haller ket dilemel ar sinedoù.';

  @override
  String couldNotNavigate(Object reference) {
    return 'N\'eus ket bet gallet merdeiñ betek $reference.';
  }

  @override
  String get pageNotFound => 'Pajenn n\'eo ket bet kavet';

  @override
  String noRouteDefined(Object routeName) {
    return 'N\'eus hent ebet termenet evit \"$routeName\"';
  }

  @override
  String get english => 'saozneg';

  @override
  String get spanish => 'Spagnoleg';

  @override
  String get systemDefault => 'Dre ziouer ar reizhiad';

  @override
  String get languageStatusEnglish => 'Saozneg fallback oberiant';

  @override
  String get languageStatusSystem => 'Implijout yezh ar reizhiad';

  @override
  String languageStatusSelected(Object languageName) {
    return 'Yezh dibabet: $languageName';
  }

  @override
  String get themeLabel => 'Dodenn';

  @override
  String get notFoundTitle => 'Pajenn n\'eo ket bet kavet';

  @override
  String get loadingCyberBible => 'O kargañ ar Bibl Siber...';

  @override
  String get couldNotOpenDatabase =>
      'N\'haller ket digeriñ diaz roadennoù ar Bibl. Klaskit en-dro mar plij.';

  @override
  String get homeTagline => 'Un arload digoust ha digor evit studiañ ar Bibl';

  @override
  String get readTheBible => 'Lenn ar Bibl';

  @override
  String get settingsTooltip => 'Arventennoù';

  @override
  String get themeChoose => 'Dibab an tem';

  @override
  String get customThemes => 'Temoù personelaet';

  @override
  String get customThemesSubtitle =>
      'Pouezit war ur gartenn evit dibab ul liv pouez-mouezh. \"Classic White\" a skor ivez ar modoù Gouloù, Teñval ha Reizhiad.';

  @override
  String get setThemesLabel => 'LAKAÑ TEMOU';

  @override
  String get deleteBookmarkDialog => 'Dilemel ar sinedoù ?';

  @override
  String removeBookmarkMessage(Object details, Object reference) {
    return 'Dilemel \"$reference\"$details?\n\nN\'hall ket bezañ dizoloet.';
  }

  @override
  String get couldNotLoadBookmarks =>
      'N\'haller ket kargañ ar sinedoù. Klaskit en-dro mar plij.';

  @override
  String get bookmarkSavedMessage => 'Enrollet eo bet ar sinedoù';

  @override
  String get couldNotSaveBookmark => 'N\'haller ket enrollañ ar sinedoù.';

  @override
  String get noBookmarksMatchFilter => 'Sined ebet a glot gant ar sil-mañ.';

  @override
  String get clearFilter => 'Naetaat ar sil';

  @override
  String get traditionalOrderLabel => 'Urzh hengounel |';

  @override
  String get alphabeticalOrderLabel => 'Urzh al lizherenneg |';

  @override
  String get bookmarksTabLabel => 'Sinedoù';

  @override
  String get fullChapter => 'Pennad klok';

  @override
  String get addBookmark => 'Ouzhpennañ ur sined';

  @override
  String get selectVerse => 'Dibab gwerzenn';

  @override
  String get labelOptional => 'Tikedenn (dibar)';

  @override
  String get notesOptional => 'Notennoù (dibab)';

  @override
  String get save => 'Saveteiñ';

  @override
  String get goToVerse => 'Mont d\'ar gwerzenn';

  @override
  String verseTitle(Object verse) {
    return 'Gwerzenn $verse';
  }

  @override
  String chapterTitle(Object chapter) {
    return 'Pennad $chapter';
  }

  @override
  String get switchToFullChapter => 'Tremen d\'ar sinedoù pennad klok';

  @override
  String get bookmarkSheetCancel => 'Nullañ, serriñ ar follenn sinedoù';

  @override
  String get pickCustomAccent => 'Dibabit un taol-mouezh personelaet';

  @override
  String get apply => 'Lakaat e anv';

  @override
  String get custom => 'Diouzh muzul';

  @override
  String get brightnessSystem => 'Reizhiad';

  @override
  String get brightnessLight => 'Skañv';

  @override
  String get brightnessDark => 'Teñval';

  @override
  String get selectBook => 'Dibab ul levr';

  @override
  String get bookmarkFilterAll => 'Holl';

  @override
  String get bookmarkFilterUnlabeled => 'Hep tikedenn';

  @override
  String get bookmarkSortRecent => 'Kentañ diwezhañ';

  @override
  String get bookmarkSortCanonical => 'Urzh kanonikel';

  @override
  String get chapterRetry => 'Adklask';

  @override
  String get fontSize => 'Ment ar font';

  @override
  String fontSizePixels(Object size) {
    return '$size px';
  }

  @override
  String get fontSizeSlider => 'Gwisker ment ar font';

  @override
  String get fontSizeSliderHint => 'Riklañ evit kemmañ eus 12 da 28';

  @override
  String get fontPreview =>
      '« Er penn-kenta e krouas Doue an neñv hag an douar ». — Gen 1:1';

  @override
  String get showVerseNumbersSubtitle =>
      'Diskouez lizherennoù an niverennoù gwerzennoù war ar skramm lenn.';

  @override
  String get showSectionHeadingsSubtitle =>
      'Diskouez pennadoù ar pennadoù hag ar Salmoù etre ar pennadoù.';

  @override
  String get wordsOfChristSubtitle =>
      'Diskouez komzoù Jezuz e ruz. Diweredekaat evit ul liv testenn hepken.';

  @override
  String get verseFormatTitle => 'Furmad gwerzennoù';

  @override
  String get verseFormatSubtitle =>
      'Dibab penaos e vo lakaet an destenn eus ar skritur.';

  @override
  String get paragraphMode => 'Pennad';

  @override
  String get verseListMode => 'Roll ar gwerzennoù';

  @override
  String get paragraphModeTooltip => 'Mod paragraf';

  @override
  String get verseListModeTooltip => 'Mod roll gwerzennoù';

  @override
  String get paragraphModeDescription =>
      'Redek a ra an destenn a-hed an amzer gant pennadoù enframmet, evel ur Bibl moullet.';

  @override
  String get verseListModeDescription =>
      'Pep pennad eus ar skritur a grog gant e linenn dezhañ e-unan, ar pezh a laka ar strolladoù gwerzennoù da vezañ aes da welet.';

  @override
  String get deleteBookmarkTooltip => 'Dilemel ar sinedoù';

  @override
  String deleteBookmarkSemantics(Object reference) {
    return 'Dilemel ar sinedoù $reference';
  }

  @override
  String sortBookmarksTooltip(Object sortOrder) {
    return 'Urzhiañ: $sortOrder';
  }

  @override
  String get noBookmarksYet => 'Sined ebet c\'hoazh.';

  @override
  String get noBookmarksYetHint =>
      'Pouezit war an arouezenn sined e-pad ma lennit evit enrollañ ul lec\'hiadur.';

  @override
  String bookmarkReferenceNavigationError(Object reference) {
    return 'N\'eus ket bet gallet merdeiñ betek $reference.';
  }

  @override
  String themeCardSemantics(Object description, Object name, Object selected) {
    return '$name tem$selected. $description';
  }

  @override
  String get selectedThemeSuffix => ', diuzet bremañ';

  @override
  String get customisableAccentDescription => 'Liv pouez-mouezh personelaet.';

  @override
  String get fixedPaletteDescription => 'Palet reizhet.';

  @override
  String accentColourTitle(Object themeName) {
    return 'Liv pouez-mouezh — $themeName';
  }

  @override
  String get brightnessMode => 'MOD SKLERIÑ';

  @override
  String get lightMode => 'Mod gouloù';

  @override
  String get followSystemMode => 'Heuliañ ar mod reizhiad';

  @override
  String get darkMode => 'Mod teñval';

  @override
  String get customColourPicker => 'Dibab livioù personelaet';

  @override
  String get customColourTooltip => 'Liv personelaet…';

  @override
  String get couldNotLoadBooks =>
      'N\'haller ket kargañ roll al levrioù. Klaskit en-dro mar plij.';

  @override
  String chapterLabel(Object chapter) {
    return 'Pennad $chapter';
  }

  @override
  String get traditionalOrderBooks => 'Levrioù urzhioù hengounel';

  @override
  String get alphabeticalOrderBooks => 'Levrioù urzh al lizherenneg |';

  @override
  String get home => 'Ti';

  @override
  String get addBookmarkTooltip => 'Ouzhpennañ ur sined';

  @override
  String get chooseBookChapter => 'Dibab al levr hag ar pennad';

  @override
  String get chooseVerse => 'Dibab gwerzenn';

  @override
  String get bookChapterQuickNavigation => 'Merdeiñ buan al levr hag ar pennad';

  @override
  String get verseQuickNavigation => 'Merdeiñ buan dre gwerzennoù';

  @override
  String get backToBooks => 'Distreiñ d\'al levrioù';

  @override
  String get selectBookTitle => 'Dibabit Levr';

  @override
  String selectChapterTitle(Object bookName) {
    return 'Dibabit ar pennad ($bookName)';
  }

  @override
  String chapterSelectionLabel(Object chapter) {
    return 'Pennad $chapter';
  }

  @override
  String verseSelectionLabel(Object verse) {
    return 'Gwerzenn $verse';
  }

  @override
  String fullChapterReference(Object bookName, Object chapter) {
    return 'Pennad klok: $bookName $chapter';
  }

  @override
  String get memorizeHint => 'Deskiñ dre eñvor';

  @override
  String get addNoteHint => 'Ouzhpennañ un notenn...';

  @override
  String get languageSearchHint => 'Klask yezhoù';

  @override
  String get languageModuleInstalled => 'Staliet';

  @override
  String get languageModulePending => 'Troidigezh dre ardivink o c\'hortoz';

  @override
  String get languageNoMatches => 'Yezh ebet ne glot gant ho klask.';

  @override
  String get languageCatalogDescription =>
      'Ar yezhoù merket evel staliet a ya en-dro ezlinenn. Ouzhpennet e vo yezhoù all evel moduloù troet dre urzhiataer.';

  @override
  String get saveBookmarkSemantics => 'Enrollañ ar sinedoù';

  @override
  String get couldNotLoadChapter =>
      'N\'haller ket kargañ ar pennad. Klaskit en-dro mar plij.';

  @override
  String get couldNotLoadChapters =>
      'N\'haller ket kargañ pennadoù. Klaskit en-dro mar plij.';

  @override
  String verseWithText(Object text, Object verse) {
    return 'Gwerzenn $verse: $text';
  }

  @override
  String accentSwatchSemantics(Object name, Object selected) {
    return 'Liv ar pouez-mouezh $name$selected';
  }

  @override
  String get oldTestament => 'Testamant Kozh';

  @override
  String get newTestament => 'Testamant Nevez';

  @override
  String get deuterocanonApocrypha => 'Deuterokanon / Apokrifoù';
}
