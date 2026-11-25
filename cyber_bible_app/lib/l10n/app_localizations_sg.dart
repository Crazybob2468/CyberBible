// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Sango (`sg`).
class AppLocalizationsSg extends AppLocalizations {
  AppLocalizationsSg([String locale = 'sg']) : super(locale);

  @override
  String get settingsTitle => 'Mafungola';

  @override
  String get languageSection => 'Sängö';

  @override
  String get useSystemLanguage => 'Mäke sängö ti système';

  @override
  String get useSystemLanguageSubtitle =>
      'Mäke sängö ti appareil tongana sängö ti ndö.';

  @override
  String get currentLanguage => 'Sängö ti közo';

  @override
  String get appLanguage => 'Sängö ti application';

  @override
  String get chooseLanguage => 'Bâa sängö';

  @override
  String get theme => 'Mälä';

  @override
  String get appearance => 'Mäyä';

  @override
  String get textSection => 'Mbëtï';

  @override
  String get readingFormatSection => 'Mälä ti tï';

  @override
  String get displaySection => 'Fö';

  @override
  String get verseNumbers => 'Mbarä ti verset';

  @override
  String get sectionHeadings => 'Tïtï ti bölüm';

  @override
  String get redLetterText => 'Mbëtï vörö';

  @override
  String get selectABook => 'Bâa buku';

  @override
  String get traditionalOrder => 'Mbarä ti kôzo';

  @override
  String get alphabeticalOrder => 'Mbarä ti alphabet';

  @override
  String get bookmarks => 'Mbarä ti buku';

  @override
  String get retry => 'Küi tî';

  @override
  String get chooseTheme => 'Bâa mälä';

  @override
  String get customisableThemes => 'Mälä sïngö';

  @override
  String get customisableThemesSubtitle =>
      'Töngö carte ngâ bâa couleur. \"Classic White\" a mäke sïngö ti lê, ti kötä, na ti système.';

  @override
  String get setThemes => 'MÄLÄ TI NDÖ';

  @override
  String get setThemesSubtitle =>
      'Couleur ti ndö, sara na yê ti yângâ. Mande ti sïngö tî sô; töngö ngâ mäke.';

  @override
  String get deleteBookmarkQuestion => 'Dîri mbarä ti buku?';

  @override
  String get cancel => 'Sïngo';

  @override
  String get delete => 'Dîri';

  @override
  String get bookmarkSaved => 'Mbarä ti buku a dîri';

  @override
  String get couldNotDeleteBookmark => 'Ala yeke mîngi ti dîri mbarä ti buku.';

  @override
  String couldNotNavigate(Object reference) {
    return 'Ala yeke mîngi ti kû $reference.';
  }

  @override
  String get pageNotFound => 'Paje a hînga pë';

  @override
  String noRouteDefined(Object routeName) {
    return 'Yângâ a yeke pë ti \"$routeName\"';
  }

  @override
  String get english => 'Anglais';

  @override
  String get spanish => 'Espagnol';

  @override
  String get systemDefault => 'Système ti ndö';

  @override
  String get languageStatusEnglish => 'Anglais a mäke tongana sängö ti kôzo';

  @override
  String get languageStatusSystem => 'Sängö ti système a mäke';

  @override
  String languageStatusSelected(Object languageName) {
    return 'Sängö ti bâa: $languageName';
  }

  @override
  String get themeLabel => 'Mälä';

  @override
  String get notFoundTitle => 'Paje a hînga pë';

  @override
  String get loadingCyberBible => 'Cyber Bible a yeke dîri...';

  @override
  String get couldNotOpenDatabase =>
      'Ala yeke mîngi ti kû base de données ti Bible. Küi tî.';

  @override
  String get homeTagline => 'Application ti Bible, gratuit na source ouvert';

  @override
  String get readTheBible => 'Lê Bible';

  @override
  String get settingsTooltip => 'Mafungola';

  @override
  String get themeChoose => 'Bâa mälä';

  @override
  String get customThemes => 'Mälä sïngö';

  @override
  String get customThemesSubtitle =>
      'Töngö carte ngâ bâa couleur. \"Classic White\" a mäke sïngö ti lê, ti kötä, na ti système.';

