// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Rajasthani (`raj`).
class AppLocalizationsRaj extends AppLocalizations {
  AppLocalizationsRaj([String locale = 'raj']) : super(locale);

  @override
  String get settingsTitle => 'सेटिंग्स';

  @override
  String get languageSection => 'भाषा';

  @override
  String get useSystemLanguage => 'सिस्टम भाषा प्रयोग करें';

  @override
  String get useSystemLanguageSubtitle => 'डिवाइस की भाषा डिफ़ॉल्ट रखें।';

  @override
  String get currentLanguage => 'वर्तमान भाषा';

  @override
  String get appLanguage => 'ऐप की भाषा';

  @override
  String get chooseLanguage => 'भाषा चुनें';

  @override
  String get theme => 'थीम';

  @override
  String get appearance => 'दिखावट';

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
  String get redLetterText => 'लाल अक्षर पाठ';

  @override
  String get selectABook => 'किताब चुनें';

  @override
  String get traditionalOrder => 'पारंपरिक क्रम';

  @override
  String get alphabeticalOrder => 'वर्णक्रम';

  @override
  String get bookmarks => 'बुकमार्क';

  @override
  String get retry => 'फिर कोशिश करें';

  @override
  String get chooseTheme => 'थीम चुनें';

  @override
  String get customisableThemes => 'अनुकूल थीम';

  @override
  String get customisableThemesSubtitle =>
      'Tap a card to choose an accent colour. \"Classic White\" also supports Light, Dark and System modes.';

  @override
  String get setThemes => 'थीम लगाएं';

