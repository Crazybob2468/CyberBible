// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Dogri (`doi`).
class AppLocalizationsDoi extends AppLocalizations {
  AppLocalizationsDoi([String locale = 'doi']) : super(locale);

  @override
  String get settingsTitle => 'सैटिंग';

  @override
  String get languageSection => 'भाशा';

  @override
  String get useSystemLanguage => 'सिस्टम दी भाशा बरतो';

  @override
  String get useSystemLanguageSubtitle =>
      'डिवाइस दी भाशा गी डिफॉल्ट भाशा दे तौर पर बरतो।';

  @override
  String get currentLanguage => 'मौजूदा भाशा';

  @override
  String get appLanguage => 'ऐप दी भाशा';

  @override
  String get chooseLanguage => 'भाशा चुनो';

  @override
  String get theme => 'थीम';

  @override
  String get appearance => 'रूप';

  @override
  String get textSection => 'लिखत';

  @override
  String get readingFormatSection => 'पढ़ने दा फॉर्मेट';

  @override
  String get displaySection => 'दिखावा';

  @override
  String get verseNumbers => 'आयत दे नंबर';

  @override
  String get sectionHeadings => 'खंड दे सिरलेख';

  @override
  String get redLetterText => 'लाल लिखत';

  @override
  String get selectABook => 'किताब चुनो';

  @override
  String get traditionalOrder => 'रिवायती क्रम';

  @override
  String get alphabeticalOrder => 'अक्षर क्रम';

  @override
  String get bookmarks => 'निशान';

  @override
  String get retry => 'फ्ही कोशिश करो';

  @override
  String get chooseTheme => 'थीम चुनो';

  @override
  String get customisableThemes => 'बदलने-जोग थीमां';

  @override
  String get customisableThemesSubtitle =>
      'हाइलाइट रंग चुनने आस्तै कार्ड पर टैप करो। \"Classic White\" हल्के, गहरे ते सिस्टम मोडां दा समर्थन करदा ऐ।';

  @override
  String get setThemes => 'पक्कियां थीमां';

  @override
  String get setThemesSubtitle =>
      'ध्यान कन्नै बनाई दियां पक्कियां रंग-पट्टियां। बदलाव जरूरी नेईं; लागू करने आस्तै टैप करो।';

  @override
  String get deleteBookmarkQuestion => 'निशान मिटाना ऐ?';

  @override
  String get cancel => 'रद्द करो';

  @override
  String get delete => 'मिटाओ';

  @override
  String get bookmarkSaved => 'निशान संभाल लैता';

  @override
  String get couldNotDeleteBookmark => 'निशान मिटाया नेईं जाई सकेआ।';

  @override
  String couldNotNavigate(Object reference) {
    return '$reference पर जाना नेईं होआ।';
  }

  @override
  String get pageNotFound => 'पन्ना नेईं लब्भेआ';

  @override
  String noRouteDefined(Object routeName) {
    return '\"$routeName\" लेई कोई रस्ता तय नेईं';
  }

  @override
  String get english => 'अंग्रेजी';

  @override
  String get spanish => 'स्पेनी';

  @override
  String get systemDefault => 'सिस्टम डिफॉल्ट';

  @override
  String get languageStatusEnglish =>
      'अंग्रेजी बदली भाशा दे तौर पर बरती जा करदी ऐ';

  @override
  String get languageStatusSystem => 'सिस्टम दी भाशा बरती जा करदी ऐ';

  @override
  String languageStatusSelected(Object languageName) {
    return 'चुनी दी भाशा: $languageName';
  }

  @override
  String get themeLabel => 'थीम';

  @override
  String get notFoundTitle => 'पन्ना नेईं लब्भेआ';

  @override
  String get loadingCyberBible => 'Cyber Bible लोड होआ करदी ऐ...';

  @override
  String get couldNotOpenDatabase =>
      'बाइबल डेटाबेस खोलना नेईं होआ। फ्ही कोशिश करो।';

  @override
  String get homeTagline => 'बाइबल पढ़ने लेई मुफ्त ते ओपन-सोर्स ऐप';

  @override
  String get readTheBible => 'बाइबल पढ़ो';

  @override
  String get settingsTooltip => 'सैटिंग';

  @override
  String get themeChoose => 'थीम चुनो';

  @override
  String get customThemes => 'बदलने-जोग थीमां';

  @override
  String get customThemesSubtitle =>
      'हाइलाइट रंग चुनने आस्तै कार्ड पर टैप करो। \"Classic White\" हल्के, गहरे ते सिस्टम मोडां दा समर्थन करदा ऐ।';

