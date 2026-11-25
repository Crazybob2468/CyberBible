// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Bambara (`bm`).
class AppLocalizationsBm extends AppLocalizations {
  AppLocalizationsBm([String locale = 'bm']) : super(locale);

  @override
  String get settingsTitle => 'Settings (Labɛnw)';

  @override
  String get languageSection => 'Kan';

  @override
  String get useSystemLanguage => 'Baara kɛ ni sistɛmu kan ye';

  @override
  String get useSystemLanguageSubtitle =>
      'Aw bɛ minɛnw kan bɛn ɲɔgɔn ma ka kɛɲɛ ni a daminɛ ye.';

  @override
  String get currentLanguage => 'Kan min bɛ fɔ sisan';

  @override
  String get appLanguage => 'App kan';

  @override
  String get chooseLanguage => 'Kan sugandi';

  @override
  String get theme => 'Dakun';

  @override
  String get appearance => 'Yecogo';

  @override
  String get textSection => 'Masalabolo';

  @override
  String get readingFormatSection => 'Kalan kɛcogo';

  @override
  String get displaySection => 'Ka yira';

  @override
  String get verseNumbers => 'Vɛrise nimɔrɔw';

  @override
  String get sectionHeadings => 'Dakunw Kunkankow';

  @override
  String get redLetterText => 'Sɛbɛnni min bɛ ni sɛbɛn bilenman ye';

  @override
  String get selectABook => 'Gafe dɔ sugandi';

  @override
  String get traditionalOrder => 'Laadalata sigicogo';

  @override
  String get alphabeticalOrder => 'Alfabɛti sigicogo';

  @override
  String get bookmarks => 'Taamaʃyɛnw (bookmarks).';

  @override
  String get retry => 'Aw ye a lajɛ kokura';

  @override
  String get chooseTheme => 'Barokun sugandi';

  @override
  String get customisableThemes =>
      'Barokunw minnu bɛ se ka ladilan ka kɛɲɛ ni mɔgɔw sago ye';

  @override
  String get customisableThemesSubtitle =>
      'Karti dɔ digi walasa ka accent kulɛri dɔ sugandi. \"Classic White\" fana bɛ Yeelen, Dibi ani Sistɛmu cogoyaw Dɛmɛ.';

  @override
  String get setThemes => 'TƐMƐW SƐBƐN';

  @override
  String get setThemesSubtitle =>
      'Palɛti jɔlenw, bololabaarakɛlaw. No customization needed — i bolo digi dɔrɔn walasa ka baara kɛ.';

  @override
  String get deleteBookmarkQuestion => 'Delete bookmark?';

  @override
  String get cancel => 'ka dankari';

  @override
  String get delete => 'Ka jɔsi';

  @override
  String get bookmarkSaved => 'Bookmark maralen bɛ';

  @override
  String get couldNotDeleteBookmark => 'A ma se ka bookmark bɔ yen.';

  @override
  String couldNotNavigate(Object reference) {
    return 'Se ma Se ka Taa $reference la.';
  }

  @override
  String get pageNotFound => 'Page Ma Sɔrɔ';

  @override
  String noRouteDefined(Object routeName) {
    return 'Sira si ma ɲɛfɔ \"$routeName\" kama.';
  }

  @override
  String get english => 'Angilɛtɛri';

  @override
  String get spanish => 'Español';

  @override
  String get systemDefault => 'Sistɛmu ka default';

  @override
  String get languageStatusEnglish => 'Angilɛkan fallback active';

  @override
  String get languageStatusSystem => 'Baara kɛ ni sistɛmu kan ye';

  @override
  String languageStatusSelected(Object languageName) {
    return 'Kan sugandilen: $languageName';
  }

  @override
  String get themeLabel => 'Dakun';

  @override
  String get notFoundTitle => 'Page Ma Sɔrɔ';

  @override
  String get loadingCyberBible => 'Loading Cyber ​​Bibulu...';

  @override
  String get couldNotOpenDatabase =>
      'A ma se ka Bibulu ka kunnafonidilan da wuli. Aw ye aw jija ka segin a kan.';

  @override
  String get homeTagline =>
      'Bibulu-kalan porogaramu min bɛ kɛ fu ani min bɛ da mɔgɔw ɲɛ na';

  @override
  String get readTheBible => 'Bibulu kalan';

  @override
  String get settingsTooltip => 'Settings (Labɛnw)';

  @override
  String get themeChoose => 'Barokun sugandi';

  @override
  String get customThemes =>
      'Barokunw minnu bɛ se ka ladilan ka kɛɲɛ ni mɔgɔw sago ye';

  @override
  String get customThemesSubtitle =>
      'Karti dɔ digi walasa ka accent kulɛri dɔ sugandi. \"Classic White\" fana bɛ Yeelen, Dibi ani Sistɛmu cogoyaw Dɛmɛ.';

  @override
  String get setThemesLabel => 'TƐMƐW SƐBƐN';

  @override
  String get deleteBookmarkDialog => 'Delete bookmark?';

