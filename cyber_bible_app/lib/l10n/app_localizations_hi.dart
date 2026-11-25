// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Hindi (`hi`).
class AppLocalizationsHi extends AppLocalizations {
  AppLocalizationsHi([String locale = 'hi']) : super(locale);

  @override
  String get settingsTitle => 'सेटिंग्स';

  @override
  String get languageSection => 'भाषा';

  @override
  String get useSystemLanguage => 'सिस्टम भाषा का उपयोग करें';

  @override
  String get useSystemLanguageSubtitle => 'डिवाइस की भाषा को डिफ़ॉल्ट बनाएं।';

  @override
  String get currentLanguage => 'वर्तमान भाषा';

  @override
  String get appLanguage => 'ऐप की भाषा';

  @override
  String get chooseLanguage => 'भाषा चुनें';

  @override
  String get theme => 'थीम';

  @override
  String get appearance => 'रूप';

  @override
  String get textSection => 'पाठ';

  @override
  String get readingFormatSection => 'पठन प्रारूप';

  @override
  String get displaySection => 'प्रदर्शन';

  @override
  String get verseNumbers => 'पद संख्या';

  @override
  String get sectionHeadings => 'खंड शीर्षक';

  @override
  String get redLetterText => 'लाल अक्षर वाला पाठ';

  @override
  String get selectABook => 'पुस्तक चुनें';

  @override
  String get traditionalOrder => 'पारंपरिक क्रम';

  @override
  String get alphabeticalOrder => 'वर्णमाला क्रम';

  @override
  String get bookmarks => 'बुकमार्क';

  @override
  String get retry => 'फिर कोशिश करें';

  @override
  String get chooseTheme => 'थीम चुनें';

  @override
  String get customisableThemes => 'अनुकूलन योग्य थीम';

  @override
  String get customisableThemesSubtitle =>
      'उच्चारण रंग चुनने के लिए कार्ड पर टैप करें। Classic White में हल्का, गहरा और सिस्टम मोड भी उपलब्ध है।';

  @override
  String get setThemes => 'निश्चित थीम';

  @override
  String get setThemesSubtitle =>
      'हाथ से बनाए गए निश्चित पैलेट। अनुकूलन की आवश्यकता नहीं — लागू करने के लिए टैप करें।';

  @override
  String get deleteBookmarkQuestion => 'बुकमार्क हटाएं?';

  @override
  String get cancel => 'रद्द करें';

  @override
  String get delete => 'हटाएं';

  @override
  String get bookmarkSaved => 'बुकमार्क सहेजा गया';

  @override
  String get couldNotDeleteBookmark => 'बुकमार्क हटाया नहीं जा सका।';

  @override
  String couldNotNavigate(Object reference) {
    return '$reference पर नहीं जा सके।';
  }

  @override
  String get pageNotFound => 'पृष्ठ नहीं मिला';

  @override
  String noRouteDefined(Object routeName) {
    return '\"$routeName\" के लिए कोई मार्ग परिभाषित नहीं है';
  }

  @override
  String get english => 'अंग्रेज़ी';

  @override
  String get spanish => 'स्पेनिश';

  @override
  String get systemDefault => 'सिस्टम डिफ़ॉल्ट';

  @override
  String get languageStatusEnglish => 'अंग्रेज़ी फ़ॉलबैक सक्रिय';

  @override
  String get languageStatusSystem => 'सिस्टम भाषा का उपयोग हो रहा है';

  @override
  String languageStatusSelected(Object languageName) {
    return 'चयनित भाषा: $languageName';
  }

  @override
  String get themeLabel => 'थीम';

  @override
  String get notFoundTitle => 'पृष्ठ नहीं मिला';

  @override
  String get loadingCyberBible => 'Cyber Bible लोड हो रहा है...';

  @override
  String get couldNotOpenDatabase =>
      'बाइबल डेटाबेस नहीं खुल सका। कृपया फिर कोशिश करें।';

  @override
  String get homeTagline => 'बाइबल अध्ययन के लिए एक निःशुल्क और ओपन सोर्स ऐप';

  @override
  String get readTheBible => 'बाइबल पढ़ें';

  @override
  String get settingsTooltip => 'सेटिंग्स';

  @override
  String get themeChoose => 'थीम चुनें';

  @override
  String get customThemes => 'अनुकूलन योग्य थीम';

  @override
  String get customThemesSubtitle =>
      'उच्चारण रंग चुनने के लिए कार्ड पर टैप करें। Classic White में हल्का, गहरा और सिस्टम मोड भी उपलब्ध है।';

  @override
  String get setThemesLabel => 'निश्चित थीम';

  @override
  String get deleteBookmarkDialog => 'बुकमार्क हटाएं?';

