// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Sinhala Sinhalese (`si`).
class AppLocalizationsSi extends AppLocalizations {
  AppLocalizationsSi([String locale = 'si']) : super(locale);

  @override
  String get settingsTitle => 'සැකසීම්';

  @override
  String get languageSection => 'භාෂාව';

  @override
  String get useSystemLanguage => 'පද්ධති භාෂාව භාවිතා කරන්න';

  @override
  String get useSystemLanguageSubtitle => 'පෙරනිමියෙන් උපාංග භාෂාව ගලපන්න.';

  @override
  String get currentLanguage => 'වත්මන් භාෂාව';

  @override
  String get appLanguage => 'යෙදුම් භාෂාව';

  @override
  String get chooseLanguage => 'භාෂාව තෝරන්න';

  @override
  String get theme => 'තේමාව';

  @override
  String get appearance => 'පෙනුම';

  @override
  String get textSection => 'පෙළ';

  @override
  String get readingFormatSection => 'කියවීමේ ආකෘතිය';

  @override
  String get displaySection => 'ප්රදර්ශනය කරන්න';

  @override
  String get verseNumbers => 'පද අංක';

  @override
  String get sectionHeadings => 'අංශ ශීර්ෂයන්';

  @override
  String get redLetterText => 'රතු අකුරු පෙළ';

  @override
  String get selectABook => 'පොතක් තෝරන්න';

  @override
  String get traditionalOrder => 'සාම්ප්‍රදායික පිළිවෙල';

  @override
  String get alphabeticalOrder => 'අකාරාදී පිළිවෙල';

  @override
  String get bookmarks => 'පිටු සලකුණු';

  @override
  String get retry => 'නැවත උත්සාහ කරන්න';

  @override
  String get chooseTheme => 'තේමාව තෝරන්න';

  @override
  String get customisableThemes => 'අභිරුචිකරණය කළ හැකි තේමා';

  @override
  String get customisableThemesSubtitle =>
      'උච්චාරණ වර්ණයක් තෝරා ගැනීමට කාඩ්පතක් තට්ටු කරන්න. \"Classic White\" ආලෝකය, අඳුරු සහ පද්ධති මාදිලි සඳහාද සහය දක්වයි.';

  @override
  String get setThemes => 'තේමා සකසන්න';

  @override
  String get setThemesSubtitle =>
      'ස්ථාවර, අතින් සාදන ලද palettes. අභිරුචිකරණය අවශ්‍ය නැත - අයදුම් කිරීමට තට්ටු කරන්න.';

  @override
  String get deleteBookmarkQuestion => 'පිටු සලකුණ මකන්නද?';

  @override
  String get cancel => 'අවලංගු කරන්න';

  @override
  String get delete => 'මකන්න';

  @override
  String get bookmarkSaved => 'පිටු සලකුණ සුරකින ලදී';

  @override
  String get couldNotDeleteBookmark => 'පිටු සලකුණ මැකීමට නොහැකි විය.';

  @override
  String couldNotNavigate(Object reference) {
    return '$reference වෙත සැරිසැරීමට නොහැකි විය.';
  }

  @override
  String get pageNotFound => 'පිටුව හමු නොවීය';

  @override
  String noRouteDefined(Object routeName) {
    return '\"$routeName\" සඳහා මාර්ගයක් අර්ථ දක්වා නැත';
  }

  @override
  String get english => 'ඉංග්රීසි';

  @override
  String get spanish => 'Español';

  @override
  String get systemDefault => 'පද්ධතියේ පෙරනිමිය';

  @override
  String get languageStatusEnglish => 'ඉංග්‍රීසි පසුබැසීම සක්‍රීයයි';

  @override
  String get languageStatusSystem => 'පද්ධති භාෂාව භාවිතා කිරීම';

  @override
  String languageStatusSelected(Object languageName) {
    return 'තෝරාගත් භාෂාව: $languageName';
  }

  @override
  String get themeLabel => 'තේමාව';

  @override
  String get notFoundTitle => 'පිටුව හමු නොවීය';

