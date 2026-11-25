// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Tibetan (`bo`).
class AppLocalizationsBo extends AppLocalizations {
  AppLocalizationsBo([String locale = 'bo']) : super(locale);

  @override
  String get settingsTitle => 'སྒྲིག་སྟངས།';

  @override
  String get languageSection => 'སྐད་རིགས';

  @override
  String get useSystemLanguage => 'མ་ལག་གི་སྐད་ཡིག་བཀོལ་སྤྱོད་བྱེད་པ།';

  @override
  String get useSystemLanguageSubtitle =>
      'སྔོན་སྒྲིག་ལྟར་སྒྲིག་ཆས་ཀྱི་སྐད་ཡིག་མཐུན་སྒྲིག་བྱེད།';

  @override
  String get currentLanguage => 'ད་ལྟའི་སྐད་ཡིག།';

  @override
  String get appLanguage => 'App སྐད་ཡིག';

  @override
  String get chooseLanguage => 'སྐད་ཡིག་འདེམས།';

  @override
  String get theme => 'བརྗོད་གཞི';

  @override
  String get appearance => 'ཕྱི་ཚུལ';

  @override
  String get textSection => 'ཡིག་གཞི';

  @override
  String get readingFormatSection => 'དཔེ་ཀློག་རྣམ་པ།';

  @override
  String get displaySection => 'འགྲེམས་པ';

  @override
  String get verseNumbers => 'ཤོ་ལོ་ཀ་ཨང་གྲངས།';

  @override
  String get sectionHeadings => 'ཚན་པའི་མགོ་བརྗོད།';

  @override
  String get redLetterText => 'ཡི་གེ་དམར་པོ།';

  @override
  String get selectABook => 'དེབ་འདེམས།';

  @override
  String get traditionalOrder => 'སྲོལ་རྒྱུན་གྱི་གོ་རིམ།';

  @override
  String get alphabeticalOrder => 'ཡི་གེའི་གོ་རིམ།';

  @override
  String get bookmarks => 'དེབ་རྟགས།';

  @override
  String get retry => 'ཡང་བསྐྱར་ཚོད་ལྟ་བྱེད་པ།';

  @override
  String get chooseTheme => 'བརྗོད་གཞི་འདེམས།';

  @override
  String get customisableThemes => 'རང་སྒྲིག་བྱེད་ཐུབ་པའི་བརྗོད་གཞི།';

  @override
  String get customisableThemesSubtitle =>
      'སྐད་གདངས་ཀྱི་ཚོས་གཞི་འདེམས་པའི་ཆེད་དུ་ཤོག་བྱང་ལ་རྡེབ་རོགས། \"Classic White\" ཡིས་འོད་དང་མུན་ནག་དང་མ་ལག་གི་ཐབས་ལམ་ལ་རྒྱབ་སྐྱོར་བྱེད་ཀྱི་ཡོད།';

  @override
  String get setThemes => 'བརྗོད་གཞི་སྒྲིག་པ།';

  @override
  String get setThemesSubtitle =>
      'ལག་བཟོས་ཀྱི་ཐིག་ཁྲམ་གཏན་འཁེལ་བྱས་ཡོད། རང་སྒྲིག་བྱེད་མི་དགོས། འཇུག་སྤྱོད་བྱེད་པར་ཨེབ་དགོས།';

  @override
  String get deleteBookmarkQuestion => 'དེབ་རྟགས་སུབ་དམ།';

  @override
  String get cancel => 'འདོར་བ';

  @override
  String get delete => 'སུབ་པ';

  @override
  String get bookmarkSaved => 'དེབ་རྟགས་ཉར་ཚགས་བྱས།';

  @override
  String get couldNotDeleteBookmark => 'དེབ་རྟགས་སུབ་མ་ཐུབ།';

  @override
  String couldNotNavigate(Object reference) {
    return '$reference ལ་འགྲོ་ཐུབ་མ་སོང་།';
  }

  @override
  String get pageNotFound => 'ཤོག་ངོས་མ་རྙེད།';

