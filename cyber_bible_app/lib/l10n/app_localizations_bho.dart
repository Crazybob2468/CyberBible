// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Bhojpuri (`bho`).
class AppLocalizationsBho extends AppLocalizations {
  AppLocalizationsBho([String locale = 'bho']) : super(locale);

  @override
  String get settingsTitle => 'सेटिंग्स के बारे में बतावल गइल बा';

  @override
  String get languageSection => 'भाखा';

  @override
  String get useSystemLanguage => 'सिस्टम भाषा के प्रयोग करीं';

  @override
  String get useSystemLanguageSubtitle =>
      'डिफ़ॉल्ट रूप से डिवाइस भाषा से मिलान करीं।';

  @override
  String get currentLanguage => 'वर्तमान भाषा के बा';

  @override
  String get appLanguage => 'ऐप भाषा के बा';

  @override
  String get chooseLanguage => 'भाषा चुनीं';

  @override
  String get theme => 'विषय';

  @override
  String get appearance => 'भेख';

  @override
  String get textSection => 'पाठ';

  @override
  String get readingFormatSection => 'पढ़े के प्रारूप बा';

  @override
  String get displaySection => 'देखावऽ';

  @override
  String get verseNumbers => 'श्लोक संख्या के बारे में बतावल गइल बा';

  @override
  String get sectionHeadings => 'खंड के शीर्षक के बारे में बतावल गइल बा';

  @override
  String get redLetterText => 'लाल-अक्षर के पाठ बा';

  @override
  String get selectABook => 'कवनो किताब के चयन करीं';

  @override
  String get traditionalOrder => 'पारंपरिक क्रम के बा';

  @override
  String get alphabeticalOrder => 'वर्णमाला के क्रम में बा';

  @override
  String get bookmarks => 'बुकमार्क के बारे में बतावल गइल बा';

  @override
  String get retry => 'दोबारा कोशिश करीं';

  @override
  String get chooseTheme => 'थीम के चयन करीं';

  @override
  String get customisableThemes =>
      'अनुकूलन योग्य विषय के बारे में बतावल गइल बा';

  @override
  String get customisableThemesSubtitle =>
      'एक्सेंट रंग चुने खातिर कवनो कार्ड पर टैप करीं. \"क्लासिक व्हाइट\" लाइट, डार्क अवुरी सिस्टम मोड के भी सपोर्ट करेला।';

  @override
  String get setThemes => 'सेट थीम के बा';

  @override
  String get setThemesSubtitle =>
      'फिक्स्ड, हाथ से बनावल पैलेट। कवनो अनुकूलन के जरूरत नइखे — बस लागू करे खातिर टैप करीं.';

  @override
  String get deleteBookmarkQuestion => 'बुकमार्क हटावे के बा?';

  @override
  String get cancel => 'मना कइ दीं';

  @override
  String get delete => 'हटाईं';

  @override
  String get bookmarkSaved => 'बुकमार्क सेव हो गइल बा';

  @override
  String get couldNotDeleteBookmark => 'बुकमार्क हटावल ना जा सकल.';

  @override
  String couldNotNavigate(Object reference) {
    return '$reference पर नेविगेट ना हो पावल।';
  }

  @override
  String get pageNotFound => 'पन्ना ना मिलल बा';

  @override
  String noRouteDefined(Object routeName) {
    return '\"$routeName\" खातिर कवनो रूट परिभाषित ना कइल गइल।';
  }

  @override
  String get english => 'अंगरेजी';

  @override
  String get spanish => 'स्पैनिश के बा';

  @override
  String get systemDefault => 'सिस्टम डिफ़ॉल्ट रूप से बा';

  @override
  String get languageStatusEnglish => 'अंग्रेजी फॉलबैक सक्रिय बा';

  @override
  String get languageStatusSystem => 'सिस्टम भाषा के प्रयोग कइल जा रहल बा';

  @override
  String languageStatusSelected(Object languageName) {
    return 'चयनित भाषा : $languageName के बा';
  }

  @override
  String get themeLabel => 'विषय';

  @override
  String get notFoundTitle => 'पन्ना ना मिलल बा';

  @override
  String get loadingCyberBible => 'साइबर बाइबिल लोड हो रहल बा...';

  @override
  String get couldNotOpenDatabase =>
      'बाइबल के डाटाबेस ना खोल पावल। कृपया दोबारा कोशिश करीं।';

  @override
  String get homeTagline => 'एगो मुफ्त अउर ओपन सोर्स बाइबल अध्ययन ऐप';

  @override
  String get readTheBible => 'बाइबल के पढ़ीं';

  @override
  String get settingsTooltip => 'सेटिंग्स के बारे में बतावल गइल बा';

  @override
  String get themeChoose => 'थीम के चयन करीं';

  @override
  String get customThemes => 'अनुकूलन योग्य विषय के बारे में बतावल गइल बा';

  @override
  String get customThemesSubtitle =>
      'एक्सेंट रंग चुने खातिर कवनो कार्ड पर टैप करीं. \"क्लासिक व्हाइट\" लाइट, डार्क अवुरी सिस्टम मोड के भी सपोर्ट करेला।';

