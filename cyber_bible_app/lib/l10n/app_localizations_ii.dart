// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Sichuan Yi Nuosu (`ii`).
class AppLocalizationsIi extends AppLocalizations {
  AppLocalizationsIi([String locale = 'ii']) : super(locale);

  @override
  String get settingsTitle => '设置';

  @override
  String get languageSection => '语言';

  @override
  String get useSystemLanguage => '使用系统语言';

  @override
  String get useSystemLanguageSubtitle => '默认与设备语言一致。';

  @override
  String get currentLanguage => '当前语言';

  @override
  String get appLanguage => '应用语言';

  @override
  String get chooseLanguage => '选择语言';

  @override
  String get theme => '主题';

  @override
  String get appearance => '外观';

  @override
  String get textSection => '文本';

  @override
  String get readingFormatSection => '阅读格式';

  @override
  String get displaySection => '显示';

  @override
  String get verseNumbers => '经节编号';

  @override
  String get sectionHeadings => '章节标题';

  @override
  String get redLetterText => '红字文本';

  @override
  String get selectABook => '选择书卷';

  @override
  String get traditionalOrder => '传统顺序';

  @override
  String get alphabeticalOrder => '字母顺序';

  @override
  String get bookmarks => '书签';

  @override
  String get retry => '重试';

  @override
  String get chooseTheme => '选择主题';

  @override
  String get customisableThemes => '可自定义主题';

  @override
  String get customisableThemesSubtitle =>
      'Tap a card to choose an accent colour. \"Classic White\" also supports Light, Dark and System modes.';

  @override
  String get setThemes => '应用主题';

  @override
  String get setThemesSubtitle =>
      'Fixed, hand-crafted palettes. No customisation needed — just tap to apply.';

  @override
  String get deleteBookmarkQuestion => '删除书签？';

  @override
  String get cancel => '取消';

  @override
  String get delete => '删除';

  @override
  String get bookmarkSaved => '书签已保存';

  @override
  String get couldNotDeleteBookmark => '无法删除书签。';

  @override
  String couldNotNavigate(Object reference) {
    return 'Could not navigate to $reference.';
  }

  @override
  String get pageNotFound => '未找到页面';

  @override
  String noRouteDefined(Object routeName) {
    return 'No route defined for \"$routeName\"';
  }

  @override
  String get english => '英语';

  @override
  String get spanish => '西班牙语';

  @override
  String get systemDefault => '系统默认';

  @override
  String get languageStatusEnglish => 'English fallback active';

  @override
  String get languageStatusSystem => '正在使用系统语言';

  @override
  String languageStatusSelected(Object languageName) {
    return '已选择语言：$languageName';
  }

  @override
  String get themeLabel => '主题';

  @override
  String get notFoundTitle => '未找到页面';

  @override
  String get loadingCyberBible => 'Loading Cyber Bible...';

  @override
  String get couldNotOpenDatabase =>
      'Could not open the Bible database. Please try again.';

  @override
  String get homeTagline => 'A free and open source Bible study app';

  @override
  String get readTheBible => '阅读圣经';

  @override
  String get settingsTooltip => '设置';

  @override
  String get themeChoose => '选择主题';

  @override
  String get customThemes => '自定义主题';

  @override
  String get customThemesSubtitle =>
      'Tap a card to choose an accent colour. \"Classic White\" also supports Light, Dark and System modes.';

  @override
  String get setThemesLabel => '应用主题';

  @override
  String get deleteBookmarkDialog => '删除书签？';

  @override
  String removeBookmarkMessage(Object details, Object reference) {
    return 'Remove \"$reference\"$details?\n\nThis cannot be undone.';
  }

  @override
  String get couldNotLoadBookmarks =>
      'Could not load bookmarks. Please try again.';

  @override
  String get bookmarkSavedMessage => '书签已保存';

  @override
  String get couldNotSaveBookmark => '无法保存书签。';

  @override
  String get noBookmarksMatchFilter => 'No bookmarks match this filter.';

  @override
  String get clearFilter => '清除筛选';