  @override
  String noRouteDefined(Object routeName) {
    return '\"$routeName\" ལ་འགྲོ་ལམ་གཏན་འཁེལ་བྱས་མེད།';
  }

  @override
  String get english => 'དབྱིན་ཡིག';

  @override
  String get spanish => 'ཨི་སི་པན།';

  @override
  String get systemDefault => 'མ་ལག་སྔོན་སྒྲིག';

  @override
  String get languageStatusEnglish => 'དབྱིན་ཡིག་རྒྱབ་ལོག་བྱེད་ཤུགས་ཆེ་བ།';

  @override
  String get languageStatusSystem => 'མ་ལག་གི་སྐད་ཡིག་བཀོལ་སྤྱོད་བྱེད་པ།';

  @override
  String languageStatusSelected(Object languageName) {
    return 'བདམས་པའི་སྐད་ཡིག: $languageName';
  }

  @override
  String get themeLabel => 'བརྗོད་གཞི';

  @override
  String get notFoundTitle => 'ཤོག་ངོས་མ་རྙེད།';

  @override
  String get loadingCyberBible => 'Loading དྲ་རྒྱའི་གསུང་རབ་...';

  @override
  String get couldNotOpenDatabase =>
      'ཡེ་ཤུའི་གསུང་རབ་ཀྱི་གཞི་གྲངས་མཛོད་ཁ་ཕྱེ་མ་ཐུབ། ཡང་བསྐྱར་ཚོད་ལྟ་གནང་རོགས།';

  @override
  String get homeTagline =>
      'རིན་མེད་དང་ཁ་ཕྱེ་བའི་ཡེ་ཤུའི་གསུང་རབ་སློབ་སྦྱོང་གི་མཉེན་ཆས།';

  @override
  String get readTheBible => 'གསུང་རབ་ཀློག་པ།';

  @override
  String get settingsTooltip => 'སྒྲིག་སྟངས།';

  @override
  String get themeChoose => 'བརྗོད་གཞི་འདེམས།';

  @override
  String get customThemes => 'རང་སྒྲིག་བྱེད་ཐུབ་པའི་བརྗོད་གཞི།';

  @override
  String get customThemesSubtitle =>
      'སྐད་གདངས་ཀྱི་ཚོས་གཞི་འདེམས་པའི་ཆེད་དུ་ཤོག་བྱང་ལ་རྡེབ་རོགས། \"Classic White\" ཡིས་འོད་དང་མུན་ནག་དང་མ་ལག་གི་ཐབས་ལམ་ལ་རྒྱབ་སྐྱོར་བྱེད་ཀྱི་ཡོད།';

  @override
  String get setThemesLabel => 'བརྗོད་གཞི་སྒྲིག་པ།';

  @override
  String get deleteBookmarkDialog => 'དེབ་རྟགས་སུབ་དམ།';

  @override
  String removeBookmarkMessage(Object details, Object reference) {
    return '\"$reference\"$details མེད་པར་བཟོ་དགོས་སམ།\n\nའདི་ཕྱིར་འཐེན་བྱེད་མི་ཐུབ།';
  }

  @override
  String get couldNotLoadBookmarks =>
      'དེབ་རྟགས་མངོན་འཇུག་བྱེད་མ་ཐུབ། ཡང་བསྐྱར་ཚོད་ལྟ་གནང་རོགས།';

  @override
  String get bookmarkSavedMessage => 'དེབ་རྟགས་ཉར་ཚགས་བྱས།';

  @override
  String get couldNotSaveBookmark => 'དེབ་རྟགས་ཉར་ཚགས་བྱེད་མ་ཐུབ།';

  @override
  String get noBookmarksMatchFilter =>
      'ཚགས་རླུང་འདི་དང་མཐུན་པའི་དེབ་རྟགས་གང་ཡང་མེད།';

  @override
  String get clearFilter => 'ཚགས་རླུང་གཙང་བཟོ།';

  @override
  String get traditionalOrderLabel => 'སྲོལ་རྒྱུན་གྱི་གོ་རིམ།';

  @override
  String get alphabeticalOrderLabel => 'ཡི་གེའི་གོ་རིམ།';

