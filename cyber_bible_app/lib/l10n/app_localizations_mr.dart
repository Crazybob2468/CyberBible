// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Marathi (`mr`).
class AppLocalizationsMr extends AppLocalizations {
  AppLocalizationsMr([String locale = 'mr']) : super(locale);

  @override
  String get settingsTitle => 'सेटिंग्ज';

  @override
  String get languageSection => 'भाषा';

  @override
  String get useSystemLanguage => 'सिस्टम भाषा वापरा';

  @override
  String get useSystemLanguageSubtitle => 'डीफॉल्टनुसार डिव्हाइसची भाषा जुळवा.';

  @override
  String get currentLanguage => 'वर्तमान भाषा';

  @override
  String get appLanguage => 'ॲप भाषा';

  @override
  String get chooseLanguage => 'भाषा निवडा';

  @override
  String get theme => 'थीम';

  @override
  String get appearance => 'देखावा';

  @override
  String get textSection => 'मजकूर';

  @override
  String get readingFormatSection => 'वाचन स्वरूप';

  @override
  String get displaySection => 'डिस्प्ले';

  @override
  String get verseNumbers => 'श्लोक क्रमांक';

  @override
  String get sectionHeadings => 'विभाग मथळे';

  @override
  String get redLetterText => 'लाल-अक्षर मजकूर';

  @override
  String get selectABook => 'एक पुस्तक निवडा';

  @override
  String get traditionalOrder => 'पारंपारिक ऑर्डर';

  @override
  String get alphabeticalOrder => 'वर्णक्रमानुसार';

  @override
  String get bookmarks => 'बुकमार्क';

  @override
  String get retry => 'पुन्हा प्रयत्न करा';

  @override
  String get chooseTheme => 'थीम निवडा';

  @override
  String get customisableThemes => 'सानुकूल करण्यायोग्य थीम';

  @override
  String get customisableThemesSubtitle =>
      'उच्चारण रंग निवडण्यासाठी कार्डावर टॅप करा. \"क्लासिक व्हाईट\" लाइट, डार्क आणि सिस्टम मोडला देखील सपोर्ट करते.';

  @override
  String get setThemes => 'थीम सेट करा';

  @override
  String get setThemesSubtitle =>
      'निश्चित, हाताने तयार केलेले पॅलेट. सानुकूलनाची आवश्यकता नाही — लागू करण्यासाठी फक्त टॅप करा.';

  @override
  String get deleteBookmarkQuestion => 'बुकमार्क हटवायचा?';

  @override
  String get cancel => 'रद्द करा';

  @override
  String get delete => 'हटवा';

  @override
  String get bookmarkSaved => 'बुकमार्क जतन केले';

  @override
  String get couldNotDeleteBookmark => 'बुकमार्क हटवू शकलो नाही.';

  @override
  String couldNotNavigate(Object reference) {
    return '$reference वर नेव्हिगेट करू शकलो नाही.';
  }

  @override
  String get pageNotFound => 'पृष्ठ आढळले नाही';

  @override
  String noRouteDefined(Object routeName) {
    return '\"$routeName\" साठी कोणताही मार्ग परिभाषित नाही';
  }

  @override
  String get english => 'इंग्रजी';

  @override
  String get spanish => 'Español';

  @override
  String get systemDefault => 'सिस्टम डीफॉल्ट';

  @override
  String get languageStatusEnglish => 'इंग्रजी फॉलबॅक सक्रिय';

  @override
  String get languageStatusSystem => 'प्रणाली भाषा वापरणे';

  @override
  String languageStatusSelected(Object languageName) {
    return 'निवडलेली भाषा: $languageName';
  }

  @override
  String get themeLabel => 'थीम';

  @override
  String get notFoundTitle => 'पृष्ठ आढळले नाही';

  @override
  String get loadingCyberBible => 'सायबर बायबल लोड करत आहे...';

  @override
  String get couldNotOpenDatabase =>
      'बायबल डेटाबेस उघडू शकलो नाही. कृपया पुन्हा प्रयत्न करा.';

  @override
  String get homeTagline => 'एक विनामूल्य आणि मुक्त स्रोत बायबल अभ्यास ॲप';

  @override
  String get readTheBible => 'बायबल वाचा';

  @override
  String get settingsTooltip => 'सेटिंग्ज';

  @override
  String get themeChoose => 'थीम निवडा';

  @override
  String get customThemes => 'सानुकूल करण्यायोग्य थीम';

  @override
  String get customThemesSubtitle =>
      'उच्चारण रंग निवडण्यासाठी कार्डावर टॅप करा. \"क्लासिक व्हाईट\" लाइट, डार्क आणि सिस्टम मोडला देखील सपोर्ट करते.';

  @override
  String get setThemesLabel => 'थीम सेट करा';

  @override
  String get deleteBookmarkDialog => 'बुकमार्क हटवायचा?';