  @override
  String get traditionalOrderLabel => '传统顺序';

  @override
  String get alphabeticalOrderLabel => '字母顺序';

  @override
  String get bookmarksTabLabel => '书签';

  @override
  String get fullChapter => '完整章节';

  @override
  String get addBookmark => '添加书签';

  @override
  String get selectVerse => '选择经节';

  @override
  String get labelOptional => 'Label (optional)';

  @override
  String get notesOptional => 'Notes (optional)';

  @override
  String get save => '保存';

  @override
  String get goToVerse => '前往经节';

  @override
  String verseTitle(Object verse) {
    return '经节 $verse';
  }

  @override
  String chapterTitle(Object chapter) {
    return '章节 $chapter';
  }

  @override
  String get switchToFullChapter => '切换到完整章节';

  @override
  String get bookmarkSheetCancel => '取消';

  @override
  String get pickCustomAccent => 'Choose a custom accent';

  @override
  String get apply => '应用';

  @override
  String get custom => '自定义';

  @override
  String get brightnessSystem => '系统';

  @override
  String get brightnessLight => '浅色';

  @override
  String get brightnessDark => '深色';

  @override
  String get selectBook => '选择书卷';

  @override
  String get bookmarkFilterAll => '全部';

  @override
  String get bookmarkFilterUnlabeled => '无标签';

  @override
  String get bookmarkSortRecent => '最新';

  @override
  String get bookmarkSortCanonical => '圣经顺序';

  @override
  String get chapterRetry => '重试';

  @override
  String get fontSize => '字体大小';

  @override
  String fontSizePixels(Object size) {
    return '$size px';
  }

  @override
  String get fontSizeSlider => '字体大小';

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
  String get paragraphMode => '段落模式';

  @override
  String get verseListMode => '经节列表模式';

  @override
  String get paragraphModeTooltip => '选择段落模式';

  @override
  String get verseListModeTooltip => '选择经节列表模式';

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
  String get noBookmarksYet => '暂无书签。';

  @override
  String get noBookmarksYetHint => '阅读时添加书签。';

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
  String get lightMode => '浅色';

  @override
  String get followSystemMode => '跟随系统';

  @override
  String get darkMode => '深色';

  @override
  String get customColourPicker => 'Custom colour picker';

  @override
  String get customColourTooltip => 'Custom color…';

  @override
  String get couldNotLoadBooks => '无法加载书卷。';

  @override
  String chapterLabel(Object chapter) {
    return '章节 $chapter';
  }

  @override
  String get traditionalOrderBooks => '传统顺序';

  @override
  String get alphabeticalOrderBooks => '字母顺序';

  @override
  String get home => '主页';

  @override
  String get addBookmarkTooltip => '添加书签';

  @override
  String get chooseBookChapter => '选择书卷和章节';

  @override
  String get chooseVerse => '选择经节';

  @override
  String get bookChapterQuickNavigation => 'Book and chapter quick navigation';

  @override
  String get verseQuickNavigation => 'Verse quick navigation';

  @override
  String get backToBooks => '返回书卷';

  @override
  String get selectBookTitle => '选择书卷';

  @override
  String selectChapterTitle(Object bookName) {
    return '选择 $bookName 的章节';
  }

  @override
  String chapterSelectionLabel(Object chapter) {
    return '章节 $chapter';
  }

  @override
  String verseSelectionLabel(Object verse) {
    return '经节 $verse';
  }

  @override
  String fullChapterReference(Object bookName, Object chapter) {
    return '完整章节：$bookName $chapter';
  }

  @override
  String get memorizeHint => 'Memorize';

  @override
  String get addNoteHint => 'Add a note...';

  @override
  String get languageSearchHint => '搜索语言';

  @override
  String get languageModuleInstalled => '语言模块已安装';

  @override
  String get languageModulePending => '语言模块未安装';

  @override
  String get languageNoMatches => '未找到匹配语言。';

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
  String get oldTestament => '旧约';

  @override
  String get newTestament => '新约';

  @override
  String get deuterocanonApocrypha => '次经 / 经外书';
}