  @override
  String get loadingCyberBible => 'සයිබර් බයිබලය පූරණය වෙමින්...';

  @override
  String get couldNotOpenDatabase =>
      'බයිබල් දත්ත ගබඩාව විවෘත කිරීමට නොහැකි විය. කරුණාකර නැවත උත්සාහ කරන්න.';

  @override
  String get homeTagline => 'නොමිලේ සහ විවෘත මූලාශ්‍ර බයිබල් අධ්‍යයන යෙදුමකි';

  @override
  String get readTheBible => 'බයිබලය කියවන්න';

  @override
  String get settingsTooltip => 'සැකසීම්';

  @override
  String get themeChoose => 'තේමාව තෝරන්න';

  @override
  String get customThemes => 'අභිරුචිකරණය කළ හැකි තේමා';

  @override
  String get customThemesSubtitle =>
      'උච්චාරණ වර්ණයක් තෝරා ගැනීමට කාඩ්පතක් තට්ටු කරන්න. \"Classic White\" ආලෝකය, අඳුරු සහ පද්ධති මාදිලි සඳහාද සහය දක්වයි.';

  @override
  String get setThemesLabel => 'තේමා සකසන්න';

  @override
  String get deleteBookmarkDialog => 'පිටු සලකුණ මකන්නද?';

  @override
  String removeBookmarkMessage(Object details, Object reference) {
    return '\"$reference\"$details ඉවත් කරන්නද?\n\nමෙය ආපසු හැරවිය නොහැක.';
  }

  @override
  String get couldNotLoadBookmarks =>
      'පිටුසන් පූරණය කළ නොහැකි විය. කරුණාකර නැවත උත්සාහ කරන්න.';

  @override
  String get bookmarkSavedMessage => 'පිටු සලකුණ සුරකින ලදී';

  @override
  String get couldNotSaveBookmark => 'පිටු සලකුණ සුරැකීමට නොහැකි විය.';

  @override
  String get noBookmarksMatchFilter => 'මෙම පෙරහනට ගැලපෙන පිටු සලකුණු නොමැත.';

  @override
  String get clearFilter => 'පෙරහන හිස් කරන්න';

  @override
  String get traditionalOrderLabel => 'සාම්ප්‍රදායික පිළිවෙල';

  @override
  String get alphabeticalOrderLabel => 'අකාරාදී පිළිවෙල';

  @override
  String get bookmarksTabLabel => 'පිටු සලකුණු';

  @override
  String get fullChapter => 'සම්පූර්ණ පරිච්ඡේදය';

  @override
  String get addBookmark => 'පිටු සලකුණ එක් කරන්න';

  @override
  String get selectVerse => 'පදය තෝරන්න';

  @override
  String get labelOptional => 'ලේබලය (විකල්ප)';

  @override
  String get notesOptional => 'සටහන් (විකල්ප)';

  @override
  String get save => 'සුරකින්න';

  @override
  String get goToVerse => 'පදයට යන්න';

  @override
  String verseTitle(Object verse) {
    return '$verse පදය';
  }

  @override
  String chapterTitle(Object chapter) {
    return 'පරිච්ඡේදය $chapter';
  }

  @override
  String get switchToFullChapter =>
      'සම්පූර්ණ පරිච්ඡේද පිටු සලකුණ වෙත මාරු වන්න';

  @override
  String get bookmarkSheetCancel => 'අවලංගු කරන්න, පිටු සලකුණු පත්‍රය වසන්න';

  @override
  String get pickCustomAccent => 'අභිරුචි උච්චාරණයක් තෝරන්න';

  @override
  String get apply => 'අයදුම් කරන්න';

  @override
  String get custom => 'අභිරුචි';

  @override
  String get brightnessSystem => 'පද්ධතිය';

  @override
  String get brightnessLight => 'ආලෝකය';

  @override
  String get brightnessDark => 'අඳුරු';

  @override
  String get selectBook => 'පොතක් තෝරන්න';

  @override
  String get bookmarkFilterAll => 'සියල්ල';

  @override
  String get bookmarkFilterUnlabeled => 'ලේබල් නොකළ';

