// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Basa (`bas`).
class AppLocalizationsBas extends AppLocalizations {
  AppLocalizationsBas([String locale = 'bas']) : super(locale);

  @override
  String get settingsTitle => 'Minsili';

  @override
  String get languageSection => 'Mbene';

  @override
  String get useSystemLanguage => 'Sɔ̀n mbene ya système';

  @override
  String get useSystemLanguageSubtitle =>
      'Sɔ̀n mbene ya appareil a mbene ya mbɔ́ɔ.';

  @override
  String get currentLanguage => 'Mbene ya hɔ́l';

  @override
  String get appLanguage => 'Mbene ya app';

  @override
  String get chooseLanguage => 'Sɔ̀n mbene';

  @override
  String get theme => 'Mbaŋ';

  @override
  String get appearance => 'Aŋal';

  @override
  String get textSection => 'Té';

  @override
  String get readingFormatSection => 'Aŋal ya tɛ̀n';

  @override
  String get displaySection => 'Aŋal';

  @override
  String get verseNumbers => 'Nɔ́ŋ ya verset';

  @override
  String get sectionHeadings => 'Mbaŋ ya wú';

  @override
  String get redLetterText => 'Té ya kɔ̀l';

  @override
  String get selectABook => 'Sɔ̀n buku';

  @override
  String get traditionalOrder => 'Mbaŋ ya ndá';

  @override
  String get alphabeticalOrder => 'Mbaŋ ya alphabet';

  @override
  String get bookmarks => 'Mbaŋ';

  @override
  String get retry => 'Tɛ̀n ndá';

  @override
  String get chooseTheme => 'Sɔ̀n mbaŋ';

  @override
  String get customisableThemes => 'Mbaŋ ya bɔ̀l';

  @override
  String get customisableThemesSubtitle =>
      'Tɔ́ŋ carte a sɔ̀n couleur accent. \"Classic White\" a bɔ̀l mode ya ndá, ya kɔ̀l, nɛ système.';

  @override
  String get setThemes => 'MBAŊ YA NDÁ';

  @override
  String get setThemesSubtitle =>
      'Couleur ya ndá ya bɔ̀l. A bɔ̀l té; tɔ́ŋ a sɔ̀n.';

  @override
  String get deleteBookmarkQuestion => 'Sɔ̀n mbaŋ?';

  @override
  String get cancel => 'Tɔ́ŋ';

  @override
  String get delete => 'Sɔ̀n';

  @override
  String get bookmarkSaved => 'Mbaŋ a sɔ̀n';

  @override
  String get couldNotDeleteBookmark => 'Mbaŋ a sɔ̀n té.';

  @override
  String couldNotNavigate(Object reference) {
    return 'A bɔ̀l té a kɔ $reference.';
  }

  @override
  String get pageNotFound => 'Paje a bɔ̀l té';

  @override
  String noRouteDefined(Object routeName) {
    return 'A bɔ̀l té route ya \"$routeName\"';
  }

  @override
  String get english => 'Anglais';

  @override
  String get spanish => 'Espagnol';

  @override
  String get systemDefault => 'Système ya ndá';

  @override
  String get languageStatusEnglish => 'Anglais a sɔ̀n a mbene ya bɔ̀l';

  @override
  String get languageStatusSystem => 'Mbene ya système a sɔ̀n';

  @override
  String languageStatusSelected(Object languageName) {
    return 'Mbene a sɔ̀n: $languageName';
  }

  @override
  String get themeLabel => 'Mbaŋ';

  @override
  String get notFoundTitle => 'Paje a bɔ̀l té';

  @override
  String get loadingCyberBible => 'Cyber Bible a lɔ̀ŋ...';

  @override
  String get couldNotOpenDatabase =>
      'Database ya Bible a bɔ̀l té a bɔ́l. Tɛ̀n ndá.';

  @override
  String get homeTagline => 'App ya Bible ya free nɛ open source';

  @override
  String get readTheBible => 'Tɛ̀n Bible';

  @override
  String get settingsTooltip => 'Minsili';

  @override
  String get themeChoose => 'Sɔ̀n mbaŋ';

  @override
  String get customThemes => 'Mbaŋ ya bɔ̀l';

  @override
  String get customThemesSubtitle =>
      'Tɔ́ŋ carte a sɔ̀n couleur accent. \"Classic White\" a bɔ̀l mode ya ndá, ya kɔ̀l, nɛ système.';

  @override
  String get setThemesLabel => 'MBAŊ YA NDÁ';

  @override
  String get deleteBookmarkDialog => 'Sɔ̀n mbaŋ?';