  @override
  String get bookmarksTabLabel => 'དེབ་རྟགས།';

  @override
  String get fullChapter => 'ལེའུ་ཆ་ཚང་།';

  @override
  String get addBookmark => 'དེབ་རྟགས་ཁ་སྣོན།';

  @override
  String get selectVerse => 'ཚིགས་བཅད་འདེམས།';

  @override
  String get labelOptional => 'མིང་བྱང་། (འདམ་ཀ།)';

  @override
  String get notesOptional => 'མཆན་འགྲེལ། (འདམ་ཀ།)';

  @override
  String get save => 'སྐྱོབ་པ';

  @override
  String get goToVerse => 'ཚིགས་སུ་བཅད་པ།';

  @override
  String verseTitle(Object verse) {
    return 'ཤོ་ལོ་ཀ་ $verse';
  }

  @override
  String chapterTitle(Object chapter) {
    return 'ལེའུ་ $chapter';
  }

  @override
  String get switchToFullChapter => 'ལེའུ་ཆ་ཚང་དེབ་རྟགས་སུ་བསྒྱུར།';

  @override
  String get bookmarkSheetCancel => 'ཆ་མེད་གཏོང་བ།དེབ་རྟགས་ཤོག་བུ་ཁ་རྒྱག་པ།';

  @override
  String get pickCustomAccent => 'རང་མོས་ངང་གདངས་འདེམས།';

  @override
  String get apply => 'འདོན་སྤྲོད';

  @override
  String get custom => 'ཡུལ་སྲོལ';

  @override
  String get brightnessSystem => 'མ་ལག';

  @override
  String get brightnessLight => 'འོད';

  @override
  String get brightnessDark => 'མུན་ནག';

  @override
  String get selectBook => 'དེབ་འདེམས།';

  @override
  String get bookmarkFilterAll => 'ཚང་མ';

  @override
  String get bookmarkFilterUnlabeled => 'མིང་རྟགས་མེད་པ།';

  @override
  String get bookmarkSortRecent => 'ཉེ་ཆར་དང་པོ།';

  @override
  String get bookmarkSortCanonical => 'ཁྲིམས་མཐུན་གོ་རིམ།';

  @override
  String get chapterRetry => 'ཡང་བསྐྱར་ཚོད་ལྟ་བྱེད་པ།';

  @override
  String get fontSize => 'ཡིག་གཟུགས་ཆེ་ཆུང་།';

  @override
  String fontSizePixels(Object size) {
    return '$size པི་ཨེགསི།';
  }

  @override
  String get fontSizeSlider => 'ཡིག་གཟུགས་ཆེ་ཆུང་བཤུད་ཆས།';

  @override
  String get fontSizeSliderHint => '12 ནས་ 28 བར་སྙོམ་སྒྲིག་བྱེད་པར་གཡུག་དགོས།';

  @override
  String get fontPreview =>
      '\"ཐོག་མར་དཀོན་མཆོག་གིས་ལྷ་ཡུལ་དང་ས་གཞི་བསྐྲུན་ཡོད།\" — འབྱུང་བ་ ༡:༡ .';

  @override
  String get showVerseNumbersSubtitle =>
      'ཀློག་པའི་གློག་བརྙན་ནང་དུ་ཚིག་ཕྲེང་ཨང་གྲངས་སྟེང་ཡིག་འབྲུ་སྟོན།';

  @override
  String get showSectionHeadingsSubtitle =>
      'དོན་ཚན་བར་གྱི་སྡེ་ཚན་དང་མགུར་མའི་མགོ་བརྗོད་སྟོན།';

  @override
  String get wordsOfChristSubtitle =>
      'ཡེ་ཤུའི་བཀའ་དམར་པོས་སྟོན། ཚིག་ཡིག་ཚོས་གཞི་གཅིག་ལ་ལྕོགས་མིན་བཟོས།';

  @override
  String get verseFormatTitle => 'ཚིགས་བཅད་ཀྱི་རྣམ་པ།';

  @override
  String get verseFormatSubtitle =>
      'གསུང་རབ་ཀྱི་ཡིག་ཆ་དེ་གང་འདྲ་བྱས་ནས་བཀོད་ཡོད་མེད་འདེམས།';