  @override
  String removeBookmarkMessage(Object details, Object reference) {
    return 'Ka \"$reference\"$details bɔ?\n\nO tɛ se ka kɔsegin.';
  }

  @override
  String get couldNotLoadBookmarks =>
      'A ma se ka taamasiyɛnw doni. Aw ye aw jija ka segin a kan.';

  @override
  String get bookmarkSavedMessage => 'Bookmark maralen bɛ';

  @override
  String get couldNotSaveBookmark => 'A ma se ka bookmark mara.';

  @override
  String get noBookmarksMatchFilter =>
      'Gafe taamasiyɛn si tɛ bɛn nin filɛri ma.';

  @override
  String get clearFilter => 'Filɛri jɛlen';

  @override
  String get traditionalOrderLabel => 'Laadalata sigicogo';

  @override
  String get alphabeticalOrderLabel => 'Alfabɛti sigicogo';

  @override
  String get bookmarksTabLabel => 'Taamaʃyɛnw (bookmarks).';

  @override
  String get fullChapter => 'Sapitiri dafalen';

  @override
  String get addBookmark => 'A’ ye Bookmark fara a kan';

  @override
  String get selectVerse => 'Vɛrise (Vɛrise) sugandi';

  @override
  String get labelOptional => 'Label (a bɛ se ka kɛ) .';

  @override
  String get notesOptional => 'Kɔlɔsiliw (a bɛ se ka kɛ) .';

  @override
  String get save => 'Ka mara';

  @override
  String get goToVerse => 'Taga Vɛrise yɔrɔ la';

  @override
  String verseTitle(Object verse) {
    return 'Vɛrise $verse';
  }

  @override
  String chapterTitle(Object chapter) {
    return 'Sapitiri $chapter';
  }

  @override
  String get switchToFullChapter =>
      'Aw bɛ wuli ka taa sapitiri dafalen taamasiyɛn na';

  @override
  String get bookmarkSheetCancel => 'Cancel, ka taamasiyɛn sɛbɛn da tugu';

  @override
  String get pickCustomAccent => 'A’ ye ladamukan dɔ sugandi';

  @override
  String get apply => 'Ka waleya';

  @override
  String get custom => 'Laada';

  @override
  String get brightnessSystem => 'Sisitɛmu';

  @override
  String get brightnessLight => 'Yeelen';

  @override
  String get brightnessDark => 'Dibi';

  @override
  String get selectBook => 'Gafe dɔ sugandi';

  @override
  String get bookmarkFilterAll => 'Bɛɛ';

  @override
  String get bookmarkFilterUnlabeled => 'A ma taamasiyɛn kɛ';

  @override
  String get bookmarkSortRecent => 'Kɔsa in na fɔlɔ';

  @override
  String get bookmarkSortCanonical => 'Kanonw ka sigicogo';

  @override
  String get chapterRetry => 'Aw ye a lajɛ kokura';

  @override
  String get fontSize => 'Font Size (sɛbɛnni hakɛ).';

  @override
  String fontSizePixels(Object size) {
    return '$size px';
  }

  @override
  String get fontSizeSlider => 'Font hakɛ sɛgɛsɛgɛlikɛlan';

  @override
  String get fontSizeSliderHint =>
      'I bolo digi walasa ka ladilan ka bɔ 12 la ka se 28 ma';

  @override
  String get fontPreview =>
      '\"Fɔlɔ la, Ala ye sankolo ni dugukolo da.\" —Jenɛse 1:1';

  @override
  String get showVerseNumbersSubtitle =>
      'Vɛrise nimɔrɔw sanfɛla jira kalansen kɔnɔ.';

  @override
  String get showSectionHeadingsSubtitle =>
      'Dakunw ni Zaburuw kunkankow jira tɛmɛsiraw ni ɲɔgɔn cɛ.';

  @override
  String get wordsOfChristSubtitle =>
      'Yesu ka kumaw jira ni bilen ye. Disable for sɛbɛnni kulɛri kelen.';

  @override
  String get verseFormatTitle => 'Vɛrisew cogoya';

  @override
  String get verseFormatSubtitle =>
      'Bibulu tɛmɛsiraw labɛnna cogo min na, o sugandi.';

  @override
  String get paragraphMode => 'Dakun';

  @override
  String get verseListMode => 'Vɛrisew lisɛli';

  @override
  String get paragraphModeTooltip => 'Dakunw cogoya';

  @override
  String get verseListModeTooltip => 'Vɛrise-list cogoya';

  @override
  String get paragraphModeDescription =>
      'Sɛbɛnniw bɛ woyo tuma bɛɛ ni dakunw ye minnu bɛ don a kɔnɔ, i n’a fɔ Bibulu sɛbɛnnen.';

  @override
  String get verseListModeDescription =>
      'Tɛmɛsira dakun kelen-kelen bɛɛ bɛ daminɛ u yɛrɛ la, o bɛ kɛ sababu ye ka tɛmɛsira kuluw yecogo nɔgɔya.';

