// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Haryanvi (`bgc`).
class AppLocalizationsBgc extends AppLocalizations {
  AppLocalizationsBgc([String locale = 'bgc']) : super(locale);

  @override
  String get settingsTitle => 'सेटिंग्स';

  @override
  String get languageSection => 'भाषा';

  @override
  String get useSystemLanguage => 'सिस्टम की भाषा प्रयोग करो';

  @override
  String get useSystemLanguageSubtitle =>
      'डिवाइस की भाषा अपने आप इस्तेमाल होगी।';

  @override
  String get currentLanguage => 'मौजूदा भाषा';

  @override
  String get appLanguage => 'ऐप की भाषा';

  @override
  String get chooseLanguage => 'भाषा चुनो';

  @override
  String get theme => 'थीम';

  @override
  String get appearance => 'दिखावट';

  @override
  String get textSection => 'लिखाई';

  @override
  String get readingFormatSection => 'पढ़ने का तरीका';

  @override
  String get displaySection => 'दिखावा';

  @override
  String get verseNumbers => 'पद नंबर';

  @override
  String get sectionHeadings => 'खंड के शीर्षक';

  @override
  String get redLetterText => 'लाल अक्षर';

  @override
  String get selectABook => 'किताब चुनो';

  @override
  String get traditionalOrder => 'पारंपरिक क्रम';

  @override
  String get alphabeticalOrder => 'वर्णक्रम';

  @override
  String get bookmarks => 'बुकमार्क';

  @override
  String get retry => 'फेर कोशिश करो';

  @override
  String get chooseTheme => 'थीम चुनो';

  @override
  String get customisableThemes => 'बदल सकण वाली थीम';

  @override
  String get customisableThemesSubtitle =>
      'Tap a card to choose an accent colour. \"Classic White\" also supports Light, Dark and System modes.';

  @override
  String get setThemes => 'थीम लगाओ';

  @override
  String get setThemesSubtitle =>
      'Fixed, hand-crafted palettes. No customisation needed — just tap to apply.';

  @override
  String get deleteBookmarkQuestion => 'बुकमार्क हटाणा है?';

  @override
  String get cancel => 'रद्द करो';

  @override
  String get delete => 'हटाओ';

  @override
  String get bookmarkSaved => 'बुकमार्क बच गया';

  @override
  String get couldNotDeleteBookmark => 'बुकमार्क हट ना सका।';

  @override
  String couldNotNavigate(Object reference) {
    return '$reference तक ना जा सके।';
  }

  @override
  String get pageNotFound => 'पन्ना ना मिला';

  @override
  String noRouteDefined(Object routeName) {
    return '\"$routeName\" खातिर कोई रास्ता ना बणाया गया';
  }

  @override
  String get english => 'अंगरेजी';

  @override
  String get spanish => 'स्पेनिश';

  @override
  String get systemDefault => 'सिस्टम की डिफॉल्ट';

  @override
  String get languageStatusEnglish => 'अंगरेजी भाषा चालू है';

  @override
  String get languageStatusSystem => 'सिस्टम की भाषा इस्तेमाल हो रही है';

  @override
  String languageStatusSelected(Object languageName) {
    return 'चुनी भाषा: $languageName';
  }

  @override
  String get themeLabel => 'थीम';

  @override
  String get notFoundTitle => 'पन्ना ना मिला';

  @override
  String get loadingCyberBible => 'साइबर बाइबल खुल रहया है...';

  @override
  String get couldNotOpenDatabase => 'बाइबल डेटाबेस ना खुल सका। फेर कोशिश करो।';

  @override
  String get homeTagline => 'मुफ्त और ओपन-सोर्स बाइबल ऐप';

  @override
  String get readTheBible => 'बाइबल पढ़ो';

  @override
  String get settingsTooltip => 'सेटिंग्स';

  @override
  String get themeChoose => 'थीम चुनो';

  @override
  String get customThemes => 'अपणी थीम';

  @override
  String get customThemesSubtitle =>
      'Tap a card to choose an accent colour. \"Classic White\" also supports Light, Dark and System modes.';

  @override
  String get setThemesLabel => 'थीम लगाओ';

  @override
  String get deleteBookmarkDialog => 'बुकमार्क हटाणा है?';

