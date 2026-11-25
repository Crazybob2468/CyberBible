// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Yue Chinese Cantonese (`yue`).
class AppLocalizationsYue extends AppLocalizations {
  AppLocalizationsYue([String locale = 'yue']) : super(locale);

  @override
  String get settingsTitle => '設定';

  @override
  String get languageSection => '語言';

  @override
  String get useSystemLanguage => '使用系統語言';

  @override
  String get useSystemLanguageSubtitle => '預設使用裝置語言。';

  @override
  String get currentLanguage => '目前語言';

  @override
  String get appLanguage => '應用程式語言';

  @override
  String get chooseLanguage => '揀選語言';

  @override
  String get theme => '主題';

  @override
  String get appearance => '外觀';

  @override
  String get textSection => '文字';

  @override
  String get readingFormatSection => '閱讀格式';

  @override
  String get displaySection => '顯示';

  @override
  String get verseNumbers => '節數';

  @override
  String get sectionHeadings => '段落標題';

  @override
  String get redLetterText => '紅色文字';

  @override
  String get selectABook => '揀一本書';

  @override
  String get traditionalOrder => '傳統次序';

  @override
  String get alphabeticalOrder => '字母次序';

  @override
  String get bookmarks => '書籤';

  @override
  String get retry => '再試一次';

  @override
  String get chooseTheme => '揀選主題';

  @override
  String get customisableThemes => '可自訂主題';

  @override
  String get customisableThemesSubtitle =>
      '撳一下卡片就可以揀強調色。\"Classic White\"亦支援淺色、深色同系統模式。';

  @override
  String get setThemes => '固定主題';

  @override
  String get setThemesSubtitle => '精心設計嘅固定色板，唔使自訂，撳一下就可以套用。';

  @override
  String get deleteBookmarkQuestion => '要刪除書籤嗎？';

  @override
  String get cancel => '取消';

  @override
  String get delete => '刪除';

  @override
  String get bookmarkSaved => '書籤已儲存';

  @override
  String get couldNotDeleteBookmark => '無法刪除書籤。';

  @override
  String couldNotNavigate(Object reference) {
    return '無法前往 $reference。';
  }

  @override
  String get pageNotFound => '搵唔到頁面';

  @override
  String noRouteDefined(Object routeName) {
    return '未有為\"$routeName\"設定路徑';
  }

  @override
  String get english => '英文';

  @override
  String get spanish => '西班牙文';

  @override
  String get systemDefault => '系統預設';

  @override
  String get languageStatusEnglish => '目前使用英文作為後備語言';

  @override
  String get languageStatusSystem => '目前使用系統語言';

  @override
  String languageStatusSelected(Object languageName) {
    return '已揀語言：$languageName';
  }

  @override
  String get themeLabel => '主題';

  @override
  String get notFoundTitle => '搵唔到頁面';

  @override
  String get loadingCyberBible => '正在載入 Cyber Bible...';

  @override
  String get couldNotOpenDatabase => '無法開啟聖經資料庫，請再試一次。';

  @override
  String get homeTagline => '免費同開放原始碼嘅聖經研習應用程式';

  @override
  String get readTheBible => '閱讀聖經';

  @override
  String get settingsTooltip => '設定';

  @override
  String get themeChoose => '揀選主題';

  @override
  String get customThemes => '可自訂主題';

  @override
  String get customThemesSubtitle =>
      '撳一下卡片就可以揀強調色。\"Classic White\"亦支援淺色、深色同系統模式。';

  @override
  String get setThemesLabel => '固定主題';

  @override
  String get deleteBookmarkDialog => '要刪除書籤嗎？';

  @override
  String removeBookmarkMessage(Object details, Object reference) {
    return '要移除\"$reference\"$details嗎？\n\n呢個操作無法還原。';
  }

  @override
  String get couldNotLoadBookmarks => '無法載入書籤，請再試一次。';

  @override
  String get bookmarkSavedMessage => '書籤已儲存';

  @override
  String get couldNotSaveBookmark => '無法儲存書籤。';

  @override
  String get noBookmarksMatchFilter => '冇書籤符合呢個篩選條件。';

  @override
  String get clearFilter => '清除篩選';

  @override
  String get traditionalOrderLabel => '傳統次序';

  @override
  String get alphabeticalOrderLabel => '字母次序';

  @override
  String get bookmarksTabLabel => '書籤';

  @override
  String get fullChapter => '完整章節';

  @override
  String get addBookmark => '新增書籤';

  @override
  String get selectVerse => '揀選經節';

  @override
  String get labelOptional => '標籤（可選）';

  @override
  String get notesOptional => '備註（可選）';

  @override
  String get save => '儲存';

  @override
  String get goToVerse => '前往經節';

  @override
  String verseTitle(Object verse) {
    return '第 $verse 節';
  }

  @override
  String chapterTitle(Object chapter) {
    return '第 $chapter 章';
  }

  @override
  String get switchToFullChapter => '改用完整章節書籤';

  @override
  String get bookmarkSheetCancel => '取消並關閉書籤面板';

  @override
  String get pickCustomAccent => '揀選自訂強調色';

  @override
  String get apply => '套用';

  @override
  String get custom => '自訂';

  @override
  String get brightnessSystem => '系統';

  @override
  String get brightnessLight => '淺色';

  @override
  String get brightnessDark => '深色';

  @override
  String get selectBook => '揀一本書';

