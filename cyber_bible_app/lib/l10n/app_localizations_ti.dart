// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Tigrinya (`ti`).
class AppLocalizationsTi extends AppLocalizations {
  AppLocalizationsTi([String locale = 'ti']) : super(locale);

  @override
  String get settingsTitle => 'ቅጥዕታት';

  @override
  String get languageSection => 'ቋንቋ';

  @override
  String get useSystemLanguage => 'ቋንቋ ስርዓት ተጠቐም';

  @override
  String get useSystemLanguageSubtitle => 'ቋንቋ መሳርሒ ከም ነባሪ ቋንቋ ተጠቐም።';

  @override
  String get currentLanguage => 'ሕጂ ዘሎ ቋንቋ';

  @override
  String get appLanguage => 'ቋንቋ መተግበሪ';

  @override
  String get chooseLanguage => 'ቋንቋ ምረጽ';

  @override
  String get theme => 'ቅዲ';

  @override
  String get appearance => 'ኣርኣያ';

  @override
  String get textSection => 'ጽሑፍ';

  @override
  String get readingFormatSection => 'ቅርጺ ንባብ';

  @override
  String get displaySection => 'ምርኣይ';

  @override
  String get verseNumbers => 'ቁጽሪ ጥቕሲ';

  @override
  String get sectionHeadings => 'ኣርእስቲ ክፍሊ';

  @override
  String get redLetterText => 'ቀይሕ ጽሑፍ';

  @override
  String get selectABook => 'መጽሓፍ ምረጽ';

  @override
  String get traditionalOrder => 'ባህላዊ ቅደም ተኸተል';

  @override
  String get alphabeticalOrder => 'ቅደም ተኸተል ፊደላት';

  @override
  String get bookmarks => 'መለክዒታት';

  @override
  String get retry => 'እንደገና ፈትን';

  @override
  String get chooseTheme => 'ቅዲ ምረጽ';

  @override
  String get customisableThemes => 'ዝቕየሩ ቅዲታት';

  @override
  String get customisableThemesSubtitle =>
      'ሕብሪ ንምምራጽ ኣብ ካርድ ጠውቕ። \"Classic White\" ኣብሪህ፣ ጸሊምን ስርዓትን ቅዲታት እውን ይድግፍ።';

  @override
  String get setThemes => 'ዘይቕየሩ ቅዲታት';

  @override
  String get setThemesSubtitle =>
      'ብጥንቃቐ ዝተዳለዉ ዘይቕየሩ ሕብርታት። ምትዕርራይ ኣየድልን፤ ንምጥቃም ጠውቕ።';

  @override
  String get deleteBookmarkQuestion => 'መለክዒ ክሰርዝ?';

  @override
  String get cancel => 'ሰርዝ';

  @override
  String get delete => 'ኣልግስ';

  @override
  String get bookmarkSaved => 'መለክዒ ተቐሚጡ';

  @override
  String get couldNotDeleteBookmark => 'መለክዒ ክሰርዞ ኣይከኣለን።';

  @override
  String couldNotNavigate(Object reference) {
    return 'ናብ $reference ክኸይድ ኣይከኣለን።';
  }

  @override
  String get pageNotFound => 'ገጽ ኣይተረኽበን';

  @override
  String noRouteDefined(Object routeName) {
    return 'ን\"$routeName\" መንገዲ ኣይተመደበን';
  }

  @override
  String get english => 'እንግሊዝኛ';

  @override
  String get spanish => 'ስጳንኛ';

  @override
  String get systemDefault => 'ነባሪ ስርዓት';

  @override
  String get languageStatusEnglish => 'እንግሊዝኛ ከም መተካእታ ቋንቋ ይጥቀም ኣሎ';

  @override
  String get languageStatusSystem => 'ቋንቋ ስርዓት ይጥቀም ኣሎ';

  @override
  String languageStatusSelected(Object languageName) {
    return 'ዝተመርጸ ቋንቋ: $languageName';
  }

  @override
  String get themeLabel => 'ቅዲ';

