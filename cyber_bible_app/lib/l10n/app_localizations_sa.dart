// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Sanskrit (`sa`).
class AppLocalizationsSa extends AppLocalizations {
  AppLocalizationsSa([String locale = 'sa']) : super(locale);

  @override
  String get settingsTitle => 'विन्यासाः';

  @override
  String get languageSection => 'भाषा';

  @override
  String get useSystemLanguage => 'प्रणालीभाषाम् उपयोजयतु';

  @override
  String get useSystemLanguageSubtitle =>
      'यन्त्रस्य भाषां पूर्वनिर्धारितभाषारूपेण उपयोजयतु।';

  @override
  String get currentLanguage => 'वर्तमानभाषा';

  @override
  String get appLanguage => 'अनुप्रयोगभाषा';

  @override
  String get chooseLanguage => 'भाषां चिनोतु';

  @override
  String get theme => 'विषयविन्यासः';

  @override
  String get appearance => 'दृश्यरूपम्';

  @override
  String get textSection => 'पाठः';

  @override
  String get readingFormatSection => 'पठनविन्यासः';

  @override
  String get displaySection => 'प्रदर्शनम्';

  @override
  String get verseNumbers => 'श्लोकसङ्ख्याः';

  @override
  String get sectionHeadings => 'विभागशीर्षकाणि';

  @override
  String get redLetterText => 'रक्तवर्णपाठः';

  @override
  String get selectABook => 'ग्रन्थं चिनोतु';

  @override
  String get traditionalOrder => 'परम्परागतक्रमः';

  @override
  String get alphabeticalOrder => 'वर्णक्रमः';

  @override
  String get bookmarks => 'स्मरणचिह्नानि';

  @override
  String get retry => 'पुनः प्रयतताम्';

  @override
  String get chooseTheme => 'विषयविन्यासं चिनोतु';

  @override
  String get customisableThemes => 'परिवर्तनीयविषयविन्यासाः';

  @override
  String get customisableThemesSubtitle =>
      'विशेषवर्णं चिन्वितुं पत्रे स्पृशतु। \"Classic White\" प्रकाश-अन्धकार-प्रणालीविन्यासान् अपि समर्थयति।';

  @override
  String get setThemes => 'स्थिरविषयविन्यासाः';

  @override
  String get setThemesSubtitle =>
      'सावधानतया निर्मिताः स्थिरवर्णसमूहाः। परिवर्तनं न आवश्यकम्; उपयोगाय स्पृशतु।';

  @override
  String get deleteBookmarkQuestion => 'स्मरणचिह्नं निष्कासयतु किम्?';

  @override
  String get cancel => 'निरस्तं करोतु';

  @override
  String get delete => 'निष्कासयतु';

  @override
  String get bookmarkSaved => 'स्मरणचिह्नं रक्षितम्';

  @override
  String get couldNotDeleteBookmark => 'स्मरणचिह्नं निष्कासयितुं न शक्यते।';

  @override
  String couldNotNavigate(Object reference) {
    return '$reference प्रति गन्तुं न शक्यते।';
  }

  @override
  String get pageNotFound => 'पृष्ठं न प्राप्तम्';

  @override
  String noRouteDefined(Object routeName) {
    return '\"$routeName\" कृते मार्गः न निर्धारितः';
  }

  @override
  String get english => 'आङ्ग्लभाषा';

  @override
  String get spanish => 'स्पेनीयभाषा';

  @override
  String get systemDefault => 'प्रणालीपूर्वनिर्धारणम्';

  @override
  String get languageStatusEnglish => 'वैकल्पिकभाषारूपेण आङ्ग्लभाषा प्रयुज्यते';

  @override
  String get languageStatusSystem => 'प्रणालीभाषा प्रयुज्यते';

  @override
  String languageStatusSelected(Object languageName) {
    return 'निर्वाचिता भाषा: $languageName';
  }

  @override
  String get themeLabel => 'विषयविन्यासः';

  @override
  String get notFoundTitle => 'पृष्ठं न प्राप्तम्';

  @override
  String get loadingCyberBible => 'साइबर-बाइबल् उद्घाट्यते...';

  @override
  String get couldNotOpenDatabase =>
      'बाइबल्-सङ्ग्रहदत्तांशः उद्घाटयितुं न शक्यते। पुनः प्रयतताम्।';

  @override
  String get homeTagline => 'बाइबल्-अध्ययनाय निःशुल्कः मुक्तस्रोत-अनुप्रयोगः';

  @override
  String get readTheBible => 'बाइबल् पठतु';

  @override
  String get settingsTooltip => 'विन्यासाः';

  @override
  String get themeChoose => 'विषयविन्यासं चिनोतु';

  @override
  String get customThemes => 'परिवर्तनीयविषयविन्यासाः';

  @override
  String get customThemesSubtitle =>
      'विशेषवर्णं चिन्वितुं पत्रे स्पृशतु। \"Classic White\" प्रकाश-अन्धकार-प्रणालीविन्यासान् अपि समर्थयति।';

  @override
  String get setThemesLabel => 'स्थिरविषयविन्यासाः';

