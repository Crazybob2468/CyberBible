// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Ewondo (`ewo`).
class AppLocalizationsEwo extends AppLocalizations {
  AppLocalizationsEwo([String locale = 'ewo']) : super(locale);

  @override
  String get settingsTitle => 'Minsili';

  @override
  String get languageSection => 'Lɛlɛm';

  @override
  String get useSystemLanguage => 'Koman lɛlɛm ya sisitem';

  @override
  String get useSystemLanguageSubtitle =>
      'Koman lɛlɛm ya aparey nga lɛlɛm ya nten.';

  @override
  String get currentLanguage => 'Lɛlɛm ya nten';

  @override
  String get appLanguage => 'Lɛlɛm ya aplikasioŋ';

  @override
  String get chooseLanguage => 'Sili lɛlɛm';

  @override
  String get theme => 'Mekañ';

  @override
  String get appearance => 'Mekañ ya nten';

  @override
  String get textSection => 'Ntiŋ';

  @override
  String get readingFormatSection => 'Mekañ ya laŋ';

  @override
  String get displaySection => 'Aŋ';

  @override
  String get verseNumbers => 'Mbaŋ ya vers';

  @override
  String get sectionHeadings => 'Mbaŋ ya mbu';

  @override
  String get redLetterText => 'Ntiŋ ya nsu';

  @override
  String get selectABook => 'Sili buku';

  @override
  String get traditionalOrder => 'Mbu ya bɔk';

  @override
  String get alphabeticalOrder => 'Mbu ya alphabet';

  @override
  String get bookmarks => 'Mbaŋ ya buku';

  @override
  String get retry => 'Teŋe abui';

  @override
  String get chooseTheme => 'Sili mekañ';

  @override
  String get customisableThemes => 'Mekañ ya bɔk';

  @override
  String get customisableThemesSubtitle =>
      'Tɔŋ kárd ngá sili kouler. \"Classic White\" a yé bɔk ya nsu, ya nkol, ngá ya sisitem.';

  @override
  String get setThemes => 'MEKAÑ YA NTE';

  @override
  String get setThemesSubtitle =>
      'Bañ kouler ya nte ya mbu. A yé ndɔŋ teŋe; tɔŋ ngá koman.';

  @override
  String get deleteBookmarkQuestion => 'Dɔŋ mbaŋ ya buku?';

  @override
  String get cancel => 'Tɔŋ';

  @override
  String get delete => 'Dɔŋ';

  @override
  String get bookmarkSaved => 'Mbaŋ ya buku a dɔŋ';

  @override
  String get couldNotDeleteBookmark => 'A yé dɔŋ mbaŋ ya buku.';

  @override
  String couldNotNavigate(Object reference) {
    return 'A yé kɔ $reference.';
  }

  @override
  String get pageNotFound => 'Páj a yé lɔŋ';

  @override
  String noRouteDefined(Object routeName) {
    return 'A yé mɛŋ ya $routeName';
  }

  @override
  String get english => 'Anglais';

  @override
  String get spanish => 'Español';

  @override
  String get systemDefault => 'Nten ya sisitem';

  @override
  String get languageStatusEnglish => 'Anglais a koman nga lɛlɛm ya bɔk';

  @override
  String get languageStatusSystem => 'Lɛlɛm ya sisitem a koman';

  @override
  String languageStatusSelected(Object languageName) {
    return 'Lɛlɛm ya sili: $languageName';
  }

  @override
  String get themeLabel => 'Mekañ';

  @override
  String get notFoundTitle => 'Páj a yé lɔŋ';

  @override
  String get loadingCyberBible => 'Cyber Bible a yé lɔŋ...';

  @override
  String get couldNotOpenDatabase => 'Database ya Bible a yé fé. Teŋe abui.';

  @override
  String get homeTagline => 'Aplikasioŋ ya Bible ya free ngá open source';

  @override
  String get readTheBible => 'Laŋ Bible';

  @override
  String get settingsTooltip => 'Minsili';

  @override
  String get themeChoose => 'Sili mekañ';

  @override
  String get customThemes => 'Mekañ ya bɔk';

  @override
  String get customThemesSubtitle =>
      'Tɔŋ kárd ngá sili kouler. \"Classic White\" a yé bɔk ya nsu, ya nkol, ngá ya sisitem.';

  @override
  String get setThemesLabel => 'MEKAÑ YA NTE';

  @override
  String get deleteBookmarkDialog => 'Dɔŋ mbaŋ ya buku?';