  @override
  String removeBookmarkMessage(Object details, Object reference) {
    return 'Sɔ̀n \"$reference\"$details?\n\nA bɔ̀l té a tɛ̀n ndá.';
  }

  @override
  String get couldNotLoadBookmarks => 'Mbaŋ a bɔ̀l té a lɔ̀ŋ. Tɛ̀n ndá.';

  @override
  String get bookmarkSavedMessage => 'Mbaŋ a sɔ̀n';

  @override
  String get couldNotSaveBookmark => 'Mbaŋ a bɔ̀l té a sɔ̀n.';

  @override
  String get noBookmarksMatchFilter => 'Mbaŋ a bɔ̀l té a filter ya ndá.';

  @override
  String get clearFilter => 'Sɔ̀n filter';

  @override
  String get traditionalOrderLabel => 'Mbaŋ ya ndá';

  @override
  String get alphabeticalOrderLabel => 'Mbaŋ ya alphabet';

  @override
  String get bookmarksTabLabel => 'Mbaŋ';

  @override
  String get fullChapter => 'Chapitre ya ndá';

  @override
  String get addBookmark => 'Lɔ̀ŋ mbaŋ';

  @override
  String get selectVerse => 'Sɔ̀n verset';

  @override
  String get labelOptional => 'Label (a bɔ̀l té)';

  @override
  String get notesOptional => 'Notes (a bɔ̀l té)';

  @override
  String get save => 'Sɔ̀n';

  @override
  String get goToVerse => 'Kɔ verset';

  @override
  String verseTitle(Object verse) {
    return 'Verset $verse';
  }

  @override
  String chapterTitle(Object chapter) {
    return 'Chapitre $chapter';
  }

  @override
  String get switchToFullChapter => 'Bɔ̀l a mbaŋ ya chapitre ya ndá';

  @override
  String get bookmarkSheetCancel => 'Tɔ́ŋ nɛ sɔ̀n panneau ya mbaŋ';

  @override
  String get pickCustomAccent => 'Sɔ̀n couleur accent ya bɔ̀l';

  @override
  String get apply => 'Sɔ̀n';

  @override
  String get custom => 'Ya bɔ̀l';

  @override
  String get brightnessSystem => 'Système';

  @override
  String get brightnessLight => 'Ndá';

  @override
  String get brightnessDark => 'Kɔ̀l';

  @override
  String get selectBook => 'Sɔ̀n buku';

  @override
  String get bookmarkFilterAll => 'Té';

  @override
  String get bookmarkFilterUnlabeled => 'A bɔ̀l té label';

  @override
  String get bookmarkSortRecent => 'Ya ndá a ndá';

  @override
  String get bookmarkSortCanonical => 'Mbaŋ ya Bible';

  @override
  String get chapterRetry => 'Tɛ̀n ndá';

  @override
  String get fontSize => 'Mbaŋ ya té';

  @override
  String fontSizePixels(Object size) {
    return '$size px';
  }

  @override
  String get fontSizeSlider => 'Mbaŋ ya té slider';

  @override
  String get fontSizeSliderHint => 'Sɔ̀n a bɔ̀l a 12 ngá 28';

  @override
  String get fontPreview =>
      '\"Ya ndá, Nzambe a lɔ̀ŋ ciel nɛ terre.\" — Gen 1:1';

  @override
  String get showVerseNumbersSubtitle => 'Aŋ nɔ́ŋ ya verset na écran ya tɛ̀n.';

  @override
  String get showSectionHeadingsSubtitle =>
      'Aŋ mbaŋ ya wú nɛ Psaume na mɔ́ŋ ya texte.';

  @override
  String get wordsOfChristSubtitle =>
      'Aŋ gɛ̀l Yesu na kɔ̀l. Sɔ̀n a bɔ̀l couleur ya ndá.';

  @override
  String get verseFormatTitle => 'Format ya verset';

  @override
  String get verseFormatSubtitle => 'Sɔ̀n mɔ́ŋ ya texte ya Scripture.';

  @override
  String get paragraphMode => 'Paragraphe';

  @override
  String get verseListMode => 'Liste ya verset';

  @override
  String get paragraphModeTooltip => 'Mode ya paragraphe';

  @override
  String get verseListModeTooltip => 'Mode ya liste ya verset';

  @override
  String get paragraphModeDescription =>
      'Texte a kɔ̀l na paragraphe, aŋ Bible ya print.';

  @override
  String get verseListModeDescription =>
      'Paragraphe ya Scripture a bɔ̀l a lɔ̀ŋ ligne ya bɔ̀l, a sɔ̀n groupe ya verset.';

  @override
  String get deleteBookmarkTooltip => 'Sɔ̀n mbaŋ';