  @override
  String get bookmarkFilterAll => '全部';

  @override
  String get bookmarkFilterUnlabeled => '未加標籤';

  @override
  String get bookmarkSortRecent => '最新嘅排先';

  @override
  String get bookmarkSortCanonical => '正典次序';

  @override
  String get chapterRetry => '再試一次';

  @override
  String get fontSize => '字體大小';

  @override
  String fontSizePixels(Object size) {
    return '$size px';
  }

  @override
  String get fontSizeSlider => '字體大小滑桿';

  @override
  String get fontSizeSliderHint => '滑動調整，由 12 到 28';

  @override
  String get fontPreview => '\"起初，神創造天地。\" — 創世記 1:1';

  @override
  String get showVerseNumbersSubtitle => '喺閱讀畫面顯示經節編號。';

  @override
  String get showSectionHeadingsSubtitle => '喺經文段落之間顯示分段同詩篇標題。';

  @override
  String get wordsOfChristSubtitle => '用紅色顯示耶穌嘅說話。關閉後所有文字都會用同一種顏色。';

  @override
  String get verseFormatTitle => '經節格式';

  @override
  String get verseFormatSubtitle => '揀選聖經文字嘅排版方式。';

  @override
  String get paragraphMode => '段落';

  @override
  String get verseListMode => '經節清單';

  @override
  String get paragraphModeTooltip => '段落模式';

  @override
  String get verseListModeTooltip => '經節清單模式';

  @override
  String get paragraphModeDescription => '文字會好似印刷聖經咁，連續排成縮排段落。';

  @override
  String get verseListModeDescription => '每段經文都會由新一行開始，方便睇清楚經節分組。';

  @override
  String get deleteBookmarkTooltip => '刪除書籤';

  @override
  String deleteBookmarkSemantics(Object reference) {
    return '刪除書籤 $reference';
  }

  @override
  String sortBookmarksTooltip(Object sortOrder) {
    return '排序：$sortOrder';
  }

  @override
  String get noBookmarksYet => '暫時未有書籤。';

  @override
  String get noBookmarksYetHint => '閱讀時撳書籤圖示，就可以儲存位置。';

  @override
  String bookmarkReferenceNavigationError(Object reference) {
    return '無法前往 $reference。';
  }

  @override
  String themeCardSemantics(Object description, Object name, Object selected) {
    return '$name主題$selected。$description';
  }

  @override
  String get selectedThemeSuffix => '，目前已揀選';

  @override
  String get customisableAccentDescription => '可自訂強調色。';

  @override
  String get fixedPaletteDescription => '固定色板。';

  @override
  String accentColourTitle(Object themeName) {
    return '強調色 — $themeName';
  }

  @override
  String get brightnessMode => '亮度模式';

  @override
  String get lightMode => '淺色模式';

  @override
  String get followSystemMode => '跟隨系統模式';

  @override
  String get darkMode => '深色模式';

  @override
  String get customColourPicker => '自訂顏色選擇器';

  @override
  String get customColourTooltip => '自訂顏色...';

  @override
  String get couldNotLoadBooks => '無法載入書卷清單，請再試一次。';

  @override
  String chapterLabel(Object chapter) {
    return '第 $chapter 章';
  }

  @override
  String get traditionalOrderBooks => '按傳統次序排列嘅書卷';

  @override
  String get alphabeticalOrderBooks => '按字母次序排列嘅書卷';

  @override
  String get home => '主頁';

  @override
  String get addBookmarkTooltip => '新增書籤';

  @override
  String get chooseBookChapter => '揀選書卷同章節';

  @override
  String get chooseVerse => '揀選經節';

  @override
  String get bookChapterQuickNavigation => '快速前往書卷同章節';

  @override
  String get verseQuickNavigation => '快速前往經節';

  @override
  String get backToBooks => '返回書卷清單';

  @override
  String get selectBookTitle => '揀選書卷';

  @override
  String selectChapterTitle(Object bookName) {
    return '揀選章節（$bookName）';
  }

  @override
  String chapterSelectionLabel(Object chapter) {
    return '第 $chapter 章';
  }

  @override
  String verseSelectionLabel(Object verse) {
    return '第 $verse 節';
  }

  @override
  String fullChapterReference(Object bookName, Object chapter) {
    return '完整章節：$bookName $chapter';
  }

  @override
  String get memorizeHint => '背誦';

  @override
  String get addNoteHint => '新增備註...';

  @override
  String get languageSearchHint => '搜尋語言';

  @override
  String get languageModuleInstalled => '已安裝';

  @override
  String get languageModulePending => '等待機器翻譯';

  @override
  String get languageNoMatches => '冇語言符合你嘅搜尋。';

  @override
  String get languageCatalogDescription => '已安裝嘅語言可以離線使用。其他語言會以機器翻譯模組加入。';

  @override
  String get saveBookmarkSemantics => '儲存書籤';

  @override
  String get couldNotLoadChapter => '無法載入章節，請再試一次。';

  @override
  String get couldNotLoadChapters => '無法載入章節，請再試一次。';

  @override
  String verseWithText(Object text, Object verse) {
    return '第 $verse 節：$text';
  }

  @override
  String accentSwatchSemantics(Object name, Object selected) {
    return '$name強調色$selected';
  }

  @override
  String get oldTestament => '舊約';

  @override
  String get newTestament => '新約';

  @override
  String get deuterocanonApocrypha => '次經 / 旁經';
}