  @override
  String removeBookmarkMessage(Object details, Object reference) {
    return 'Remove \"$reference\"$details?\n\nThis cannot be undone.';
  }

  @override
  String get couldNotLoadBookmarks =>
      'Could not load bookmarks. Please try again.';

  @override
  String get bookmarkSavedMessage => 'बुकमार्क बच गया';

  @override
  String get couldNotSaveBookmark => 'बुकमार्क बच ना सका।';

  @override
  String get noBookmarksMatchFilter => 'इस फिल्टर से कोई बुकमार्क ना मिला।';

  @override
  String get clearFilter => 'फिल्टर हटाओ';

  @override
  String get traditionalOrderLabel => 'पारंपरिक क्रम';

  @override
  String get alphabeticalOrderLabel => 'वर्णक्रम';

  @override
  String get bookmarksTabLabel => 'बुकमार्क';

  @override
  String get fullChapter => 'पूरा अध्याय';

  @override
  String get addBookmark => 'बुकमार्क जोड़ो';

  @override
  String get selectVerse => 'पद चुनो';

  @override
  String get labelOptional => 'नाम (वैकल्पिक)';

  @override
  String get notesOptional => 'नोट (वैकल्पिक)';

  @override
  String get save => 'बचाओ';

  @override
  String get goToVerse => 'पद पर जाओ';

  @override
  String verseTitle(Object verse) {
    return 'पद $verse';
  }

  @override
  String chapterTitle(Object chapter) {
    return 'अध्याय $chapter';
  }

  @override
  String get switchToFullChapter => 'पूरे अध्याय पर जाओ';

  @override
  String get bookmarkSheetCancel => 'रद्द करो';

  @override
  String get pickCustomAccent => 'अपणी मुख्य रंग चुनो';

  @override
  String get apply => 'लागू करो';

  @override
  String get custom => 'अपणी पसंद';

  @override
  String get brightnessSystem => 'सिस्टम';

  @override
  String get brightnessLight => 'हलका';

  @override
  String get brightnessDark => 'अंधेरा';

  @override
  String get selectBook => 'किताब चुनो';

  @override
  String get bookmarkFilterAll => 'सारे';

  @override
  String get bookmarkFilterUnlabeled => 'बिन नाम';

  @override
  String get bookmarkSortRecent => 'नया पैहलै';

  @override
  String get bookmarkSortCanonical => 'किताबी क्रम';

  @override
  String get chapterRetry => 'फेर कोशिश करो';

  @override
  String get fontSize => 'अक्षर का आकार';

  @override
  String fontSizePixels(Object size) {
    return '$size px';
  }

  @override
  String get fontSizeSlider => 'अक्षर का आकार';

  @override
  String get fontSizeSliderHint => 'अक्षर का आकार 12 से 28 तक बदलो';

  @override
  String get fontPreview => '“बाइबल पढ़ण में आसानी हो।” — उतपत्ति 1:1';

  @override
  String get showVerseNumbersSubtitle => 'हर पद का नंबर दिखाओ।';

  @override
  String get showSectionHeadingsSubtitle => 'अध्याय के अंदर शीर्षक दिखाओ।';

  @override
  String get wordsOfChristSubtitle => 'मसीह के बोल लाल अक्षरां में दिखाओ।';

  @override
  String get verseFormatTitle => 'पद का रूप';

  @override
  String get verseFormatSubtitle => 'पढ़ण का पसंदीदा तरीका चुनो।';

  @override
  String get paragraphMode => 'अनुच्छेद तरीका';

  @override
  String get verseListMode => 'पद-सूची तरीका';

  @override
  String get paragraphModeTooltip => 'अनुच्छेद रूप चुनो';

  @override
  String get verseListModeTooltip => 'पद-सूची रूप चुनो';

  @override
  String get paragraphModeDescription =>
      'पदों को प्राकृतिक अनुच्छेद में दिखाओ।';

  @override
  String get verseListModeDescription => 'हर पद अलग लाइन पर दिखाओ।';

  @override
  String get deleteBookmarkTooltip => 'चुना बुकमार्क हटाओ';

  @override
  String deleteBookmarkSemantics(Object reference) {
    return '$reference का बुकमार्क हटाओ';
  }

  @override
  String sortBookmarksTooltip(Object sortOrder) {
    return 'बुकमार्क $sortOrder के हिसाब से सजाओ';
  }

