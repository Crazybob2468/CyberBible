// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Amharic (`am`).
class AppLocalizationsAm extends AppLocalizations {
  AppLocalizationsAm([String locale = 'am']) : super(locale);

  @override
  String get settingsTitle => 'ቅንብሮች';

  @override
  String get languageSection => 'ቋንቋ';

  @override
  String get useSystemLanguage => 'የስርዓቱን ቋንቋ ተጠቀም';

  @override
  String get useSystemLanguageSubtitle => 'በነባሪ ከመሣሪያው ቋንቋ ጋር አስማማ።';

  @override
  String get currentLanguage => 'የአሁኑ ቋንቋ';

  @override
  String get appLanguage => 'የመተግበሪያ ቋንቋ';

  @override
  String get chooseLanguage => 'ቋንቋ ይምረጡ';

  @override
  String get theme => 'ገጽታ';

  @override
  String get appearance => 'መልክ';

  @override
  String get textSection => 'ጽሑፍ';

  @override
  String get readingFormatSection => 'የንባብ ቅርጸት';

  @override
  String get displaySection => 'ማሳያ';

  @override
  String get verseNumbers => 'የቁጥር ቁጥሮች';

  @override
  String get sectionHeadings => 'የክፍል ርዕሶች';

  @override
  String get redLetterText => 'ቀይ ፊደል ጽሑፍ';

  @override
  String get selectABook => 'መጽሐፍ ይምረጡ';

  @override
  String get traditionalOrder => 'ባህላዊ ቅደም ተከተል';

  @override
  String get alphabeticalOrder => 'የፊደል ቅደም ተከተል';

  @override
  String get bookmarks => 'ዕልባቶች';

  @override
  String get retry => 'እንደገና ይሞክሩ';

  @override
  String get chooseTheme => 'ገጽታ ይምረጡ';

  @override
  String get customisableThemes => 'ሊበጁ የሚችሉ ገጽታዎች';

  @override
  String get customisableThemesSubtitle =>
      'የአጽንዖት ቀለም ለመምረጥ ካርድ ይንኩ። \"ክላሲክ ነጭ\" የብርሃን፣ የጨለማ እና የስርዓት ሁነታዎችንም ይደግፋል።';

  @override
  String get setThemes => 'የተወሰኑ ገጽታዎች';

  @override
  String get setThemesSubtitle =>
      'ቋሚ፣ በእጅ የተዘጋጁ የቀለም ስብስቦች። ማበጀት አያስፈልግም - ለመተግበር ብቻ ይንኩ።';

  @override
  String get deleteBookmarkQuestion => 'ዕልባት ይሰረዝ?';

  @override
  String get cancel => 'ሰርዝ';

  @override
  String get delete => 'ሰርዝ';

  @override
  String get bookmarkSaved => 'ዕልባት ተቀምጧል';

  @override
  String get couldNotDeleteBookmark => 'ዕልባቱን መሰረዝ አልተቻለም።';

  @override
  String couldNotNavigate(Object reference) {
    return 'ወደ $reference መሄድ አልተቻለም።';
  }

  @override
  String get pageNotFound => 'ገጹ አልተገኘም';

  @override
  String noRouteDefined(Object routeName) {
    return 'ለ\"$routeName\" ምንም መንገድ አልተገለጸም';
  }

  @override
  String get english => 'እንግሊዝኛ';

  @override
  String get spanish => 'ስፓኒሽ';

  @override
  String get systemDefault => 'የስርዓት ነባሪ';

  @override
  String get languageStatusEnglish => 'የእንግሊዝኛ መመለሻ ንቁ ነው';

  @override
  String get languageStatusSystem => 'የስርዓቱን ቋንቋ በመጠቀም ላይ';

  @override
  String languageStatusSelected(Object languageName) {
    return 'የተመረጠ ቋንቋ፦ $languageName';
  }

  @override
  String get themeLabel => 'ገጽታ';

