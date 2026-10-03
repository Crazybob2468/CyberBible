// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Maithili (`mai`).
class AppLocalizationsMai extends AppLocalizations {
  AppLocalizationsMai([String locale = 'mai']) : super(locale);

  @override
  String get settingsTitle => 'सेटिंग्स';

  @override
  String get languageSection => 'भाषा';

  @override
  String get useSystemLanguage => 'सिस्टम भाषा के प्रयोग करू';

  @override
  String get useSystemLanguageSubtitle =>
      'डिफ़ॉल्ट रूप सँ डिवाइस भाषा मिलान करू.';

  @override
  String get currentLanguage => 'वर्तमान भाषा';

  @override
  String get appLanguage => 'ऐप भाषा';

  @override
  String get chooseLanguage => 'भाषा चुनें';

  @override
  String get theme => 'बिसय';

  @override
  String get appearance => 'उपस्थिति';

  @override
  String get textSection => 'मूल ग्रन्थ';

  @override
  String get readingFormatSection => 'पठन प्रारूप';

  @override
  String get displaySection => 'प्रदर्शन करनाइ';

  @override
  String get verseNumbers => 'श्लोक संख्या';

  @override
  String get sectionHeadings => 'खण्ड शीर्षक';

  @override
  String get redLetterText => 'लाल-अक्षर पाठ';

  @override
  String get selectABook => 'कोनो पोथी चुनू';

  @override
  String get traditionalOrder => 'पारम्परिक क्रम';

  @override
  String get alphabeticalOrder => 'वर्णमाला क्रम';

  @override
  String get bookmarks => 'बुकमार्क';

  @override
  String get retry => 'पुनः प्रयास करू';

  @override
  String get chooseTheme => 'थीम चुनू';

  @override
  String get customisableThemes => 'अनुकूलन योग्य विषय';

  @override
  String get customisableThemesSubtitle =>
      'कोनो कार्ड टैप करू आ एक्सेंट रंग चुनू। \"क्लासिक व्हाइट\" लाइट, डार्क आ सिस्टम मोड कए सेहो सपोर्ट करैत अछि ।';

  @override
  String get setThemes => 'सेट थीम';

  @override
  String get setThemesSubtitle =>
      'फिक्स्ड, हाथ से बना पैलेट। कोनो अनुकूलन के जरूरत नै — बस लागू करय लेल टैप करू.';

  @override
  String get deleteBookmarkQuestion => 'बुकमार्क मेटा दियौक?';

  @override
  String get cancel => 'रद्द';

  @override
  String get delete => 'हटानाइ';

  @override
  String get bookmarkSaved => 'बुकमार्क सहेजल गेल';

  @override
  String get couldNotDeleteBookmark => 'बुकमार्क मेटा नहि सकल।';

  @override
  String couldNotNavigate(Object reference) {
    return '$reference पर नेविगेट नहि क सकल।';
  }

  @override
  String get pageNotFound => 'पृष्ठ नहीं मिला';

  @override
  String noRouteDefined(Object routeName) {
    return '\"$routeName\" क लेल कोनो मार्ग परिभाषित नहि कएल गेल अछि ।';
  }

  @override
  String get english => 'अंग्रेजी';

  @override
  String get spanish => 'Español';

  @override
  String get systemDefault => 'सिस्टम डिफ़ॉल्ट';

  @override
  String get languageStatusEnglish => 'अंग्रेजी फॉलबैक सक्रिय';

  @override
  String get languageStatusSystem => 'सिस्टम भाषा के प्रयोग';

  @override
  String languageStatusSelected(Object languageName) {
    return 'चयनित भाषा: $languageName।';
  }

  @override
  String get themeLabel => 'बिसय';

  @override
  String get notFoundTitle => 'पृष्ठ नहीं मिला';

  @override
  String get loadingCyberBible => 'साइबर बाइबिल लोड भ रहल अछि...';

  @override
  String get couldNotOpenDatabase =>
      'बाइबिल डाटाबेस नहि खोलि सकल। कृपया पुनः प्रयास करू।';

  @override
  String get homeTagline => 'एकटा मुफ्त आ ओपन सोर्स बाइबिल अध्ययन ऐप';

  @override
  String get readTheBible => 'बाइबिल पढ़ू';

  @override
  String get settingsTooltip => 'सेटिंग्स';

  @override
  String get themeChoose => 'थीम चुनू';

  @override
  String get customThemes => 'अनुकूलन योग्य विषय';

  @override
  String get customThemesSubtitle =>
      'कोनो कार्ड टैप करू आ एक्सेंट रंग चुनू। \"क्लासिक व्हाइट\" लाइट, डार्क आ सिस्टम मोड कए सेहो सपोर्ट करैत अछि ।';

  @override
  String get setThemesLabel => 'सेट थीम';

  @override
  String get deleteBookmarkDialog => 'बुकमार्क मेटा दियौक?';