  @override
  String get setThemesLabel => 'सेट थीम के बा';

  @override
  String get deleteBookmarkDialog => 'बुकमार्क हटावे के बा?';

  @override
  String removeBookmarkMessage(Object details, Object reference) {
    return '\"$reference\"$details के हटा दिहल जाव?\n\nएकरा के वापस ना कइल जा सके.';
  }

  @override
  String get couldNotLoadBookmarks =>
      'बुकमार्क लोड ना हो पावल। कृपया दोबारा कोशिश करीं।';

  @override
  String get bookmarkSavedMessage => 'बुकमार्क सेव हो गइल बा';

  @override
  String get couldNotSaveBookmark => 'बुकमार्क के सेव ना हो सकल।';

  @override
  String get noBookmarksMatchFilter =>
      'एह फिल्टर से कवनो बुकमार्क मेल ना खाला.';

  @override
  String get clearFilter => 'फिल्टर के साफ कर दिहल जाव';

  @override
  String get traditionalOrderLabel => 'पारंपरिक क्रम के बा';

  @override
  String get alphabeticalOrderLabel => 'वर्णमाला के क्रम में बा';

  @override
  String get bookmarksTabLabel => 'बुकमार्क के बारे में बतावल गइल बा';

  @override
  String get fullChapter => 'पूरा अध्याय के बा';

  @override
  String get addBookmark => 'बुकमार्क जोड़ल जाला';

  @override
  String get selectVerse => 'छंद के चयन करीं';

  @override
  String get labelOptional => 'लेबल (वैकल्पिक) के बा।';

  @override
  String get notesOptional => 'नोट (वैकल्पिक) के बा।';

  @override
  String get save => 'बचावल';

  @override
  String get goToVerse => 'छंद पर जाइए';

  @override
  String verseTitle(Object verse) {
    return 'छंद $verse के बा';
  }

  @override
  String chapterTitle(Object chapter) {
    return 'अध्याय $chapter के बा';
  }

  @override
  String get switchToFullChapter => 'पूरा अध्याय बुकमार्क पर स्विच करीं';

  @override
  String get bookmarkSheetCancel => 'रद्द करीं, बुकमार्क शीट बंद करीं';

  @override
  String get pickCustomAccent => 'कस्टम लहजा चुनीं';

  @override
  String get apply => 'लागू करीं';

  @override
  String get custom => 'रिवाज';

  @override
  String get brightnessSystem => 'प्रणाली';

  @override
  String get brightnessLight => 'उजियार';

  @override
  String get brightnessDark => 'अन्हरिया';

  @override
  String get selectBook => 'कवनो किताब के चयन करीं';

  @override
  String get bookmarkFilterAll => 'कुल्हि';

  @override
  String get bookmarkFilterUnlabeled => 'बिना लेबल के';

  @override
  String get bookmarkSortRecent => 'हाल ही में पहिला बेर भइल';

  @override
  String get bookmarkSortCanonical => 'कैनोनिकल क्रम के बा';

  @override
  String get chapterRetry => 'दोबारा कोशिश करीं';

  @override
  String get fontSize => 'फॉन्ट के साइज के बा';

  @override
  String fontSizePixels(Object size) {
    return '$size px के बा';
  }

  @override
  String get fontSizeSlider => 'फॉन्ट साइज के स्लाइडर बा';

  @override
  String get fontSizeSliderHint => '12 से 28 तक एडजस्ट करे खातिर स्वाइप करीं';

  @override
  String get fontPreview =>
      '\"शुरुआत में भगवान आकाश आ धरती के रचना कइले रहले।\" — उत्पत्ति 1:1 के बा';

  @override
  String get showVerseNumbersSubtitle =>
      'पढ़े के स्क्रीन में छंद संख्या के सुपरस्क्रिप्ट देखावल जाव.';

  @override
  String get showSectionHeadingsSubtitle =>
      'अंश के बीच खंड आ भजन के शीर्षक देखाईं।';

  @override
  String get wordsOfChristSubtitle =>
      'यीशु के बात के लाल रंग में देखाईं। एकही पाठ रंग खातिर अक्षम करीं।';

  @override
  String get verseFormatTitle => 'छंद के प्रारूप के बा';

  @override
  String get verseFormatSubtitle =>
      'चुनीं कि शास्त्र के पाठ कइसे बिछावल गइल बा।';

  @override
  String get paragraphMode => 'पैराग्राफ के बा';

  @override
  String get verseListMode => 'छंद के सूची बा';

  @override
  String get paragraphModeTooltip => 'पैराग्राफ मोड के बा';

  @override
  String get verseListModeTooltip => 'छंद-सूची के मोड बा';

  @override
  String get paragraphModeDescription =>
      'पाठ लगातार इंडेंट पैराग्राफ के साथ बहत रहेला, जइसे कि एगो छपल बाइबल।';

  @override
  String get verseListModeDescription =>
      'हर शास्त्र के पैराग्राफ के शुरुआत अपना लाइन से होला, जवना से श्लोक समूह के देखल आसान हो जाला।';

  @override
  String get deleteBookmarkTooltip => 'बुकमार्क हटा दिहल जाव';