  @override
  String get setThemesLabel => 'MÄLÄ TI NDÖ';

  @override
  String get deleteBookmarkDialog => 'Dîri mbarä ti buku?';

  @override
  String removeBookmarkMessage(Object details, Object reference) {
    return 'Dîri \"$reference\"$details?\n\nAla yeke mîngi ti mû na ndö pë.';
  }

  @override
  String get couldNotLoadBookmarks =>
      'Ala yeke mîngi ti dîri mbarä ti buku. Küi tî.';

  @override
  String get bookmarkSavedMessage => 'Mbarä ti buku a dîri';

  @override
  String get couldNotSaveBookmark => 'Ala yeke mîngi ti dîri mbarä ti buku.';

  @override
  String get noBookmarksMatchFilter => 'Mbarä ti buku a yeke pë ti filtre sô.';

  @override
  String get clearFilter => 'Dîri filtre';

  @override
  String get traditionalOrderLabel => 'Mbarä ti kôzo';

  @override
  String get alphabeticalOrderLabel => 'Mbarä ti alphabet';

  @override
  String get bookmarksTabLabel => 'Mbarä ti buku';

  @override
  String get fullChapter => 'Chapitre kêtê';

  @override
  String get addBookmark => 'Mû mbarä ti buku';

  @override
  String get selectVerse => 'Bâa verset';

  @override
  String get labelOptional => 'Tïtï (optionnel)';

  @override
  String get notesOptional => 'Mbarä (optionnel)';

  @override
  String get save => 'Dîri';

  @override
  String get goToVerse => 'Kû na verset';

  @override
  String verseTitle(Object verse) {
    return 'Verset $verse';
  }

  @override
  String chapterTitle(Object chapter) {
    return 'Chapitre $chapter';
  }

  @override
  String get switchToFullChapter => 'Sïngo na mbarä ti chapitre kêtê';

  @override
  String get bookmarkSheetCancel => 'Sïngo na fer panneau ti mbarä ti buku';

  @override
  String get pickCustomAccent => 'Bâa couleur ti sïngö';

  @override
  String get apply => 'Mäke';

  @override
  String get custom => 'Sïngö';

  @override
  String get brightnessSystem => 'Système';

  @override
  String get brightnessLight => 'Lê';

  @override
  String get brightnessDark => 'Kötä';

  @override
  String get selectBook => 'Bâa buku';

  @override
  String get bookmarkFilterAll => 'Kêtê';

  @override
  String get bookmarkFilterUnlabeled => 'Tïtï pë';

  @override
  String get bookmarkSortRecent => 'Kêtê ti közo';

  @override
  String get bookmarkSortCanonical => 'Mbarä ti Bible';

  @override
  String get chapterRetry => 'Küi tî';

  @override
  String get fontSize => 'Kêtê ti mbëtï';

  @override
  String fontSizePixels(Object size) {
    return '$size px';
  }

  @override
  String get fontSizeSlider => 'Mbarä ti kêtê ti mbëtï';

  @override
  String get fontSizeSliderHint => 'Sïngö ngâ mäke 12 ti 28';

  @override
  String get fontPreview => '\"Na kôzo, Nzapa a sara yanga na sï.\" — Gen 1:1';

  @override
  String get showVerseNumbersSubtitle => 'Fö mbarä ti verset na écran ti lê.';

  @override
  String get showSectionHeadingsSubtitle =>
      'Fö tïtï ti bölüm na psaume na köti passage.';

  @override
  String get wordsOfChristSubtitle =>
      'Fö yângâ ti Jésus na vörö. Sïngo sô ngâ mäke couleur kêtê.';

  @override
  String get verseFormatTitle => 'Mälä ti verset';

  @override
  String get verseFormatSubtitle => 'Bâa mälä ti mbëtï ti Bible.';

  @override
  String get paragraphMode => 'Paragraphe';

  @override
  String get verseListMode => 'Liste ti verset';

  @override
  String get paragraphModeTooltip => 'Mälä ti paragraphe';

  @override
  String get verseListModeTooltip => 'Mälä ti liste ti verset';

  @override
  String get paragraphModeDescription =>
      'Mbëtï a yeke na paragraphe, tongana Bible ti papier.';