  @override
  String removeBookmarkMessage(Object details, Object reference) {
    return '\"$reference\"$details हटाएं?\n\nइसे पूर्ववत नहीं किया जा सकता।';
  }

  @override
  String get couldNotLoadBookmarks =>
      'बुकमार्क लोड नहीं हो सके। कृपया फिर कोशिश करें।';

  @override
  String get bookmarkSavedMessage => 'बुकमार्क सहेजा गया';

  @override
  String get couldNotSaveBookmark => 'बुकमार्क सहेजा नहीं जा सका।';

  @override
  String get noBookmarksMatchFilter =>
      'इस फ़िल्टर से कोई बुकमार्क मेल नहीं खाता।';

  @override
  String get clearFilter => 'फ़िल्टर साफ़ करें';

  @override
  String get traditionalOrderLabel => 'पारंपरिक क्रम';

  @override
  String get alphabeticalOrderLabel => 'वर्णमाला क्रम';

  @override
  String get bookmarksTabLabel => 'बुकमार्क';

  @override
  String get fullChapter => 'पूरा अध्याय';

  @override
  String get addBookmark => 'बुकमार्क जोड़ें';

  @override
  String get selectVerse => 'पद चुनें';

  @override
  String get labelOptional => 'लेबल (वैकल्पिक)';

  @override
  String get notesOptional => 'नोट्स (वैकल्पिक)';

  @override
  String get save => 'सहेजें';

  @override
  String get goToVerse => 'पद पर जाएं';

  @override
  String verseTitle(Object verse) {
    return 'पद $verse';
  }

  @override
  String chapterTitle(Object chapter) {
    return 'अध्याय $chapter';
  }

  @override
  String get switchToFullChapter => 'पूरे अध्याय के बुकमार्क पर जाएं';

  @override
  String get bookmarkSheetCancel => 'रद्द करें, बुकमार्क पैनल बंद करें';

  @override
  String get pickCustomAccent => 'कस्टम उच्चारण रंग चुनें';

  @override
  String get apply => 'लागू करें';

  @override
  String get custom => 'कस्टम';

  @override
  String get brightnessSystem => 'सिस्टम';

  @override
  String get brightnessLight => 'हल्का';

  @override
  String get brightnessDark => 'गहरा';

  @override
  String get selectBook => 'पुस्तक चुनें';

  @override
  String get bookmarkFilterAll => 'सभी';

  @override
  String get bookmarkFilterUnlabeled => 'बिना लेबल';

  @override
  String get bookmarkSortRecent => 'हाल के पहले';

  @override
  String get bookmarkSortCanonical => 'कैनोनिकल क्रम';

  @override
  String get chapterRetry => 'फिर कोशिश करें';

  @override
  String get fontSize => 'फ़ॉन्ट आकार';

  @override
  String fontSizePixels(Object size) {
    return '$size px';
  }

  @override
  String get fontSizeSlider => 'फ़ॉन्ट आकार स्लाइडर';

  @override
  String get fontSizeSliderHint =>
      '12 से 28 तक समायोजित करने के लिए स्वाइप करें';

  @override
  String get fontPreview =>
      '\"आरंभ में परमेश्वर ने आकाश और पृथ्वी की सृष्टि की।\" — उत्पत्ति 1:1';

  @override
  String get showVerseNumbersSubtitle => 'पठन स्क्रीन पर पद संख्या दिखाएं।';

  @override
  String get showSectionHeadingsSubtitle =>
      'पाठों के बीच खंड और भजन शीर्षक दिखाएं।';

  @override
  String get wordsOfChristSubtitle =>
      'यीशु के शब्द लाल रंग में दिखाएं। एक ही पाठ रंग के लिए बंद करें।';

  @override
  String get verseFormatTitle => 'पद प्रारूप';

  @override
  String get verseFormatSubtitle =>
      'चुनें कि शास्त्र का पाठ कैसे व्यवस्थित हो।';

  @override
  String get paragraphMode => 'अनुच्छेद';

  @override
  String get verseListMode => 'पद सूची';

  @override
  String get paragraphModeTooltip => 'अनुच्छेद मोड';

  @override
  String get verseListModeTooltip => 'पद सूची मोड';

  @override
  String get paragraphModeDescription =>
      'मुद्रित बाइबल की तरह पाठ इंडेंट किए गए अनुच्छेदों में लगातार बहता है।';

  @override
  String get verseListModeDescription =>
      'हर शास्त्रीय अनुच्छेद अपनी पंक्ति से शुरू होता है, जिससे पद समूह आसानी से दिखते हैं।';

  @override
  String get deleteBookmarkTooltip => 'बुकमार्क हटाएं';

