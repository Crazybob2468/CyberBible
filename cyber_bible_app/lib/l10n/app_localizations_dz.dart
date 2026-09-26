// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Dzongkha (`dz`).
class AppLocalizationsDz extends AppLocalizations {
  AppLocalizationsDz([String locale = 'dz']) : super(locale);

  @override
  String get settingsTitle => 'སྒྲིག་སྟངས་ཚུ།';

  @override
  String get languageSection => 'སྐད༌ཡིག';

  @override
  String get useSystemLanguage => 'རིམ་ལུགས་སྐད་ཡིག་ལག་ལེན་འཐབ།';

  @override
  String get useSystemLanguageSubtitle =>
      'ཐབས་འཕྲུལ་གྱི་སྐད་ཡིག་འདི་སྔོན་སྒྲིག་གིས་མཐུན་སྒྲིག་འབད།';

  @override
  String get currentLanguage => 'ད་ལྟོའི་སྐད་ཡིག།';

  @override
  String get appLanguage => 'App སྐད་ཡིག།';

  @override
  String get chooseLanguage => 'སྐད་ཡིག་གདམ་ཁ་རྐྱབས།';

  @override
  String get theme => 'བརྗོད༌དོན';

  @override
  String get appearance => 'བཟོ་དབྱིབས';

  @override
  String get textSection => 'ཡིག༌གུ';

  @override
  String get readingFormatSection => 'ལྷག་ནིའི་རྩ་སྒྲིག།';

  @override
  String get displaySection => 'གསལ༌སྟོན';

  @override
  String get verseNumbers => 'ཚིགས་བཅད་ཨང་གྲངས།';

  @override
  String get sectionHeadings => 'དོན་ཚན་ཁ་བྱང་།';

  @override
  String get redLetterText => 'དམརཔོ་-ཡི་གུའི་ཚིག་ཡིག།';

  @override
  String get selectABook => 'ཀི་དེབ་ཅིག་སེལ་འཐུ་འབད།';

  @override
  String get traditionalOrder => 'སྲོལ་རྒྱུན་གྱི་གོ་རིམ།';

  @override
  String get alphabeticalOrder => 'ཡི་གུའི་གོ་རིམ།';

  @override
  String get bookmarks => 'དེབ་རྟགས།';

  @override
  String get retry => 'ཡང་བསྐྱར་འབད་རྩོལ་བསྐྱེད།';

  @override
  String get chooseTheme => 'བརྗོད་དོན་གདམ་ཁ་རྐྱབས།';

  @override
  String get customisableThemes => 'སྲོལ་སྒྲིག་འབད་བཏུབ་པའི་བརྗོད་དོན་ཚུ།';

  @override
  String get customisableThemesSubtitle =>
      'སྐད་གདངས་ཚོས་གཞི་གདམ་ཁ་རྐྱབ་ནི་ལུ་ ཤོག་བྱང་ཅིག་ཨེབ་གཏང་། \"Classic White\" གིས་ འོད་དང་གནགཔོ་ དེ་ལས་ རིམ་ལུགས་ཐབས་ལམ་ཚུ་ལུ་ཡང་རྒྱབ་སྐྱོར་འབདཝ་ཨིན།';

  @override
  String get setThemes => 'བརྗོད་དོན་ཚུ་གཞི་སྒྲིག་འབད།';

  @override
  String get setThemesSubtitle =>
      'གཏན་འཇགས་ ལག་བཟོའི་ ཐིག་ཁྲམ་ཚུ། སྲོལ་སྒྲིག་འབད་དགོཔ་མེད་ — འཇུག་སྤྱོད་འབད་ནི་ལུ་ཨེབ་གཏང་འབད།';

  @override
  String get deleteBookmarkQuestion => 'དེབ་རྟགས་བཏོན་གཏང་ནི་ཨིན་ན?';

  @override
  String get cancel => 'ཆ་མེད་བཏང་པ་';

  @override
  String get delete => 'བཏོན༌གཏང༌བ';

  @override
  String get bookmarkSaved => 'དེབ་རྟགས་སྲུང་བཞག་འབད་ཡོདཔ།';

  @override
  String get couldNotDeleteBookmark => 'དེབ་རྟགས་བཏོན་གཏང་མ་ཚུགས།';

  @override
  String couldNotNavigate(Object reference) {
    return '$reference ལུ་འགྲུལ་བསྐྱོད་འབད་མ་ཚུགས།';
  }

  @override
  String get pageNotFound => 'ཤོག་ངོས་མ་རྙེད།';