  @override
  String get notFoundTitle => 'ገጹ አልተገኘም';

  @override
  String get loadingCyberBible => 'Cyber Bible በመጫን ላይ...';

  @override
  String get couldNotOpenDatabase =>
      'የመጽሐፍ ቅዱስ የውሂብ ጎታ መክፈት አልተቻለም። እባክዎ እንደገና ይሞክሩ።';

  @override
  String get homeTagline => 'ነፃ እና ክፍት ምንጭ የመጽሐፍ ቅዱስ ጥናት መተግበሪያ';

  @override
  String get readTheBible => 'መጽሐፍ ቅዱስን ያንብቡ';

  @override
  String get settingsTooltip => 'ቅንብሮች';

  @override
  String get themeChoose => 'ገጽታ ይምረጡ';

  @override
  String get customThemes => 'ሊበጁ የሚችሉ ገጽታዎች';

  @override
  String get customThemesSubtitle =>
      'የአጽንዖት ቀለም ለመምረጥ ካርድ ይንኩ። \"ክላሲክ ነጭ\" የብርሃን፣ የጨለማ እና የስርዓት ሁነታዎችንም ይደግፋል።';

  @override
  String get setThemesLabel => 'የተወሰኑ ገጽታዎች';

  @override
  String get deleteBookmarkDialog => 'ዕልባት ይሰረዝ?';

  @override
  String removeBookmarkMessage(Object details, Object reference) {
    return '\"$reference\"$details ይወገድ?\n\nይህ ሊቀለበስ አይችልም።';
  }

  @override
  String get couldNotLoadBookmarks => 'ዕልባቶችን መጫን አልተቻለም። እባክዎ እንደገና ይሞክሩ።';

  @override
  String get bookmarkSavedMessage => 'ዕልባት ተቀምጧል';

  @override
  String get couldNotSaveBookmark => 'ዕልባት ማስቀመጥ አልተቻለም።';

  @override
  String get noBookmarksMatchFilter => 'ምንም ዕልባቶች ከዚህ ማጣሪያ ጋር አይዛመዱም።';

  @override
  String get clearFilter => 'ማጣሪያ አጽዳ';

  @override
  String get traditionalOrderLabel => 'ባህላዊ ቅደም ተከተል';

  @override
  String get alphabeticalOrderLabel => 'የፊደል ቅደም ተከተል';

  @override
  String get bookmarksTabLabel => 'ዕልባቶች';

  @override
  String get fullChapter => 'ሙሉ ምዕራፍ';

  @override
  String get addBookmark => 'ዕልባት ጨምር';

  @override
  String get selectVerse => 'ቁጥር ይምረጡ';

  @override
  String get labelOptional => 'መለያ (አማራጭ)';

  @override
  String get notesOptional => 'ማስታወሻዎች (አማራጭ)';

  @override
  String get save => 'አስቀምጥ';

  @override
  String get goToVerse => 'ወደ ቁጥር ሂድ';

  @override
  String verseTitle(Object verse) {
    return 'ቁጥር $verse';
  }

  @override
  String chapterTitle(Object chapter) {
    return 'ምዕራፍ $chapter';
  }

  @override
  String get switchToFullChapter => 'ወደ ሙሉ ምዕራፍ ዕልባት ቀይር';

  @override
  String get bookmarkSheetCancel => 'ሰርዝ፣ የዕልባት ሉህ ዝጋ';

  @override
  String get pickCustomAccent => 'ብጁ የአጽንዖት ቀለም ይምረጡ';

  @override
  String get apply => 'ተግብር';

  @override
  String get custom => 'ብጁ';

  @override
  String get brightnessSystem => 'ስርዓት';

  @override
  String get brightnessLight => 'ብርሃን';

  @override
  String get brightnessDark => 'ጨለማ';

  @override
  String get selectBook => 'መጽሐፍ ይምረጡ';

  @override
  String get bookmarkFilterAll => 'ሁሉም';