  @override
  String deleteBookmarkSemantics(Object reference) {
    return 'बुकमार्क $reference हटाएं';
  }

  @override
  String sortBookmarksTooltip(Object sortOrder) {
    return 'क्रमबद्ध करें: $sortOrder';
  }

  @override
  String get noBookmarksYet => 'अभी कोई बुकमार्क नहीं है।';

  @override
  String get noBookmarksYetHint =>
      'स्थान सहेजने के लिए पढ़ते समय बुकमार्क आइकन पर टैप करें।';

  @override
  String bookmarkReferenceNavigationError(Object reference) {
    return '$reference पर नहीं जा सके।';
  }

  @override
  String themeCardSemantics(Object description, Object name, Object selected) {
    return '$name थीम$selected। $description';
  }

  @override
  String get selectedThemeSuffix => ', वर्तमान में चयनित';

  @override
  String get customisableAccentDescription => 'अनुकूलन योग्य उच्चारण रंग।';

  @override
  String get fixedPaletteDescription => 'निश्चित पैलेट।';

  @override
  String accentColourTitle(Object themeName) {
    return 'उच्चारण रंग — $themeName';
  }

  @override
  String get brightnessMode => 'चमक मोड';

  @override
  String get lightMode => 'हल्का मोड';

  @override
  String get followSystemMode => 'सिस्टम मोड का पालन करें';

  @override
  String get darkMode => 'गहरा मोड';

  @override
  String get customColourPicker => 'कस्टम रंग चयनकर्ता';

  @override
  String get customColourTooltip => 'कस्टम रंग…';

  @override
  String get couldNotLoadBooks =>
      'पुस्तकों की सूची लोड नहीं हो सकी। फिर कोशिश करें।';

  @override
  String chapterLabel(Object chapter) {
    return 'अध्याय $chapter';
  }

  @override
  String get traditionalOrderBooks => 'पारंपरिक क्रम की पुस्तकें';

  @override
  String get alphabeticalOrderBooks => 'वर्णमाला क्रम की पुस्तकें';

  @override
  String get home => 'होम';

  @override
  String get addBookmarkTooltip => 'बुकमार्क जोड़ें';

  @override
  String get chooseBookChapter => 'पुस्तक और अध्याय चुनें';

  @override
  String get chooseVerse => 'पद चुनें';

  @override
  String get bookChapterQuickNavigation => 'पुस्तक और अध्याय त्वरित नेविगेशन';

  @override
  String get verseQuickNavigation => 'पद त्वरित नेविगेशन';

  @override
  String get backToBooks => 'पुस्तकों पर वापस जाएं';

  @override
  String get selectBookTitle => 'पुस्तक चुनें';

  @override
  String selectChapterTitle(Object bookName) {
    return 'अध्याय चुनें ($bookName)';
  }

  @override
  String chapterSelectionLabel(Object chapter) {
    return 'अध्याय $chapter';
  }

  @override
  String verseSelectionLabel(Object verse) {
    return 'पद $verse';
  }

  @override
  String fullChapterReference(Object bookName, Object chapter) {
    return 'पूरा अध्याय: $bookName $chapter';
  }

  @override
  String get memorizeHint => 'याद करें';

  @override
  String get addNoteHint => 'नोट जोड़ें...';

  @override
  String get languageSearchHint => 'भाषाएं खोजें';

  @override
  String get languageModuleInstalled => 'इंस्टॉल किया गया';

  @override
  String get languageModulePending => 'मशीन अनुवाद लंबित';

  @override
  String get languageNoMatches => 'आपकी खोज से कोई भाषा मेल नहीं खाती।';

  @override
  String get languageCatalogDescription =>
      'इंस्टॉल की गई भाषाएं ऑफ़लाइन काम करती हैं। अन्य भाषाएं मशीन-अनुवादित मॉड्यूल के रूप में जोड़ी जाएंगी।';

  @override
  String get saveBookmarkSemantics => 'बुकमार्क सहेजें';

  @override
  String get couldNotLoadChapter => 'अध्याय लोड नहीं हो सका। फिर कोशिश करें।';

  @override
  String get couldNotLoadChapters => 'अध्याय लोड नहीं हो सके। फिर कोशिश करें।';

  @override
  String verseWithText(Object text, Object verse) {
    return 'पद $verse: $text';
  }

  @override
  String accentSwatchSemantics(Object name, Object selected) {
    return '$name उच्चारण रंग$selected';
  }

  @override
  String get oldTestament => 'पुराना नियम';

  @override
  String get newTestament => 'नया नियम';

  @override
  String get deuterocanonApocrypha => 'द्वितीय-कानून / अपोक्रिफा';
}
