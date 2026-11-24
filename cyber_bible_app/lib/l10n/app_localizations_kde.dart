// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Makonde (`kde`).
class AppLocalizationsKde extends AppLocalizations {
  AppLocalizationsKde([String locale = 'kde']) : super(locale);

  @override
  String get settingsTitle => 'Mipangilio';

  @override
  String get languageSection => 'Lugha';

  @override
  String get useSystemLanguage => 'Tumia lugha ya mfumo';

  @override
  String get useSystemLanguageSubtitle =>
      'Tumia lugha ya kifaa kwa chaguo-msingi.';

  @override
  String get currentLanguage => 'Lugha ya sasa';

  @override
  String get appLanguage => 'Lugha ya programu';

  @override
  String get chooseLanguage => 'Chagua lugha';

  @override
  String get theme => 'Mandhari';

  @override
  String get appearance => 'Muonekano';

  @override
  String get textSection => 'Maandishi';

  @override
  String get readingFormatSection => 'Mfumo wa kusoma';

  @override
  String get displaySection => 'Onyesho';

  @override
  String get verseNumbers => 'Nambari za mistari';

  @override
  String get sectionHeadings => 'Vichwa vya sehemu';

  @override
  String get redLetterText => 'Maandishi mekundu';

  @override
  String get selectABook => 'Chagua kitabu';

  @override
  String get traditionalOrder => 'Mpangilio wa kawaida';

  @override
  String get alphabeticalOrder => 'Mpangilio wa alfabeti';

  @override
  String get bookmarks => 'Alama za ukurasa';

  @override
  String get retry => 'Jaribu tena';

  @override
  String get chooseTheme => 'Chagua mandhari';

  @override
  String get customisableThemes => 'Mandhari zinazoweza kubadilishwa';

  @override
  String get customisableThemesSubtitle =>
      'Tap a card to choose an accent colour. \"Classic White\" also supports Light, Dark and System modes.';

  @override
  String get setThemes => 'WEKA MANDHARI';

  @override
  String get setThemesSubtitle =>
      'Fixed, hand-crafted palettes. No customisation needed — just tap to apply.';

  @override
  String get deleteBookmarkQuestion => 'Ufute alama?';

  @override
  String get cancel => 'Ghairi';

  @override
  String get delete => 'Futa';

  @override
  String get bookmarkSaved => 'Alama imehifadhiwa';

  @override
  String get couldNotDeleteBookmark => 'Alama haikufutwa.';

  @override
  String couldNotNavigate(Object reference) {
    return 'Could not navigate to $reference.';
  }

  @override
  String get pageNotFound => 'Ukurasa haukupatikani';

  @override
  String noRouteDefined(Object routeName) {
    return 'No route defined for \"$routeName\"';
  }

  @override
  String get english => 'Kiingereza';

  @override
  String get spanish => 'Kihispania';

  @override
  String get systemDefault => 'Chaguo-msingi cha mfumo';

  @override
  String get languageStatusEnglish => 'English fallback active';

  @override
  String get languageStatusSystem => 'Inatumia lugha ya mfumo';

  @override
  String languageStatusSelected(Object languageName) {
    return 'Lugha iliyochaguliwa: $languageName';
  }

  @override
  String get themeLabel => 'Mandhari';

  @override
  String get notFoundTitle => 'Ukurasa haukupatikani';

  @override
  String get loadingCyberBible => 'Loading Cyber Bible...';

  @override
  String get couldNotOpenDatabase =>
      'Could not open the Bible database. Please try again.';

  @override
  String get homeTagline => 'A free and open source Bible study app';

  @override
  String get readTheBible => 'Soma Biblia';

  @override
  String get settingsTooltip => 'Mipangilio';

  @override
  String get themeChoose => 'Chagua mandhari';

  @override
  String get customThemes => 'Mandhari maalumu';

  @override
  String get customThemesSubtitle =>
      'Tap a card to choose an accent colour. \"Classic White\" also supports Light, Dark and System modes.';

  @override
  String get setThemesLabel => 'WEKA MANDHARI';

  @override
  String get deleteBookmarkDialog => 'Ufute alama?';

  @override
  String removeBookmarkMessage(Object details, Object reference) {
    return 'Remove \"$reference\"$details?\n\nThis cannot be undone.';
  }

  @override
  String get couldNotLoadBookmarks =>
      'Could not load bookmarks. Please try again.';

  @override
  String get bookmarkSavedMessage => 'Alama imehifadhiwa';

  @override
  String get couldNotSaveBookmark => 'Alama haikuhifadhiwa.';

  @override
  String get noBookmarksMatchFilter => 'No bookmarks match this filter.';

  @override
  String get clearFilter => 'Ondoa kichujio';

  @override
  String get traditionalOrderLabel => 'Mpangilio wa kawaida';