  @override
  String get bookmarkFilterUnlabeled => 'ያልተሰየሙ';

  @override
  String get bookmarkSortRecent => 'የቅርብ ጊዜ በመጀመሪያ';

  @override
  String get bookmarkSortCanonical => 'ቀኖናዊ ቅደም ተከተል';

  @override
  String get chapterRetry => 'እንደገና ይሞክሩ';

  @override
  String get fontSize => 'የፊደል መጠን';

  @override
  String fontSizePixels(Object size) {
    return '$size ፒክስል';
  }

  @override
  String get fontSizeSlider => 'የፊደል መጠን ተንሸራታች';

  @override
  String get fontSizeSliderHint => 'ከ12 እስከ 28 ለማስተካከል ያንሸራትቱ';

  @override
  String get fontPreview => '\"በመጀመሪያ እግዚአብሔር ሰማይንና ምድርን ፈጠረ።\" - ዘፍ 1፥1';

  @override
  String get showVerseNumbersSubtitle =>
      'በንባብ ማያ ገጽ ላይ የቁጥር ቁጥሮችን እንደ የበላይ ፊደል አሳይ።';

  @override
  String get showSectionHeadingsSubtitle =>
      'በንባቦች መካከል የክፍል እና የመዝሙር ርዕሶችን አሳይ።';

  @override
  String get wordsOfChristSubtitle =>
      'የኢየሱስን ቃላት በቀይ አሳይ። ለአንድ የጽሑፍ ቀለም አሰናክል።';

  @override
  String get verseFormatTitle => 'የቁጥር ቅርጸት';

  @override
  String get verseFormatSubtitle => 'የቅዱስ መጽሐፍ ጽሑፍ እንዴት እንደሚደረደር ይምረጡ።';

  @override
  String get paragraphMode => 'አንቀጽ';

  @override
  String get verseListMode => 'የቁጥር ዝርዝር';

  @override
  String get paragraphModeTooltip => 'የአንቀጽ ሁነታ';

  @override
  String get verseListModeTooltip => 'የቁጥር ዝርዝር ሁነታ';

  @override
  String get paragraphModeDescription =>
      'ጽሑፉ እንደ ታተመ መጽሐፍ ቅዱስ በገቢ አንቀጾች ያለማቋረጥ ይፈሳል።';

  @override
  String get verseListModeDescription =>
      'እያንዳንዱ የቅዱስ መጽሐፍ አንቀጽ በራሱ መስመር ይጀምራል፣ ስለዚህ የቁጥር ቡድኖች በቀላሉ ይታያሉ።';

  @override
  String get deleteBookmarkTooltip => 'ዕልባት ሰርዝ';

  @override
  String deleteBookmarkSemantics(Object reference) {
    return 'ዕልባት $reference ሰርዝ';
  }

  @override
  String sortBookmarksTooltip(Object sortOrder) {
    return 'ደርድር፦ $sortOrder';
  }

  @override
  String get noBookmarksYet => 'እስካሁን ምንም ዕልባቶች የሉም።';

  @override
  String get noBookmarksYetHint => 'ቦታ ለማስቀመጥ በማንበብ ጊዜ የዕልባት አዶውን ይንኩ።';

  @override
  String bookmarkReferenceNavigationError(Object reference) {
    return 'ወደ $reference መሄድ አልተቻለም።';
  }

  @override
  String themeCardSemantics(Object description, Object name, Object selected) {
    return '$name ገጽታ$selected። $description';
  }

  @override
  String get selectedThemeSuffix => ', አሁን ተመርጧል';

  @override
  String get customisableAccentDescription => 'ሊበጅ የሚችል የአጽንዖት ቀለም።';

  @override
  String get fixedPaletteDescription => 'ቋሚ የቀለም ስብስብ።';

  @override
  String accentColourTitle(Object themeName) {
    return 'የአጽንዖት ቀለም - $themeName';
  }

  @override
  String get brightnessMode => 'የብርሃን ሁነታ';

