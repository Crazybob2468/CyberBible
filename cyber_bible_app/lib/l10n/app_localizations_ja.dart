// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Japanese (`ja`).
class AppLocalizationsJa extends AppLocalizations {
  AppLocalizationsJa([String locale = 'ja']) : super(locale);

  @override
  String get settingsTitle => '設定';

  @override
  String get languageSection => '言語';

  @override
  String get useSystemLanguage => 'システム言語を使用';

  @override
  String get useSystemLanguageSubtitle => 'デバイスの言語に初期設定で合わせます。';

  @override
  String get currentLanguage => '現在の言語';

  @override
  String get appLanguage => 'アプリの言語';

  @override
  String get chooseLanguage => '言語を選択';

  @override
  String get theme => 'テーマ';

  @override
  String get appearance => '外観';

  @override
  String get textSection => 'テキスト';

  @override
  String get readingFormatSection => '読書形式';

  @override
  String get displaySection => '表示';

  @override
  String get verseNumbers => '節番号';

  @override
  String get sectionHeadings => 'セクション見出し';

  @override
  String get redLetterText => '赤文字';

  @override
  String get selectABook => '書を選択';

  @override
  String get traditionalOrder => '伝統的な順序';

  @override
  String get alphabeticalOrder => 'アルファベット順';

  @override
  String get bookmarks => 'ブックマーク';

  @override
  String get retry => '再試行';

  @override
  String get chooseTheme => 'テーマを選択';

  @override
  String get customisableThemes => 'カスタマイズ可能なテーマ';

  @override
  String get customisableThemesSubtitle =>
      'カードをタップしてアクセント色を選択します。Classic White はライト、ダーク、システムモードにも対応します。';

  @override
  String get setThemes => '固定テーマ';

  @override
  String get setThemesSubtitle => '手作りの固定パレットです。カスタマイズせず、タップして適用できます。';

  @override
  String get deleteBookmarkQuestion => 'ブックマークを削除しますか？';

  @override
  String get cancel => 'キャンセル';

  @override
  String get delete => '削除';

  @override
  String get bookmarkSaved => 'ブックマークを保存しました';

  @override
  String get couldNotDeleteBookmark => 'ブックマークを削除できませんでした。';

  @override
  String couldNotNavigate(Object reference) {
    return '$referenceへ移動できませんでした。';
  }

  @override
  String get pageNotFound => 'ページが見つかりません';

  @override
  String noRouteDefined(Object routeName) {
    return '\"$routeName\"に定義されたルートはありません';
  }

  @override
  String get english => '英語';

  @override
  String get spanish => 'スペイン語';

  @override
  String get systemDefault => 'システムの既定';

  @override
  String get languageStatusEnglish => '英語のフォールバックを使用中';

  @override
  String get languageStatusSystem => 'システム言語を使用中';

  @override
  String languageStatusSelected(Object languageName) {
    return '選択した言語：$languageName';
  }

  @override
  String get themeLabel => 'テーマ';

  @override
  String get notFoundTitle => 'ページが見つかりません';

  @override
  String get loadingCyberBible => 'Cyber Bibleを読み込み中...';

  @override
  String get couldNotOpenDatabase => '聖書データベースを開けませんでした。もう一度お試しください。';

  @override
  String get homeTagline => '無料でオープンソースの聖書学習アプリ';

  @override
  String get readTheBible => '聖書を読む';

  @override
  String get settingsTooltip => '設定';

  @override
  String get themeChoose => 'テーマを選択';

  @override
  String get customThemes => 'カスタマイズ可能なテーマ';

  @override
  String get customThemesSubtitle =>
      'カードをタップしてアクセント色を選択します。Classic White はライト、ダーク、システムモードにも対応します。';

  @override
  String get setThemesLabel => '固定テーマ';

  @override
  String get deleteBookmarkDialog => 'ブックマークを削除しますか？';

  @override
  String removeBookmarkMessage(Object details, Object reference) {
    return '\"$reference\"$detailsを削除しますか？\n\nこの操作は元に戻せません。';
  }

  @override
  String get couldNotLoadBookmarks => 'ブックマークを読み込めませんでした。もう一度お試しください。';

  @override
  String get bookmarkSavedMessage => 'ブックマークを保存しました';

  @override
  String get couldNotSaveBookmark => 'ブックマークを保存できませんでした。';

  @override
  String get noBookmarksMatchFilter => 'このフィルターに一致するブックマークはありません。';

  @override
  String get clearFilter => 'フィルターを解除';

  @override
  String get traditionalOrderLabel => '伝統的な順序';

  @override
  String get alphabeticalOrderLabel => 'アルファベット順';

  @override
  String get bookmarksTabLabel => 'ブックマーク';

  @override
  String get fullChapter => '章全体';

  @override
  String get addBookmark => 'ブックマークを追加';

  @override
  String get selectVerse => '節を選択';

  @override
  String get labelOptional => 'ラベル（任意）';

  @override
  String get notesOptional => 'メモ（任意）';

  @override
  String get save => '保存';

  @override
  String get goToVerse => '節へ移動';

  @override
  String verseTitle(Object verse) {
    return '$verse節';
  }

  @override
  String chapterTitle(Object chapter) {
    return '$chapter章';
  }

  @override
  String get switchToFullChapter => '章全体のブックマークに切り替え';

  @override
  String get bookmarkSheetCancel => 'キャンセルしてブックマークシートを閉じる';

  @override
  String get pickCustomAccent => 'カスタムアクセントを選択';

  @override
  String get apply => '適用';

  @override
  String get custom => 'カスタム';

  @override
  String get brightnessSystem => 'システム';

  @override
  String get brightnessLight => 'ライト';