  @override
  String removeBookmarkMessage(Object details, Object reference) {
    return '\"$reference\"$details हटाउ?\n\nएकरा पूर्ववत नहि कएल जा सकैत अछि।';
  }

  @override
  String get couldNotLoadBookmarks =>
      'बुकमार्क लोड नहि भ\' सकल. कृपया पुनः प्रयास करू।';

  @override
  String get bookmarkSavedMessage => 'बुकमार्क सहेजल गेल';

  @override
  String get couldNotSaveBookmark => 'बुकमार्क सेव नै क सकल।';

  @override
  String get noBookmarksMatchFilter =>
      'कोनो बुकमार्क एहि फ़िल्टर सँ मेल नहि खाइत अछि.';

  @override
  String get clearFilter => 'फिल्टर साफ करू';

  @override
  String get traditionalOrderLabel => 'पारम्परिक क्रम';

  @override
  String get alphabeticalOrderLabel => 'वर्णमाला क्रम';

  @override
  String get bookmarksTabLabel => 'बुकमार्क';

  @override
  String get fullChapter => 'पूरा अध्याय';

  @override
  String get addBookmark => 'बुकमार्क जोड़ू';

  @override
  String get selectVerse => 'छंद चुनू';

  @override
  String get labelOptional => 'लेबल (वैकल्पिक) २.';

  @override
  String get notesOptional => 'टिप्पणियाँ (वैकल्पिक) २.';

  @override
  String get save => 'बचाउ';

  @override
  String get goToVerse => 'छंद पर जाउ';

  @override
  String verseTitle(Object verse) {
    return 'श्लोक [[[सीबीवी_0]]]। $verse';
  }

  @override
  String chapterTitle(Object chapter) {
    return 'अध्याय $chapter।';
  }

  @override
  String get switchToFullChapter => 'पूरा अध्याय बुकमार्क पर स्विच करू';

  @override
  String get bookmarkSheetCancel => 'रद्द करू, बुकमार्क शीट बंद करू';

  @override
  String get pickCustomAccent => 'कस्टम लहजा चुनू';

  @override
  String get apply => 'लागू';

  @override
  String get custom => 'परिपाटी';

  @override
  String get brightnessSystem => 'तरीका';

  @override
  String get brightnessLight => 'हल्लुक';

  @override
  String get brightnessDark => 'अन्हार';

  @override
  String get selectBook => 'कोनो पोथी चुनू';

  @override
  String get bookmarkFilterAll => 'सभटा';

  @override
  String get bookmarkFilterUnlabeled => 'बिना लेबल के';

  @override
  String get bookmarkSortRecent => 'हाल ही में प्रथम';

  @override
  String get bookmarkSortCanonical => 'कैनोनिकल क्रम';

  @override
  String get chapterRetry => 'पुनः प्रयास करू';

  @override
  String get fontSize => 'फॉन्ट साइज';

  @override
  String fontSizePixels(Object size) {
    return '[[[सीबीवी_0]]] पीएक्स $size';
  }

  @override
  String get fontSizeSlider => 'फॉन्ट आकार स्लाइडर';

  @override
  String get fontSizeSliderHint => '12 स 28 तक एडजस्ट करबाक लेल स्वाइप करू';

  @override
  String get fontPreview =>
      '\"आदि मे परमेश् वर आकाश आ पृथ्वी केँ सृष्टि केने छलाह |\" — उत्पत्ति १:१';

  @override
  String get showVerseNumbersSubtitle =>
      'पठन पर्दा मे छंद संख्याक सुपरस्क्रिप्ट देखाउ।';

  @override
  String get showSectionHeadingsSubtitle => 'अंशक बीच खंड आ भजन शीर्षक देखाउ।';

  @override
  String get wordsOfChristSubtitle =>
      'यीशुक वचन लाल रंग मे देखाउ। एकटा पाठ रंगक लेल अक्षम करू.';

  @override
  String get verseFormatTitle => 'छंद प्रारूप';

  @override
  String get verseFormatSubtitle => 'शास्त्र पाठ केना बिछल गेल अछि से चुनू।';

  @override
  String get paragraphMode => 'पैराग्राफ';

  @override
  String get verseListMode => 'छंद सूची';

  @override
  String get paragraphModeTooltip => 'पैराग्राफ मोड';

  @override
  String get verseListModeTooltip => 'छंद-सूची मोड';

  @override
  String get paragraphModeDescription =>
      'पाठ लगातार इंडेंट पैराग्राफ के साथ बहैत छै, जेना कि मुद्रित बाइबिल।';

  @override
  String get verseListModeDescription =>
      'प्रत्येक शास्त्र केरऽ पैराग्राफ केरऽ शुरुआत अपनऽ-अपनऽ पंक्ति स॑ होय छै, जेकरा स॑ श्लोक समूह क॑ देखना आसान होय ​​जाय छै ।';

  @override
  String get deleteBookmarkTooltip => 'बुकमार्क मेटा दियौ';