  @override
  String get lightMode => 'የብርሃን ሁነታ';

  @override
  String get followSystemMode => 'የስርዓት ሁነታን ተከተል';

  @override
  String get darkMode => 'የጨለማ ሁነታ';

  @override
  String get customColourPicker => 'ብጁ ቀለም መምረጫ';

  @override
  String get customColourTooltip => 'ብጁ ቀለም...';

  @override
  String get couldNotLoadBooks => 'የመጽሐፍት ዝርዝር መጫን አልተቻለም። እባክዎ እንደገና ይሞክሩ።';

  @override
  String chapterLabel(Object chapter) {
    return 'ምዕራፍ $chapter';
  }

  @override
  String get traditionalOrderBooks => 'መጻሕፍት በባህላዊ ቅደም ተከተል';

  @override
  String get alphabeticalOrderBooks => 'መጻሕፍት በፊደል ቅደም ተከተል';

  @override
  String get home => 'መነሻ';

  @override
  String get addBookmarkTooltip => 'ዕልባት ጨምር';

  @override
  String get chooseBookChapter => 'መጽሐፍ እና ምዕራፍ ይምረጡ';

  @override
  String get chooseVerse => 'ቁጥር ይምረጡ';

  @override
  String get bookChapterQuickNavigation => 'የመጽሐፍ እና ምዕራፍ ፈጣን አሰሳ';

  @override
  String get verseQuickNavigation => 'የቁጥር ፈጣን አሰሳ';

  @override
  String get backToBooks => 'ወደ መጻሕፍት ተመለስ';

  @override
  String get selectBookTitle => 'መጽሐፍ ይምረጡ';

  @override
  String selectChapterTitle(Object bookName) {
    return 'ምዕራፍ ይምረጡ ($bookName)';
  }

  @override
  String chapterSelectionLabel(Object chapter) {
    return 'ምዕራፍ $chapter';
  }

  @override
  String verseSelectionLabel(Object verse) {
    return 'ቁጥር $verse';
  }

  @override
  String fullChapterReference(Object bookName, Object chapter) {
    return 'ሙሉ ምዕራፍ፦ $bookName $chapter';
  }

  @override
  String get memorizeHint => 'አጥና';

  @override
  String get addNoteHint => 'ማስታወሻ ጨምር...';

  @override
  String get languageSearchHint => 'ቋንቋዎችን ፈልግ';

  @override
  String get languageModuleInstalled => 'ተጭኗል';

  @override
  String get languageModulePending => 'የማሽን ትርጉም በመጠባበቅ ላይ';

  @override
  String get languageNoMatches => 'ምንም ቋንቋዎች ከፍለጋዎ ጋር አይዛመዱም።';

  @override
  String get languageCatalogDescription =>
      'እንደ ተጫኑ የተመለከቱ ቋንቋዎች ከመስመር ውጭ ይሰራሉ። ሌሎች ቋንቋዎች በማሽን የተተረጎሙ ሞጁሎች ሆነው ይታከላሉ።';

  @override
  String get saveBookmarkSemantics => 'ዕልባት አስቀምጥ';

  @override
  String get couldNotLoadChapter => 'ምዕራፉን መጫን አልተቻለም። እባክዎ እንደገና ይሞክሩ።';

  @override
  String get couldNotLoadChapters => 'ምዕራፎችን መጫን አልተቻለም። እባክዎ እንደገና ይሞክሩ።';

  @override
  String verseWithText(Object text, Object verse) {
    return 'ቁጥር $verse፦ $text';
  }

  @override
  String accentSwatchSemantics(Object name, Object selected) {
    return '$name የአጽንዖት ቀለም$selected';
  }

  @override
  String get oldTestament => 'ብሉይ ኪዳን';

  @override
  String get newTestament => 'አዲስ ኪዳን';

  @override
  String get deuterocanonApocrypha => 'ዲዩቴሮካኖን / አዋልድ';
}