  @override
  String get setThemesLabel => 'पक्कियां थीमां';

  @override
  String get deleteBookmarkDialog => 'निशान मिटाना ऐ?';

  @override
  String removeBookmarkMessage(Object details, Object reference) {
    return '\"$reference\"$details हटाना ऐ?\n\nएह् कम्म वापस नेईं होई सकदा।';
  }

  @override
  String get couldNotLoadBookmarks => 'निशान लोड नेईं होई सके। फ्ही कोशिश करो।';

  @override
  String get bookmarkSavedMessage => 'निशान संभाल लैता';

  @override
  String get couldNotSaveBookmark => 'निशान संभालना नेईं होआ।';

  @override
  String get noBookmarksMatchFilter =>
      'इस फ़िल्टर कन्नै कोई निशान मेल नेईं खंदा।';

  @override
  String get clearFilter => 'फ़िल्टर साफ करो';

  @override
  String get traditionalOrderLabel => 'रिवायती क्रम';

  @override
  String get alphabeticalOrderLabel => 'अक्षर क्रम';

  @override
  String get bookmarksTabLabel => 'निशान';

  @override
  String get fullChapter => 'पूरा अध्याय';

  @override
  String get addBookmark => 'निशान जोड़ो';

  @override
  String get selectVerse => 'आयत चुनो';

  @override
  String get labelOptional => 'लेबल (वैकल्पिक)';

  @override
  String get notesOptional => 'नोट (वैकल्पिक)';

  @override
  String get save => 'संभालो';

  @override
  String get goToVerse => 'आयत पर जाओ';

  @override
  String verseTitle(Object verse) {
    return 'आयत $verse';
  }

  @override
  String chapterTitle(Object chapter) {
    return 'अध्याय $chapter';
  }

  @override
  String get switchToFullChapter => 'पूरे अध्याय दे निशान पर बदलो';

  @override
  String get bookmarkSheetCancel => 'रद्द करो ते निशान पैनल बंद करो';

  @override
  String get pickCustomAccent => 'अपना हाइलाइट रंग चुनो';

  @override
  String get apply => 'लागू करो';

  @override
  String get custom => 'अपना';

  @override
  String get brightnessSystem => 'सिस्टम';

  @override
  String get brightnessLight => 'हल्का';

  @override
  String get brightnessDark => 'गहरा';

  @override
  String get selectBook => 'किताब चुनो';

  @override
  String get bookmarkFilterAll => 'सारे';

  @override
  String get bookmarkFilterUnlabeled => 'बिना लेबल';

  @override
  String get bookmarkSortRecent => 'नमें पैह्लें';

  @override
  String get bookmarkSortCanonical => 'कैनन क्रम';

  @override
  String get chapterRetry => 'फ्ही कोशिश करो';

  @override
  String get fontSize => 'अक्षर दा आकार';

  @override
  String fontSizePixels(Object size) {
    return '$size px';
  }

  @override
  String get fontSizeSlider => 'अक्षर आकार स्लाइडर';

  @override
  String get fontSizeSliderHint => '12 थमां 28 तगर बदलने लेई खिसकाओ';

  @override
  String get fontPreview =>
      '\"शुरू च परमात्मा ने आकाश ते धरती बनाई।\" — उत्पत्ति 1:1';

  @override
  String get showVerseNumbersSubtitle => 'पढ़ने आह्ले पर्दे पर आयत नंबर दिखाओ।';

  @override
  String get showSectionHeadingsSubtitle =>
      'लेखां दे बिच्च खंड ते भजन-संग्रह दे सिरलेख दिखाओ।';

  @override
  String get wordsOfChristSubtitle =>
      'यीशु दे बोल लाल रंग च दिखाओ। सारे लिखत लेई इक रंग चाहिदा तां बंद करो।';

  @override
  String get verseFormatTitle => 'आयत फॉर्मेट';

  @override
  String get verseFormatSubtitle => 'पवित्र लेख दी सजावट चुनो।';

  @override
  String get paragraphMode => 'पैराग्राफ';

  @override
  String get verseListMode => 'आयत सूची';

  @override
  String get paragraphModeTooltip => 'पैराग्राफ मोड';

  @override
  String get verseListModeTooltip => 'आयत सूची मोड';

  @override
  String get paragraphModeDescription =>
      'लिखत छपी दी बाइबल आंगर अंदर मुड़े पैराग्राफां च लगातार चलदी ऐ।';

  @override
  String get verseListModeDescription =>
      'पवित्र लेख दा हर पैराग्राफ अपनी लाइन पर शुरू होंदा ऐ, इस कन्नै आयत-समूह साफ दिखदे न।';