  @override
  String deleteBookmarkSemantics(Object reference) {
    return 'Sɔ̀n mbaŋ $reference';
  }

  @override
  String sortBookmarksTooltip(Object sortOrder) {
    return 'Mbaŋ: $sortOrder';
  }

  @override
  String get noBookmarksYet => 'Mbaŋ a bɔ̀l té.';

  @override
  String get noBookmarksYetHint => 'Tɔ́ŋ icône ya mbaŋ na tɛ̀n a sɔ̀n place.';

  @override
  String bookmarkReferenceNavigationError(Object reference) {
    return 'A bɔ̀l té a kɔ $reference.';
  }

  @override
  String themeCardSemantics(Object description, Object name, Object selected) {
    return 'Mbaŋ $name$selected. $description';
  }

  @override
  String get selectedThemeSuffix => ', a sɔ̀n';

  @override
  String get customisableAccentDescription => 'Couleur accent a bɔ̀l.';

  @override
  String get fixedPaletteDescription => 'Palette couleur ya ndá.';

  @override
  String accentColourTitle(Object themeName) {
    return 'Couleur accent — $themeName';
  }

  @override
  String get brightnessMode => 'MODE YA NDÁ';

  @override
  String get lightMode => 'Mode ya ndá';

  @override
  String get followSystemMode => 'Followya mode système';

  @override
  String get darkMode => 'Mode ya kɔ̀l';

  @override
  String get customColourPicker => 'Sɔ̀n couleur ya bɔ̀l';

  @override
  String get customColourTooltip => 'Couleur ya bɔ̀l...';

  @override
  String get couldNotLoadBooks => 'Liste ya buku a bɔ̀l té a lɔ̀ŋ. Tɛ̀n ndá.';

  @override
  String chapterLabel(Object chapter) {
    return 'Chapitre $chapter';
  }

  @override
  String get traditionalOrderBooks => 'Buku na mbaŋ ya ndá';

  @override
  String get alphabeticalOrderBooks => 'Buku na mbaŋ ya alphabet';

  @override
  String get home => 'Da';

  @override
  String get addBookmarkTooltip => 'Lɔ̀ŋ mbaŋ';

  @override
  String get chooseBookChapter => 'Sɔ̀n buku nɛ chapitre';

  @override
  String get chooseVerse => 'Sɔ̀n verset';

  @override
  String get bookChapterQuickNavigation => 'Kɔ buku nɛ chapitre na ndá';

  @override
  String get verseQuickNavigation => 'Kɔ verset na ndá';

  @override
  String get backToBooks => 'Kɔ buku';

  @override
  String get selectBookTitle => 'Sɔ̀n buku';

  @override
  String selectChapterTitle(Object bookName) {
    return 'Sɔ̀n chapitre ($bookName)';
  }

  @override
  String chapterSelectionLabel(Object chapter) {
    return 'Chapitre $chapter';
  }

  @override
  String verseSelectionLabel(Object verse) {
    return 'Verset $verse';
  }

  @override
  String fullChapterReference(Object bookName, Object chapter) {
    return 'Chapitre ya ndá: $bookName $chapter';
  }

  @override
  String get memorizeHint => 'Sɔ̀n na kɔl';

  @override
  String get addNoteHint => 'Lɔ̀ŋ note...';

  @override
  String get languageSearchHint => 'Sɔ̀n mbene';

  @override
  String get languageModuleInstalled => 'Installé';

  @override
  String get languageModulePending => 'Traduction machine a kɔtɔ';

  @override
  String get languageNoMatches => 'Mbene a bɔ̀l té na recherche.';

  @override
  String get languageCatalogDescription =>
      'Mbene installé a kɔ̀l sans internet. Mbene ya bɔ̀l a lɔ̀ŋ na module traduction machine.';

  @override
  String get saveBookmarkSemantics => 'Sɔ̀n mbaŋ';

  @override
  String get couldNotLoadChapter => 'Chapitre a bɔ̀l té a lɔ̀ŋ. Tɛ̀n ndá.';

  @override
  String get couldNotLoadChapters => 'Chapitres a bɔ̀l té a lɔ̀ŋ. Tɛ̀n ndá.';

  @override
  String verseWithText(Object text, Object verse) {
    return 'Verset $verse: $text';
  }

  @override
  String accentSwatchSemantics(Object name, Object selected) {
    return 'Couleur $name$selected';
  }

  @override
  String get oldTestament => 'Testament ya tene';

  @override
  String get newTestament => 'Testament ya mɔ́ŋ';

  @override
  String get deuterocanonApocrypha => 'Deuterocanon / Apocrypha';
}