  @override
  String get deleteBookmarkDialog => 'स्मरणचिह्नं निष्कासयतु किम्?';

  @override
  String removeBookmarkMessage(Object details, Object reference) {
    return '\"$reference\"$details अपसारयतु किम्?\n\nएतत् कर्म प्रत्यावर्तयितुं न शक्यते।';
  }

  @override
  String get couldNotLoadBookmarks =>
      'स्मरणचिह्नानि उद्घाटयितुं न शक्यते। पुनः प्रयतताम्।';

  @override
  String get bookmarkSavedMessage => 'स्मरणचिह्नं रक्षितम्';

  @override
  String get couldNotSaveBookmark => 'स्मरणचिह्नं रक्षितुं न शक्यते।';

  @override
  String get noBookmarksMatchFilter =>
      'अस्मिन् शोधनेन सह किमपि स्मरणचिह्नं न मेलति।';

  @override
  String get clearFilter => 'शोधनं निष्कासयतु';

  @override
  String get traditionalOrderLabel => 'परम्परागतक्रमः';

  @override
  String get alphabeticalOrderLabel => 'वर्णक्रमः';

  @override
  String get bookmarksTabLabel => 'स्मरणचिह्नानि';

  @override
  String get fullChapter => 'सम्पूर्णोऽध्यायः';

  @override
  String get addBookmark => 'स्मरणचिह्नं योजयतु';

  @override
  String get selectVerse => 'श्लोकं चिनोतु';

  @override
  String get labelOptional => 'नामपत्रम् (वैकल्पिकम्)';

  @override
  String get notesOptional => 'टिप्पण्यः (वैकल्पिकाः)';

  @override
  String get save => 'रक्षतु';

  @override
  String get goToVerse => 'श्लोकं प्रति गच्छतु';

  @override
  String verseTitle(Object verse) {
    return 'श्लोकः $verse';
  }

  @override
  String chapterTitle(Object chapter) {
    return 'अध्यायः $chapter';
  }

  @override
  String get switchToFullChapter => 'सम्पूर्णाध्यायस्मरणचिह्नं चिनोतु';

  @override
  String get bookmarkSheetCancel => 'निरस्तं कृत्वा स्मरणचिह्नपट्टं पिधत्तु';

  @override
  String get pickCustomAccent => 'विशेषवर्णं चिनोतु';

  @override
  String get apply => 'प्रयोजयतु';

  @override
  String get custom => 'विशेषः';

  @override
  String get brightnessSystem => 'प्रणाली';

  @override
  String get brightnessLight => 'प्रकाशः';

  @override
  String get brightnessDark => 'अन्धकारः';

  @override
  String get selectBook => 'ग्रन्थं चिनोतु';

  @override
  String get bookmarkFilterAll => 'सर्वाणि';

  @override
  String get bookmarkFilterUnlabeled => 'नामरहितम्';

  @override
  String get bookmarkSortRecent => 'नूतनानि प्रथमम्';

  @override
  String get bookmarkSortCanonical => 'धर्मग्रन्थक्रमः';

  @override
  String get chapterRetry => 'पुनः प्रयतताम्';

  @override
  String get fontSize => 'अक्षरमात्रा';

  @override
  String fontSizePixels(Object size) {
    return '$size px';
  }

  @override
  String get fontSizeSlider => 'अक्षरमात्रानियन्त्रकम्';

  @override
  String get fontSizeSliderHint => '१२ तः २८ पर्यन्तं परिवर्तयितुं सर्पयतु';

  @override
  String get fontPreview =>
      '\"आदौ ईश्वरः द्यावापृथिवी निर्मितवान्।\" — उत्पत्तिः १:१';

  @override
  String get showVerseNumbersSubtitle => 'पठनपटले श्लोकसङ्ख्याः दर्शयतु।';

  @override
  String get showSectionHeadingsSubtitle =>
      'विभागशीर्षकाणि स्तोत्रशीर्षकाणि च पाठांशयोः मध्ये दर्शयतु।';

  @override
  String get wordsOfChristSubtitle =>
      'येशोः वचनानि रक्तवर्णेन दर्शयतु। एकवर्णपाठाय एतत् निष्क्रियं करोतु।';

  @override
  String get verseFormatTitle => 'श्लोकविन्यासः';

  @override
  String get verseFormatSubtitle => 'पवित्रग्रन्थपाठस्य व्यवस्थां चिनोतु।';

  @override
  String get paragraphMode => 'अनुच्छेदः';

  @override
  String get verseListMode => 'श्लोकसूची';

  @override
  String get paragraphModeTooltip => 'अनुच्छेदविन्यासः';

  @override
  String get verseListModeTooltip => 'श्लोकसूचीविन्यासः';

  @override
  String get paragraphModeDescription =>
      'मुद्रितबाइबल् इव पाठः निरन्तरम् अन्तःप्रविष्टेषु अनुच्छेदेषु प्रवहति।';

  @override
  String get verseListModeDescription =>
      'प्रत्येकः पवित्रग्रन्थानुच्छेदः स्वकीयायां पङ्क्तौ आरभते, येन श्लोकसमूहाः सुलभतया दृश्यन्ते।';

