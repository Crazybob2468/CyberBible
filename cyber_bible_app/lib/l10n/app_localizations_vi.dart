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
      'Mặc định dùng ngôn ngữ của thiết bị.';

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
  String get customisableThemes => 'Giao diện có thể tùy chỉnh';

  @override
  String get customisableThemesSubtitle =>
      'Chạm vào thẻ để chọn màu nhấn. “Classic White” cũng hỗ trợ các chế độ Sáng, Tối và Hệ thống.';

  @override
  String get setThemes => 'ĐẶT GIAO DIỆN';

  @override
  String get setThemesSubtitle =>
      'Bảng màu cố định được thiết kế thủ công. Không cần tùy chỉnh — chỉ cần chạm để áp dụng.';

  @override
  String get deleteBookmarkQuestion => 'Xóa dấu trang?';

  @override
  String get cancel => 'Hủy';

  @override
  String get delete => 'Xóa';

  @override
  String get bookmarkSaved => 'Đã lưu dấu trang';

  @override
  String get couldNotDeleteBookmark => 'Không thể xóa dấu trang.';

  @override
  String couldNotNavigate(Object reference) {
    return 'Không thể chuyển đến $reference.';
  }

  @override
  String get pageNotFound => 'Không tìm thấy trang';

  @override
  String noRouteDefined(Object routeName) {
    return 'Chưa xác định tuyến đường cho “$routeName”';
  }

  @override
  String get english => 'Tiếng Anh';

  @override
  String get spanish => 'Español';

  @override
  String get systemDefault => 'Mặc định hệ thống';

  @override
  String get languageStatusEnglish => 'Đang dùng tiếng Anh dự phòng';

  @override
  String get languageStatusSystem => 'Đang dùng ngôn ngữ hệ thống';

  @override
  String languageStatusSelected(Object languageName) {
    return 'Ngôn ngữ đã chọn: $languageName';
  }

  @override
  String get themeLabel => 'Chủ đề';

  @override
  String get notFoundTitle => 'Không tìm thấy trang';

  @override
  String get loadingCyberBible => 'Đang tải Cyber Bible…';

  @override
  String get couldNotOpenDatabase =>
      'Không thể mở cơ sở dữ liệu Kinh Thánh. Vui lòng thử lại.';

  @override
  String get homeTagline => 'Ứng dụng học Kinh Thánh miễn phí và mã nguồn mở';

  @override
  String get readTheBible => 'Đọc Kinh Thánh';

  @override
  String get settingsTooltip => 'Cài đặt';

  @override
  String get themeChoose => 'Chọn chủ đề';

  @override
  String get customThemes => 'Giao diện tùy chỉnh';

  @override
  String get customThemesSubtitle =>
      'Chạm vào thẻ để chọn màu nhấn. “Classic White” cũng hỗ trợ các chế độ Sáng, Tối và Hệ thống.';

  @override
  String get setThemesLabel => 'ĐẶT GIAO DIỆN';

  @override
  String get deleteBookmarkDialog => 'Xóa dấu trang?';

  @override
  String removeBookmarkMessage(Object details, Object reference) {
    return 'Xóa “$reference”$details?\n\nBạn không thể hoàn tác thao tác này.';
  }

  @override
  String get couldNotLoadBookmarks =>
      'Không thể tải dấu trang. Vui lòng thử lại.';

  @override
  String get bookmarkSavedMessage => 'Đã lưu dấu trang';

  @override
  String get couldNotSaveBookmark => 'Không thể lưu dấu trang.';

  @override
  String get noBookmarksMatchFilter =>
      'Không có dấu trang nào khớp với bộ lọc này.';

  @override
  String get clearFilter => 'Xóa bộ lọc';

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
    return 'Câu $verse';
  }

  @override
  String chapterTitle(Object chapter) {
    return 'Chương $chapter';
  }

  @override
  String get switchToFullChapter => 'Chuyển sang dấu trang cả chương';

  @override
  String get bookmarkSheetCancel => 'Hủy, đóng bảng dấu trang';

  @override
  String get pickCustomAccent => 'Chọn màu nhấn tùy chỉnh';

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
  String get bookmarkFilterAll => 'Tất cả';

  @override
  String get bookmarkFilterUnlabeled => 'Chưa gắn nhãn';

  @override
  String get bookmarkSortRecent => 'Mới nhất trước';

  @override
  String get bookmarkSortCanonical => 'Thứ tự Kinh Thánh';

  @override
  String get chapterRetry => 'Thử lại';

  @override
  String get fontSize => 'Cỡ chữ';

  @override
  String fontSizePixels(Object size) {
    return '$size px';
  }

  @override
  String get fontSizeSlider => 'Thanh trượt cỡ chữ';

  @override
  String get fontSizeSliderHint => 'Vuốt để điều chỉnh từ 12 đến 28';

  @override
  String get fontPreview =>
      '“Ban đầu Đức Chúa Trời dựng nên trời và đất.” — Sáng 1:1';

  @override
  String get showVerseNumbersSubtitle =>
      'Hiển thị số câu dạng chỉ số trên trong màn hình đọc.';

  @override
  String get showSectionHeadingsSubtitle =>
      'Hiển thị tiêu đề đoạn và Thi Thiên giữa các phần.';

  @override
  String get wordsOfChristSubtitle =>
      'Hiển thị lời của Chúa Giê-su bằng màu đỏ. Tắt để dùng một màu chữ duy nhất.';

  @override
  String get verseFormatTitle => 'Định dạng câu';

  @override
  String get verseFormatSubtitle => 'Chọn cách trình bày văn bản Kinh Thánh.';

  @override
  String get paragraphMode => 'Đoạn văn';

  @override
  String get verseListMode => 'Danh sách câu';

  @override
  String get paragraphModeTooltip => 'Chế độ đoạn văn';

  @override
  String get verseListModeTooltip => 'Chế độ danh sách câu';

  @override
  String get paragraphModeDescription =>
      'Văn bản liền mạch với các đoạn thụt đầu dòng, như trong Kinh Thánh in.';

  @override
  String get verseListModeDescription =>
      'Mỗi đoạn Kinh Thánh bắt đầu trên một dòng riêng, giúp dễ nhận biết các nhóm câu.';

  @override
  String get deleteBookmarkTooltip => 'Xóa dấu trang';

  @override
  String deleteBookmarkSemantics(Object reference) {
    return 'Xóa dấu trang $reference';
  }

  @override
  String sortBookmarksTooltip(Object sortOrder) {
    return 'Sắp xếp: $sortOrder';
  }

  @override
  String get noBookmarksYet => 'Chưa có dấu trang nào.';

  @override
  String get noBookmarksYetHint =>
      'Chạm vào biểu tượng dấu trang khi đọc để lưu vị trí.';

  @override
  String bookmarkReferenceNavigationError(Object reference) {
    return 'Không thể chuyển đến $reference.';
  }

  @override
  String themeCardSemantics(Object description, Object name, Object selected) {
    return 'Giao diện $name$selected. $description';
  }

  @override
  String get selectedThemeSuffix => ', hiện được chọn';

  @override
  String get customisableAccentDescription => 'Màu nhấn có thể tùy chỉnh.';

  @override
  String get fixedPaletteDescription => 'Bảng màu cố định.';

  @override
  String accentColourTitle(Object themeName) {
    return 'Màu nhấn — $themeName';
  }

  @override
  String get brightnessMode => 'CHẾ ĐỘ ĐỘ SÁNG';

  @override
  String get lightMode => 'Chế độ sáng';

  @override
  String get followSystemMode => 'Theo hệ thống';

  @override
  String get darkMode => 'Chế độ tối';

  @override
  String get customColourPicker => 'Bewerker voor aangepaste kleuren';

  @override
  String get customColourTooltip => 'Màu tùy chỉnh…';

  @override
  String get couldNotLoadBooks =>
      'Không thể tải danh sách sách. Vui lòng thử lại.';

  @override
  String chapterLabel(Object chapter) {
    return 'Chương $chapter';
  }

  @override
  String get traditionalOrderBooks => 'Các sách theo thứ tự truyền thống';

  @override
  String get alphabeticalOrderBooks => 'Các sách theo thứ tự bảng chữ cái';

  @override
  String get home => 'Trang chủ';

  @override
  String get addBookmarkTooltip => 'Thêm dấu trang';

  @override
  String get chooseBookChapter => 'Chọn sách và chương';

  @override
  String get chooseVerse => 'Chọn câu';

  @override
  String get bookChapterQuickNavigation =>
      'Điều hướng nhanh đến sách và chương';

  @override
  String get verseQuickNavigation => 'Điều hướng nhanh đến câu';

  @override
  String get backToBooks => 'Quay lại danh sách sách';

  @override
  String get selectBookTitle => 'Chọn sách';

  @override
  String selectChapterTitle(Object bookName) {
    return 'Chọn chương ($bookName)';
  }

  @override
  String chapterSelectionLabel(Object chapter) {
    return 'Chương $chapter';
  }

  @override
  String verseSelectionLabel(Object verse) {
    return 'Câu $verse';
  }

  @override
  String fullChapterReference(Object bookName, Object chapter) {
    return 'Toàn bộ chương: $bookName $chapter';
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
  String get languageModulePending => 'Đang chờ bản dịch máy';

  @override
  String get languageNoMatches =>
      'Không có ngôn ngữ nào khớp với nội dung tìm kiếm.';

  @override
  String get languageCatalogDescription =>
      'Các ngôn ngữ đã cài đặt hoạt động ngoại tuyến. Những ngôn ngữ khác sẽ được thêm sau dưới dạng mô-đun dịch máy.';

  @override
  String get saveBookmarkSemantics => 'Lưu dấu trang';

  @override
  String get couldNotLoadChapter => 'Không thể tải chương. Vui lòng thử lại.';

  @override
  String get couldNotLoadChapters =>
      'Không thể tải các chương. Vui lòng thử lại.';

  @override
  String verseWithText(Object text, Object verse) {
    return 'Câu $verse: $text';
  }

  @override
  String accentSwatchSemantics(Object name, Object selected) {
    return 'Mẫu màu nhấn $name$selected';
  }

  @override
  String get oldTestament => 'Cựu Ước';

  @override
  String get newTestament => 'Tân Ước';

  @override
  String get deuterocanonApocrypha => 'Đệ nhị kinh / Ngụy thư';
}
