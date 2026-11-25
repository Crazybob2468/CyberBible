// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Nepali (`ne`).
class AppLocalizationsNe extends AppLocalizations {
  AppLocalizationsNe([String locale = 'ne']) : super(locale);

  @override
  String get settingsTitle => 'सेटिङहरू';

  @override
  String get languageSection => 'भाषा';

  @override
  String get useSystemLanguage => 'प्रणाली भाषा प्रयोग गर्नुहोस्';

  @override
  String get useSystemLanguageSubtitle =>
      'पूर्वनिर्धारित रूपमा उपकरणको भाषा मिलाउनुहोस्।';

  @override
  String get currentLanguage => 'हालको भाषा';

  @override
  String get appLanguage => 'अनुप्रयोग भाषा';

  @override
  String get chooseLanguage => 'भाषा छान्नुहोस्';

  @override
  String get theme => 'विषयवस्तु';

  @override
  String get appearance => 'उपस्थिति';

  @override
  String get textSection => 'पाठ';

  @override
  String get readingFormatSection => 'पढ्ने ढाँचा';

  @override
  String get displaySection => 'प्रदर्शन';

  @override
  String get verseNumbers => 'पद संख्याहरू';

  @override
  String get sectionHeadings => 'खण्ड शीर्षकहरू';

  @override
  String get redLetterText => 'रातो अक्षरको पाठ';

  @override
  String get selectABook => 'एउटा पुस्तक चयन गर्नुहोस्';

  @override
  String get traditionalOrder => 'परम्परागत क्रम';

  @override
  String get alphabeticalOrder => 'वर्णमाला क्रम';

  @override
  String get bookmarks => 'बुकमार्कहरू';

  @override
  String get retry => 'पुन: प्रयास गर्नुहोस्';

  @override
  String get chooseTheme => 'विषयवस्तु छान्नुहोस्';

  @override
  String get customisableThemes => 'अनुकूलन योग्य विषयवस्तुहरू';

  @override
  String get customisableThemesSubtitle =>
      'एक्सेन्ट रङ छनौट गर्न कार्डमा ट्याप गर्नुहोस्। \"क्लासिक सेतो\" ले प्रकाश, गाढा र प्रणाली मोडहरू पनि समर्थन गर्दछ।';

  @override
  String get setThemes => 'थिमहरू सेट गर्नुहोस्';

  @override
  String get setThemesSubtitle =>
      'स्थिर, हातले बनाइएको प्यालेटहरू। कुनै अनुकूलन आवश्यक छैन - केवल लागू गर्न ट्याप गर्नुहोस्।';

  @override
  String get deleteBookmarkQuestion => 'बुकमार्क मेट्ने हो?';

  @override
  String get cancel => 'रद्द गर्नुहोस्';

  @override
  String get delete => 'मेट्नुहोस्';

  @override
  String get bookmarkSaved => 'बुकमार्क सेभ गरियो';

  @override
  String get couldNotDeleteBookmark => 'बुकमार्क मेटाउन सकिएन।';

  @override
  String couldNotNavigate(Object reference) {
    return '$reference मा नेभिगेट गर्न सकिएन।';
  }

  @override
  String get pageNotFound => 'पृष्ठ फेला परेन';

  @override
  String noRouteDefined(Object routeName) {
    return '\"$routeName\" को लागि कुनै मार्ग परिभाषित छैन';
  }

  @override
  String get english => 'अंग्रेजी';

  @override
  String get spanish => 'Español';

  @override
  String get systemDefault => 'प्रणाली पूर्वनिर्धारित';

  @override
  String get languageStatusEnglish => 'अंग्रेजी फलब्याक सक्रिय';

  @override
  String get languageStatusSystem => 'प्रणाली भाषा प्रयोग गर्दै';

  @override
  String languageStatusSelected(Object languageName) {
    return 'चयन गरिएको भाषा: $languageName';
  }

  @override
  String get themeLabel => 'विषयवस्तु';

  @override
  String get notFoundTitle => 'पृष्ठ फेला परेन';

  @override
  String get loadingCyberBible => 'साइबर बाइबल लोड गर्दै...';

  @override
  String get couldNotOpenDatabase =>
      'बाइबल डाटाबेस खोल्न सकेन। कृपया पुन: प्रयास गर्नुहोस्।';

  @override
  String get homeTagline => 'एक नि: शुल्क र खुला स्रोत बाइबल अध्ययन अनुप्रयोग';

  @override
  String get readTheBible => 'बाइबल पढ्नुहोस्';

  @override
  String get settingsTooltip => 'सेटिङहरू';

  @override
  String get themeChoose => 'विषयवस्तु छान्नुहोस्';

  @override
  String get customThemes => 'अनुकूलन योग्य विषयवस्तुहरू';

  @override
  String get customThemesSubtitle =>
      'एक्सेन्ट रङ छनौट गर्न कार्डमा ट्याप गर्नुहोस्। \"क्लासिक सेतो\" ले प्रकाश, गाढा र प्रणाली मोडहरू पनि समर्थन गर्दछ।';