  @override
  String get paragraphMode => 'དོན་ཚན།';

  @override
  String get verseListMode => 'ཤོ་ལོ་ཀ་ཐོ་གཞུང་།';

  @override
  String get paragraphModeTooltip => 'དོན་མཚམས་ཐབས་ལམ།';

  @override
  String get verseListModeTooltip => 'ཤོ་ལོ་ཀ་ཐོ་གཞུང་ཐབས་ལམ།';

  @override
  String get paragraphModeDescription =>
      'ཡིག་ཆ་དེ་པར་སྐྲུན་བྱས་པའི་ཡེ་ཤུའི་གསུང་རབ་ལྟར་དོན་ཚན་ནང་འཇུག་བྱས་ནས་མུ་མཐུད་དུ་རྒྱུག་བཞིན་ཡོད།';

  @override
  String get verseListModeDescription =>
      'ཡིག་ཆའི་དོན་ཚན་རེ་རེ་བཞིན་རང་ཉིད་ཀྱི་གྲལ་རིམ་ནས་འགོ་འཛུགས་པས་ཚིག་ཕྲེང་སྡེ་ཚན་ཤེས་རྟོགས་བྱེད་པར་སྟབས་བདེ་པོ་ཆགས་ཡོད།';

  @override
  String get deleteBookmarkTooltip => 'དེབ་རྟགས་སུབ་པ།';

  @override
  String deleteBookmarkSemantics(Object reference) {
    return 'དཔེ་རྟགས་ $reference སུབ་པ།';
  }

  @override
  String sortBookmarksTooltip(Object sortOrder) {
    return 'དབྱེ་འབྱེད་: $sortOrder';
  }

  @override
  String get noBookmarksYet => 'ད་དུང་དེབ་རྟགས་མེད།';

  @override
  String get noBookmarksYetHint =>
      'གནས་ཡུལ་ཉར་ཚགས་བྱེད་པར་ཀློག་སྐབས་དེབ་རྟགས་འདྲ་སྐུ་ལ་རྡེབ་རོགས།';

  @override
  String bookmarkReferenceNavigationError(Object reference) {
    return '$reference ལ་འགྲོ་ཐུབ་མ་སོང་།';
  }

  @override
  String themeCardSemantics(Object description, Object name, Object selected) {
    return '$name བརྗོད་གཞི་$selected. $description';
  }

  @override
  String get selectedThemeSuffix => ', ད་ལྟ་བདམས་ཟིན།';

  @override
  String get customisableAccentDescription =>
      'རང་སྒྲིག་བྱེད་ཐུབ་པའི་སྐད་གདངས་ཚོས་མདོག';

  @override
  String get fixedPaletteDescription => 'གཏན་འཁེལ་གྱི་ཚོན་མདོག';

  @override
  String accentColourTitle(Object themeName) {
    return 'སྐད་གདངས་ཚོན་མདོག — $themeName';
  }

  @override
  String get brightnessMode => 'འོད་མདངས་ཀྱི་ཐབས་ལམ།';

  @override
  String get lightMode => 'འོད་ཀྱི་ཐབས་ལམ།';

  @override
  String get followSystemMode => 'མ་ལག་ཐབས་ལམ་ལ་རྗེས་འདེད་བྱེད།';

  @override
  String get darkMode => 'མུན་ནག་གི་ཐབས་ལམ།';

  @override
  String get customColourPicker => 'རང་མོས་ཚོན་མདོག་འདེམས་མཁན།';

  @override
  String get customColourTooltip => 'རང་མོས་ཚོས་གཞི།';

  @override
  String get couldNotLoadBooks =>
      'དཔེ་དེབ་ཐོ་འགོད་བྱེད་མ་ཐུབ། ཡང་བསྐྱར་ཚོད་ལྟ་གནང་རོགས།';

  @override
  String chapterLabel(Object chapter) {
    return 'ལེའུ་ $chapter';
  }

  @override
  String get traditionalOrderBooks => 'སྲོལ་རྒྱུན་གྱི་མངགས་ཉོའི་དེབ།';

