// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Polish (`pl`).
class AppLocalizationsPl extends AppLocalizations {
  AppLocalizationsPl([String locale = 'pl']) : super(locale);

  @override
  String get settingsTitle => 'Ustawienia';

  @override
  String get languageSection => 'Język';

  @override
  String get useSystemLanguage => 'Używaj języka systemowego';

  @override
  String get useSystemLanguageSubtitle =>
      'Match the device language by default.';

  @override
  String get currentLanguage => 'Bieżący język';

  @override
  String get appLanguage => 'Język aplikacji';

  @override
  String get chooseLanguage => 'Wybierz język';

  @override
  String get theme => 'Motyw';

  @override
  String get appearance => 'Wygląd';

  @override
  String get textSection => 'Tekst';

  @override
  String get readingFormatSection => 'Format czytania';

  @override
  String get displaySection => 'Wyświetlanie';

  @override
  String get verseNumbers => 'Numery wersetów';

  @override
  String get sectionHeadings => 'Nagłówki sekcji';

  @override
  String get redLetterText => 'Czerwony tekst';

  @override
  String get selectABook => 'Wybierz księgę';

  @override
  String get traditionalOrder => 'Kolejność tradycyjna';

  @override
  String get alphabeticalOrder => 'Kolejność alfabetyczna';

  @override
  String get bookmarks => 'Zakładki';

  @override
  String get retry => 'Ponów';

  @override
  String get chooseTheme => 'Wybierz motyw';

  @override
  String get customisableThemes => 'Customisable Themes';

  @override
  String get customisableThemesSubtitle =>
      'Tap a card to choose an accent colour. \"Classic White\" also supports Light, Dark and System modes.';

  @override
  String get setThemes => 'SET THEMES';

  @override
  String get setThemesSubtitle =>
      'Fixed, hand-crafted palettes. No customisation needed — just tap to apply.';

  @override
  String get deleteBookmarkQuestion => 'Delete bookmark?';

  @override
  String get cancel => 'Anuluj';

  @override
  String get delete => 'Usuń';

  @override
  String get bookmarkSaved => 'Bookmark saved';

  @override
  String get couldNotDeleteBookmark => 'Could not delete bookmark.';

  @override
  String couldNotNavigate(Object reference) {
    return 'Could not navigate to $reference.';
  }

  @override
  String get pageNotFound => 'Page Not Found';

  @override
  String noRouteDefined(Object routeName) {
    return 'No route defined for \"$routeName\"';
  }

  @override
  String get english => 'Angielski';

  @override
  String get spanish => 'Español';

  @override
  String get systemDefault => 'System default';

  @override
  String get languageStatusEnglish => 'English fallback active';

  @override
  String get languageStatusSystem => 'Using system language';

  @override
  String languageStatusSelected(Object languageName) {
    return 'Selected language: $languageName';
  }

  @override
  String get themeLabel => 'Motyw';

  @override
  String get notFoundTitle => 'Page Not Found';

  @override
  String get loadingCyberBible => 'Loading Cyber Bible...';

  @override
  String get couldNotOpenDatabase =>
      'Could not open the Bible database. Please try again.';

  @override
  String get homeTagline => 'A free and open source Bible study app';

  @override
  String get readTheBible => 'Czytaj Biblię';

  @override
  String get settingsTooltip => 'Ustawienia';

  @override
  String get themeChoose => 'Wybierz motyw';

  @override
  String get customThemes => 'Customisable Themes';

  @override
  String get customThemesSubtitle =>
      'Tap a card to choose an accent colour. \"Classic White\" also supports Light, Dark and System modes.';

  @override
  String get setThemesLabel => 'SET THEMES';

  @override
  String get deleteBookmarkDialog => 'Delete bookmark?';

  @override
  String removeBookmarkMessage(Object details, Object reference) {
    return 'Remove \"$reference\"$details?\n\nThis cannot be undone.';
  }

  @override
  String get couldNotLoadBookmarks =>
      'Could not load bookmarks. Please try again.';

  @override
  String get bookmarkSavedMessage => 'Bookmark saved';

  @override
  String get couldNotSaveBookmark => 'Could not save bookmark.';

  @override
  String get noBookmarksMatchFilter => 'No bookmarks match this filter.';

  @override
  String get clearFilter => 'Clear filter';

  @override
  String get traditionalOrderLabel => 'Kolejność tradycyjna';

  @override
  String get alphabeticalOrderLabel => 'Kolejność alfabetyczna';

  @override
  String get bookmarksTabLabel => 'Zakładki';

  @override
  String get fullChapter => 'Cały rozdział';

  @override
  String get addBookmark => 'Dodaj zakładkę';

  @override
  String get selectVerse => 'Wybierz werset';

  @override
  String get labelOptional => 'Etykieta (opcjonalnie)';

  @override
  String get notesOptional => 'Notatki (opcjonalnie)';

  @override
  String get save => 'Zapisz';

  @override
  String get goToVerse => 'Przejdź do wersetu';

  @override
  String verseTitle(Object verse) {
    return 'Verse $verse';
  }

  @override
  String chapterTitle(Object chapter) {
    return 'Chapter $chapter';
  }

  @override
  String get switchToFullChapter => 'Switch to full chapter bookmark';

  @override
  String get bookmarkSheetCancel => 'Cancel, close bookmark sheet';

  @override
  String get pickCustomAccent => 'Choose a custom accent';

  @override
  String get apply => 'Zastosuj';

  @override
  String get custom => 'Niestandardowy';

  @override
  String get brightnessSystem => 'Systemowy';

  @override
  String get brightnessLight => 'Jasny';

  @override
  String get brightnessDark => 'Ciemny';

  @override
  String get selectBook => 'Wybierz księgę';