  @override
  String get setThemesLabel => 'थिमहरू सेट गर्नुहोस्';

  @override
  String get deleteBookmarkDialog => 'बुकमार्क मेट्ने हो?';

  @override
  String removeBookmarkMessage(Object details, Object reference) {
    return '\"$reference\"$details हटाउने हो?\n\nयसलाई अन्डू गर्न सकिँदैन।';
  }

  @override
  String get couldNotLoadBookmarks =>
      'बुकमार्कहरू लोड गर्न सकिएन। कृपया पुन: प्रयास गर्नुहोस्।';

  @override
  String get bookmarkSavedMessage => 'बुकमार्क सेभ गरियो';

  @override
  String get couldNotSaveBookmark => 'बुकमार्क सुरक्षित गर्न सकिएन।';

  @override
  String get noBookmarksMatchFilter =>
      'कुनै पनि बुकमार्कहरू यो फिल्टरसँग मेल खाँदैन।';

  @override
  String get clearFilter => 'फिल्टर खाली गर्नुहोस्';

  @override
  String get traditionalOrderLabel => 'परम्परागत क्रम';

  @override
  String get alphabeticalOrderLabel => 'वर्णमाला क्रम';

  @override
  String get bookmarksTabLabel => 'बुकमार्कहरू';

  @override
  String get fullChapter => 'पूरा अध्याय';

  @override
  String get addBookmark => 'बुकमार्क थप्नुहोस्';

  @override
  String get selectVerse => 'पद चयन गर्नुहोस्';

  @override
  String get labelOptional => 'लेबल (वैकल्पिक)';

  @override
  String get notesOptional => 'नोटहरू (वैकल्पिक)';

  @override
  String get save => 'बचत गर्नुहोस्';

  @override
  String get goToVerse => 'पदमा जानुहोस्';

  @override
  String verseTitle(Object verse) {
    return 'पद $verse';
  }

  @override
  String chapterTitle(Object chapter) {
    return 'अध्याय $chapter';
  }

  @override
  String get switchToFullChapter => 'पूर्ण अध्याय बुकमार्कमा स्विच गर्नुहोस्';

  @override
  String get bookmarkSheetCancel =>
      'रद्द गर्नुहोस्, बुकमार्क पाना बन्द गर्नुहोस्';

  @override
  String get pickCustomAccent => 'अनुकूलन उच्चारण छान्नुहोस्';

  @override
  String get apply => 'आवेदन दिनुहोस्';

  @override
  String get custom => 'अनुकूलन';

  @override
  String get brightnessSystem => 'प्रणाली';

  @override
  String get brightnessLight => 'उज्यालो';

  @override
  String get brightnessDark => 'अँध्यारो';

  @override
  String get selectBook => 'एउटा पुस्तक चयन गर्नुहोस्';

  @override
  String get bookmarkFilterAll => 'सबै';

  @override
  String get bookmarkFilterUnlabeled => 'लेबल हटाइयो';

  @override
  String get bookmarkSortRecent => 'भर्खरको पहिलो';

  @override
  String get bookmarkSortCanonical => 'क्यानोनिकल क्रम';

  @override
  String get chapterRetry => 'पुन: प्रयास गर्नुहोस्';

  @override
  String get fontSize => 'फन्ट साइज';

  @override
  String fontSizePixels(Object size) {
    return '$size px';
  }

  @override
  String get fontSizeSlider => 'फन्ट साइज स्लाइडर';

  @override
  String get fontSizeSliderHint =>
      '12 देखि 28 सम्म समायोजन गर्न स्वाइप गर्नुहोस्';

  @override
  String get fontPreview =>
      '\"सुरुमा परमेश्वरले आकाश र पृथ्वी सृष्टि गर्नुभयो।\" —उत्पत्ति १:१';

  @override
  String get showVerseNumbersSubtitle =>
      'पढ्ने स्क्रिनमा पद संख्या सुपरस्क्रिप्टहरू देखाउनुहोस्।';

  @override
  String get showSectionHeadingsSubtitle =>
      'खण्डहरू बीच खण्ड र भजन शीर्षकहरू देखाउनुहोस्।';

  @override
  String get wordsOfChristSubtitle =>
      'येशूका शब्दहरू रातोमा देखाउनुहोस्। एकल पाठ रङको लागि असक्षम गर्नुहोस्।';

  @override
  String get verseFormatTitle => 'पद ढाँचा';

  @override
  String get verseFormatSubtitle =>
      'धर्मशास्त्रको पाठ कसरी राखिएको छ छान्नुहोस्।';

  @override
  String get paragraphMode => 'अनुच्छेद';

  @override
  String get verseListMode => 'पद सूची';

  @override
  String get paragraphModeTooltip => 'अनुच्छेद मोड';

  @override
  String get verseListModeTooltip => 'पद-सूची मोड';

  @override
  String get paragraphModeDescription =>
      'छापिएको बाइबल जस्तै इन्डेन्टेड अनुच्छेदहरूसँग पाठ निरन्तर प्रवाह हुन्छ।';

