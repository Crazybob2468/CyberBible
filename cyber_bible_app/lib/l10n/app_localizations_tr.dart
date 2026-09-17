// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Turkish (`tr`).
class AppLocalizationsTr extends AppLocalizations {
  AppLocalizationsTr([String locale = 'tr']) : super(locale);

  @override
  String get settingsTitle => 'Ayarlar';

  @override
  String get languageSection => 'Dil';

  @override
  String get useSystemLanguage => 'Sistem dilini kullan';

  @override
  String get useSystemLanguageSubtitle =>
      'Match the device language by default.';

  @override
  String get currentLanguage => 'Mevcut dil';

  @override
  String get appLanguage => 'Uygulama dili';

  @override
  String get chooseLanguage => 'Dil seç';

  @override
  String get theme => 'Tema';

  @override
  String get appearance => 'Görünüm';

  @override
  String get textSection => 'Metin';

  @override
  String get readingFormatSection => 'Okuma biçimi';

  @override
  String get displaySection => 'Görüntü';

  @override
  String get verseNumbers => 'Ayet numaraları';

  @override
  String get sectionHeadings => 'Bölüm başlıkları';

  @override
  String get redLetterText => 'Kırmızı metin';

  @override
  String get selectABook => 'Kitap seç';

  @override
  String get traditionalOrder => 'Geleneksel sıralama';

  @override
  String get alphabeticalOrder => 'Alfabetik sıralama';

  @override
  String get bookmarks => 'Yer imleri';

  @override
  String get retry => 'Tekrar dene';

  @override
  String get chooseTheme => 'Tema seç';

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
  String get cancel => 'İptal';

  @override
  String get delete => 'Sil';

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
  String get english => 'İngilizce';

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
  String get themeLabel => 'Tema';

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
  String get readTheBible => 'İncil’i oku';

  @override
  String get settingsTooltip => 'Ayarlar';

  @override
  String get themeChoose => 'Tema seç';

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
  String get traditionalOrderLabel => 'Geleneksel sıralama';

  @override
  String get alphabeticalOrderLabel => 'Alfabetik sıralama';

  @override
  String get bookmarksTabLabel => 'Yer imleri';

  @override
  String get fullChapter => 'Tam bölüm';

  @override
  String get addBookmark => 'Yer imi ekle';

  @override
  String get selectVerse => 'Ayet seç';

  @override
  String get labelOptional => 'Etiket (isteğe bağlı)';

  @override
  String get notesOptional => 'Notlar (isteğe bağlı)';

  @override
  String get save => 'Kaydet';

  @override
  String get goToVerse => 'Ayete git';

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
  String get apply => 'Uygula';

  @override
  String get custom => 'Özel';

  @override
  String get brightnessSystem => 'Sistem';

  @override
  String get brightnessLight => 'Açık';

  @override
  String get brightnessDark => 'Koyu';

  @override
  String get selectBook => 'Kitap seç';

  @override
  String get bookmarkFilterAll => 'All';

  @override
  String get bookmarkFilterUnlabeled => 'Unlabeled';

  @override
  String get bookmarkSortRecent => 'Recent first';

  @override
  String get bookmarkSortCanonical => 'Canonical order';

  @override
  String get chapterRetry => 'Tekrar dene';

  @override
  String get fontSize => 'Yazı boyutu';

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
  String get paragraphMode => 'Paragraf';

  @override
  String get verseListMode => 'Ayet listesi';

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
  String get home => 'Ana sayfa';

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
  String get memorizeHint => 'Ezberle';

  @override
  String get addNoteHint => 'Not ekle...';

  @override
  String get languageSearchHint => 'Dilleri ara';

  @override
  String get languageModuleInstalled => 'Yüklü';

  @override
  String get languageModulePending => 'Machine translation pending';

  @override
  String get languageNoMatches => 'Aramanızla eşleşen dil yok.';

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
  String get oldTestament => 'Eski Ahit';

  @override
  String get newTestament => 'Yeni Ahit';

  @override
  String get deuterocanonApocrypha => 'Deuterokanon / Apokrifa';
}