  @override
  String get notFoundTitle => 'ገጽ ኣይተረኽበን';

  @override
  String get loadingCyberBible => 'Cyber Bible ይጽዓን ኣሎ...';

  @override
  String get couldNotOpenDatabase =>
      'መዝገብ ሓበሬታ መጽሓፍ ቅዱስ ክኸፍቶ ኣይከኣለን። እንደገና ፈትን።';

  @override
  String get homeTagline => 'ንመጽናዕቲ መጽሓፍ ቅዱስ ዝኸውን ናጻን ክፉት ምንጪ ዘለዎን መተግበሪ';

  @override
  String get readTheBible => 'መጽሓፍ ቅዱስ ኣንብብ';

  @override
  String get settingsTooltip => 'ቅጥዕታት';

  @override
  String get themeChoose => 'ቅዲ ምረጽ';

  @override
  String get customThemes => 'ዝቕየሩ ቅዲታት';

  @override
  String get customThemesSubtitle =>
      'ሕብሪ ንምምራጽ ኣብ ካርድ ጠውቕ። \"Classic White\" ኣብሪህ፣ ጸሊምን ስርዓትን ቅዲታት እውን ይድግፍ።';

  @override
  String get setThemesLabel => 'ዘይቕየሩ ቅዲታት';

  @override
  String get deleteBookmarkDialog => 'መለክዒ ክሰርዝ?';

  @override
  String removeBookmarkMessage(Object details, Object reference) {
    return '\"$reference\"$details ከልግስ?\n\nእዚ ተግባር ክምለስ ኣይከኣልን።';
  }

  @override
  String get couldNotLoadBookmarks => 'መለክዒታት ክጽዕን ኣይከኣለን። እንደገና ፈትን።';

  @override
  String get bookmarkSavedMessage => 'መለክዒ ተቐሚጡ';

  @override
  String get couldNotSaveBookmark => 'መለክዒ ክቕምጦ ኣይከኣለን።';

  @override
  String get noBookmarksMatchFilter => 'ንዚ መጻረዪ ዝሰማማዕ መለክዒ የለን።';

  @override
  String get clearFilter => 'መጻረዪ ኣጽርይ';

  @override
  String get traditionalOrderLabel => 'ባህላዊ ቅደም ተኸተል';

  @override
  String get alphabeticalOrderLabel => 'ቅደም ተኸተል ፊደላት';

  @override
  String get bookmarksTabLabel => 'መለክዒታት';

  @override
  String get fullChapter => 'ምሉእ ምዕራፍ';

  @override
  String get addBookmark => 'መለክዒ ወስኽ';

  @override
  String get selectVerse => 'ጥቕሲ ምረጽ';

  @override
  String get labelOptional => 'ምልክት (ኣማራጺ)';

  @override
  String get notesOptional => 'ማስታወሻታት (ኣማራጺ)';

  @override
  String get save => 'ኣቐምጥ';

  @override
  String get goToVerse => 'ናብ ጥቕሲ ኪድ';

  @override
  String verseTitle(Object verse) {
    return 'ጥቕሲ $verse';
  }

  @override
  String chapterTitle(Object chapter) {
    return 'ምዕራፍ $chapter';
  }

  @override
  String get switchToFullChapter => 'ናብ መለክዒ ምሉእ ምዕራፍ ቀይር';

  @override
  String get bookmarkSheetCancel => 'ሰርዝን ፓነል መለክዒታት ዕጸውን';

  @override
  String get pickCustomAccent => 'ፍሉይ ሕብሪ ምረጽ';

  @override
  String get apply => 'ተግብር';

  @override
  String get custom => 'ፍሉይ';

  @override
  String get brightnessSystem => 'ስርዓት';

  @override
  String get brightnessLight => 'ኣብሪህ';

  @override
  String get brightnessDark => 'ጸሊም';

  @override
  String get selectBook => 'መጽሓፍ ምረጽ';

  @override
  String get bookmarkFilterAll => 'ኩሉ';