  @override
  String get verseListModeDescription =>
      'Paragraphe kêtê ti Bible a yeke na ligne ti sô, ngâ hînga mbarä ti verset.';

  @override
  String get deleteBookmarkTooltip => 'Dîri mbarä ti buku';

  @override
  String deleteBookmarkSemantics(Object reference) {
    return 'Dîri mbarä ti buku $reference';
  }

  @override
  String sortBookmarksTooltip(Object sortOrder) {
    return 'Mbarä: $sortOrder';
  }

  @override
  String get noBookmarksYet => 'Mbarä ti buku a yeke pë.';

  @override
  String get noBookmarksYetHint =>
      'Töngö image ti mbarä ti buku na lê ngâ dîri place.';

  @override
  String bookmarkReferenceNavigationError(Object reference) {
    return 'Ala yeke mîngi ti kû $reference.';
  }

  @override
  String themeCardSemantics(Object description, Object name, Object selected) {
    return 'Mälä $name$selected. $description';
  }

  @override
  String get selectedThemeSuffix => ', bâa na sô';

  @override
  String get customisableAccentDescription => 'Couleur ti sïngö.';

  @override
  String get fixedPaletteDescription => 'Couleur ti ndö.';

  @override
  String accentColourTitle(Object themeName) {
    return 'Couleur — $themeName';
  }

  @override
  String get brightnessMode => 'MÄLÄ TI LÊ';

  @override
  String get lightMode => 'Mälä ti lê';

  @override
  String get followSystemMode => 'Mäke mälä ti système';

  @override
  String get darkMode => 'Mälä ti kötä';

  @override
  String get customColourPicker => 'Bâa couleur ti sïngö';

  @override
  String get customColourTooltip => 'Couleur ti sïngö...';

  @override
  String get couldNotLoadBooks =>
      'Ala yeke mîngi ti dîri liste ti buku. Küi tî.';

  @override
  String chapterLabel(Object chapter) {
    return 'Chapitre $chapter';
  }

  @override
  String get traditionalOrderBooks => 'Buku na mbarä ti kôzo';

  @override
  String get alphabeticalOrderBooks => 'Buku na mbarä ti alphabet';

  @override
  String get home => 'Da';

  @override
  String get addBookmarkTooltip => 'Mû mbarä ti buku';

  @override
  String get chooseBookChapter => 'Bâa buku na chapitre';

  @override
  String get chooseVerse => 'Bâa verset';

  @override
  String get bookChapterQuickNavigation => 'Kû na buku na chapitre';

  @override
  String get verseQuickNavigation => 'Kû na verset';

  @override
  String get backToBooks => 'Kû na buku';

  @override
  String get selectBookTitle => 'Bâa buku';

  @override
  String selectChapterTitle(Object bookName) {
    return 'Bâa chapitre ($bookName)';
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
    return 'Chapitre kêtê: $bookName $chapter';
  }

  @override
  String get memorizeHint => 'Dîri na yângâ';

  @override
  String get addNoteHint => 'Mû mbarä...';

  @override
  String get languageSearchHint => 'Bâa sängö';

  @override
  String get languageModuleInstalled => 'A yeke na nî';

  @override
  String get languageModulePending => 'Traduction ti machine a yeke';

  @override
  String get languageNoMatches => 'Sängö a yeke pë ti recherche ti mo.';

  @override
  String get languageCatalogDescription =>
      'Sängö ti installé a yeke sans internet. Sängö ti bɔk a yeke na module ti traduction machine.';

  @override
  String get saveBookmarkSemantics => 'Dîri mbarä ti buku';

  @override
  String get couldNotLoadChapter => 'Ala yeke mîngi ti dîri chapitre. Küi tî.';

  @override
  String get couldNotLoadChapters => 'Ala yeke mîngi ti dîri chapitre. Küi tî.';

  @override
  String verseWithText(Object text, Object verse) {
    return 'Verset $verse: $text';
  }

  @override
  String accentSwatchSemantics(Object name, Object selected) {
    return 'Couleur $name$selected';
  }

  @override
  String get oldTestament => 'Testament ti kôzo';

  @override
  String get newTestament => 'Testament ti nî';

  @override
  String get deuterocanonApocrypha => 'Deuterocanon / Apocrypha';
}