  @override
  String noRouteDefined(Object routeName) {
    return '\"$routeName\"གི་དོན་ལུ་འགྲུལ་ལམ་ངེས་འཛིན་མ་འབད་བས།';
  }

  @override
  String get english => 'ཨིང་ལིཤི་';

  @override
  String get spanish => 'ཨིསི་པེ་ནོལ།';

  @override
  String get systemDefault => 'རིམ་ལུགས་སྔོན་སྒྲིག།';

  @override
  String get languageStatusEnglish => 'ཨིང་ལིཤ་ཕོལ་བེཀ་ཤུགས་ལྡན་ཨིན།';

  @override
  String get languageStatusSystem => 'རིམ་ལུགས་སྐད་ཡིག་ལག་ལེན་འཐབ་དོ།';

  @override
  String languageStatusSelected(Object languageName) {
    return 'སེལ་འཐུ་འབད་ཡོད་པའི་སྐད་ཡིག: $languageName';
  }

  @override
  String get themeLabel => 'བརྗོད༌དོན';

  @override
  String get notFoundTitle => 'ཤོག་ངོས་མ་རྙེད།';

  @override
  String get loadingCyberBible => 'Loading དྲ་རྒྱའི་བཱ་ཡི་བཱལ་...';

  @override
  String get couldNotOpenDatabase =>
      'བཱའི་བཱལ་གནད་སྡུད་གཞི་རྟེན་ ཁ་ཕྱེ་མ་ཚུགས། ལོག་སྟེ་འབད་རྩོལ་བསྐྱེད་གནང་།';

  @override
  String get homeTagline =>
      'རིན་མེད་དང་ ཁ་ཕྱེ་ཡོད་པའི་ བཱ་ཡི་བཱལ་སློབ་སྦྱོང་གི་མཉེན་ཆས་ཅིག';

  @override
  String get readTheBible => 'གསུང་རབ་ལྷག།';

  @override
  String get settingsTooltip => 'སྒྲིག་སྟངས་ཚུ།';

  @override
  String get themeChoose => 'བརྗོད་དོན་གདམ་ཁ་རྐྱབས།';

  @override
  String get customThemes => 'སྲོལ་སྒྲིག་འབད་བཏུབ་པའི་བརྗོད་དོན་ཚུ།';

  @override
  String get customThemesSubtitle =>
      'སྐད་གདངས་ཚོས་གཞི་གདམ་ཁ་རྐྱབ་ནི་ལུ་ ཤོག་བྱང་ཅིག་ཨེབ་གཏང་། \"Classic White\" གིས་ འོད་དང་གནགཔོ་ དེ་ལས་ རིམ་ལུགས་ཐབས་ལམ་ཚུ་ལུ་ཡང་རྒྱབ་སྐྱོར་འབདཝ་ཨིན།';

  @override
  String get setThemesLabel => 'བརྗོད་དོན་ཚུ་གཞི་སྒྲིག་འབད།';

  @override
  String get deleteBookmarkDialog => 'དེབ་རྟགས་བཏོན་གཏང་ནི་ཨིན་ན?';

  @override
  String removeBookmarkMessage(Object details, Object reference) {
    return '\"སི་བི་ཝི་པི་ལེསི་ཧོལཌར་༠ཊོ་ཀེན\"སི་བི་ཝི་པི་ལེསི་ཧོལཌར་༡ཊོ་ཀེན་རྩ་བསྐྲད་གཏང་ནི་ཨིན་ན?\n\nའདི་བཤོལ་མི་བཏུབ། $reference $details';
  }

  @override
  String get couldNotLoadBookmarks =>
      'དེབ་རྟགས་ཚུ་མངོན་གསལ་འབད་མ་ཚུགས། ལོག་སྟེ་འབད་རྩོལ་བསྐྱེད་གནང་།';

  @override
  String get bookmarkSavedMessage => 'དེབ་རྟགས་སྲུང་བཞག་འབད་ཡོདཔ།';

  @override
  String get couldNotSaveBookmark => 'དེབ་རྟགས་སྲུང་བཞག་འབད་མ་ཚུགས།';

  @override
  String get noBookmarksMatchFilter =>
      'དེབ་རྟགས་ཚུ་ཚགས་མ་འདི་དང་མཐུན་སྒྲིག་མེདཔ་ཨིན།';

  @override
  String get clearFilter => 'ཚགས་མ་བསལ།';

  @override
  String get traditionalOrderLabel => 'སྲོལ་རྒྱུན་གྱི་གོ་རིམ།';

  @override
  String get alphabeticalOrderLabel => 'ཡི་གུའི་གོ་རིམ།';

  @override
  String get bookmarksTabLabel => 'དེབ་རྟགས།';