  @override
  String get bookmarkFilterUnlabeled => 'ምልክት ዘይብሉ';

  @override
  String get bookmarkSortRecent => 'ሓደስቲ ቀዳሞት';

  @override
  String get bookmarkSortCanonical => 'ቀኖናዊ ቅደም ተኸተል';

  @override
  String get chapterRetry => 'እንደገና ፈትን';

  @override
  String get fontSize => 'ዓቐን ፊደል';

  @override
  String fontSizePixels(Object size) {
    return '$size px';
  }

  @override
  String get fontSizeSlider => 'መቆጻጸሪ ዓቐን ፊደል';

  @override
  String get fontSizeSliderHint => 'ካብ 12 ክሳብ 28 ንምትዕርራይ ስሓብ';

  @override
  String get fontPreview => '\"ኣብ መጀመርታ እግዚኣብሔር ሰማይን ምድርን ፈጠረ።\" — ዘፍ 1:1';

  @override
  String get showVerseNumbersSubtitle => 'ኣብ ስክሪን ንባብ ቁጽሪ ጥቕሲ ኣርኢ።';

  @override
  String get showSectionHeadingsSubtitle => 'ኣርእስቲ ክፍሊን መዝሙርን ኣብ መንጎ ጽሑፋት ኣርኢ።';

  @override
  String get wordsOfChristSubtitle =>
      'ቃላት ኢየሱስ ብቀይሕ ኣርኢ። ሓደ ሕብሪ ጽሑፍ ንምጥቃም ኣጥፍኦ።';

  @override
  String get verseFormatTitle => 'ቅርጺ ጥቕሲ';

  @override
  String get verseFormatSubtitle => 'ጽሑፍ ቅዱሳት መጻሕፍቲ ከመይ ከም ዝሰርዕ ምረጽ።';

  @override
  String get paragraphMode => 'ሕጡብ';

  @override
  String get verseListMode => 'ዝርዝር ጥቕሲ';

  @override
  String get paragraphModeTooltip => 'ቅዲ ሕጡብ';

  @override
  String get verseListModeTooltip => 'ቅዲ ዝርዝር ጥቕሲ';

  @override
  String get paragraphModeDescription =>
      'ጽሑፍ ከም ዝተሓትመ መጽሓፍ ቅዱስ ብቐጻሊ ኣብ ዝተኣተዉ ሕጡባት ይኸይድ።';

  @override
  String get verseListModeDescription =>
      'ነፍሲ ወከፍ ሕጡብ ቅዱሳት መጻሕፍቲ ኣብ ፍሉይ መስመር ይጅምር፣ ጉጅለታት ጥቕሲ ንምርኣይ ቀሊል ይገብሮ።';

  @override
  String get deleteBookmarkTooltip => 'መለክዒ ኣልግስ';

  @override
  String deleteBookmarkSemantics(Object reference) {
    return 'መለክዒ $reference ኣልግስ';
  }

  @override
  String sortBookmarksTooltip(Object sortOrder) {
    return 'ሰርዕ: $sortOrder';
  }

  @override
  String get noBookmarksYet => 'ገና መለክዒ የለን።';

  @override
  String get noBookmarksYetHint => 'ቦታ ንምቕማጥ ኣብ እተንብበሉ ግዜ ምልክት መለክዒ ጠውቕ።';

  @override
  String bookmarkReferenceNavigationError(Object reference) {
    return 'ናብ $reference ክኸይድ ኣይከኣለን።';
  }

  @override
  String themeCardSemantics(Object description, Object name, Object selected) {
    return 'ቅዲ $name$selected. $description';
  }

  @override
  String get selectedThemeSuffix => ', ሕጂ ዝተመርጸ';

  @override
  String get customisableAccentDescription => 'ዝቕየር ሕብሪ።';

  @override
  String get fixedPaletteDescription => 'ዘይቕየር ሕብሪ።';

  @override
  String accentColourTitle(Object themeName) {
    return 'ሕብሪ — $themeName';
  }