  @override
  String removeBookmarkMessage(Object details, Object reference) {
    return 'Dɔŋ \"$reference\"$details?\n\nMekañ e yé bɔk.';
  }

  @override
  String get couldNotLoadBookmarks => 'Mbaŋ ya buku a yé lɔŋ. Teŋe abui.';

  @override
  String get bookmarkSavedMessage => 'Mbaŋ ya buku a dɔŋ';

  @override
  String get couldNotSaveBookmark => 'A yé dɔŋ mbaŋ ya buku.';

  @override
  String get noBookmarksMatchFilter => 'Mbaŋ ya buku a yé bɔk ya filter.';

  @override
  String get clearFilter => 'Dɔŋ filter';

  @override
  String get traditionalOrderLabel => 'Mbu ya bɔk';

  @override
  String get alphabeticalOrderLabel => 'Mbu ya alphabet';

  @override
  String get bookmarksTabLabel => 'Mbaŋ ya buku';

  @override
  String get fullChapter => 'Chapitre ya nte';

  @override
  String get addBookmark => 'Sɔŋ mbaŋ ya buku';

  @override
  String get selectVerse => 'Sili vers';

  @override
  String get labelOptional => 'Mbaŋ (optional)';

  @override
  String get notesOptional => 'Mbaŋ ya nsili (optional)';

  @override
  String get save => 'Dɔŋ';

  @override
  String get goToVerse => 'Kɔ vers';

  @override
  String verseTitle(Object verse) {
    return 'Vers $verse';
  }

  @override
  String chapterTitle(Object chapter) {
    return 'Chapitre $chapter';
  }

  @override
  String get switchToFullChapter => 'Kɔ mbaŋ ya chapitre ya nte';

  @override
  String get bookmarkSheetCancel => 'Tɔŋ ngá fe mbaŋ ya buku';

  @override
  String get pickCustomAccent => 'Sili kouler ya bɔk';

  @override
  String get apply => 'Koman';

  @override
  String get custom => 'Ya bɔk';

  @override
  String get brightnessSystem => 'Sisitem';

  @override
  String get brightnessLight => 'Nsu';

  @override
  String get brightnessDark => 'Nkol';

  @override
  String get selectBook => 'Sili buku';

  @override
  String get bookmarkFilterAll => 'Bɔk';

  @override
  String get bookmarkFilterUnlabeled => 'A yé mbaŋ';

  @override
  String get bookmarkSortRecent => 'Mbaŋ ya nten ntɔŋ';

  @override
  String get bookmarkSortCanonical => 'Mbu ya Bible';

  @override
  String get chapterRetry => 'Teŋe abui';

  @override
  String get fontSize => 'Mbaŋ ya ntiŋ';

  @override
  String fontSizePixels(Object size) {
    return '$size px';
  }

  @override
  String get fontSizeSlider => 'Ntiŋ ya mbaŋ';

  @override
  String get fontSizeSliderHint => 'Sɔŋ ngá sili 12 ngá 28';

  @override
  String get fontPreview => '\"Nten, Nyambe a lɔŋ si ngá ngɔŋ.\" — Gen 1:1';

  @override
  String get showVerseNumbersSubtitle => 'Aŋ mbaŋ ya vers ci ekran ya laŋ.';

  @override
  String get showSectionHeadingsSubtitle =>
      'Aŋ mbaŋ ya mbu ngá Psalmes ci ntiŋ.';

  @override
  String get wordsOfChristSubtitle =>
      'Aŋ mbiŋ ya Yesu ci kouler nsu. Fé ngá bɔk kouler ya ntiŋ.';

  @override
  String get verseFormatTitle => 'Mekañ ya vers';

  @override
  String get verseFormatSubtitle => 'Sili mekañ ya ntiŋ ya Scripture.';

  @override
  String get paragraphMode => 'Paragraf';

  @override
  String get verseListMode => 'Liste ya vers';

  @override
  String get paragraphModeTooltip => 'Mekañ ya paragraf';

  @override
  String get verseListModeTooltip => 'Mekañ ya liste ya vers';

  @override
  String get paragraphModeDescription =>
      'Ntiŋ a yé lɔŋ ci paragraf, ni Bible ya print.';

  @override
  String get verseListModeDescription =>
      'Paragraf ci Scripture e ndeŋe ci ligne ya bɔk ngá baŋ vers.';