  @override
  String get setThemesSubtitle =>
      'Fixed, hand-crafted palettes. No customisation needed — just tap to apply.';

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
    return 'Could not navigate to $reference.';
  }

  @override
  String get pageNotFound => 'पृष्ठ नहीं मिला';

  @override
  String noRouteDefined(Object routeName) {
    return 'No route defined for \"$routeName\"';
  }

  @override
  String get english => 'अंग्रेज़ी';

  @override
  String get spanish => 'स्पेनिश';

  @override
  String get systemDefault => 'सिस्टम डिफ़ॉल्ट';

  @override
  String get languageStatusEnglish => 'English fallback active';

  @override
  String get languageStatusSystem => 'सिस्टम भाषा उपयोग हो रही है';

  @override
  String languageStatusSelected(Object languageName) {
    return 'चयनित भाषा: $languageName';
  }

  @override
  String get themeLabel => 'थीम';

  @override
  String get notFoundTitle => 'पृष्ठ नहीं मिला';

  @override
  String get loadingCyberBible => 'Loading Cyber Bible...';

  @override
  String get couldNotOpenDatabase =>
      'Could not open the Bible database. Please try again.';

  @override
  String get homeTagline => 'A free and open source Bible study app';

  @override
  String get readTheBible => 'बाइबल पढ़ें';

  @override
  String get settingsTooltip => 'सेटिंग्स';

  @override
  String get themeChoose => 'थीम चुनें';

  @override
  String get customThemes => 'अपनी थीम';

  @override
  String get customThemesSubtitle =>
      'Tap a card to choose an accent colour. \"Classic White\" also supports Light, Dark and System modes.';

  @override
  String get setThemesLabel => 'थीम लगाएं';

  @override
  String get deleteBookmarkDialog => 'बुकमार्क हटाएं?';

  @override
  String removeBookmarkMessage(Object details, Object reference) {
    return 'Remove \"$reference\"$details?\n\nThis cannot be undone.';
  }

  @override
  String get couldNotLoadBookmarks =>
      'Could not load bookmarks. Please try again.';

  @override
  String get bookmarkSavedMessage => 'बुकमार्क सहेजा गया';

  @override
  String get couldNotSaveBookmark => 'बुकमार्क सहेजा नहीं जा सका।';

  @override
  String get noBookmarksMatchFilter => 'No bookmarks match this filter.';

  @override
  String get clearFilter => 'फ़िल्टर हटाएं';

  @override
  String get traditionalOrderLabel => 'पारंपरिक क्रम';

  @override
  String get alphabeticalOrderLabel => 'वर्णक्रम';

  @override
  String get bookmarksTabLabel => 'बुकमार्क';

  @override
  String get fullChapter => 'पूरा अध्याय';

  @override
  String get addBookmark => 'बुकमार्क जोड़ें';

  @override
  String get selectVerse => 'पद चुनें';

  @override
  String get labelOptional => 'Label (optional)';

  @override
  String get notesOptional => 'Notes (optional)';

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
  String get switchToFullChapter => 'पूरे अध्याय पर जाएं';

  @override
  String get bookmarkSheetCancel => 'रद्द करें';

  @override
  String get pickCustomAccent => 'Choose a custom accent';

  @override
  String get apply => 'लागू करें';

  @override
  String get custom => 'अपना';

  @override
  String get brightnessSystem => 'सिस्टम';

  @override
  String get brightnessLight => 'हल्का';

  @override
  String get brightnessDark => 'गहरा';

  @override
  String get selectBook => 'किताब चुनें';

  @override
  String get bookmarkFilterAll => 'सभी';

  @override
  String get bookmarkFilterUnlabeled => 'बिना नाम';

  @override
  String get bookmarkSortRecent => 'हाल के';

  @override
  String get bookmarkSortCanonical => 'बाइबल क्रम';

  @override
  String get chapterRetry => 'फिर कोशिश करें';

  @override
  String get fontSize => 'अक्षर आकार';

  @override
  String fontSizePixels(Object size) {
    return '$size px';
  }

  @override
  String get fontSizeSlider => 'अक्षर आकार';

  @override
  String get fontSizeSliderHint => 'Swipe to adjust from 12 to 28';

  @override
  String get fontPreview =>
      '\"In the beginning God created the heavens and the earth.\" — Gen 1:1';

  @override
  String get showVerseNumbersSubtitle =>
      'Show verse number superscripts in the reading screen.';

  @override
  String get showSectionHeadingsSubtitle =>
      'Show section and Psalm headings between passages.';

  @override
  String get wordsOfChristSubtitle =>
      'Show Jesus\' words in red. Disable for a single text color.';

  @override
  String get verseFormatTitle => 'Verse Format';

  @override
  String get verseFormatSubtitle => 'Choose how scripture text is laid out.';

  @override
  String get paragraphMode => 'अनुच्छेद मोड';

  @override
  String get verseListMode => 'पद सूची मोड';

  @override
  String get paragraphModeTooltip => 'अनुच्छेद मोड चुनें';

  @override
  String get verseListModeTooltip => 'पद सूची मोड चुनें';

  @override
  String get paragraphModeDescription =>
      'Text flows continuously with indented paragraphs, like a printed Bible.';

  @override
  String get verseListModeDescription =>
      'Each scripture paragraph begins on its own line, making verse groups easy to spot.';

  @override
  String get deleteBookmarkTooltip => 'Delete bookmark';

  @override
  String deleteBookmarkSemantics(Object reference) {
    return 'Delete bookmark $reference';
  }

  @override
  String sortBookmarksTooltip(Object sortOrder) {
    return 'Sort: $sortOrder';
  }

  @override
  String get noBookmarksYet => 'अभी कोई बुकमार्क नहीं है।';

  @override
  String get noBookmarksYetHint => 'पढ़ते समय बुकमार्क जोड़ें।';

  @override
  String bookmarkReferenceNavigationError(Object reference) {
    return 'Could not navigate to $reference.';
  }

  @override
  String themeCardSemantics(Object description, Object name, Object selected) {
    return '$name theme$selected. $description';
  }

  @override
  String get selectedThemeSuffix => ', currently selected';

  @override
  String get customisableAccentDescription => 'Customisable accent colour.';

  @override
  String get fixedPaletteDescription => 'Fixed palette.';

  @override
  String accentColourTitle(Object themeName) {
    return 'Accent Colour — $themeName';
  }

  @override
  String get brightnessMode => 'BRIGHTNESS MODE';

  @override
  String get lightMode => 'हल्का';

  @override
  String get followSystemMode => 'सिस्टम के अनुसार';

  @override
  String get darkMode => 'गहरा';

  @override
  String get customColourPicker => 'Custom colour picker';

  @override
  String get customColourTooltip => 'Custom color…';

  @override
  String get couldNotLoadBooks => 'किताबें लोड नहीं हो सकीं।';

  @override
  String chapterLabel(Object chapter) {
    return 'अध्याय $chapter';
  }

  @override
  String get traditionalOrderBooks => 'पारंपरिक क्रम';

  @override
  String get alphabeticalOrderBooks => 'वर्णक्रम';

  @override
  String get home => 'मुखपृष्ठ';

  @override
  String get addBookmarkTooltip => 'बुकमार्क जोड़ें';

  @override
  String get chooseBookChapter => 'किताब और अध्याय चुनें';

  @override
  String get chooseVerse => 'पद चुनें';

  @override
  String get bookChapterQuickNavigation => 'Book and chapter quick navigation';

  @override
  String get verseQuickNavigation => 'Verse quick navigation';

  @override
  String get backToBooks => 'किताबों पर वापस';

  @override
  String get selectBookTitle => 'किताब चुनें';

  @override
  String selectChapterTitle(Object bookName) {
    return '$bookName का अध्याय चुनें';
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
  String get memorizeHint => 'Memorize';

  @override
  String get addNoteHint => 'Add a note...';

  @override
  String get languageSearchHint => 'भाषा खोजें';

  @override
  String get languageModuleInstalled => 'भाषा मॉड्यूल स्थापित है';

  @override
  String get languageModulePending => 'भाषा मॉड्यूल उपलब्ध नहीं';

  @override
  String get languageNoMatches => 'कोई मिलती-जुलती भाषा नहीं मिली।';

  @override
  String get languageCatalogDescription =>
      'Languages marked as installed work offline. Other languages will be added as machine-translated modules.';

  @override
  String get saveBookmarkSemantics => 'Save bookmark';

  @override
  String get couldNotLoadChapter =>
      'Could not load the chapter. Please try again.';

  @override
  String get couldNotLoadChapters =>
      'Could not load chapters. Please try again.';

  @override
  String verseWithText(Object text, Object verse) {
    return 'Verse $verse: $text';
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
  String get deuterocanonApocrypha => 'अपोक्रिफा / द्वितीयकानोन';
}
