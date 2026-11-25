// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Wolof (`wo`).
class AppLocalizationsWo extends AppLocalizations {
  AppLocalizationsWo([String locale = 'wo']) : super(locale);

  @override
  String get settingsTitle => 'Tànneef yi';

  @override
  String get languageSection => 'Làkk';

  @override
  String get useSystemLanguage => 'Jëfandikoo làkku sistem bi';

  @override
  String get useSystemLanguageSubtitle =>
      'Jëfandikoo làkku aparey bi ni làkk bu njëkk.';

  @override
  String get currentLanguage => 'Làkk bu nekk';

  @override
  String get appLanguage => 'Làkku aplikasioŋ bi';

  @override
  String get chooseLanguage => 'Tànn ab làkk';

  @override
  String get theme => 'Melo';

  @override
  String get appearance => 'Naka la mel';

  @override
  String get textSection => 'Bind';

  @override
  String get readingFormatSection => 'Naka ngay jàng';

  @override
  String get displaySection => 'Wone';

  @override
  String get verseNumbers => 'Limuy aaya yi';

  @override
  String get sectionHeadings => 'Boppu xaaj yi';

  @override
  String get redLetterText => 'Bind bu xonq';

  @override
  String get selectABook => 'Tànn ab téere';

  @override
  String get traditionalOrder => 'Toftal gu cosaan';

  @override
  String get alphabeticalOrder => 'Toftal bu araf yi';

  @override
  String get bookmarks => 'Màndarga yi';

  @override
  String get retry => 'Jéemaat';

  @override
  String get chooseTheme => 'Tànn ab melo';

  @override
  String get customisableThemes => 'Melo yi nga man a soppi';

  @override
  String get customisableThemesSubtitle =>
      'Bës ci kart bi ngir tànn benn melo. \"Classic White\" dafay doxal itam melo yu leer, yu lëndëm ak yu sistem.';

  @override
  String get setThemes => 'MELO YU SAX';

  @override
  String get setThemesSubtitle =>
      'Melo yu sax yi ñu defar ak teey. Soxlaatul soppi dara; bës ngir jëfandikoo.';

  @override
  String get deleteBookmarkQuestion => 'Ndax dindi màndarga bi?';

  @override
  String get cancel => 'Neenal';

  @override
  String get delete => 'Dindi';

  @override
  String get bookmarkSaved => 'Màndarga bi denc nañu ko';

  @override
  String get couldNotDeleteBookmark => 'Mëneesul a dindi màndarga bi.';

  @override
  String couldNotNavigate(Object reference) {
    return 'Mëneesul a dem ci $reference.';
  }

  @override
  String get pageNotFound => 'Giseeful xët wi';

  @override
  String noRouteDefined(Object routeName) {
    return 'Amul yoon bu ñu tëral ngir \"$routeName\"';
  }

  @override
  String get english => 'Àngale';

  @override
  String get spanish => 'Español';

  @override
  String get systemDefault => 'Li sistem bi tànn';

  @override
  String get languageStatusEnglish => 'Àngale mooy làkku wuutu bi';

  @override
  String get languageStatusSystem => 'Làkku sistem bi ñu ngi koy jëfandikoo';

  @override
  String languageStatusSelected(Object languageName) {
    return 'Làkk bi ñu tànn: $languageName';
  }

  @override
  String get themeLabel => 'Melo';

  @override
  String get notFoundTitle => 'Giseeful xët wi';

  @override
  String get loadingCyberBible => 'Yebum Cyber Bible mi...';

  @override
  String get couldNotOpenDatabase =>
      'Mëneesul a ubbi dencukaayu Biibël bi. Jéemaat.';

  @override
  String get homeTagline =>
      'Aplikasioŋ bu amul fay te amul tëju ci jàng Biibël';

  @override
  String get readTheBible => 'Jàng Biibël bi';

  @override
  String get settingsTooltip => 'Tànneef yi';

  @override
  String get themeChoose => 'Tànn ab melo';

  @override
  String get customThemes => 'Melo yi nga man a soppi';

  @override
  String get customThemesSubtitle =>
      'Bës ci kart bi ngir tànn benn melo. \"Classic White\" dafay doxal itam melo yu leer, yu lëndëm ak yu sistem.';

  @override
  String get setThemesLabel => 'MELO YU SAX';

  @override
  String get deleteBookmarkDialog => 'Ndax dindi màndarga bi?';