  @override
  String deleteBookmarkSemantics(Object reference) {
    return 'बुकमार्क $reference मेटा दियौ।';
  }

  @override
  String sortBookmarksTooltip(Object sortOrder) {
    return 'क्रमबद्ध करें: $sortOrder।';
  }

  @override
  String get noBookmarksYet => 'एखन धरि कोनो बुकमार्क नहि।';

  @override
  String get noBookmarksYetHint =>
      'कोनो स्थान सहेजबाक लेल पढ़ैत काल बुकमार्क आइकन पर टैप करू.';

  @override
  String bookmarkReferenceNavigationError(Object reference) {
    return '$reference पर नेविगेट नहि क सकल।';
  }

  @override
  String themeCardSemantics(Object description, Object name, Object selected) {
    return '[[[सीबीवी_0]]] विषय [[[सीबीवी_1]]]। [[[सीबीवी_2]]]। $name $selected $description';
  }

  @override
  String get selectedThemeSuffix => ', वर्तमान मे चयनित';

  @override
  String get customisableAccentDescription => 'अनुकूलन योग्य उच्चारण रंग।';

  @override
  String get fixedPaletteDescription => 'फिक्स्ड पैलेट।';

  @override
  String accentColourTitle(Object themeName) {
    return 'उच्चारण रंग — $themeName।';
  }

  @override
  String get brightnessMode => 'चमक मोड';

  @override
  String get lightMode => 'प्रकाश मोड';

  @override
  String get followSystemMode => 'सिस्टम मोड के पालन करू';

  @override
  String get darkMode => 'डार्क मोड';

  @override
  String get customColourPicker => 'कस्टम रंग पिकर';

  @override
  String get customColourTooltip => 'कस्टम रंग...';

  @override
  String get couldNotLoadBooks =>
      'किताबक सूची लोड नहि भ सकल। कृपया पुनः प्रयास करू।';

  @override
  String chapterLabel(Object chapter) {
    return 'अध्याय $chapter।';
  }

  @override
  String get traditionalOrderBooks => 'पारम्परिक आदेश पुस्तकें';

  @override
  String get alphabeticalOrderBooks => 'वर्णमाला क्रम पुस्तकें';

  @override
  String get home => 'घर';

  @override
  String get addBookmarkTooltip => 'बुकमार्क जोड़ू';

  @override
  String get chooseBookChapter => 'किताब आ अध्याय चुनू';

  @override
  String get chooseVerse => 'छंद चुनू';

  @override
  String get bookChapterQuickNavigation => 'पुस्तक एवं अध्याय त्वरित नेविगेशन';

  @override
  String get verseQuickNavigation => 'छंद त्वरित नेविगेशन';

  @override
  String get backToBooks => 'किताब पर वापस';

  @override
  String get selectBookTitle => 'किताब चुनू';

  @override
  String selectChapterTitle(Object bookName) {
    return 'अध्याय ($bookName) चुनें।';
  }

  @override
  String chapterSelectionLabel(Object chapter) {
    return 'अध्याय $chapter।';
  }

  @override
  String verseSelectionLabel(Object verse) {
    return 'श्लोक [[[सीबीवी_0]]]। $verse';
  }

  @override
  String fullChapterReference(Object bookName, Object chapter) {
    return 'पूरा अध्याय: $bookName $chapter।';
  }

  @override
  String get memorizeHint => 'रटब';

  @override
  String get addNoteHint => 'एकटा नोट जोड़ू...';

  @override
  String get languageSearchHint => 'भाषा खोजें';

  @override
  String get languageModuleInstalled => 'स्थापित';

  @override
  String get languageModulePending => 'मशीन अनुवाद लंबित';

  @override
  String get languageNoMatches => 'कोनो भाषा अहाँक खोजसँ मेल नहि खाइत अछि।';

  @override
  String get languageCatalogDescription =>
      'इंस्टॉल के रूप मे चिह्नित भाषा ऑफलाइन काज करैत अछि. मशीन सं अनुवादित मॉड्यूल कें रूप मे अन्य भाषाक कें जोड़ल जेतय.';

  @override
  String get saveBookmarkSemantics => 'बुकमार्क सहेजें';

  @override
  String get couldNotLoadChapter =>
      'अध्याय लोड नहि भ सकल। कृपया पुनः प्रयास करू।';

  @override
  String get couldNotLoadChapters =>
      'अध्याय लोड नहि भ सकल। कृपया पुनः प्रयास करू।';

  @override
  String verseWithText(Object text, Object verse) {
    return 'श्लोक [[[सीबीवी_0]]]: [[[सीबीवी_1]]]। $verse $text';
  }

  @override
  String accentSwatchSemantics(Object name, Object selected) {
    return '$name उच्चारण रंग $selected।';
  }

  @override
  String get oldTestament => 'पुरान नियम';

  @override
  String get newTestament => 'नया नियम';

  @override
  String get deuterocanonApocrypha => 'ड्यूटेरोकैनन / अपोक्रिफा';
}
