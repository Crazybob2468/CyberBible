// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Vietnamese (`vi`).
class AppLocalizationsVi extends AppLocalizations {
  AppLocalizationsVi([String locale = 'vi']) : super(locale);

  @override
  String get settingsTitle => 'Cài đặt';

  @override
  String get languageSection => 'Ngôn ngữ';

  @override
  String get useSystemLanguage => 'Dùng ngôn ngữ hệ thống';

  @override
  String get useSystemLanguageSubtitle =>
      'Match the device language by default.';

  @override
  String get currentLanguage => 'Ngôn ngữ hiện tại';

  @override
  String get appLanguage => 'Ngôn ngữ ứng dụng';

  @override
  String get chooseLanguage => 'Chọn ngôn ngữ';

  @override
  String get theme => 'Chủ đề';

  @override
  String get appearance => 'Giao diện';

  @override
  String get textSection => 'Văn bản';

  @override
  String get readingFormatSection => 'Định dạng đọc';

  @override
  String get displaySection => 'Hiển thị';

  @override
  String get verseNumbers => 'Số câu';

  @override
  String get sectionHeadings => 'Tiêu đề phần';

  @override
  String get redLetterText => 'Chữ đỏ';

  @override
  String get selectABook => 'Chọn sách';

  @override
  String get traditionalOrder => 'Thứ tự truyền thống';

  @override
  String get alphabeticalOrder => 'Thứ tự bảng chữ cái';

  @override
  String get bookmarks => 'Dấu trang';

  @override
  String get retry => 'Thử lại';

  @override
  String get chooseTheme => 'Chọn chủ đề';

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
  String get cancel => 'Hủy';

  @override
  String get delete => 'Xóa';

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
  String get english => 'Tiếng Anh';

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
  String get themeLabel => 'Chủ đề';

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
  String get readTheBible => 'Đọc Kinh Thánh';

  @override
  String get settingsTooltip => 'Cài đặt';

  @override
  String get themeChoose => 'Chọn chủ đề';

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
  String get traditionalOrderLabel => 'Thứ tự truyền thống';

  @override
  String get alphabeticalOrderLabel => 'Thứ tự bảng chữ cái';

  @override
  String get bookmarksTabLabel => 'Dấu trang';

  @override
  String get fullChapter => 'Toàn bộ chương';

  @override
  String get addBookmark => 'Thêm dấu trang';

  @override
  String get selectVerse => 'Chọn câu';

  @override
  String get labelOptional => 'Nhãn (tùy chọn)';

  @override
  String get notesOptional => 'Ghi chú (tùy chọn)';

  @override
  String get save => 'Lưu';

  @override
  String get goToVerse => 'Đến câu';

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
  String get apply => 'Áp dụng';

  @override
  String get custom => 'Tùy chỉnh';

  @override
  String get brightnessSystem => 'Hệ thống';

  @override
  String get brightnessLight => 'Sáng';

  @override
  String get brightnessDark => 'Tối';

  @override
  String get selectBook => 'Chọn sách';

  @override
  String get bookmarkFilterAll => 'All';

  @override
  String get bookmarkFilterUnlabeled => 'Unlabeled';

  @override
  String get bookmarkSortRecent => 'Recent first';

  @override
  String get bookmarkSortCanonical => 'Canonical order';

  @override
  String get chapterRetry => 'Thử lại';

  @override
  String get fontSize => 'Cỡ chữ';

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
  String get paragraphMode => 'Đoạn văn';

  @override
  String get verseListMode => 'Danh sách câu';

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
  String get home => 'Trang chủ';

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
  String get memorizeHint => 'Ghi nhớ';

  @override
  String get addNoteHint => 'Thêm ghi chú...';

  @override
  String get languageSearchHint => 'Tìm ngôn ngữ';

  @override
  String get languageModuleInstalled => 'Đã cài đặt';

  @override
  String get languageModulePending => 'Machine translation pending';

  @override
  String get languageNoMatches => 'Không có ngôn ngữ phù hợp với tìm kiếm.';

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
  String get oldTestament => 'Cựu Ước';

  @override
  String get newTestament => 'Tân Ước';

  @override
  String get deuterocanonApocrypha => 'Đệ nhị kinh / Ngụy thư';
}