  @override
  String get fullChapter => 'ལེའུ་ཆ་ཚང་།';

  @override
  String get addBookmark => 'དེབ་རྟགས་ཁ་སྐོང་རྐྱབས།';

  @override
  String get selectVerse => 'ཚིགས་བཅད་སེལ་འཐུ་འབད།';

  @override
  String get labelOptional => 'ཁ་ཡིག་ (གདམ་ཁ་ཅན་)';

  @override
  String get notesOptional => 'དྲན་འཛིན་ཚུ་ (གདམ་ཁ་ཅན་)།';

  @override
  String get save => 'སྲུང༌སྐྱོབས༌འབད༌བ';

  @override
  String get goToVerse => 'ཚིག་ཕྲད་ལུ་འགྱོ།';

  @override
  String verseTitle(Object verse) {
    return 'Verse $verse';
  }

  @override
  String chapterTitle(Object chapter) {
    return 'ལེའུ་ སི་བྷི་ཝི་པི་ལེསི་ཧོལ་ཌར་༠ཊོ་ཀེན། $chapter';
  }

  @override
  String get switchToFullChapter => 'ལེའུ་ཆ་ཚང་དེབ་རྟགས་ལུ་སོར་བསྒྱུར་འབད།';

  @override
  String get bookmarkSheetCancel => 'ཆ་མེད་གཏང་ དེབ་རྟགས་ཤོག་ལེབ་ཁ་བསྡམས།';

  @override
  String get pickCustomAccent => 'སྲོལ་སྒྲིག་སྒྲ་གདངས་གདམ་ཁ་རྐྱབས།';

  @override
  String get apply => 'བཙུགས་ནི';

  @override
  String get custom => 'ལུགས་སྲོལ';

  @override
  String get brightnessSystem => 'ལམ༌ལུགས';

  @override
  String get brightnessLight => 'ཡང་འཕྲོས་འཕྲོས';

  @override
  String get brightnessDark => 'གནག་དུང་དུ';

  @override
  String get selectBook => 'ཀི་དེབ་ཅིག་སེལ་འཐུ་འབད།';

  @override
  String get bookmarkFilterAll => 'གེ་ར';

  @override
  String get bookmarkFilterUnlabeled => 'མིང་བཏགས་མེད།';

  @override
  String get bookmarkSortRecent => 'འཕྲལ་གྱི་དང་པོ།';

  @override
  String get bookmarkSortCanonical => 'ཁྲིམས་མཐུན་གོ་རིམ།';

  @override
  String get chapterRetry => 'ཡང་བསྐྱར་འབད་རྩོལ་བསྐྱེད།';

  @override
  String get fontSize => 'ཡིག་གཟུགས་ཚད་གཞི།';

  @override
  String fontSizePixels(Object size) {
    return 'CBVPཔ་ལེསི་ཧོལ་ཌར་༠ཊོ་ཀེན་ px $size';
  }

  @override
  String get fontSizeSlider => 'ཡིག་གཟུགས་ཀྱི་ཚད་བཤུད་བརྙན།';

  @override
  String get fontSizeSliderHint => '༡༢ ལས་ ༢༨ ལུ་བདེ་སྒྲིག་འབད་ནི་ལུ་ བཤུད།';

  @override
  String get fontPreview =>
      '\"འགོ་ཐོག་ལུ་དཀོན་མཆོག་གིས་ཞིང་ཁམས་དང་ས་གཞི་བཟོ་གནང་ནུག\" — འབྱུང་ཁུངས་ ༡:༡ .';

  @override
  String get showVerseNumbersSubtitle =>
      'ལྷག་ནིའི་གསལ་གཞི་ནང་ལུ་ ཚིགས་བཅད་ཨང་གྲངས་ཀྱི་སྟེང་ཡིག་ཚུ་སྟོན།';

  @override
  String get showSectionHeadingsSubtitle =>
      'དོན་ཚན་ཚུ་གི་བར་ན་ དབྱེ་ཚན་དང་ ཚིག་མཛོད་ཀྱི་མགོ་ཡིག་ཚུ་སྟོན།';

  @override
  String get wordsOfChristSubtitle =>
      'ཡེ་ཤུའི་གསུང་དམརཔོ་སྦེ་སྟོན། ཚིག་ཡིག་ཚོས་གཞི་རྐྱང་པའི་དོན་ལུ་ལྕོགས་མིན་བཟོ།';

  @override
  String get verseFormatTitle => 'ཚིགས་བཅད་ཀྱི་རྣམ་པ།';