  @override
  String get deleteBookmarkTooltip => 'निशान मिटाओ';

  @override
  String deleteBookmarkSemantics(Object reference) {
    return '$reference दा निशान मिटाओ';
  }

  @override
  String sortBookmarksTooltip(Object sortOrder) {
    return 'क्रम: $sortOrder';
  }

  @override
  String get noBookmarksYet => 'अज्जे कोई निशान नेईं।';

  @override
  String get noBookmarksYetHint =>
      'जगह संभालने आस्तै पढ़दे बेल्लै निशान आइकन पर टैप करो।';

  @override
  String bookmarkReferenceNavigationError(Object reference) {
    return '$reference पर जाना नेईं होआ।';
  }

  @override
  String themeCardSemantics(Object description, Object name, Object selected) {
    return '$name थीम$selected. $description';
  }

  @override
  String get selectedThemeSuffix => ', हून चुनी गेई';

  @override
  String get customisableAccentDescription => 'बदलने-जोग हाइलाइट रंग।';

  @override
  String get fixedPaletteDescription => 'पक्की रंग-पट्टी।';

  @override
  String accentColourTitle(Object themeName) {
    return 'हाइलाइट रंग — $themeName';
  }

  @override
  String get brightnessMode => 'चमक मोड';

  @override
  String get lightMode => 'हल्का मोड';

  @override
  String get followSystemMode => 'सिस्टम मोड दा पालन करो';

  @override
  String get darkMode => 'गहरा मोड';

  @override
  String get customColourPicker => 'अपना रंग चुनने आह्ला';

  @override
  String get customColourTooltip => 'अपना रंग...';

  @override
  String get couldNotLoadBooks =>
      'किताबां दी सूची लोड नेईं होई। फ्ही कोशिश करो।';

  @override
  String chapterLabel(Object chapter) {
    return 'अध्याय $chapter';
  }

  @override
  String get traditionalOrderBooks => 'रिवायती क्रम च किताबां';

  @override
  String get alphabeticalOrderBooks => 'अक्षर क्रम च किताबां';

  @override
  String get home => 'घर';

  @override
  String get addBookmarkTooltip => 'निशान जोड़ो';

  @override
  String get chooseBookChapter => 'किताब ते अध्याय चुनो';

  @override
  String get chooseVerse => 'आयत चुनो';

  @override
  String get bookChapterQuickNavigation => 'किताब ते अध्याय पर जल्दी जाओ';

  @override
  String get verseQuickNavigation => 'आयत पर जल्दी जाओ';

  @override
  String get backToBooks => 'किताबां पर वापस जाओ';

  @override
  String get selectBookTitle => 'किताब चुनो';

  @override
  String selectChapterTitle(Object bookName) {
    return 'अध्याय चुनो ($bookName)';
  }

  @override
  String chapterSelectionLabel(Object chapter) {
    return 'अध्याय $chapter';
  }

  @override
  String verseSelectionLabel(Object verse) {
    return 'आयत $verse';
  }

  @override
  String fullChapterReference(Object bookName, Object chapter) {
    return 'पूरा अध्याय: $bookName $chapter';
  }

  @override
  String get memorizeHint => 'याद करो';

  @override
  String get addNoteHint => 'नोट जोड़ो...';

  @override
  String get languageSearchHint => 'भाशां खोजो';

  @override
  String get languageModuleInstalled => 'इंस्टॉल';

  @override
  String get languageModulePending => 'मशीन अनुवाद बाकी ऐ';

  @override
  String get languageNoMatches => 'तुआढ़ी खोज कन्नै कोई भाशा मेल नेईं खंदी।';

  @override
  String get languageCatalogDescription =>
      'इंस्टॉल भाशां बिना इंटरनेट कम्म करदियां न। होर भाशां मशीन-अनुवाद मॉड्यूल दे रूप च जुड़नगियां।';

  @override
  String get saveBookmarkSemantics => 'निशान संभालो';

  @override
  String get couldNotLoadChapter => 'अध्याय लोड नेईं होआ। फ्ही कोशिश करो।';

  @override
  String get couldNotLoadChapters => 'अध्याय लोड नेईं होए। फ्ही कोशिश करो।';

  @override
  String verseWithText(Object text, Object verse) {
    return 'आयत $verse: $text';
  }

  @override
  String accentSwatchSemantics(Object name, Object selected) {
    return '$name हाइलाइट रंग$selected';
  }

  @override
  String get oldTestament => 'पुराना नियम';

  @override
  String get newTestament => 'नया नियम';

  @override
  String get deuterocanonApocrypha => 'ड्यूटेरोकैनन / अपोक्रिफा';
}