  @override
  String get alphabeticalOrderBooks => 'ཡི་གེའི་གོ་རིམ་དེབ་ཐེར།';

  @override
  String get home => 'ཡུལ';

  @override
  String get addBookmarkTooltip => 'དེབ་རྟགས་ཁ་སྣོན།';

  @override
  String get chooseBookChapter => 'དེབ་དང་ལེའུ་འདེམས།';

  @override
  String get chooseVerse => 'ཤོ་ལོ་ཀ་འདེམས།';

  @override
  String get bookChapterQuickNavigation => 'དཔེ་དེབ་དང་ལེའུ་མྱུར་འགྲོ།';

  @override
  String get verseQuickNavigation => 'ཚིགས་བཅད་མྱུར་འགྲོ།';

  @override
  String get backToBooks => 'དེབ་ལ་ལོག་པ།';

  @override
  String get selectBookTitle => 'དེབ་འདེམས།';

  @override
  String selectChapterTitle(Object bookName) {
    return 'ལེའུ་འདེམས། ($bookName)';
  }

  @override
  String chapterSelectionLabel(Object chapter) {
    return 'ལེའུ་ $chapter';
  }

  @override
  String verseSelectionLabel(Object verse) {
    return 'ཤོ་ལོ་ཀ་ $verse';
  }

  @override
  String fullChapterReference(Object bookName, Object chapter) {
    return 'ལེའུ་ཆ་ཚང་།: $bookName $chapter';
  }

  @override
  String get memorizeHint => 'བློ་འཛིན་བྱེད་པ།';

  @override
  String get addNoteHint => 'དྲན་ཐོ་ཁ་སྣོན་བྱེད་པ།';

  @override
  String get languageSearchHint => 'སྐད་རིགས་འཚོལ་བ།';

  @override
  String get languageModuleInstalled => 'བཙུགས་ཟིན།';

  @override
  String get languageModulePending => 'འཕྲུལ་ཆས་ཡིག་སྒྱུར་སྒུག་བཞིན་པ།';

  @override
  String get languageNoMatches =>
      'ཁྱེད་ཀྱི་འཚོལ་ཞིབ་དང་མཐུན་པའི་སྐད་ཡིག་གང་ཡང་མེད།';

  @override
  String get languageCatalogDescription =>
      'སྒྲིག་འཇུག་བྱས་པའི་སྐད་ཡིག་རྣམས་དྲ་རྒྱའི་ཕྱི་རོལ་དུ་ལས་ཀ་བྱེད་ཀྱི་ཡོད། སྐད་ཡིག་གཞན་དག་འཕྲུལ་ཆས་ཀྱིས་སྐད་སྒྱུར་བྱས་པའི་ཚད་གཞི་ལྟར་ཁ་སྣོན་བྱ་རྒྱུ་རེད།';

  @override
  String get saveBookmarkSemantics => 'དེབ་རྟགས་ཉར་ཚགས་བྱེད།';

  @override
  String get couldNotLoadChapter =>
      'ལེའུ་དེ་མངོན་ཐུབ་མ་སོང་། ཡང་བསྐྱར་ཚོད་ལྟ་གནང་རོགས།';

  @override
  String get couldNotLoadChapters =>
      'ལེའུ་མངོན་འཇུག་བྱེད་མ་ཐུབ། ཡང་བསྐྱར་ཚོད་ལྟ་གནང་རོགས།';

  @override
  String verseWithText(Object text, Object verse) {
    return 'ཤོ་ལོ་ཀ་ $verse: $text';
  }

  @override
  String accentSwatchSemantics(Object name, Object selected) {
    return '$name སྒྲ་གདངས་ཚོན་མདོག$selected';
  }

  @override
  String get oldTestament => 'གན་རྒྱ་རྙིང་པ།';

  @override
  String get newTestament => 'གན་རྒྱ་གསར་པ།';

  @override
  String get deuterocanonApocrypha => 'ཌིའུ་ཊོ་ཀ་ནོན་ / ཨ་པོ་ཁི་རི་ཕ།';
}