  @override
  String get deleteBookmarkTooltip => 'A ka taamasiyɛn bɔ yen';

  @override
  String deleteBookmarkSemantics(Object reference) {
    return 'Taamaʃyɛn Bɔ $reference';
  }

  @override
  String sortBookmarksTooltip(Object sortOrder) {
    return 'Suguda: $sortOrder';
  }

  @override
  String get noBookmarksYet => 'Bookmark si ma sɔrɔ fɔlɔ.';

  @override
  String get noBookmarksYetHint =>
      'I ka taamasiyɛn taamasiyɛn digi k’i to kalan na walasa ka yɔrɔ dɔ mara.';

  @override
  String bookmarkReferenceNavigationError(Object reference) {
    return 'Se ma Se ka Taa $reference la.';
  }

  @override
  String themeCardSemantics(Object description, Object name, Object selected) {
    return '$name barokun$selected. $description';
  }

  @override
  String get selectedThemeSuffix => ', min sugandira sisan';

  @override
  String get customisableAccentDescription =>
      'Kulɛri accent min bɛ se ka kɛ ka kɛɲɛ ni mɔgɔw sago ye.';

  @override
  String get fixedPaletteDescription => 'Palɛti fixe.';

  @override
  String accentColourTitle(Object themeName) {
    return 'Accent Kulɛri — $themeName';
  }

  @override
  String get brightnessMode => 'YENAN MIN BƐ SƆRƆ';

  @override
  String get lightMode => 'Yeelen cogoya';

  @override
  String get followSystemMode => 'Aw bɛ tugu sistɛmu cogoya la';

  @override
  String get darkMode => 'Dibi cogoya';

  @override
  String get customColourPicker => 'Kulɛriw tabaga ladamulen';

  @override
  String get customColourTooltip => 'Kulɛri ladamulen...';

  @override
  String get couldNotLoadBooks =>
      'A ma se ka gafew lisɛli doni. Aw ye aw jija ka segin a kan.';

  @override
  String chapterLabel(Object chapter) {
    return 'Sapitiri $chapter';
  }

  @override
  String get traditionalOrderBooks => 'Laadalata komandi gafew';

  @override
  String get alphabeticalOrderBooks => 'Alfabɛti sigicogo gafew';

  @override
  String get home => 'So';

  @override
  String get addBookmarkTooltip => 'Aw ye gafe taamasiyɛn fara a kan';

  @override
  String get chooseBookChapter => 'Gafe ni sapitiri sugandi';

  @override
  String get chooseVerse => 'Vɛrise sugandi';

  @override
  String get bookChapterQuickNavigation => 'Gafe ni sapitiriw lajɛ teliya la';

  @override
  String get verseQuickNavigation => 'Vɛrise teliya la navigation';

  @override
  String get backToBooks => 'Segin gafew kan';

  @override
  String get selectBookTitle => 'Gafe sugandi';

  @override
  String selectChapterTitle(Object bookName) {
    return 'Sapitiri ($bookName) sugandi .';
  }

  @override
  String chapterSelectionLabel(Object chapter) {
    return 'Sapitiri $chapter';
  }

  @override
  String verseSelectionLabel(Object verse) {
    return 'Vɛrise $verse';
  }

  @override
  String fullChapterReference(Object bookName, Object chapter) {
    return 'Sapitiri dafalen: $bookName $chapter';
  }

  @override
  String get memorizeHint => 'Aw ye aw hakili to a la';

  @override
  String get addNoteHint => 'Aw ye sɛbɛn dɔ fara a kan...';

  @override
  String get languageSearchHint => 'Kanw ɲinini';

  @override
  String get languageModuleInstalled => 'A sigilen don';

  @override
  String get languageModulePending => 'Masina baarakɛcogo bɛ sen na';

  @override
  String get languageNoMatches => 'Kan si tɛ bɛn i ka ɲinini ma.';

  @override
  String get languageCatalogDescription =>
      'Kan minnu taamasiyɛn kɛra ko u sigilen don, olu bɛ baara kɛ ɛntɛrinɛti kɔkan. Kan wɛrɛw bɛna fara a kan i n’a fɔ modulu minnu bɛ baara kɛ ni masin ye.';

  @override
  String get saveBookmarkSemantics => 'Kitabumaralan mara';

  @override
  String get couldNotLoadChapter =>
      'A ma se ka sapitiri doni. Aw ye aw jija ka segin a kan.';

  @override
  String get couldNotLoadChapters =>
      'A ma se ka sapitiriw doni. Aw ye aw jija ka segin a kan.';

  @override
  String verseWithText(Object text, Object verse) {
    return 'Vɛrise $verse: $text';
  }

  @override
  String accentSwatchSemantics(Object name, Object selected) {
    return '$name kanhakɛ kulɛri$selected';
  }

  @override
  String get oldTestament => 'Layidu Kɔrɔ';

  @override
  String get newTestament => 'Layidu Kura';

  @override
  String get deuterocanonApocrypha => 'Deuterokanɔn / Apokrifa';
}