  @override
  String get bookmarkFilterAll => 'All';

  @override
  String get bookmarkFilterUnlabeled => 'Unlabeled';

  @override
  String get bookmarkSortRecent => 'Recent first';

  @override
  String get bookmarkSortCanonical => 'Canonical order';

  @override
  String get chapterRetry => 'Ponów';

  @override
  String get fontSize => 'Rozmiar czcionki';

  @override
  String fontSizePixels(Object size) {
    return '$size px';
  }

  @override
  String get fontSizeSlider => 'Font size slider';

  @override
  String get fontSizeSliderHint => 'Swipe to adjust from 12 to 28';

  @override
  String get fontPreview =>
      '\"In the beginning God created the heavens and the earth.\" — Gen 1:1';

  @override
  String get showVerseNumbersSubtitle =>
      'Show verse number superscripts in the reading screen.';

  @override
  String get showSectionHeadingsSubtitle =>
      'Show section and Psalm headings between passages.';

  @override
  String get wordsOfChristSubtitle =>
      'Show Jesus\' words in red. Disable for a single text color.';

  @override
  String get verseFormatTitle => 'Verse Format';

  @override
  String get verseFormatSubtitle => 'Choose how scripture text is laid out.';

  @override
  String get paragraphMode => 'Akapit';

  @override
  String get verseListMode => 'Lista wersetów';

  @override
  String get paragraphModeTooltip => 'Paragraph mode';

  @override
  String get verseListModeTooltip => 'Verse-list mode';

  @override
  String get paragraphModeDescription =>
      'Text flows continuously with indented paragraphs, like a printed Bible.';

  @override
  String get verseListModeDescription =>
      'Each scripture paragraph begins on its own line, making verse groups easy to spot.';

  @override
  String get deleteBookmarkTooltip => 'Delete bookmark';

  @override
  String deleteBookmarkSemantics(Object reference) {
    return 'Delete bookmark $reference';
  }

  @override
  String sortBookmarksTooltip(Object sortOrder) {
    return 'Sort: $sortOrder';
  }

  @override
  String get noBookmarksYet => 'No bookmarks yet.';

  @override
  String get noBookmarksYetHint =>
      'Tap the bookmark icon while reading to save a location.';

  @override
  String bookmarkReferenceNavigationError(Object reference) {
    return 'Could not navigate to $reference.';
  }

  @override
  String themeCardSemantics(Object description, Object name, Object selected) {
    return '$name theme$selected. $description';
  }

  @override
  String get selectedThemeSuffix => ', currently selected';

  @override
  String get customisableAccentDescription => 'Customisable accent colour.';

  @override
  String get fixedPaletteDescription => 'Fixed palette.';

  @override
  String accentColourTitle(Object themeName) {
    return 'Accent Colour — $themeName';
  }

  @override
  String get brightnessMode => 'BRIGHTNESS MODE';

  @override
  String get lightMode => 'Light mode';

  @override
  String get followSystemMode => 'Follow system mode';

  @override
  String get darkMode => 'Dark mode';

  @override
  String get customColourPicker => 'Custom colour picker';

  @override
  String get customColourTooltip => 'Custom color…';

  @override
  String get couldNotLoadBooks =>
      'Could not load the books list. Please try again.';

  @override
  String chapterLabel(Object chapter) {
    return 'Chapter $chapter';
  }

  @override
  String get traditionalOrderBooks => 'Traditional order books';

  @override
  String get alphabeticalOrderBooks => 'Alphabetical order books';

  @override
  String get home => 'Strona główna';

  @override
  String get addBookmarkTooltip => 'Add bookmark';

  @override
  String get chooseBookChapter => 'Choose book and chapter';

  @override
  String get chooseVerse => 'Choose verse';

  @override
  String get bookChapterQuickNavigation => 'Book and chapter quick navigation';

  @override
  String get verseQuickNavigation => 'Verse quick navigation';

  @override
  String get backToBooks => 'Back to books';

  @override
  String get selectBookTitle => 'Select Book';

  @override
  String selectChapterTitle(Object bookName) {
    return 'Select Chapter ($bookName)';
  }

  @override
  String chapterSelectionLabel(Object chapter) {
    return 'Chapter $chapter';
  }

  @override
  String verseSelectionLabel(Object verse) {
    return 'Verse $verse';
  }

  @override
  String fullChapterReference(Object bookName, Object chapter) {
    return 'Full chapter: $bookName $chapter';
  }

  @override
  String get memorizeHint => 'Zapamiętaj';

  @override
  String get addNoteHint => 'Dodaj notatkę...';

  @override
  String get languageSearchHint => 'Szukaj języków';

  @override
  String get languageModuleInstalled => 'Zainstalowano';

  @override
  String get languageModulePending => 'Machine translation pending';

  @override
  String get languageNoMatches => 'Brak języków pasujących do wyszukiwania.';

  @override
  String get languageCatalogDescription =>
      'Languages marked as installed work offline. Other languages will be added as machine-translated modules.';

  @override
  String get saveBookmarkSemantics => 'Save bookmark';

  @override
  String get couldNotLoadChapter =>
      'Could not load the chapter. Please try again.';

  @override
  String get couldNotLoadChapters =>
      'Could not load chapters. Please try again.';

  @override
  String verseWithText(Object text, Object verse) {
    return 'Verse $verse: $text';
  }

  @override
  String accentSwatchSemantics(Object name, Object selected) {
    return '$name accent colour$selected';
  }

  @override
  String get oldTestament => 'Stary Testament';

  @override
  String get newTestament => 'Nowy Testament';

  @override
  String get deuterocanonApocrypha => 'Deuterokanoniczne / Apokryfy';
}
