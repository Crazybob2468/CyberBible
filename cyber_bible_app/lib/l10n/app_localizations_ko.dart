// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Korean (`ko`).
class AppLocalizationsKo extends AppLocalizations {
  AppLocalizationsKo([String locale = 'ko']) : super(locale);

  @override
  String get settingsTitle => '설정';

  @override
  String get languageSection => '언어';

  @override
  String get useSystemLanguage => '시스템 언어 사용';

  @override
  String get useSystemLanguageSubtitle => '기본적으로 기기 언어에 맞춥니다.';

  @override
  String get currentLanguage => '현재 언어';

  @override
  String get appLanguage => '앱 언어';

  @override
  String get chooseLanguage => '언어 선택';

  @override
  String get theme => '테마';

  @override
  String get appearance => '모양';

  @override
  String get textSection => '텍스트';

  @override
  String get readingFormatSection => '읽기 형식';

  @override
  String get displaySection => '표시';

  @override
  String get verseNumbers => '절 번호';

  @override
  String get sectionHeadings => '단락 제목';

  @override
  String get redLetterText => '적색 글자';

  @override
  String get selectABook => '성경 선택';

  @override
  String get traditionalOrder => '전통 순서';

  @override
  String get alphabeticalOrder => '알파벳순';

  @override
  String get bookmarks => '책갈피';

  @override
  String get retry => '다시 시도';

  @override
  String get chooseTheme => '테마 선택';

  @override
  String get customisableThemes => '사용자 지정 테마';

  @override
  String get customisableThemesSubtitle =>
      '카드를 눌러 강조 색상을 선택하세요. Classic White는 밝은 모드, 어두운 모드, 시스템 모드도 지원합니다.';

  @override
  String get setThemes => '고정 테마';

  @override
  String get setThemesSubtitle => '정교하게 만든 고정 팔레트입니다. 사용자 지정 없이 눌러 적용하세요.';

  @override
  String get deleteBookmarkQuestion => '책갈피를 삭제할까요?';

  @override
  String get cancel => '취소';

  @override
  String get delete => '삭제';

  @override
  String get bookmarkSaved => '책갈피가 저장되었습니다';

  @override
  String get couldNotDeleteBookmark => '책갈피를 삭제할 수 없습니다.';

  @override
  String couldNotNavigate(Object reference) {
    return '$reference(으)로 이동할 수 없습니다.';
  }

  @override
  String get pageNotFound => '페이지를 찾을 수 없습니다';

  @override
  String noRouteDefined(Object routeName) {
    return '\"$routeName\"에 정의된 경로가 없습니다';
  }

  @override
  String get english => '영어';

  @override
  String get spanish => '스페인어';

  @override
  String get systemDefault => '시스템 기본값';

  @override
  String get languageStatusEnglish => '영어 대체 언어 활성화';

  @override
  String get languageStatusSystem => '시스템 언어 사용 중';

  @override
  String languageStatusSelected(Object languageName) {
    return '선택한 언어: $languageName';
  }

  @override
  String get themeLabel => '테마';

  @override
  String get notFoundTitle => '페이지를 찾을 수 없습니다';

  @override
  String get loadingCyberBible => 'Cyber Bible 로드 중...';

  @override
  String get couldNotOpenDatabase => '성경 데이터베이스를 열 수 없습니다. 다시 시도하세요.';

  @override
  String get homeTagline => '무료 오픈 소스 성경 공부 앱';

  @override
  String get readTheBible => '성경 읽기';

  @override
  String get settingsTooltip => '설정';

  @override
  String get themeChoose => '테마 선택';

  @override
  String get customThemes => '사용자 지정 테마';

  @override
  String get customThemesSubtitle =>
      '카드를 눌러 강조 색상을 선택하세요. Classic White는 밝은 모드, 어두운 모드, 시스템 모드도 지원합니다.';

  @override
  String get setThemesLabel => '고정 테마';

  @override
  String get deleteBookmarkDialog => '책갈피를 삭제할까요?';