  @override
  String get deleteBookmarkTooltip => 'स्मरणचिह्नं निष्कासयतु';

  @override
  String deleteBookmarkSemantics(Object reference) {
    return '$reference स्मरणचिह्नं निष्कासयतु';
  }

  @override
  String sortBookmarksTooltip(Object sortOrder) {
    return 'क्रमः: $sortOrder';
  }

  @override
  String get noBookmarksYet => 'अद्यापि स्मरणचिह्नानि न सन्ति।';

  @override
  String get noBookmarksYetHint =>
      'स्थानं रक्षितुं पठतः स्मरणचिह्नचिह्नं स्पृशतु।';

  @override
  String bookmarkReferenceNavigationError(Object reference) {
    return '$reference प्रति गन्तुं न शक्यते।';
  }

  @override
  String themeCardSemantics(Object description, Object name, Object selected) {
    return '$name विषयविन्यासः$selected. $description';
  }

  @override
  String get selectedThemeSuffix => ', अधुना निर्वाचितः';

  @override
  String get customisableAccentDescription => 'परिवर्तनीयविशेषवर्णः।';

  @override
  String get fixedPaletteDescription => 'स्थिरवर्णसमूहः।';

  @override
  String accentColourTitle(Object themeName) {
    return 'विशेषवर्णः — $themeName';
  }

  @override
  String get brightnessMode => 'प्रकाशमानताविन्यासः';

  @override
  String get lightMode => 'प्रकाशविन्यासः';

  @override
  String get followSystemMode => 'प्रणालीविन्यासमनुसरतु';

  @override
  String get darkMode => 'अन्धकारविन्यासः';

  @override
  String get customColourPicker => 'विशेषवर्णचयनम्';

  @override
  String get customColourTooltip => 'विशेषवर्णः...';

  @override
  String get couldNotLoadBooks =>
      'ग्रन्थसूची उद्घाटयितुं न शक्यते। पुनः प्रयतताम्।';

  @override
  String chapterLabel(Object chapter) {
    return 'अध्यायः $chapter';
  }

  @override
  String get traditionalOrderBooks => 'परम्परागतक्रमे ग्रन्थाः';

  @override
  String get alphabeticalOrderBooks => 'वर्णक्रमे ग्रन्थाः';

  @override
  String get home => 'गृहम्';

  @override
  String get addBookmarkTooltip => 'स्मरणचिह्नं योजयतु';

  @override
  String get chooseBookChapter => 'ग्रन्थम् अध्यायं च चिनोतु';

  @override
  String get chooseVerse => 'श्लोकं चिनोतु';

  @override
  String get bookChapterQuickNavigation => 'ग्रन्थम् अध्यायं च शीघ्रं गच्छतु';

  @override
  String get verseQuickNavigation => 'श्लोकं शीघ्रं गच्छतु';

  @override
  String get backToBooks => 'ग्रन्थान् प्रति प्रत्यागच्छतु';

  @override
  String get selectBookTitle => 'ग्रन्थं चिनोतु';

  @override
  String selectChapterTitle(Object bookName) {
    return 'अध्यायं चिनोतु ($bookName)';
  }

  @override
  String chapterSelectionLabel(Object chapter) {
    return 'अध्यायः $chapter';
  }

  @override
  String verseSelectionLabel(Object verse) {
    return 'श्लोकः $verse';
  }

  @override
  String fullChapterReference(Object bookName, Object chapter) {
    return 'सम्पूर्णाध्यायः: $bookName $chapter';
  }

  @override
  String get memorizeHint => 'स्मरतु';

  @override
  String get addNoteHint => 'टिप्पणीं योजयतु...';

  @override
  String get languageSearchHint => 'भाषाः अन्वेषयतु';

  @override
  String get languageModuleInstalled => 'स्थापितम्';

  @override
  String get languageModulePending => 'यन्त्रानुवादः प्रतीक्ष्यते';

  @override
  String get languageNoMatches => 'भवतः अन्वेषणेन सह कापि भाषा न मेलति।';

  @override
  String get languageCatalogDescription =>
      'स्थापितभाषाः अन्तर्जालं विना कार्यं कुर्वन्ति। अन्याः भाषाः यन्त्रानुवादरूपेण योजयिष्यन्ते।';

  @override
  String get saveBookmarkSemantics => 'स्मरणचिह्नं रक्षतु';

  @override
  String get couldNotLoadChapter =>
      'अध्यायं उद्घाटयितुं न शक्यते। पुनः प्रयतताम्।';

  @override
  String get couldNotLoadChapters =>
      'अध्यायान् उद्घाटयितुं न शक्यते। पुनः प्रयतताम्।';

  @override
  String verseWithText(Object text, Object verse) {
    return 'श्लोकः $verse: $text';
  }

  @override
  String accentSwatchSemantics(Object name, Object selected) {
    return '$name विशेषवर्णः$selected';
  }

  @override
  String get oldTestament => 'पुरातननियमः';

  @override
  String get newTestament => 'नूतननियमः';

  @override
  String get deuterocanonApocrypha => 'द्वितीयकाननग्रन्थाः / अपोक्रिफा';
}