  @override
  String removeBookmarkMessage(Object details, Object reference) {
    return 'Ndax dindi \"$reference\"$details?\n\nMëneesul a delloo lii gannaaw.';
  }

  @override
  String get couldNotLoadBookmarks => 'Mëneesul a yeb màndarga yi. Jéemaat.';

  @override
  String get bookmarkSavedMessage => 'Màndarga bi denc nañu ko';

  @override
  String get couldNotSaveBookmark => 'Mëneesul a denc màndarga bi.';

  @override
  String get noBookmarksMatchFilter =>
      'Amul benn màndarga bu méngoo ak seet bii.';

  @override
  String get clearFilter => 'Far seet bi';

  @override
  String get traditionalOrderLabel => 'Toftal gu cosaan';

  @override
  String get alphabeticalOrderLabel => 'Toftal bu araf yi';

  @override
  String get bookmarksTabLabel => 'Màndarga yi';

  @override
  String get fullChapter => 'Sa chapitër bépp';

  @override
  String get addBookmark => 'Yokk màndarga';

  @override
  String get selectVerse => 'Tànn ab aaya';

  @override
  String get labelOptional => 'Turu màndarga (du war)';

  @override
  String get notesOptional => 'Xelal yi (du war)';

  @override
  String get save => 'Denc';

  @override
  String get goToVerse => 'Dem ci aaya bi';

  @override
  String verseTitle(Object verse) {
    return 'Aaya $verse';
  }

  @override
  String chapterTitle(Object chapter) {
    return 'Chapitër $chapter';
  }

  @override
  String get switchToFullChapter => 'Soppi ngir màndarga bu chapitër bépp';

  @override
  String get bookmarkSheetCancel => 'Neenal te tëj palanteer màndarga yi';

  @override
  String get pickCustomAccent => 'Tànn benn melo bu la neex';

  @override
  String get apply => 'Jëfandikoo';

  @override
  String get custom => 'Bu la neex';

  @override
  String get brightnessSystem => 'Sistem';

  @override
  String get brightnessLight => 'Leer';

  @override
  String get brightnessDark => 'Lëndëm';

  @override
  String get selectBook => 'Tànn ab téere';

  @override
  String get bookmarkFilterAll => 'Yépp';

  @override
  String get bookmarkFilterUnlabeled => 'Amul tur';

  @override
  String get bookmarkSortRecent => 'Yi bees jiitu';

  @override
  String get bookmarkSortCanonical => 'Toftal bu Biibël bi';

  @override
  String get chapterRetry => 'Jéemaat';

  @override
  String get fontSize => 'Dayo bind mi';

  @override
  String fontSizePixels(Object size) {
    return '$size px';
  }

  @override
  String get fontSizeSlider => 'Jumtukaay soppi dayo bind mi';

  @override
  String get fontSizeSliderHint => 'Dolli ngir soppi ko ci diggante 12 ak 28';

  @override
  String get fontPreview =>
      '\"Ca ndoorte la Yàlla sàkk asamaan ak suuf.\" — Njàlbéen 1:1';

  @override
  String get showVerseNumbersSubtitle => 'Wone limuy aaya yi ci ekraŋ jàng bi.';

  @override
  String get showSectionHeadingsSubtitle =>
      'Wone boppu xaaj yi ak boppu Sabóor yi ci diggante jukki yi.';

  @override
  String get wordsOfChristSubtitle =>
      'Wone kàdduy Yeesu yi ci xonq. Tëj lii ngir am benn melo rekk.';

  @override
  String get verseFormatTitle => 'Naka la aaya yi mel';

  @override
  String get verseFormatSubtitle => 'Tànn naka ngay tëral mbindum Mbind mi.';

  @override
  String get paragraphMode => 'Xaaj';

  @override
  String get verseListMode => 'Téerey aaya yi';

  @override
  String get paragraphModeTooltip => 'Naka xaaj';

  @override
  String get verseListModeTooltip => 'Naka limuy aaya yi';

  @override
  String get paragraphModeDescription =>
      'Bind mi dafay dox ci xaaj yu dugg ci biir, ni ci Biibël bu ñu móol.';

  @override
  String get verseListModeDescription =>
      'Xaaj bu nekk ci Mbind mi dafay tàmbalee ci rëddam, ngir gis mbooloom aaya yi.';

  @override
  String get deleteBookmarkTooltip => 'Dindi màndarga';