  @override
  String removeBookmarkMessage(Object details, Object reference) {
    return '\"$reference\"$details을(를) 삭제할까요?\n\n이 작업은 취소할 수 없습니다.';
  }

  @override
  String get couldNotLoadBookmarks => '책갈피를 불러올 수 없습니다. 다시 시도하세요.';

  @override
  String get bookmarkSavedMessage => '책갈피가 저장되었습니다';

  @override
  String get couldNotSaveBookmark => '책갈피를 저장할 수 없습니다.';

  @override
  String get noBookmarksMatchFilter => '이 필터와 일치하는 책갈피가 없습니다.';

  @override
  String get clearFilter => '필터 지우기';

  @override
  String get traditionalOrderLabel => '전통 순서';

  @override
  String get alphabeticalOrderLabel => '알파벳순';

  @override
  String get bookmarksTabLabel => '책갈피';

  @override
  String get fullChapter => '전체 장';

  @override
  String get addBookmark => '책갈피 추가';

  @override
  String get selectVerse => '절 선택';

  @override
  String get labelOptional => '라벨(선택 사항)';

  @override
  String get notesOptional => '메모(선택 사항)';

  @override
  String get save => '저장';

  @override
  String get goToVerse => '절로 이동';

  @override
  String verseTitle(Object verse) {
    return '$verse절';
  }

  @override
  String chapterTitle(Object chapter) {
    return '$chapter장';
  }

  @override
  String get switchToFullChapter => '전체 장 책갈피로 전환';

  @override
  String get bookmarkSheetCancel => '취소하고 책갈피 패널 닫기';

  @override
  String get pickCustomAccent => '사용자 지정 강조 색상 선택';

  @override
  String get apply => '적용';

  @override
  String get custom => '사용자 지정';

  @override
  String get brightnessSystem => '시스템';

  @override
  String get brightnessLight => '밝게';

  @override
  String get brightnessDark => '어둡게';

  @override
  String get selectBook => '성경 선택';

  @override
  String get bookmarkFilterAll => '모두';

  @override
  String get bookmarkFilterUnlabeled => '라벨 없음';

  @override
  String get bookmarkSortRecent => '최근 항목 먼저';

  @override
  String get bookmarkSortCanonical => '정경 순서';

  @override
  String get chapterRetry => '다시 시도';

  @override
  String get fontSize => '글꼴 크기';

  @override
  String fontSizePixels(Object size) {
    return '$size픽셀';
  }

  @override
  String get fontSizeSlider => '글꼴 크기 슬라이더';

  @override
  String get fontSizeSliderHint => '12에서 28까지 밀어 조절';

  @override
  String get fontPreview => '\"태초에 하나님이 천지를 창조하시니라.\" — 창 1:1';

  @override
  String get showVerseNumbersSubtitle => '읽기 화면에 절 번호 위 첨자를 표시합니다.';

  @override
  String get showSectionHeadingsSubtitle => '본문 사이에 단락과 시편 제목을 표시합니다.';

  @override
  String get wordsOfChristSubtitle =>
      '예수님의 말씀을 빨간색으로 표시합니다. 한 가지 텍스트 색상을 사용하려면 끄세요.';

  @override
  String get verseFormatTitle => '절 형식';

  @override
  String get verseFormatSubtitle => '성경 본문 배치 방법을 선택하세요.';

  @override
  String get paragraphMode => '문단';

  @override
  String get verseListMode => '절 목록';

  @override
  String get paragraphModeTooltip => '문단 모드';

  @override
  String get verseListModeTooltip => '절 목록 모드';

  @override
  String get paragraphModeDescription => '인쇄된 성경처럼 들여쓴 문단으로 텍스트가 이어집니다.';

  @override
  String get verseListModeDescription =>
      '각 성경 문단이 새 줄에서 시작되어 절 그룹을 쉽게 확인할 수 있습니다.';

  @override
  String get deleteBookmarkTooltip => '책갈피 삭제';

