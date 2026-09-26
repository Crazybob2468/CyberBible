// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Lingala (`ln`).
class AppLocalizationsLn extends AppLocalizations {
  AppLocalizationsLn([String locale = 'ln']) : super(locale);

  @override
  String get settingsTitle => 'Bobongisi';

  @override
  String get languageSection => 'Lokota';

  @override
  String get useSystemLanguage => 'Salela lokota ya sisteme';

  @override
  String get useSystemLanguageSubtitle => 'Landá lokota ya aparɛyi na liboso.';

  @override
  String get currentLanguage => 'Lokota oyo ezali sikoyo';

  @override
  String get appLanguage => 'Lokota ya programɛ';

  @override
  String get chooseLanguage => 'Pona lokota';

  @override
  String get theme => 'Motó ya bililingi';

  @override
  String get appearance => 'Lolenge ya komonana';

  @override
  String get textSection => 'Makomi';

  @override
  String get readingFormatSection => 'Lolenge ya kotanga';

  @override
  String get displaySection => 'Emoniseli';

  @override
  String get verseNumbers => 'Mitango ya bavɛrsɛ';

  @override
  String get sectionHeadings => 'Mitó ya biteni';

  @override
  String get redLetterText => 'Makomi na motane';

  @override
  String get selectABook => 'Pona buku moko';

  @override
  String get traditionalOrder => 'Molɔngɔ ya bonkɔkɔ';

  @override
  String get alphabeticalOrder => 'Molɔngɔ ya alfabɛ';

  @override
  String get bookmarks => 'Bilembo ya esika';

  @override
  String get retry => 'Meka lisusu';

  @override
  String get chooseTheme => 'Pona motó ya bililingi';

  @override
  String get customisableThemes => 'Mitó oyo ekoki kobongisama';

  @override
  String get customisableThemesSubtitle =>
      'Finá kartɛ mpo na kopona langi ya kosalisa. \"Mpɛmbɛ ya Bonkɔkɔ\" esalisaka mpe lolenge ya Pole, Molili mpe Sisteme.';

  @override
  String get setThemes => 'MITÓ ESILÁ KOYEBANA';

  @override
  String get setThemesSubtitle =>
      'Bapaletɛ ya langi oyo esalemi malamu. Esengeli kobongisa eloko te; finá kaka mpo na kosalela yango.';

  @override
  String get deleteBookmarkQuestion => 'Olongola elembo ya esika?';

  @override
  String get cancel => 'Tika';

  @override
  String get delete => 'Longola';

  @override
  String get bookmarkSaved => 'Elembo ya esika ebombami';

  @override
  String get couldNotDeleteBookmark => 'Elembo ya esika elongolamaki te.';

  @override
  String couldNotNavigate(Object reference) {
    return 'Ekoki kokende na $reference te.';
  }

  @override
  String get pageNotFound => 'Lokasa emonani te';

  @override
  String noRouteDefined(Object routeName) {
    return 'Nzela elimisami te mpo na \"$routeName\"';
  }

  @override
  String get english => 'Anglais';

  @override
  String get spanish => 'Español';

  @override
  String get systemDefault => 'Ya liboso ya sisteme';

  @override
  String get languageStatusEnglish =>
      'Lokota ya Anglais ezali kosalelama lokola lisungi';

  @override
  String get languageStatusSystem => 'Ezali kosalela lokota ya sisteme';

  @override
  String languageStatusSelected(Object languageName) {
    return 'Lokota oyo oponi: $languageName';
  }

  @override
  String get themeLabel => 'Motó ya bililingi';

  @override
  String get notFoundTitle => 'Lokasa emonani te';

  @override
  String get loadingCyberBible => 'Cyber Bible ezali kofungwama...';

  @override
  String get couldNotOpenDatabase =>
      'Ekoki kofungola base ya makambo ya Biblia te. Meka lisusu.';

  @override
  String get homeTagline =>
      'Programɛ ya koyekola Biblia, ya ofele mpe ya polele';

  @override
  String get readTheBible => 'Tángá Biblia';

  @override
  String get settingsTooltip => 'Bobongisi';

  @override
  String get themeChoose => 'Pona motó ya bililingi';

  @override
  String get customThemes => 'Mitó oyo ekoki kobongisama';

  @override
  String get customThemesSubtitle =>
      'Finá kartɛ mpo na kopona langi ya kosalisa. \"Mpɛmbɛ ya Bonkɔkɔ\" esalisaka mpe lolenge ya Pole, Molili mpe Sisteme.';

  @override
  String get setThemesLabel => 'MITÓ ESILÁ KOYEBANA';