  @override
  String get brightnessMode => 'ብርሃን ቅዲ';

  @override
  String get lightMode => 'ኣብሪህ ቅዲ';

  @override
  String get followSystemMode => 'ቅዲ ስርዓት ተኸተል';

  @override
  String get darkMode => 'ጸሊም ቅዲ';

  @override
  String get customColourPicker => 'ፍሉይ ሕብሪ መምረጺ';

  @override
  String get customColourTooltip => 'ፍሉይ ሕብሪ...';

  @override
  String get couldNotLoadBooks => 'ዝርዝር መጻሕፍቲ ክጽዕን ኣይከኣለን። እንደገና ፈትን።';

  @override
  String chapterLabel(Object chapter) {
    return 'ምዕራፍ $chapter';
  }

  @override
  String get traditionalOrderBooks => 'መጻሕፍቲ ብባህላዊ ቅደም ተኸተል';

  @override
  String get alphabeticalOrderBooks => 'መጻሕፍቲ ብቅደም ተኸተል ፊደላት';

  @override
  String get home => 'ገዛ';

  @override
  String get addBookmarkTooltip => 'መለክዒ ወስኽ';

  @override
  String get chooseBookChapter => 'መጽሓፍን ምዕራፍን ምረጽ';

  @override
  String get chooseVerse => 'ጥቕሲ ምረጽ';

  @override
  String get bookChapterQuickNavigation => 'ቀልጢፍካ ናብ መጽሓፍን ምዕራፍን ኪድ';

  @override
  String get verseQuickNavigation => 'ቀልጢፍካ ናብ ጥቕሲ ኪድ';

  @override
  String get backToBooks => 'ናብ መጻሕፍቲ ተመለስ';

  @override
  String get selectBookTitle => 'መጽሓፍ ምረጽ';

  @override
  String selectChapterTitle(Object bookName) {
    return 'ምዕራፍ ምረጽ ($bookName)';
  }

  @override
  String chapterSelectionLabel(Object chapter) {
    return 'ምዕራፍ $chapter';
  }

  @override
  String verseSelectionLabel(Object verse) {
    return 'ጥቕሲ $verse';
  }

  @override
  String fullChapterReference(Object bookName, Object chapter) {
    return 'ምሉእ ምዕራፍ: $bookName $chapter';
  }

  @override
  String get memorizeHint => 'ብሓሳብ ዓቅብ';

  @override
  String get addNoteHint => 'ማስታወሻ ወስኽ...';

  @override
  String get languageSearchHint => 'ቋንቋታት ድለ';

  @override
  String get languageModuleInstalled => 'ተተኺሉ';

  @override
  String get languageModulePending => 'ማሽናዊ ትርጉም ይጽበ';

  @override
  String get languageNoMatches => 'ንድለትካ ዝሰማማዕ ቋንቋ የለን።';

  @override
  String get languageCatalogDescription =>
      'ዝተተኸሉ ቋንቋታት ብዘይ ኢንተርነት ይሰርሑ። ካልኦት ቋንቋታት ከም ማሽናዊ ትርጉም ይውሰኹ።';

  @override
  String get saveBookmarkSemantics => 'መለክዒ ኣቐምጥ';

  @override
  String get couldNotLoadChapter => 'ምዕራፍ ክጽዕን ኣይከኣለን። እንደገና ፈትን።';

  @override
  String get couldNotLoadChapters => 'ምዕራፋት ክጽዕኑ ኣይከኣሉን። እንደገና ፈትን።';

  @override
  String verseWithText(Object text, Object verse) {
    return 'ጥቕሲ $verse: $text';
  }

  @override
  String accentSwatchSemantics(Object name, Object selected) {
    return 'ሕብሪ $name$selected';
  }

  @override
  String get oldTestament => 'ብሉይ ኪዳን';

  @override
  String get newTestament => 'ሓድሽ ኪዳን';

  @override
  String get deuterocanonApocrypha => 'ድሕረ-ቀኖና / ኣፖክሪፋ';
}