  @override
  String get verseListModeDescription =>
      'प्रत्येक शास्त्र अनुच्छेद यसको आफ्नै लाइनमा सुरु हुन्छ, पद समूहहरू सजिलै पत्ता लगाउन।';

  @override
  String get deleteBookmarkTooltip => 'बुकमार्क मेटाउनुहोस्';

  @override
  String deleteBookmarkSemantics(Object reference) {
    return 'बुकमार्क $reference मेटाउनुहोस्';
  }

  @override
  String sortBookmarksTooltip(Object sortOrder) {
    return 'क्रमबद्ध गर्नुहोस्: $sortOrder';
  }

  @override
  String get noBookmarksYet => 'अझै कुनै बुकमार्क छैन।';

  @override
  String get noBookmarksYetHint =>
      'स्थान बचत गर्न पढ्दा बुकमार्क प्रतिमा ट्याप गर्नुहोस्।';

  @override
  String bookmarkReferenceNavigationError(Object reference) {
    return '$reference मा नेभिगेट गर्न सकिएन।';
  }

  @override
  String themeCardSemantics(Object description, Object name, Object selected) {
    return '$name थीम$selected। $description';
  }

  @override
  String get selectedThemeSuffix => ', हाल चयन गरिएको छ';

  @override
  String get customisableAccentDescription => 'अनुकूलन उच्चारण रङ।';

  @override
  String get fixedPaletteDescription => 'स्थिर प्यालेट।';

  @override
  String accentColourTitle(Object themeName) {
    return 'एक्सेन्ट रङ — $themeName';
  }

  @override
  String get brightnessMode => 'उज्यालो मोड';

  @override
  String get lightMode => 'लाइट मोड';

  @override
  String get followSystemMode => 'प्रणाली मोड पछ्याउनुहोस्';

  @override
  String get darkMode => 'गाढा मोड';

  @override
  String get customColourPicker => 'अनुकूलन रंग पिकर';

  @override
  String get customColourTooltip => 'आफू अनुकूल रंग…';

  @override
  String get couldNotLoadBooks =>
      'पुस्तकहरूको सूची लोड गर्न सकिएन। कृपया पुन: प्रयास गर्नुहोस्।';

  @override
  String chapterLabel(Object chapter) {
    return 'अध्याय $chapter';
  }

  @override
  String get traditionalOrderBooks => 'परम्परागत अर्डर पुस्तकहरू';

  @override
  String get alphabeticalOrderBooks => 'वर्णमाला क्रम पुस्तकहरू';

  @override
  String get home => 'घर';

  @override
  String get addBookmarkTooltip => 'बुकमार्क थप्नुहोस्';

  @override
  String get chooseBookChapter => 'पुस्तक र अध्याय छान्नुहोस्';

  @override
  String get chooseVerse => 'पद छान्नुहोस्';

  @override
  String get bookChapterQuickNavigation => 'पुस्तक र अध्याय द्रुत नेभिगेसन';

  @override
  String get verseQuickNavigation => 'पद द्रुत नेभिगेसन';

  @override
  String get backToBooks => 'पुस्तकहरूमा फर्कनुहोस्';

  @override
  String get selectBookTitle => 'पुस्तक चयन गर्नुहोस्';

  @override
  String selectChapterTitle(Object bookName) {
    return 'अध्याय चयन गर्नुहोस् ($bookName)';
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
    return 'पूर्ण अध्याय: $bookName $chapter';
  }

  @override
  String get memorizeHint => 'याद गर्नुहोस्';

  @override
  String get addNoteHint => 'एउटा टिपोट थप्नुहोस्...';

  @override
  String get languageSearchHint => 'भाषाहरू खोज्नुहोस्';

  @override
  String get languageModuleInstalled => 'स्थापना गरियो';

  @override
  String get languageModulePending => 'मेसिन अनुवाद पेन्डिङ';

  @override
  String get languageNoMatches => 'तपाईको खोजसँग कुनै भाषाहरू मेल खाँदैनन्।';

  @override
  String get languageCatalogDescription =>
      'स्थापित काम अफलाइन रूपमा चिन्ह लगाइएका भाषाहरू। अन्य भाषाहरू मेसिन-अनुवादित मोड्युलहरूको रूपमा थपिनेछन्।';

  @override
  String get saveBookmarkSemantics => 'बुकमार्क बचत गर्नुहोस्';

  @override
  String get couldNotLoadChapter =>
      'अध्याय लोड गर्न सकिएन। कृपया पुन: प्रयास गर्नुहोस्।';

  @override
  String get couldNotLoadChapters =>
      'अध्यायहरू लोड गर्न सकिएन। कृपया पुन: प्रयास गर्नुहोस्।';

  @override
  String verseWithText(Object text, Object verse) {
    return 'पद $verse: $text';
  }

  @override
  String accentSwatchSemantics(Object name, Object selected) {
    return '$name उच्चारण रंग$selected';
  }

  @override
  String get oldTestament => 'पुरानो नियम';

  @override
  String get newTestament => 'नयाँ नियम';

  @override
  String get deuterocanonApocrypha => 'Deuterocanon / Apocrypha';
}