  @override
  String get deleteBookmarkDialog => 'Olongola elembo ya esika?';

  @override
  String removeBookmarkMessage(Object details, Object reference) {
    return 'Olongola \"$reference\"$details?\n\nOkoki kozongisa yango lisusu te.';
  }

  @override
  String get couldNotLoadBookmarks =>
      'Ekoki kotya bilembo ya esika te. Meka lisusu.';

  @override
  String get bookmarkSavedMessage => 'Elembo ya esika ebombami';

  @override
  String get couldNotSaveBookmark => 'Ekoki kobomba elembo ya esika te.';

  @override
  String get noBookmarksMatchFilter =>
      'Elembo moko ya esika ekokani na filtre oyo te.';

  @override
  String get clearFilter => 'Longola filtre';

  @override
  String get traditionalOrderLabel => 'Molɔngɔ ya bonkɔkɔ';

  @override
  String get alphabeticalOrderLabel => 'Molɔngɔ ya alfabɛ';

  @override
  String get bookmarksTabLabel => 'Bilembo ya esika';

  @override
  String get fullChapter => 'Mokapo mobimba';

  @override
  String get addBookmark => 'Bakisa elembo ya esika';

  @override
  String get selectVerse => 'Pona vɛrsɛ';

  @override
  String get labelOptional => 'Elembo (soki olingi)';

  @override
  String get notesOptional => 'Makanisi (soki olingi)';

  @override
  String get save => 'Bomba';

  @override
  String get goToVerse => 'Kende na vɛrsɛ';

  @override
  String verseTitle(Object verse) {
    return 'Vɛrsɛ $verse';
  }

  @override
  String chapterTitle(Object chapter) {
    return 'Mokapo $chapter';
  }

  @override
  String get switchToFullChapter => 'Bongola na elembo ya mokapo mobimba';

  @override
  String get bookmarkSheetCancel => 'Tika, kangá lokasa ya elembo ya esika';

  @override
  String get pickCustomAccent => 'Pona langi ya kosalisa ya yo moko';

  @override
  String get apply => 'Salela';

  @override
  String get custom => 'Ya yo moko';

  @override
  String get brightnessSystem => 'Sisteme';

  @override
  String get brightnessLight => 'Pole';

  @override
  String get brightnessDark => 'Molili';

  @override
  String get selectBook => 'Pona buku moko';

  @override
  String get bookmarkFilterAll => 'Nyonso';

  @override
  String get bookmarkFilterUnlabeled => 'Ezangi elembo';

  @override
  String get bookmarkSortRecent => 'Ya sika liboso';

  @override
  String get bookmarkSortCanonical => 'Molɔngɔ ya Biblia';

  @override
  String get chapterRetry => 'Meka lisusu';

  @override
  String get fontSize => 'Bonene ya makomi';

  @override
  String fontSizePixels(Object size) {
    return '$size px';
  }

  @override
  String get fontSizeSlider => 'Ebongiseli ya bonene ya makomi';

  @override
  String get fontSizeSliderHint => 'Tambwisa mpo na kobongisa uta 12 kino 28';

  @override
  String get fontPreview =>
      '\"Na ebandeli Nzambe akelaki likoló mpe mabele.\" - Ebandeli 1:1';

  @override
  String get showVerseNumbersSubtitle =>
      'Lakisa mitango ya bavɛrsɛ na likoló na ekranɛ ya kotanga.';

  @override
  String get showSectionHeadingsSubtitle =>
      'Lakisa mitó ya biteni mpe ya Nzembo na kati ya biteni ya makomi.';

  @override
  String get wordsOfChristSubtitle =>
      'Lakisa maloba ya Yesu na motane. Kanga yango mpo na kozala na langi moko ya makomi.';

  @override
  String get verseFormatTitle => 'Lolenge ya bavɛrsɛ';

  @override
  String get verseFormatSubtitle =>
      'Pona lolenge oyo makomi ya Biblia ekobongisama.';

  @override
  String get paragraphMode => 'Paragrafe';

  @override
  String get verseListMode => 'Molɔngɔ ya bavɛrsɛ';

  @override
  String get paragraphModeTooltip => 'Lolenge ya paragrafe';

  @override
  String get verseListModeTooltip => 'Lolenge ya molɔngɔ ya bavɛrsɛ';

  @override
  String get paragraphModeDescription =>
      'Makomi ekendaka liboso kozanga kokata, na baparaɡrafe oyo ebandaka na esika moke, lokola Biblia ebimisami.';

  @override
  String get verseListModeDescription =>
      'Paragrafe moko na moko ya Biblia ebandaka na molɔngɔ na yango mpo ete ebele ya bavɛrsɛ emonana pɛtɛɛ.';