  @override
  String get verseFormatSubtitle =>
      'ཡིག་ཆའི་ཚིག་ཡིག་ག་དེ་སྦེ་བཀོད་ཡོདཔ་ཨིན་ན་གདམ་ཁ་རྐྱབས།';

  @override
  String get paragraphMode => 'དོན་ཚན།';

  @override
  String get verseListMode => 'ཚིགས་བཅད་ཐོ་ཡིག།';

  @override
  String get paragraphModeTooltip => 'དོན་མཚམས་ཐབས་ལམ།';

  @override
  String get verseListModeTooltip => 'ཚིགས་བཅད་-ཐོ་ཡིག་ཐབས་ལམ།';

  @override
  String get paragraphModeDescription =>
      'ཚིག་ཡིག་འདི་ དཔར་བསྐྲུན་འབད་ཡོད་པའི་ བཱ་ཡི་བཱལ་བཟུམ་སྦེ་ ནང་འཁོད་དོན་མཚམས་ཚུ་དང་གཅིག་ཁར་ འཕྲོ་མཐུད་དེ་རང་ འགྱོཝ་ཨིན།';

  @override
  String get verseListModeDescription =>
      'ཚིག་ཕྲེང་རེ་རེ་བཞིན་དུ་ རང་སོའི་གྲལ་ཐིག་ནང་ལས་འགོ་བཙུགས་ཏེ་ ཚིག་ཕྲེང་སྡེ་ཚན་ཚུ་ འཇམ་ཏོང་ཏོ་སྦེ་ མཐོང་ཚུགསཔ་ཨིན།';

  @override
  String get deleteBookmarkTooltip => 'དེབ་རྟགས་བཏོན་གཏང་།';

  @override
  String deleteBookmarkSemantics(Object reference) {
    return 'དེབ་རྟགས་ $reference བཏོན་གཏང་།';
  }

  @override
  String sortBookmarksTooltip(Object sortOrder) {
    return 'དབྱེ་སེལ་: སི་བྷི་ཝི་པི་ལེསི་ཧོལ་ཌར་༠ཊོ་ཀེན། $sortOrder';
  }

  @override
  String get noBookmarksYet => 'ད་ལྟོ་དེབ་རྟགས་མེད།';

  @override
  String get noBookmarksYetHint =>
      'གནས་ཁོངས་ཅིག་སྲུང་བཞག་འབད་ནི་ལུ་ལྷག་པའི་སྐབས་ དེབ་རྟགས་ངོས་དཔར་འདི་ཨེབ་གཏང་།';

  @override
  String bookmarkReferenceNavigationError(Object reference) {
    return '$reference ལུ་འགྲུལ་བསྐྱོད་འབད་མ་ཚུགས།';
  }

  @override
  String themeCardSemantics(Object description, Object name, Object selected) {
    return '$name $selected $description';
  }

  @override
  String get selectedThemeSuffix => ', ད་ལྟོ་སེལ་འཐུ་འབད་ཡོདཔ།';

  @override
  String get customisableAccentDescription =>
      'སྲོལ་སྒྲིག་འབད་བཏུབ་པའི་སྐད་གདངས་ཚོས་གཞི།';

  @override
  String get fixedPaletteDescription => 'གཏན་འཁེལ་གྱི་ཐིག་ཁྲམ།';

  @override
  String accentColourTitle(Object themeName) {
    return 'སྐད་གདངས་ཚོས་གཞི་ — $themeName';
  }

  @override
  String get brightnessMode => 'འོད་མདངས་ཐབས་ལམ།';

  @override
  String get lightMode => 'འོད་ཐབས་ལམ།';

  @override
  String get followSystemMode => 'རིམ་ལུགས་ཐབས་ལམ་རྗེས་སུ་འཇུག།';

  @override
  String get darkMode => 'གནགཔོ་གི་ཐབས་ལམ།';

  @override
  String get customColourPicker => 'སྲོལ་སྒྲིག་ཚོས་གཞི་འདེམས་བྱེད་པ།';

  @override
  String get customColourTooltip => 'སྲོལ་སྒྲིག་ཚོས་གཞི་...';

  @override
  String get couldNotLoadBooks =>
      'ཀི་དེབ་ཐོ་ཡིག་མངོན་གསལ་འབད་མ་ཚུགས། ལོག་སྟེ་འབད་རྩོལ་བསྐྱེད་གནང་།';

  @override
  String chapterLabel(Object chapter) {
    return 'ལེའུ་ སི་བྷི་ཝི་པི་ལེསི་ཧོལ་ཌར་༠ཊོ་ཀེན། $chapter';
  }

  @override
  String get traditionalOrderBooks => 'སྲོལ་རྒྱུན་གྱི་མངགས་ཉོའི་དེབ།';