  @override
  String get alphabeticalOrderLabel => 'Mpangilio wa alfabeti';

  @override
  String get bookmarksTabLabel => 'Alama za ukurasa';

  @override
  String get fullChapter => 'Sura nzima';

  @override
  String get addBookmark => 'Ongeza alama';

  @override
  String get selectVerse => 'Chagua mstari';

  @override
  String get labelOptional => 'Label (optional)';

  @override
  String get notesOptional => 'Notes (optional)';

  @override
  String get save => 'Hifadhi';

  @override
  String get goToVerse => 'Nenda kwenye mstari';

  @override
  String verseTitle(Object verse) {
    return 'Mstari $verse';
  }

  @override
  String chapterTitle(Object chapter) {
    return 'Sura $chapter';
  }

  @override
  String get switchToFullChapter => 'Rudi kwenye sura nzima';

  @override
  String get bookmarkSheetCancel => 'Ghairi';

  @override
  String get pickCustomAccent => 'Choose a custom accent';

  @override
  String get apply => 'Tekeleza';

  @override
  String get custom => 'Maalumu';

  @override
  String get brightnessSystem => 'Mfumo';

  @override
  String get brightnessLight => 'Nyepesi';

  @override
  String get brightnessDark => 'Giza';

  @override
  String get selectBook => 'Chagua kitabu';

  @override
  String get bookmarkFilterAll => 'Zote';

  @override
  String get bookmarkFilterUnlabeled => 'Zisizo na lebo';

  @override
  String get bookmarkSortRecent => 'Za hivi karibuni';

  @override
  String get bookmarkSortCanonical => 'Mpangilio wa Biblia';

  @override
  String get chapterRetry => 'Jaribu tena';

  @override
  String get fontSize => 'Ukubwa wa maandishi';

  @override
  String fontSizePixels(Object size) {
    return '$size px';
  }

  @override
  String get fontSizeSlider => 'Ukubwa wa maandishi';

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
  String get paragraphMode => 'Hali ya aya';

  @override
  String get verseListMode => 'Hali ya orodha ya mistari';

  @override
  String get paragraphModeTooltip => 'Chagua hali ya aya';

  @override
  String get verseListModeTooltip => 'Chagua hali ya orodha ya mistari';

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
  String get noBookmarksYet => 'Bado hakuna alama.';

  @override
  String get noBookmarksYetHint => 'Ongeza alama wakati wa kusoma.';

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
  String get lightMode => 'Nyepesi';

  @override
  String get followSystemMode => 'Fuata mfumo';

  @override
  String get darkMode => 'Giza';

  @override
  String get customColourPicker => 'Custom colour picker';

  @override
  String get customColourTooltip => 'Custom color…';

  @override
  String get couldNotLoadBooks => 'Orodha ya vitabu haikupakiwa.';

  @override
  String chapterLabel(Object chapter) {
    return 'Sura $chapter';
  }

  @override
  String get traditionalOrderBooks => 'Mpangilio wa kawaida';

  @override
  String get alphabeticalOrderBooks => 'Mpangilio wa alfabeti';

  @override
  String get home => 'Nyumbani';

  @override
  String get addBookmarkTooltip => 'Ongeza alama';

  @override
  String get chooseBookChapter => 'Chagua kitabu na sura';

  @override
  String get chooseVerse => 'Chagua mstari';

  @override
  String get bookChapterQuickNavigation => 'Book and chapter quick navigation';

  @override
  String get verseQuickNavigation => 'Verse quick navigation';

  @override
  String get backToBooks => 'Rudi kwenye vitabu';

  @override
  String get selectBookTitle => 'Chagua kitabu';

  @override
  String selectChapterTitle(Object bookName) {
    return 'Chagua sura ya $bookName';
  }

  @override
  String chapterSelectionLabel(Object chapter) {
    return 'Sura $chapter';
  }

  @override
  String verseSelectionLabel(Object verse) {
    return 'Mstari $verse';
  }

  @override
  String fullChapterReference(Object bookName, Object chapter) {
    return 'Sura nzima: $bookName $chapter';
  }

  @override
  String get memorizeHint => 'Memorize';

  @override
  String get addNoteHint => 'Add a note...';

  @override
  String get languageSearchHint => 'Tafuta lugha';

  @override
  String get languageModuleInstalled => 'Moduli ya lugha imewekwa';

  @override
  String get languageModulePending => 'Moduli ya lugha haijapatikana';

  @override
  String get languageNoMatches => 'Hakuna lugha inayolingana.';

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
  String get oldTestament => 'Agano la Kale';

  @override
  String get newTestament => 'Agano Jipya';

  @override
  String get deuterocanonApocrypha => 'Deuterokanoni / Apokrifa';
}