  @override
  String get deleteBookmarkTooltip => 'Longola elembo ya esika';

  @override
  String deleteBookmarkSemantics(Object reference) {
    return 'Longola elembo ya esika $reference';
  }

  @override
  String sortBookmarksTooltip(Object sortOrder) {
    return 'Bongisá na molɔngɔ: $sortOrder';
  }

  @override
  String get noBookmarksYet => 'Naino elembo ya esika ezali te.';

  @override
  String get noBookmarksYetHint =>
      'Finá elembo ya esika ntango ozali kotanga mpo na kobomba esika moko.';

  @override
  String bookmarkReferenceNavigationError(Object reference) {
    return 'Ekoki kokende na $reference te.';
  }

  @override
  String themeCardSemantics(Object description, Object name, Object selected) {
    return 'Motó $name$selected. $description';
  }

  @override
  String get selectedThemeSuffix => ', eponami sikoyo';

  @override
  String get customisableAccentDescription =>
      'Langi ya kosalisa oyo ekoki kobongisama.';

  @override
  String get fixedPaletteDescription => 'Paletɛ ya langi oyo ebongwani te.';

  @override
  String accentColourTitle(Object themeName) {
    return 'Langi ya kosalisa - $themeName';
  }

  @override
  String get brightnessMode => 'LOLA YA POLE';

  @override
  String get lightMode => 'Lolenge ya pole';

  @override
  String get followSystemMode => 'Landá lolenge ya sisteme';

  @override
  String get darkMode => 'Lolenge ya molili';

  @override
  String get customColourPicker => 'Eponeli ya langi ya yo moko';

  @override
  String get customColourTooltip => 'Langi ya yo moko...';

  @override
  String get couldNotLoadBooks =>
      'Ekoki kotya liste ya babuku te. Meka lisusu.';

  @override
  String chapterLabel(Object chapter) {
    return 'Mokapo $chapter';
  }

  @override
  String get traditionalOrderBooks => 'Babuku na molɔngɔ ya bonkɔkɔ';

  @override
  String get alphabeticalOrderBooks => 'Babuku na molɔngɔ ya alfabɛ';

  @override
  String get home => 'Ebandeli';

  @override
  String get addBookmarkTooltip => 'Bakisa elembo ya esika';

  @override
  String get chooseBookChapter => 'Pona buku mpe mokapo';

  @override
  String get chooseVerse => 'Pona vɛrsɛ';

  @override
  String get bookChapterQuickNavigation => 'Kokende noki na buku mpe mokapo';

  @override
  String get verseQuickNavigation => 'Kokende noki na vɛrsɛ';

  @override
  String get backToBooks => 'Zonga na babuku';

  @override
  String get selectBookTitle => 'Pona buku';

  @override
  String selectChapterTitle(Object bookName) {
    return 'Pona mokapo ($bookName)';
  }

  @override
  String chapterSelectionLabel(Object chapter) {
    return 'Mokapo $chapter';
  }

  @override
  String verseSelectionLabel(Object verse) {
    return 'Vɛrsɛ $verse';
  }

  @override
  String fullChapterReference(Object bookName, Object chapter) {
    return 'Mokapo mobimba: $bookName $chapter';
  }

  @override
  String get memorizeHint => 'Yekola na motema';

  @override
  String get addNoteHint => 'Bakisa likanisi...';

  @override
  String get languageSearchHint => 'Luka balokota';

  @override
  String get languageModuleInstalled => 'Etyami';

  @override
  String get languageModulePending => 'Bobongoli ya masini ezali kozela';

  @override
  String get languageNoMatches => 'Lokota moko te ekokani na boluki na yo.';

  @override
  String get languageCatalogDescription =>
      'Balokota oyo etyami esalaka ata na Internet te. Balokota mosusu ekobakisama lokola bamodile ya bobongoli na masini.';

  @override
  String get saveBookmarkSemantics => 'Bomba elembo ya esika';

  @override
  String get couldNotLoadChapter => 'Ekoki kotya mokapo te. Meka lisusu.';

  @override
  String get couldNotLoadChapters => 'Ekoki kotya bamokapo te. Meka lisusu.';

  @override
  String verseWithText(Object text, Object verse) {
    return 'Vɛrsɛ $verse: $text';
  }

  @override
  String accentSwatchSemantics(Object name, Object selected) {
    return 'Langi ya kosalisa $name$selected';
  }

  @override
  String get oldTestament => 'Boyokani ya Kala';

  @override
  String get newTestament => 'Boyokani ya Sika';

  @override
  String get deuterocanonApocrypha => 'Deuterokanona / Apokrifa';
}