  @override
  String deleteBookmarkSemantics(Object reference) {
    return 'बुकमार्क $reference हटा दिहल जाला';
  }

  @override
  String sortBookmarksTooltip(Object sortOrder) {
    return 'सॉर्ट करीं: $sortOrder के बा';
  }

  @override
  String get noBookmarksYet => 'अबहीं ले कवनो बुकमार्क नइखे भइल.';

  @override
  String get noBookmarksYetHint =>
      'कवनो लोकेशन सेव करे खातिर पढ़त घरी बुकमार्क आइकन पर टैप करीं.';

  @override
  String bookmarkReferenceNavigationError(Object reference) {
    return '$reference पर नेविगेट ना हो पावल।';
  }

  @override
  String themeCardSemantics(Object description, Object name, Object selected) {
    return '$name विषय$selected के बा। $description के ह';
  }

  @override
  String get selectedThemeSuffix => ', वर्तमान में चुनल गइल बा';

  @override
  String get customisableAccentDescription => 'अनुकूलन योग्य लहजा रंग के बा।';

  @override
  String get fixedPaletteDescription => 'फिक्स्ड पैलेट के बा।';

  @override
  String accentColourTitle(Object themeName) {
    return 'उच्चारण के रंग — $themeName के बा';
  }

  @override
  String get brightnessMode => 'ब्राइटनेस मोड के बा';

  @override
  String get lightMode => 'लाइट मोड के बा';

  @override
  String get followSystemMode => 'सिस्टम मोड के पालन करीं';

  @override
  String get darkMode => 'डार्क मोड में बा';

  @override
  String get customColourPicker => 'कस्टम रंग पिकर के बा';

  @override
  String get customColourTooltip => 'कस्टम रंग के बा...';

  @override
  String get couldNotLoadBooks =>
      'किताबन के सूची लोड ना हो पावल. कृपया दोबारा कोशिश करीं।';

  @override
  String chapterLabel(Object chapter) {
    return 'अध्याय $chapter के बा';
  }

  @override
  String get traditionalOrderBooks =>
      'पारंपरिक ऑर्डर के किताबन के बारे में बतावल गइल बा';

  @override
  String get alphabeticalOrderBooks => 'वर्णमाला के क्रम के किताबन के';

  @override
  String get home => 'घर';

  @override
  String get addBookmarkTooltip => 'बुकमार्क जोड़ल जाला';

  @override
  String get chooseBookChapter => 'किताब आ अध्याय चुनीं';

  @override
  String get chooseVerse => 'छंद चुने के बा';

  @override
  String get bookChapterQuickNavigation => 'किताब आ अध्याय के त्वरित नेविगेशन';

  @override
  String get verseQuickNavigation => 'छंद त्वरित नेविगेशन के बा';

  @override
  String get backToBooks => 'किताबन पर वापस आ जाईं';

  @override
  String get selectBookTitle => 'किताब के चयन करीं';

  @override
  String selectChapterTitle(Object bookName) {
    return 'अध्याय ($bookName) के चयन करीं।';
  }

  @override
  String chapterSelectionLabel(Object chapter) {
    return 'अध्याय $chapter के बा';
  }

  @override
  String verseSelectionLabel(Object verse) {
    return 'छंद $verse के बा';
  }

  @override
  String fullChapterReference(Object bookName, Object chapter) {
    return 'पूरा अध्याय: $bookName $chapter के बा';
  }

  @override
  String get memorizeHint => 'रट के रखे के बा';

  @override
  String get addNoteHint => 'एगो नोट जोड़ल जाव...';

  @override
  String get languageSearchHint => 'भाषा के खोज करीं';

  @override
  String get languageModuleInstalled => 'इंस्टॉल हो गइल बा';

  @override
  String get languageModulePending => 'मशीन से अनुवाद लंबित बा';

  @override
  String get languageNoMatches => 'कवनो भाषा राउर खोज से मेल ना खात बा.';

  @override
  String get languageCatalogDescription =>
      'इंस्टॉल के रूप में चिन्हित भाषा ऑफलाइन काम करेले। मशीन से अनुवादित मॉड्यूल के रूप में अउरी भाषा के जोड़ल जाई।';

  @override
  String get saveBookmarkSemantics => 'बुकमार्क के सहेज लीं';

  @override
  String get couldNotLoadChapter =>
      'अध्याय लोड ना हो पावल। कृपया दोबारा कोशिश करीं।';

  @override
  String get couldNotLoadChapters =>
      'अध्याय लोड ना हो पावल। कृपया दोबारा कोशिश करीं।';

  @override
  String verseWithText(Object text, Object verse) {
    return 'छंद $verse: $text के बा';
  }

  @override
  String accentSwatchSemantics(Object name, Object selected) {
    return '$name लहजा के रंग$selected के बा';
  }

  @override
  String get oldTestament => 'पुरान नियम के बारे में बतावल गइल बा';

  @override
  String get newTestament => 'नया नियम के बारे में बतावल गइल बा';

  @override
  String get deuterocanonApocrypha =>
      'ड्यूटेरोकैनन / एपोक्रिफा के नाम से जानल जाला';
}