  @override
  String removeBookmarkMessage(Object details, Object reference) {
    return '\"$reference\"$details काढायचे?\n\nहे पूर्ववत केले जाऊ शकत नाही.';
  }

  @override
  String get couldNotLoadBookmarks =>
      'बुकमार्क लोड करू शकलो नाही. कृपया पुन्हा प्रयत्न करा.';

  @override
  String get bookmarkSavedMessage => 'बुकमार्क जतन केले';

  @override
  String get couldNotSaveBookmark => 'बुकमार्क जतन करू शकलो नाही.';

  @override
  String get noBookmarksMatchFilter =>
      'या फिल्टरशी कोणतेही बुकमार्क जुळत नाहीत.';

  @override
  String get clearFilter => 'फिल्टर साफ करा';

  @override
  String get traditionalOrderLabel => 'पारंपारिक ऑर्डर';

  @override
  String get alphabeticalOrderLabel => 'वर्णक्रमानुसार';

  @override
  String get bookmarksTabLabel => 'बुकमार्क';

  @override
  String get fullChapter => 'पूर्ण अध्याय';

  @override
  String get addBookmark => 'बुकमार्क जोडा';

  @override
  String get selectVerse => 'श्लोक निवडा';

  @override
  String get labelOptional => 'लेबल (पर्यायी)';

  @override
  String get notesOptional => 'नोट्स (पर्यायी)';

  @override
  String get save => 'जतन करा';

  @override
  String get goToVerse => 'श्लोक वर जा';

  @override
  String verseTitle(Object verse) {
    return 'श्लोक $verse';
  }

  @override
  String chapterTitle(Object chapter) {
    return 'धडा $chapter';
  }

  @override
  String get switchToFullChapter => 'पूर्ण अध्याय बुकमार्कवर स्विच करा';

  @override
  String get bookmarkSheetCancel => 'रद्द करा, बुकमार्क पत्रक बंद करा';

  @override
  String get pickCustomAccent => 'सानुकूल उच्चारण निवडा';

  @override
  String get apply => 'अर्ज करा';

  @override
  String get custom => 'सानुकूल';

  @override
  String get brightnessSystem => 'प्रणाली';

  @override
  String get brightnessLight => 'प्रकाश';

  @override
  String get brightnessDark => 'गडद';

  @override
  String get selectBook => 'एक पुस्तक निवडा';

  @override
  String get bookmarkFilterAll => 'सर्व';

  @override
  String get bookmarkFilterUnlabeled => 'लेबल न केलेले';

  @override
  String get bookmarkSortRecent => 'अलीकडील प्रथम';

  @override
  String get bookmarkSortCanonical => 'कॅनॉनिकल ऑर्डर';

  @override
  String get chapterRetry => 'पुन्हा प्रयत्न करा';

  @override
  String get fontSize => 'फॉन्ट आकार';

  @override
  String fontSizePixels(Object size) {
    return '$size px';
  }

  @override
  String get fontSizeSlider => 'फॉन्ट आकार स्लाइडर';

  @override
  String get fontSizeSliderHint =>
      '12 ते 28 पर्यंत समायोजित करण्यासाठी स्वाइप करा';

  @override
  String get fontPreview =>
      '\"सुरुवातीला देवाने आकाश आणि पृथ्वी निर्माण केली.\" — उत्पत्ति १:१';

  @override
  String get showVerseNumbersSubtitle =>
      'वाचन स्क्रीनमध्ये श्लोक क्रमांक सुपरस्क्रिप्ट दाखवा.';

  @override
  String get showSectionHeadingsSubtitle =>
      'परिच्छेदांमधील विभाग आणि स्तोत्र शीर्षक दर्शवा.';

  @override
  String get wordsOfChristSubtitle =>
      'येशूचे शब्द लाल रंगात दाखवा. एका मजकूर रंगासाठी अक्षम करा.';

  @override
  String get verseFormatTitle => 'श्लोक स्वरूप';

  @override
  String get verseFormatSubtitle =>
      'शास्त्रवचनाचा मजकूर कसा मांडला जातो ते निवडा.';

  @override
  String get paragraphMode => 'परिच्छेद';

  @override
  String get verseListMode => 'श्लोक सूची';

  @override
  String get paragraphModeTooltip => 'परिच्छेद मोड';

  @override
  String get verseListModeTooltip => 'श्लोक-सूची मोड';

  @override
  String get paragraphModeDescription =>
      'मजकूर छापील बायबलप्रमाणे इंडेंटेड परिच्छेदांसह सतत प्रवाहित होतो.';

  @override
  String get verseListModeDescription =>
      'प्रत्येक शास्त्रवचनाचा परिच्छेद त्याच्या स्वतःच्या ओळीवर सुरू होतो, ज्यामुळे श्लोक गट शोधणे सोपे होते.';