  @override
  String get deleteBookmarkTooltip => 'Dɔŋ mbaŋ ya buku';

  @override
  String deleteBookmarkSemantics(Object reference) {
    return 'Dɔŋ mbaŋ ya $reference';
  }

  @override
  String sortBookmarksTooltip(Object sortOrder) {
    return 'Mbu: $sortOrder';
  }

  @override
  String get noBookmarksYet => 'Mbaŋ ya buku a yé bɔk.';

  @override
  String get noBookmarksYetHint => 'Tɔŋ ikon mbaŋ ya buku ci laŋ ngá dɔŋ mbu.';

  @override
  String bookmarkReferenceNavigationError(Object reference) {
    return 'A yé kɔ $reference.';
  }

  @override
  String themeCardSemantics(Object description, Object name, Object selected) {
    return 'Mekañ $name$selected. $description';
  }

  @override
  String get selectedThemeSuffix => ', ya sili';

  @override
  String get customisableAccentDescription => 'Kouler ya bɔk.';

  @override
  String get fixedPaletteDescription => 'Kouler ya nte.';

  @override
  String accentColourTitle(Object themeName) {
    return 'Kouler — $themeName';
  }

  @override
  String get brightnessMode => 'MEKAÑ YA NSU';

  @override
  String get lightMode => 'Mekañ ya nsu';

  @override
  String get followSystemMode => 'Koman mekañ ya sisitem';

  @override
  String get darkMode => 'Mekañ ya nkol';

  @override
  String get customColourPicker => 'Sili kouler ya bɔk';

  @override
  String get customColourTooltip => 'Kouler ya bɔk...';

  @override
  String get couldNotLoadBooks => 'Liste ya buku a yé lɔŋ. Teŋe abui.';

  @override
  String chapterLabel(Object chapter) {
    return 'Chapitre $chapter';
  }

  @override
  String get traditionalOrderBooks => 'Buku ci mbu ya bɔk';

  @override
  String get alphabeticalOrderBooks => 'Buku ci mbu ya alphabet';

  @override
  String get home => 'Ndɔŋ';

  @override
  String get addBookmarkTooltip => 'Sɔŋ mbaŋ ya buku';

  @override
  String get chooseBookChapter => 'Sili buku ngá chapitre';

  @override
  String get chooseVerse => 'Sili vers';

  @override
  String get bookChapterQuickNavigation => 'Kɔ buku ngá chapitre abui';

  @override
  String get verseQuickNavigation => 'Kɔ vers abui';

  @override
  String get backToBooks => 'Kɔ buku';

  @override
  String get selectBookTitle => 'Sili buku';

  @override
  String selectChapterTitle(Object bookName) {
    return 'Sili chapitre ($bookName)';
  }

  @override
  String chapterSelectionLabel(Object chapter) {
    return 'Chapitre $chapter';
  }

  @override
  String verseSelectionLabel(Object verse) {
    return 'Vers $verse';
  }

  @override
  String fullChapterReference(Object bookName, Object chapter) {
    return 'Chapitre ya nte: $bookName $chapter';
  }

  @override
  String get memorizeHint => 'Sɔŋ ci xel';

  @override
  String get addNoteHint => 'Sɔŋ note...';

  @override
  String get languageSearchHint => 'Sili lɛlɛm';

  @override
  String get languageModuleInstalled => 'A yé lɔŋ';

  @override
  String get languageModulePending => 'Traduction machine a yé nten';

  @override
  String get languageNoMatches => 'Lɛlɛm a yé bɔk ya seet.';

  @override
  String get languageCatalogDescription =>
      'Lɛlɛm ya lɔŋ a yé network. Lɛlɛm ya bɔk a ndeŋe ci module traduction machine.';

  @override
  String get saveBookmarkSemantics => 'Dɔŋ mbaŋ ya buku';

  @override
  String get couldNotLoadChapter => 'Chapitre a yé lɔŋ. Teŋe abui.';

  @override
  String get couldNotLoadChapters => 'Chapitre a yé lɔŋ. Teŋe abui.';

  @override
  String verseWithText(Object text, Object verse) {
    return 'Vers $verse: $text';
  }

  @override
  String accentSwatchSemantics(Object name, Object selected) {
    return 'Kouler $name$selected';
  }

  @override
  String get oldTestament => 'Testament ya bɔk';

  @override
  String get newTestament => 'Testament ya nten';

  @override
  String get deuterocanonApocrypha => 'Deuterocanon / Apocrypha';
}