  @override
  String get bookmarkSortRecent => 'මෑත පළමු';

  @override
  String get bookmarkSortCanonical => 'කැනොනිකල් අනුපිළිවෙල';

  @override
  String get chapterRetry => 'නැවත උත්සාහ කරන්න';

  @override
  String get fontSize => 'අකුරු ප්රමාණය';

  @override
  String fontSizePixels(Object size) {
    return '$size px';
  }

  @override
  String get fontSizeSlider => 'අකුරු ප්‍රමාණයේ ස්ලයිඩරය';

  @override
  String get fontSizeSliderHint =>
      '12 සිට 28 දක්වා සීරුමාරු කිරීමට ස්වයිප් කරන්න';

  @override
  String get fontPreview =>
      '\"ආරම්භයේදී දෙවියන් වහන්සේ අහසත් පොළොවත් මැවූ සේක.\" —උත්පත්ති 1:1';

  @override
  String get showVerseNumbersSubtitle =>
      'කියවීමේ තිරයේ පද අංක උපරි පිටපත් පෙන්වන්න.';

  @override
  String get showSectionHeadingsSubtitle =>
      'ඡේද අතර කොටස සහ ගීතිකා ශීර්ෂ පෙන්වන්න.';

  @override
  String get wordsOfChristSubtitle =>
      'යේසුස්ගේ වචන රතු පාටින් පෙන්වන්න. තනි පෙළ වර්ණයක් සඳහා අබල කරන්න.';

  @override
  String get verseFormatTitle => 'පද ආකෘතිය';

  @override
  String get verseFormatSubtitle => 'ශුද්ධ ලියවිලි පාඨය සකසා ඇති ආකාරය තෝරන්න.';

  @override
  String get paragraphMode => 'ඡේදය';

  @override
  String get verseListMode => 'පද ලැයිස්තුව';

  @override
  String get paragraphModeTooltip => 'ඡේද මාදිලිය';

  @override
  String get verseListModeTooltip => 'පද-ලැයිස්තු මාදිලිය';

  @override
  String get paragraphModeDescription =>
      'මුද්‍රිත බයිබලයක් මෙන් එබුම සහිත ඡේද සමඟ පෙළ අඛණ්ඩව ගලා යයි.';

  @override
  String get verseListModeDescription =>
      'සෑම ශුද්ධ ලියවිලි පද ඡේදයක්ම එහිම රේඛාවකින් ආරම්භ වන අතර, පද කණ්ඩායම් හඳුනාගැනීම පහසු කරයි.';

  @override
  String get deleteBookmarkTooltip => 'පිටු සලකුණ මකන්න';

  @override
  String deleteBookmarkSemantics(Object reference) {
    return '$reference පිටු සලකුණ මකන්න';
  }

  @override
  String sortBookmarksTooltip(Object sortOrder) {
    return 'වර්ග කරන්න: $sortOrder';
  }

  @override
  String get noBookmarksYet => 'තවමත් පිටු සලකුණු නොමැත.';

  @override
  String get noBookmarksYetHint =>
      'ස්ථානයක් සුරැකීමට කියවීමේදී පිටුසන් නිරූපකය තට්ටු කරන්න.';

  @override
  String bookmarkReferenceNavigationError(Object reference) {
    return '$reference වෙත සැරිසැරීමට නොහැකි විය.';
  }

  @override
  String themeCardSemantics(Object description, Object name, Object selected) {
    return '$name තේමාව$selected. $description';
  }

  @override
  String get selectedThemeSuffix => ', දැනට තෝරාගෙන ඇත';

  @override
  String get customisableAccentDescription =>
      'අභිරුචිකරණය කළ හැකි උච්චාරණ වර්ණය.';

  @override
  String get fixedPaletteDescription => 'ස්ථාවර palette.';

  @override
  String accentColourTitle(Object themeName) {
    return 'උච්චාරණ වර්ණය - $themeName';
  }

  @override
  String get brightnessMode => 'දීප්තිමත් මාදිලිය';

