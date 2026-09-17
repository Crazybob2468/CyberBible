// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Chinese (`zh`).
class AppLocalizationsZh extends AppLocalizations {
  AppLocalizationsZh([String locale = 'zh']) : super(locale);

  @override
  String get settingsTitle => '设置';

  @override
  String get languageSection => '语言';

  @override
  String get useSystemLanguage => '使用系统语言';

  @override
  String get useSystemLanguageSubtitle => '默认匹配设备语言。';

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
  String get sectionHeadings => '段落标题';

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
      '点击卡片选择强调色。“Classic White”也支持浅色、深色和系统模式。';

  @override
  String get setThemes => '固定主题';

  @override
  String get setThemesSubtitle => '固定的手工调色板。无需自定义，点击即可应用。';

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
    return '无法跳转到 $reference。';
  }

  @override
  String get pageNotFound => '找不到页面';

  @override
  String noRouteDefined(Object routeName) {
    return '未为“$routeName”定义路由';
  }

  @override
  String get english => '英语';

  @override
  String get spanish => '西班牙语';

  @override
  String get systemDefault => '系统默认';

  @override
  String get languageStatusEnglish => '正在使用英语回退语言';

  @override
  String get languageStatusSystem => '正在使用系统语言';

  @override
  String languageStatusSelected(Object languageName) {
    return '已选择语言：$languageName';
  }

  @override
  String get themeLabel => '主题';

  @override
  String get notFoundTitle => '找不到页面';

  @override
  String get loadingCyberBible => '正在加载 Cyber Bible...';

  @override
  String get couldNotOpenDatabase => '无法打开圣经数据库。请重试。';

  @override
  String get homeTagline => '免费的开源圣经学习应用';

  @override
  String get readTheBible => '阅读圣经';

  @override
  String get settingsTooltip => '设置';

  @override
  String get themeChoose => '选择主题';

  @override
  String get customThemes => '可自定义主题';

  @override
  String get customThemesSubtitle => '点击卡片选择强调色。“Classic White”也支持浅色、深色和系统模式。';

  @override
  String get setThemesLabel => '固定主题';

  @override
  String get deleteBookmarkDialog => '删除书签？';

  @override
  String removeBookmarkMessage(Object details, Object reference) {
    return '要移除“$reference”$details吗？\n\n此操作无法撤销。';
  }

  @override
  String get couldNotLoadBookmarks => '无法加载书签。请重试。';

  @override
  String get bookmarkSavedMessage => '书签已保存';

  @override
  String get couldNotSaveBookmark => '无法保存书签。';

  @override
  String get noBookmarksMatchFilter => '没有书签符合此筛选条件。';

  @override
  String get clearFilter => '清除筛选';

  @override
  String get traditionalOrderLabel => '传统顺序';

  @override
  String get alphabeticalOrderLabel => '字母顺序';

  @override
  String get bookmarksTabLabel => '书签';

  @override
  String get fullChapter => '整章';

  @override
  String get addBookmark => '添加书签';

  @override
  String get selectVerse => '选择经节';

  @override
  String get labelOptional => '标签（可选）';

  @override
  String get notesOptional => '备注（可选）';

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
    return '第 $chapter 章';
  }

  @override
  String get switchToFullChapter => '切换为整章书签';

  @override
  String get bookmarkSheetCancel => '取消并关闭书签面板';

  @override
  String get pickCustomAccent => '选择自定义强调色';

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
  String get bookmarkSortRecent => '最近优先';

  @override
  String get bookmarkSortCanonical => '正典顺序';

  @override
  String get chapterRetry => '重试';

  @override
  String get fontSize => '字体大小';

  @override
  String fontSizePixels(Object size) {
    return '$size px';
  }

  @override
  String get fontSizeSlider => '字体大小滑块';

  @override
  String get fontSizeSliderHint => '滑动以在 12 到 28 之间调整';

  @override
  String get fontPreview => '“起初，神创造天地。”——创世记 1:1';

  @override
  String get showVerseNumbersSubtitle => '在阅读页面显示经节编号。';

  @override
  String get showSectionHeadingsSubtitle => '在段落之间显示段落和诗篇标题。';

  @override
  String get wordsOfChristSubtitle => '将耶稣的话显示为红色。关闭后使用统一的文本颜色。';

  @override
  String get verseFormatTitle => '经节格式';

  @override
  String get verseFormatSubtitle => '选择经文的排列方式。';

  @override
  String get paragraphMode => '段落';

  @override
  String get verseListMode => '经节列表';

  @override
  String get paragraphModeTooltip => '段落模式';

  @override
  String get verseListModeTooltip => '经节列表模式';

  @override
  String get paragraphModeDescription => '文本以缩进段落连续流动，就像印刷版圣经一样。';

  @override
  String get verseListModeDescription => '每个经文段落从新行开始，便于查看经节组。';

  @override
  String get deleteBookmarkTooltip => '删除书签';

  @override
  String deleteBookmarkSemantics(Object reference) {
    return '删除书签 $reference';
  }

  @override
  String sortBookmarksTooltip(Object sortOrder) {
    return '排序：$sortOrder';
  }

  @override
  String get noBookmarksYet => '还没有书签。';

  @override
  String get noBookmarksYetHint => '阅读时点击书签图标即可保存位置。';

  @override
  String bookmarkReferenceNavigationError(Object reference) {
    return '无法跳转到 $reference。';
  }

  @override
  String themeCardSemantics(Object description, Object name, Object selected) {
    return '$name主题$selected。$description';
  }

  @override
  String get selectedThemeSuffix => '，当前已选择';

  @override
  String get customisableAccentDescription => '可自定义强调色。';

  @override
  String get fixedPaletteDescription => '固定调色板。';

  @override
  String accentColourTitle(Object themeName) {
    return '强调色——$themeName';
  }

  @override
  String get brightnessMode => '亮度模式';

  @override
  String get lightMode => '浅色模式';

  @override
  String get followSystemMode => '跟随系统模式';

  @override
  String get darkMode => '深色模式';

  @override
  String get customColourPicker => '自定义颜色选择器';

  @override
  String get customColourTooltip => '自定义颜色…';

  @override
  String get couldNotLoadBooks => '无法加载书卷列表。请重试。';

  @override
  String chapterLabel(Object chapter) {
    return '第 $chapter 章';
  }

  @override
  String get traditionalOrderBooks => '按传统顺序排列的书卷';

  @override
  String get alphabeticalOrderBooks => '按字母顺序排列的书卷';

  @override
  String get home => '主页';

  @override
  String get addBookmarkTooltip => '添加书签';

  @override
  String get chooseBookChapter => '选择书卷和章节';

  @override
  String get chooseVerse => '选择经节';

  @override
  String get bookChapterQuickNavigation => '书卷和章节快速导航';

  @override
  String get verseQuickNavigation => '经节快速导航';

  @override
  String get backToBooks => '返回书卷';

  @override
  String get selectBookTitle => '选择书卷';

  @override
  String selectChapterTitle(Object bookName) {
    return '选择章节（$bookName）';
  }

  @override
  String chapterSelectionLabel(Object chapter) {
    return '第 $chapter 章';
  }

  @override
  String verseSelectionLabel(Object verse) {
    return '经节 $verse';
  }

  @override
  String fullChapterReference(Object bookName, Object chapter) {
    return '整章：$bookName $chapter';
  }

  @override
  String get memorizeHint => '背诵';

  @override
  String get addNoteHint => '添加备注...';

  @override
  String get languageSearchHint => '搜索语言';

  @override
  String get languageModuleInstalled => '已安装';

  @override
  String get languageModulePending => '机器翻译待完成';

  @override
  String get languageNoMatches => '没有符合搜索条件的语言。';

  @override
  String get languageCatalogDescription => '标记为已安装的语言可离线使用。其他语言将作为机器翻译模块添加。';

  @override
  String get saveBookmarkSemantics => '保存书签';

  @override
  String get couldNotLoadChapter => '无法加载章节。请重试。';

  @override
  String get couldNotLoadChapters => '无法加载章节列表。请重试。';

  @override
  String verseWithText(Object text, Object verse) {
    return '经节 $verse：$text';
  }

  @override
  String accentSwatchSemantics(Object name, Object selected) {
    return '$name强调色$selected';
  }

  @override
  String get oldTestament => '旧约';

  @override
  String get newTestament => '新约';

  @override
  String get deuterocanonApocrypha => '次经 / 外典';
}