  @override
  String get noBookmarksYet => 'अभी कोई बुकमार्क ना है।';

  @override
  String get noBookmarksYetHint => 'पढ़ते वक्त बुकमार्क जोड़ो।';

  @override
  String bookmarkReferenceNavigationError(Object reference) {
    return '$reference पर ना जा सके।';
  }

  @override
  String themeCardSemantics(Object description, Object name, Object selected) {
    return '$name theme$selected. $description';
  }

  @override
  String get selectedThemeSuffix => 'चुनी थीम';

  @override
  String get customisableAccentDescription => 'अपने पसंद का मुख्य रंग चुनो।';

  @override
  String get fixedPaletteDescription => 'पहले से बणाया गया रंग-संग्रह।';

  @override
  String accentColourTitle(Object themeName) {
    return 'मुख्य रंग — $themeName';
  }

  @override
  String get brightnessMode => 'सिस्टम अंदाज';

  @override
  String get lightMode => 'हलका अंदाज';

  @override
  String get followSystemMode => 'सिस्टम के अनुसार';

  @override
  String get darkMode => 'अंधेरा अंदाज';

  @override
  String get customColourPicker => 'अपणे पसंद का रंग';

  @override
  String get customColourTooltip => 'अपणा रंग चुनो...';

  @override
  String get couldNotLoadBooks => 'किताबां की सूची ना खुल सकी।';

  @override
  String chapterLabel(Object chapter) {
    return 'अध्याय $chapter';
  }

  @override
  String get traditionalOrderBooks => 'पारंपरिक क्रम';

  @override
  String get alphabeticalOrderBooks => 'वर्णक्रम';

  @override
  String get home => 'मुख पन्ना';

  @override
  String get addBookmarkTooltip => 'बुकमार्क जोड़ो';

  @override
  String get chooseBookChapter => 'किताब और अध्याय चुनो';

  @override
  String get chooseVerse => 'पद चुनो';

  @override
  String get bookChapterQuickNavigation => 'किताब और अध्याय सीधा खोलो';

  @override
  String get verseQuickNavigation => 'पद सीधा खोलो';

  @override
  String get backToBooks => 'किताबां पर वापिस';

  @override
  String get selectBookTitle => 'किताब चुनो';

  @override
  String selectChapterTitle(Object bookName) {
    return '$bookName का अध्याय चुनो';
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
  String get memorizeHint => 'याद करण वाला पाठ';

  @override
  String get addNoteHint => 'नोट लिखो...';

  @override
  String get languageSearchHint => 'भाषा खोजो';

  @override
  String get languageModuleInstalled => 'इस भाषा का स्थानीय मॉड्यूल मौजूद है';

  @override
  String get languageModulePending => 'इस भाषा का मॉड्यूल अभी उपलब्ध ना है';

  @override
  String get languageNoMatches => 'कोई भाषा ना मिली।';

  @override
  String get languageCatalogDescription => 'ऐप की भाषा चुनो।';

  @override
  String get saveBookmarkSemantics => 'बुकमार्क बचाओ';

  @override
  String get couldNotLoadChapter => 'अध्याय ना खुल सका।';

  @override
  String get couldNotLoadChapters => 'अध्यायां की सूची ना खुल सकी।';

  @override
  String verseWithText(Object text, Object verse) {
    return 'पद $verse: $text';
  }

  @override
  String accentSwatchSemantics(Object name, Object selected) {
    return '$name accent colour$selected';
  }

  @override
  String get oldTestament => 'पुराना नियम';

  @override
  String get newTestament => 'नया नियम';

  @override
  String get deuterocanonApocrypha => 'ड्यूटेरोकैनन / अप्रोक्रीफा';

  @override
  String footnoteTitle(Object caller) {
    return 'Footnote $caller';
  }

  @override
  String get closeFootnote => 'Close footnote';

  @override
  String couldNotOpenFootnote(Object reference) {
    return 'Could not open footnote $reference.';
  }

  @override
  String get chapterFootnotesTitle => 'Footnotes';

  @override
  String openScriptureReference(Object reference) {
    return 'Open $reference';
  }

  @override
  String get couldNotLoadFootnotes =>
      'Could not load footnotes. Please try again.';
}