  @override
  String get deleteBookmarkTooltip => 'बुकमार्क हटवा';

  @override
  String deleteBookmarkSemantics(Object reference) {
    return 'बुकमार्क $reference हटवा';
  }

  @override
  String sortBookmarksTooltip(Object sortOrder) {
    return 'क्रमवारी लावा: $sortOrder';
  }

  @override
  String get noBookmarksYet => 'अद्याप कोणतेही बुकमार्क नाहीत.';

  @override
  String get noBookmarksYetHint =>
      'स्थान जतन करण्यासाठी वाचताना बुकमार्क चिन्हावर टॅप करा.';

  @override
  String bookmarkReferenceNavigationError(Object reference) {
    return '$reference वर नेव्हिगेट करू शकलो नाही.';
  }

  @override
  String themeCardSemantics(Object description, Object name, Object selected) {
    return '$name थीम$selected. $description';
  }

  @override
  String get selectedThemeSuffix => ', सध्या निवडले आहे';

  @override
  String get customisableAccentDescription => 'सानुकूल उच्चारण रंग.';

  @override
  String get fixedPaletteDescription => 'निश्चित पॅलेट.';

  @override
  String accentColourTitle(Object themeName) {
    return 'उच्चारण रंग — $themeName';
  }

  @override
  String get brightnessMode => 'ब्राइटनेस मोड';

  @override
  String get lightMode => 'प्रकाश मोड';

  @override
  String get followSystemMode => 'सिस्टम मोडचे अनुसरण करा';

  @override
  String get darkMode => 'गडद मोड';

  @override
  String get customColourPicker => 'सानुकूल रंग निवडक';

  @override
  String get customColourTooltip => 'सानुकूल रंग…';

  @override
  String get couldNotLoadBooks =>
      'पुस्तकांची यादी लोड करता आली नाही. कृपया पुन्हा प्रयत्न करा.';

  @override
  String chapterLabel(Object chapter) {
    return 'धडा $chapter';
  }

  @override
  String get traditionalOrderBooks => 'पारंपारिक ऑर्डर पुस्तके';

  @override
  String get alphabeticalOrderBooks => 'वर्णक्रमानुसार पुस्तके';

  @override
  String get home => 'घर';

  @override
  String get addBookmarkTooltip => 'बुकमार्क जोडा';

  @override
  String get chooseBookChapter => 'पुस्तक आणि अध्याय निवडा';

  @override
  String get chooseVerse => 'श्लोक निवडा';

  @override
  String get bookChapterQuickNavigation => 'पुस्तक आणि धडा द्रुत नेव्हिगेशन';

  @override
  String get verseQuickNavigation => 'श्लोक द्रुत नेव्हिगेशन';

  @override
  String get backToBooks => 'पुस्तकांकडे परत';

  @override
  String get selectBookTitle => 'पुस्तक निवडा';

  @override
  String selectChapterTitle(Object bookName) {
    return 'धडा निवडा ($bookName)';
  }

  @override
  String chapterSelectionLabel(Object chapter) {
    return 'धडा $chapter';
  }

  @override
  String verseSelectionLabel(Object verse) {
    return 'श्लोक $verse';
  }

  @override
  String fullChapterReference(Object bookName, Object chapter) {
    return 'पूर्ण धडा: $bookName $chapter';
  }

  @override
  String get memorizeHint => 'लक्षात ठेवा';

  @override
  String get addNoteHint => 'एक टीप जोडा...';

  @override
  String get languageSearchHint => 'भाषा शोधा';

  @override
  String get languageModuleInstalled => 'स्थापित केले';

  @override
  String get languageModulePending => 'मशीन भाषांतर प्रलंबित';

  @override
  String get languageNoMatches => 'तुमच्या शोधाशी कोणतीही भाषा जुळत नाही.';

  @override
  String get languageCatalogDescription =>
      'स्थापित केलेल्या भाषा ऑफलाइन कार्य करतात म्हणून चिन्हांकित. मशीन-अनुवादित मॉड्यूल म्हणून इतर भाषा जोडल्या जातील.';

  @override
  String get saveBookmarkSemantics => 'बुकमार्क जतन करा';

  @override
  String get couldNotLoadChapter =>
      'धडा लोड करू शकलो नाही. कृपया पुन्हा प्रयत्न करा.';

  @override
  String get couldNotLoadChapters =>
      'अध्याय लोड करू शकलो नाही. कृपया पुन्हा प्रयत्न करा.';

  @override
  String verseWithText(Object text, Object verse) {
    return 'श्लोक $verse: $text';
  }

  @override
  String accentSwatchSemantics(Object name, Object selected) {
    return '$name उच्चारण रंग$selected';
  }

  @override
  String get oldTestament => 'जुना करार';

  @override
  String get newTestament => 'नवीन करार';

  @override
  String get deuterocanonApocrypha => 'Deuterocanon / Apocrypha';
}