  @override
  String get brightnessDark => 'ダーク';

  @override
  String get selectBook => '書を選択';

  @override
  String get bookmarkFilterAll => 'すべて';

  @override
  String get bookmarkFilterUnlabeled => 'ラベルなし';

  @override
  String get bookmarkSortRecent => '新しい順';

  @override
  String get bookmarkSortCanonical => '正典順';

  @override
  String get chapterRetry => '再試行';

  @override
  String get fontSize => 'フォントサイズ';

  @override
  String fontSizePixels(Object size) {
    return '$size px';
  }

  @override
  String get fontSizeSlider => 'フォントサイズスライダー';

  @override
  String get fontSizeSliderHint => '12から28までスワイプして調整';

  @override
  String get fontPreview => '「初めに、神は天と地を創造された。」— 創世記 1:1';

  @override
  String get showVerseNumbersSubtitle => '読書画面に節番号の上付き文字を表示します。';

  @override
  String get showSectionHeadingsSubtitle => '本文の間にセクションと詩篇の見出しを表示します。';

  @override
  String get wordsOfChristSubtitle => 'イエスの言葉を赤で表示します。単色にするには無効にします。';

  @override
  String get verseFormatTitle => '節の形式';

  @override
  String get verseFormatSubtitle => '聖書本文の配置方法を選択します。';

  @override
  String get paragraphMode => '段落';

  @override
  String get verseListMode => '節一覧';

  @override
  String get paragraphModeTooltip => '段落モード';

  @override
  String get verseListModeTooltip => '節一覧モード';

  @override
  String get paragraphModeDescription => '印刷された聖書のように、インデントされた段落で本文が連続して流れます。';

  @override
  String get verseListModeDescription => '各聖書段落を別の行から始め、節のまとまりを見つけやすくします。';

  @override
  String get deleteBookmarkTooltip => 'ブックマークを削除';

  @override
  String deleteBookmarkSemantics(Object reference) {
    return '$referenceのブックマークを削除';
  }

  @override
  String sortBookmarksTooltip(Object sortOrder) {
    return '並べ替え：$sortOrder';
  }

  @override
  String get noBookmarksYet => 'ブックマークはまだありません。';

  @override
  String get noBookmarksYetHint => '読書中にブックマークアイコンをタップして位置を保存します。';

  @override
  String bookmarkReferenceNavigationError(Object reference) {
    return '$referenceへ移動できませんでした。';
  }

  @override
  String themeCardSemantics(Object description, Object name, Object selected) {
    return '$nameテーマ$selected。$description';
  }

  @override
  String get selectedThemeSuffix => '、現在選択中';

  @override
  String get customisableAccentDescription => 'カスタマイズ可能なアクセント色。';

  @override
  String get fixedPaletteDescription => '固定パレット。';

  @override
  String accentColourTitle(Object themeName) {
    return 'アクセント色 — $themeName';
  }

  @override
  String get brightnessMode => '明るさモード';

  @override
  String get lightMode => 'ライトモード';

  @override
  String get followSystemMode => 'システムモードに従う';

  @override
  String get darkMode => 'ダークモード';

  @override
  String get customColourPicker => 'カスタムカラーピッカー';

  @override
  String get customColourTooltip => 'カスタムカラー...';

  @override
  String get couldNotLoadBooks => '書の一覧を読み込めませんでした。もう一度お試しください。';

  @override
  String chapterLabel(Object chapter) {
    return '$chapter章';
  }

  @override
  String get traditionalOrderBooks => '伝統的な順序の書';

  @override
  String get alphabeticalOrderBooks => 'アルファベット順の書';

  @override
  String get home => 'ホーム';

  @override
  String get addBookmarkTooltip => 'ブックマークを追加';

  @override
  String get chooseBookChapter => '書と章を選択';

  @override
  String get chooseVerse => '節を選択';

  @override
  String get bookChapterQuickNavigation => '書と章のクイックナビゲーション';

  @override
  String get verseQuickNavigation => '節のクイックナビゲーション';

  @override
  String get backToBooks => '書に戻る';

  @override
  String get selectBookTitle => '書を選択';

  @override
  String selectChapterTitle(Object bookName) {
    return '章を選択（$bookName）';
  }

  @override
  String chapterSelectionLabel(Object chapter) {
    return '$chapter章';
  }

  @override
  String verseSelectionLabel(Object verse) {
    return '$verse節';
  }

  @override
  String fullChapterReference(Object bookName, Object chapter) {
    return '章全体：$bookName $chapter';
  }

  @override
  String get memorizeHint => '暗記';

  @override
  String get addNoteHint => 'メモを追加...';

  @override
  String get languageSearchHint => '言語を検索';

  @override
  String get languageModuleInstalled => 'インストール済み';

  @override
  String get languageModulePending => '機械翻訳待ち';

  @override
  String get languageNoMatches => '検索に一致する言語はありません。';

  @override
  String get languageCatalogDescription =>
      'インストール済みの言語はオフラインで動作します。他の言語は機械翻訳モジュールとして追加されます。';

  @override
  String get saveBookmarkSemantics => 'ブックマークを保存';

  @override
  String get couldNotLoadChapter => '章を読み込めませんでした。もう一度お試しください。';

  @override
  String get couldNotLoadChapters => '章を読み込めませんでした。もう一度お試しください。';

  @override
  String verseWithText(Object text, Object verse) {
    return '$verse節：$text';
  }

  @override
  String accentSwatchSemantics(Object name, Object selected) {
    return '$nameのアクセント色$selected';
  }

  @override
  String get oldTestament => '旧約聖書';

  @override
  String get newTestament => '新約聖書';

  @override
  String get deuterocanonApocrypha => '第二正典／外典';
}