  @override
  String get alphabeticalOrderBooks => 'ཡི་གུའི་གོ་རིམ་གྱི་དཔེ་དེབ།';

  @override
  String get home => 'ཁྱིམ';

  @override
  String get addBookmarkTooltip => 'དེབ་རྟགས་ཁ་སྐོང་རྐྱབས།';

  @override
  String get chooseBookChapter => 'དེབ་དང་ལེའུ་འདེམས།';

  @override
  String get chooseVerse => 'ཚིག་རྐང་འདེམས།';

  @override
  String get bookChapterQuickNavigation => 'དཔེ་དེབ་དང་ལེའུ་མྱུར་འགྲོ།';

  @override
  String get verseQuickNavigation => 'Verse མགྱོགས་འགྲོ།';

  @override
  String get backToBooks => 'དེབ་ཚུ་ནང་ལོག་འགྱོ།';

  @override
  String get selectBookTitle => 'དེབ་སེལ་འཐུ་འབད།';

  @override
  String selectChapterTitle(Object bookName) {
    return 'ལེའུ་ (སི་བི་ཝི་པི་ལེསི་ཧོལ་ཌར་༠ཊོ་ཀེན་) སེལ་འཐུ་འབད། $bookName';
  }

  @override
  String chapterSelectionLabel(Object chapter) {
    return 'ལེའུ་ སི་བྷི་ཝི་པི་ལེསི་ཧོལ་ཌར་༠ཊོ་ཀེན། $chapter';
  }

  @override
  String verseSelectionLabel(Object verse) {
    return 'Verse $verse';
  }

  @override
  String fullChapterReference(Object bookName, Object chapter) {
    return 'ལེའུ་ཆ་ཚང་།: སི་བྷི་ཝི་པི་ལེསི་ཧོལ་ཌར་༠ཊོ་ཀེན། $bookName $chapter';
  }

  @override
  String get memorizeHint => 'བློ་ལུ་བཞག་ནི།';

  @override
  String get addNoteHint => 'དྲན་ཐོ་ཁ་སྐོང་རྐྱབས།...';

  @override
  String get languageSearchHint => 'སྐད་ཡིག་འཚོལ་ཞིབ།';

  @override
  String get languageModuleInstalled => 'གཞི་བཙུགས་འབད་ཡོདཔ།';

  @override
  String get languageModulePending => 'འཕྲུལ་ཆས་སྐད་སྒྱུར་བསྒུག་སྡོད་ཡོདཔ།';

  @override
  String get languageNoMatches =>
      'ཁྱོད་ཀྱི་འཚོལ་ཞིབ་དང་མཐུན་པའི་སྐད་ཡིག་གཅིག་ཡང་མེད།';

  @override
  String get languageCatalogDescription =>
      'གཞི་བཙུགས་འབད་ཡོད་པའི་རྟགས་བཀལ་ཡོད་པའི་སྐད་ཡིག་ཚུ་ ཨོཕ་ལ་ཡིན་ནང་ལཱ་འབདཝ་ཨིན། སྐད་ཡིག་གཞན་ཚུ་ འཕྲུལ་ཆས་སྐད་སྒྱུར་འབད་ཡོད་པའི་ཚད་གཞི་སྦེ་ཁ་སྐོང་བརྐྱབ་འོང་།';

  @override
  String get saveBookmarkSemantics => 'དེབ་རྟགས་སྲུངས།';

  @override
  String get couldNotLoadChapter =>
      'ལེའུ་མངོན་གསལ་འབད་མ་ཚུགས། ལོག་སྟེ་འབད་རྩོལ་བསྐྱེད་གནང་།';

  @override
  String get couldNotLoadChapters =>
      'ལེའུ་ཚུ་མངོན་གསལ་འབད་མ་ཚུགས། ལོག་སྟེ་འབད་རྩོལ་བསྐྱེད་གནང་།';

  @override
  String verseWithText(Object text, Object verse) {
    return 'Verse སི་བི་ཝི་པི་ལེསི་ཧོལ་ཌར་༠ཊོཀེན་: $verse $text';
  }

  @override
  String accentSwatchSemantics(Object name, Object selected) {
    return '$name སྐད་གདངས་ཚོས་གཞི། $selected';
  }

  @override
  String get oldTestament => 'ཁ་ཆེམས་རྙིངམ།';

  @override
  String get newTestament => 'ཁ་ཆེམས་གསརཔ།';

  @override
  String get deuterocanonApocrypha => 'ཌིའུ་ཊོ་ཀ་ནོན་ / ཨ་པོ་ཀི་རི་ཕ།';
}