  @override
  String deleteBookmarkSemantics(Object reference) {
    return 'Dindi màndarga $reference';
  }

  @override
  String sortBookmarksTooltip(Object sortOrder) {
    return 'Tànneefu toftal: $sortOrder';
  }

  @override
  String get noBookmarksYet => 'Amagul benn màndarga.';

  @override
  String get noBookmarksYetHint =>
      'Bës ci màndarga bi boo jàng ngir denc fu nga tollu.';

  @override
  String bookmarkReferenceNavigationError(Object reference) {
    return 'Mëneesul a dem ci $reference.';
  }

  @override
  String themeCardSemantics(Object description, Object name, Object selected) {
    return 'Melo $name$selected. $description';
  }

  @override
  String get selectedThemeSuffix => ', ñu tànn ko léegi';

  @override
  String get customisableAccentDescription => 'Melo bu nga man a soppi.';

  @override
  String get fixedPaletteDescription => 'Melo yu sax.';

  @override
  String accentColourTitle(Object themeName) {
    return 'Melo — $themeName';
  }

  @override
  String get brightnessMode => 'NANUY LEER';

  @override
  String get lightMode => 'Naka leer';

  @override
  String get followSystemMode => 'Topp naka sistem bi';

  @override
  String get darkMode => 'Naka lëndëm';

  @override
  String get customColourPicker => 'Tànneefu melo bu la neex';

  @override
  String get customColourTooltip => 'Melo bu la neex...';

  @override
  String get couldNotLoadBooks => 'Mëneesul a yeb limuy téere yi. Jéemaat.';

  @override
  String chapterLabel(Object chapter) {
    return 'Chapitër $chapter';
  }

  @override
  String get traditionalOrderBooks => 'Téere yi ci toftal gu cosaan';

  @override
  String get alphabeticalOrderBooks => 'Téere yi ci toftal bu araf yi';

  @override
  String get home => 'Kër';

  @override
  String get addBookmarkTooltip => 'Yokk màndarga';

  @override
  String get chooseBookChapter => 'Tànn téere ak chapitër';

  @override
  String get chooseVerse => 'Tànn ab aaya';

  @override
  String get bookChapterQuickNavigation => 'Dem gaaw ci téere ak chapitër';

  @override
  String get verseQuickNavigation => 'Dem gaaw ci aaya bi';

  @override
  String get backToBooks => 'Dellusi ci téere yi';

  @override
  String get selectBookTitle => 'Tànn ab téere';

  @override
  String selectChapterTitle(Object bookName) {
    return 'Tànn chapitër ($bookName)';
  }

  @override
  String chapterSelectionLabel(Object chapter) {
    return 'Chapitër $chapter';
  }

  @override
  String verseSelectionLabel(Object verse) {
    return 'Aaya $verse';
  }

  @override
  String fullChapterReference(Object bookName, Object chapter) {
    return 'Chapitër bépp: $bookName $chapter';
  }

  @override
  String get memorizeHint => 'Jàngal ci xel';

  @override
  String get addNoteHint => 'Yokk benn xelal...';

  @override
  String get languageSearchHint => 'Seet làkk yi';

  @override
  String get languageModuleInstalled => 'Sampu nañu ko';

  @override
  String get languageModulePending => 'Mbindum làkk bi ñu ngi ko séentu';

  @override
  String get languageNoMatches => 'Amul làkk bu méngoo ak sa seet.';

  @override
  String get languageCatalogDescription =>
      'Làkk yi ñu samp mën nañu liggéey te amul internet. Ñeneen yi dinañu leen yokk ci anam bu jumtukaay tekki.';

  @override
  String get saveBookmarkSemantics => 'Denc màndarga';

  @override
  String get couldNotLoadChapter => 'Mëneesul a yeb chapitër bi. Jéemaat.';

  @override
  String get couldNotLoadChapters => 'Mëneesul a yeb chapitër yi. Jéemaat.';

  @override
  String verseWithText(Object text, Object verse) {
    return 'Aaya $verse: $text';
  }

  @override
  String accentSwatchSemantics(Object name, Object selected) {
    return 'Melo $name$selected';
  }

  @override
  String get oldTestament => 'Kowènu gu mag ga';

  @override
  String get newTestament => 'Kowènu gu bees gi';

  @override
  String get deuterocanonApocrypha => 'Deuterokanon / Apokrif';
}