  @override
  String deleteBookmarkSemantics(Object reference) {
    return '$reference 책갈피 삭제';
  }

  @override
  String sortBookmarksTooltip(Object sortOrder) {
    return '정렬: $sortOrder';
  }

  @override
  String get noBookmarksYet => '아직 책갈피가 없습니다.';

  @override
  String get noBookmarksYetHint => '읽는 중 책갈피 아이콘을 눌러 위치를 저장하세요.';

  @override
  String bookmarkReferenceNavigationError(Object reference) {
    return '$reference(으)로 이동할 수 없습니다.';
  }

  @override
  String themeCardSemantics(Object description, Object name, Object selected) {
    return '$name 테마$selected. $description';
  }

  @override
  String get selectedThemeSuffix => ', 현재 선택됨';

  @override
  String get customisableAccentDescription => '사용자 지정 가능한 강조 색상입니다.';

  @override
  String get fixedPaletteDescription => '고정 팔레트입니다.';

  @override
  String accentColourTitle(Object themeName) {
    return '강조 색상 — $themeName';
  }

  @override
  String get brightnessMode => '밝기 모드';

  @override
  String get lightMode => '밝은 모드';

  @override
  String get followSystemMode => '시스템 모드 따르기';

  @override
  String get darkMode => '어두운 모드';

  @override
  String get customColourPicker => '사용자 지정 색상 선택기';

  @override
  String get customColourTooltip => '사용자 지정 색상...';

  @override
  String get couldNotLoadBooks => '성경 목록을 불러올 수 없습니다. 다시 시도하세요.';

  @override
  String chapterLabel(Object chapter) {
    return '$chapter장';
  }

  @override
  String get traditionalOrderBooks => '전통 순서 성경';

  @override
  String get alphabeticalOrderBooks => '알파벳순 성경';

  @override
  String get home => '홈';

  @override
  String get addBookmarkTooltip => '책갈피 추가';

  @override
  String get chooseBookChapter => '성경과 장 선택';

  @override
  String get chooseVerse => '절 선택';

  @override
  String get bookChapterQuickNavigation => '성경과 장 빠른 탐색';

  @override
  String get verseQuickNavigation => '절 빠른 탐색';

  @override
  String get backToBooks => '성경으로 돌아가기';

  @override
  String get selectBookTitle => '성경 선택';

  @override
  String selectChapterTitle(Object bookName) {
    return '장 선택($bookName)';
  }

  @override
  String chapterSelectionLabel(Object chapter) {
    return '$chapter장';
  }

  @override
  String verseSelectionLabel(Object verse) {
    return '$verse절';
  }

  @override
  String fullChapterReference(Object bookName, Object chapter) {
    return '전체 장: $bookName $chapter';
  }

  @override
  String get memorizeHint => '암기';

  @override
  String get addNoteHint => '메모 추가...';

  @override
  String get languageSearchHint => '언어 검색';

  @override
  String get languageModuleInstalled => '설치됨';

  @override
  String get languageModulePending => '기계 번역 대기 중';

  @override
  String get languageNoMatches => '검색과 일치하는 언어가 없습니다.';

  @override
  String get languageCatalogDescription =>
      '설치된 언어는 오프라인에서 작동합니다. 다른 언어는 기계 번역 모듈로 추가됩니다.';

  @override
  String get saveBookmarkSemantics => '책갈피 저장';

  @override
  String get couldNotLoadChapter => '장을 불러올 수 없습니다. 다시 시도하세요.';

  @override
  String get couldNotLoadChapters => '장을 불러올 수 없습니다. 다시 시도하세요.';

  @override
  String verseWithText(Object text, Object verse) {
    return '$verse절: $text';
  }

  @override
  String accentSwatchSemantics(Object name, Object selected) {
    return '$name 강조 색상$selected';
  }

  @override
  String get oldTestament => '구약';

  @override
  String get newTestament => '신약';

  @override
  String get deuterocanonApocrypha => '제2경전 / 외경';
}