  @override
  String get lightMode => 'ආලෝක මාදිලිය';

  @override
  String get followSystemMode => 'පද්ධති මාදිලිය අනුගමනය කරන්න';

  @override
  String get darkMode => 'අඳුරු මාදිලිය';

  @override
  String get customColourPicker => 'අභිරුචි වර්ණ තේරීම';

  @override
  String get customColourTooltip => 'අභිරුචි වර්ණය...';

  @override
  String get couldNotLoadBooks =>
      'පොත් ලැයිස්තුව පූරණය කළ නොහැකි විය. කරුණාකර නැවත උත්සාහ කරන්න.';

  @override
  String chapterLabel(Object chapter) {
    return 'පරිච්ඡේදය $chapter';
  }

  @override
  String get traditionalOrderBooks => 'සාම්ප්රදායික ඇණවුම් පොත්';

  @override
  String get alphabeticalOrderBooks => 'අකාරාදී පිළිවෙල පොත්';

  @override
  String get home => 'නිවස';

  @override
  String get addBookmarkTooltip => 'පිටු සලකුණ එක් කරන්න';

  @override
  String get chooseBookChapter => 'පොත සහ පරිච්ඡේදය තෝරන්න';

  @override
  String get chooseVerse => 'පදය තෝරන්න';

  @override
  String get bookChapterQuickNavigation => 'පොත සහ පරිච්ඡේදය ඉක්මන් සංචලනය';

  @override
  String get verseQuickNavigation => 'පද ඉක්මන් සංචලනය';

  @override
  String get backToBooks => 'නැවත පොත් වෙත';

  @override
  String get selectBookTitle => 'පොත තෝරන්න';

  @override
  String selectChapterTitle(Object bookName) {
    return 'පරිච්ඡේදය තෝරන්න ($bookName)';
  }

  @override
  String chapterSelectionLabel(Object chapter) {
    return 'පරිච්ඡේදය $chapter';
  }

  @override
  String verseSelectionLabel(Object verse) {
    return '$verse පදය';
  }

  @override
  String fullChapterReference(Object bookName, Object chapter) {
    return 'සම්පූර්ණ පරිච්ඡේදය: $bookName $chapter';
  }

  @override
  String get memorizeHint => 'කටපාඩම් කරන්න';

  @override
  String get addNoteHint => 'සටහනක් එක් කරන්න...';

  @override
  String get languageSearchHint => 'භාෂා සොයන්න';

  @override
  String get languageModuleInstalled => 'ස්ථාපනය කර ඇත';

  @override
  String get languageModulePending => 'යන්ත්‍ර පරිවර්තනය පොරොත්තුවෙන්';

  @override
  String get languageNoMatches => 'ඔබගේ සෙවුමට ගැලපෙන භාෂා නොමැත.';

  @override
  String get languageCatalogDescription =>
      'ස්ථාපිත ලෙස සලකුණු කර ඇති භාෂා නොබැඳි ලෙස ක්‍රියා කරයි. යන්ත්‍ර පරිවර්තන මොඩියුල ලෙස වෙනත් භාෂා එකතු කරනු ඇත.';

  @override
  String get saveBookmarkSemantics => 'පිටු සලකුණ සුරකින්න';

  @override
  String get couldNotLoadChapter =>
      'පරිච්ඡේදය පූරණය කළ නොහැකි විය. කරුණාකර නැවත උත්සාහ කරන්න.';

  @override
  String get couldNotLoadChapters =>
      'පරිච්ඡේද පූරණය කළ නොහැකි විය. කරුණාකර නැවත උත්සාහ කරන්න.';

  @override
  String verseWithText(Object text, Object verse) {
    return 'පදය $verse: $text';
  }

  @override
  String accentSwatchSemantics(Object name, Object selected) {
    return '$name උච්චාරණ වර්ණය$selected';
  }

  @override
  String get oldTestament => 'පැරණි ගිවිසුම';

  @override
  String get newTestament => 'නව ගිවිසුම';

  @override
  String get deuterocanonApocrypha => 'Deuterocanon / Apocrypha';
}
