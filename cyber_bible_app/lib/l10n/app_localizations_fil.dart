// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Filipino Pilipino (`fil`).
class AppLocalizationsFil extends AppLocalizations {
  AppLocalizationsFil([String locale = 'fil']) : super(locale);

  @override
  String get settingsTitle => 'Mga Setting';

  @override
  String get languageSection => 'Wika';

  @override
  String get useSystemLanguage => 'Gamitin ang wika ng system';

  @override
  String get useSystemLanguageSubtitle =>
      'Itugma ang wika ng device bilang default.';

  @override
  String get currentLanguage => 'Kasalukuyang wika';

  @override
  String get appLanguage => 'Wika ng app';

  @override
  String get chooseLanguage => 'Pumili ng wika';

  @override
  String get theme => 'Tema';

  @override
  String get appearance => 'Hitsura';

  @override
  String get textSection => 'Teksto';

  @override
  String get readingFormatSection => 'Format ng Pagbasa';

  @override
  String get displaySection => 'Display';

  @override
  String get verseNumbers => 'Mga numero ng talata';

  @override
  String get sectionHeadings => 'Mga pamagat ng seksyon';

  @override
  String get redLetterText => 'Tekstong pulang titik';

  @override
  String get selectABook => 'Pumili ng Aklat';

  @override
  String get traditionalOrder => 'Tradisyonal na ayos';

  @override
  String get alphabeticalOrder => 'Ayos na alpabetiko';

  @override
  String get bookmarks => 'Mga bookmark';

  @override
  String get retry => 'Subukan muli';

  @override
  String get chooseTheme => 'Pumili ng Tema';

  @override
  String get customisableThemes => 'Nako-customize na mga tema';

  @override
  String get customisableThemesSubtitle =>
      'Pindutin ang isang card upang pumili ng kulay ng accent. Sinusuportahan din ng \"Classic White\" ang Light, Dark at System mode.';

  @override
  String get setThemes => 'ITAKDA ANG MGA TEMA';

  @override
  String get setThemesSubtitle =>
      'Nakapirming mga palette na ginawa nang mano-mano. Walang kailangang i-customize - pindutin lamang upang gamitin.';

  @override
  String get deleteBookmarkQuestion => 'Tanggalin ang bookmark?';

  @override
  String get cancel => 'Kanselahin';

  @override
  String get delete => 'Tanggalin';

  @override
  String get bookmarkSaved => 'Nai-save ang bookmark';

  @override
  String get couldNotDeleteBookmark => 'Hindi matanggal ang bookmark.';

  @override
  String couldNotNavigate(Object reference) {
    return 'Hindi makapunta sa $reference.';
  }

  @override
  String get pageNotFound => 'Hindi Natagpuan ang Pahina';

  @override
  String noRouteDefined(Object routeName) {
    return 'Walang rutang nakatalaga para sa \"$routeName\"';
  }

  @override
  String get english => 'Ingles';

  @override
  String get spanish => 'Español';

  @override
  String get systemDefault => 'Default ng system';

  @override
  String get languageStatusEnglish => 'Aktibo ang Ingles na fallback';

  @override
  String get languageStatusSystem => 'Ginagamit ang wika ng system';

  @override
  String languageStatusSelected(Object languageName) {
    return 'Napiling wika: $languageName';
  }

  @override
  String get themeLabel => 'Tema';

  @override
  String get notFoundTitle => 'Hindi Natagpuan ang Pahina';

  @override
  String get loadingCyberBible => 'Nilo-load ang Cyber Bible...';

  @override
  String get couldNotOpenDatabase =>
      'Hindi mabuksan ang database ng Bibliya. Pakisubukang muli.';

  @override
  String get homeTagline =>
      'Isang libre at open source na app sa pag-aaral ng Bibliya';

  @override
  String get readTheBible => 'Basahin ang Bibliya';

  @override
  String get settingsTooltip => 'Mga Setting';

  @override
  String get themeChoose => 'Pumili ng Tema';

  @override
  String get customThemes => 'Nako-customize na mga tema';

  @override
  String get customThemesSubtitle =>
      'Pindutin ang isang card upang pumili ng kulay ng accent. Sinusuportahan din ng \"Classic White\" ang Light, Dark at System mode.';

  @override
  String get setThemesLabel => 'ITAKDA ANG MGA TEMA';

  @override
  String get deleteBookmarkDialog => 'Tanggalin ang bookmark?';

  @override
  String removeBookmarkMessage(Object details, Object reference) {
    return 'Alisin ang \"$reference\"$details?\n\nHindi na ito mababawi.';
  }

  @override
  String get couldNotLoadBookmarks =>
      'Hindi ma-load ang mga bookmark. Pakisubukang muli.';

  @override
  String get bookmarkSavedMessage => 'Nai-save ang bookmark';

  @override
  String get couldNotSaveBookmark => 'Hindi mai-save ang bookmark.';

  @override
  String get noBookmarksMatchFilter =>
      'Walang bookmark na tumutugma sa filter na ito.';

  @override
  String get clearFilter => 'I-clear ang filter';

  @override
  String get traditionalOrderLabel => 'Tradisyonal na ayos';

  @override
  String get alphabeticalOrderLabel => 'Ayos na alpabetiko';

  @override
  String get bookmarksTabLabel => 'Mga bookmark';

  @override
  String get fullChapter => 'Buong kabanata';

  @override
  String get addBookmark => 'Magdagdag ng Bookmark';

  @override
  String get selectVerse => 'Pumili ng Talata';

  @override
  String get labelOptional => 'Label (opsyonal)';

  @override
  String get notesOptional => 'Mga tala (opsyonal)';

  @override
  String get save => 'I-save';

  @override
  String get goToVerse => 'Pumunta sa Talata';

  @override
  String verseTitle(Object verse) {
    return 'Talata $verse';
  }

  @override
  String chapterTitle(Object chapter) {
    return 'Kabanata $chapter';
  }

  @override
  String get switchToFullChapter => 'Lumipat sa bookmark ng buong kabanata';

  @override
  String get bookmarkSheetCancel => 'Kanselahin, isara ang sheet ng bookmark';

  @override
  String get pickCustomAccent => 'Pumili ng custom na accent';

  @override
  String get apply => 'Ilapat';

  @override
  String get custom => 'Custom';

  @override
  String get brightnessSystem => 'System';

  @override
  String get brightnessLight => 'Maliwanag';

  @override
  String get brightnessDark => 'Madilim';

  @override
  String get selectBook => 'Pumili ng Aklat';

  @override
  String get bookmarkFilterAll => 'Lahat';

  @override
  String get bookmarkFilterUnlabeled => 'Walang label';

  @override
  String get bookmarkSortRecent => 'Pinakabago muna';

  @override
  String get bookmarkSortCanonical => 'Kanonikal na ayos';

  @override
  String get chapterRetry => 'Subukan muli';

  @override
  String get fontSize => 'Laki ng font';

  @override
  String fontSizePixels(Object size) {
    return '$size px';
  }

  @override
  String get fontSizeSlider => 'Slider ng laki ng font';

  @override
  String get fontSizeSliderHint => 'I-swipe upang ayusin mula 12 hanggang 28';

  @override
  String get fontPreview =>
      '\"Nang pasimula ay nilikha ng Diyos ang langit at ang lupa.\" — Gen 1:1';

  @override
  String get showVerseNumbersSubtitle =>
      'Ipakita ang mga superscript na numero ng talata sa screen ng pagbasa.';

  @override
  String get showSectionHeadingsSubtitle =>
      'Ipakita ang mga pamagat ng seksyon at Mga Awit sa pagitan ng mga sipi.';

  @override
  String get wordsOfChristSubtitle =>
      'Ipakita nang pula ang mga salita ni Jesus. I-disable para sa isang kulay ng teksto.';

  @override
  String get verseFormatTitle => 'Format ng Talata';

  @override
  String get verseFormatSubtitle =>
      'Piliin kung paano inilalatag ang teksto ng Kasulatan.';

  @override
  String get paragraphMode => 'Talata';

  @override
  String get verseListMode => 'Listahan ng talata';

  @override
  String get paragraphModeTooltip => 'Paragraph mode';

  @override
  String get verseListModeTooltip => 'Verse-list mode';

  @override
  String get paragraphModeDescription =>
      'Tuloy-tuloy ang daloy ng teksto na may naka-indent na mga talata, tulad ng naka-print na Bibliya.';

  @override
  String get verseListModeDescription =>
      'Nagsisimula ang bawat talata ng Kasulatan sa sariling linya nito upang madaling makita ang mga pangkat ng talata.';

  @override
  String get deleteBookmarkTooltip => 'Tanggalin ang bookmark';

  @override
  String deleteBookmarkSemantics(Object reference) {
    return 'Tanggalin ang bookmark na $reference';
  }

  @override
  String sortBookmarksTooltip(Object sortOrder) {
    return 'Ayusin: $sortOrder';
  }

  @override
  String get noBookmarksYet => 'Wala pang mga bookmark.';

  @override
  String get noBookmarksYetHint =>
      'Pindutin ang icon ng bookmark habang nagbabasa upang mag-save ng lokasyon.';

  @override
  String bookmarkReferenceNavigationError(Object reference) {
    return 'Hindi makapunta sa $reference.';
  }

  @override
  String themeCardSemantics(Object description, Object name, Object selected) {
    return 'Temang $name$selected. $description';
  }

  @override
  String get selectedThemeSuffix => ', kasalukuyang napili';

  @override
  String get customisableAccentDescription =>
      'Nako-customize na kulay ng accent.';

  @override
  String get fixedPaletteDescription => 'Nakapirming palette.';

  @override
  String accentColourTitle(Object themeName) {
    return 'Kulay ng Accent — $themeName';
  }

  @override
  String get brightnessMode => 'BRIGHTNESS MODE';

  @override
  String get lightMode => 'Light mode';

  @override
  String get followSystemMode => 'Sundin ang system mode';

  @override
  String get darkMode => 'Dark mode';

  @override
  String get customColourPicker => 'Custom na tagapili ng kulay';

  @override
  String get customColourTooltip => 'Custom na kulay…';

  @override
  String get couldNotLoadBooks =>
      'Hindi ma-load ang listahan ng mga aklat. Pakisubukang muli.';

  @override
  String chapterLabel(Object chapter) {
    return 'Kabanata $chapter';
  }

  @override
  String get traditionalOrderBooks => 'Mga aklat sa tradisyonal na ayos';

  @override
  String get alphabeticalOrderBooks => 'Mga aklat sa ayos na alpabetiko';

  @override
  String get home => 'Home';

  @override
  String get addBookmarkTooltip => 'Magdagdag ng bookmark';

  @override
  String get chooseBookChapter => 'Pumili ng aklat at kabanata';

  @override
  String get chooseVerse => 'Pumili ng talata';

  @override
  String get bookChapterQuickNavigation =>
      'Mabilisang pag-navigate sa aklat at kabanata';

  @override
  String get verseQuickNavigation => 'Mabilisang pag-navigate sa talata';

  @override
  String get backToBooks => 'Bumalik sa mga aklat';

  @override
  String get selectBookTitle => 'Pumili ng Aklat';

  @override
  String selectChapterTitle(Object bookName) {
    return 'Pumili ng Kabanata ($bookName)';
  }

  @override
  String chapterSelectionLabel(Object chapter) {
    return 'Kabanata $chapter';
  }

  @override
  String verseSelectionLabel(Object verse) {
    return 'Talata $verse';
  }

  @override
  String fullChapterReference(Object bookName, Object chapter) {
    return 'Buong kabanata: $bookName $chapter';
  }

  @override
  String get memorizeHint => 'Isaulo';

  @override
  String get addNoteHint => 'Magdagdag ng tala...';

  @override
  String get languageSearchHint => 'Maghanap ng mga wika';

  @override
  String get languageModuleInstalled => 'Naka-install';

  @override
  String get languageModulePending => 'Nakabinbin ang machine translation';

  @override
  String get languageNoMatches =>
      'Walang wikang tumutugma sa iyong paghahanap.';

  @override
  String get languageCatalogDescription =>
      'Gumagana offline ang mga wikang may markang naka-install. Idaragdag ang ibang mga wika bilang mga module na machine-translated.';

  @override
  String get saveBookmarkSemantics => 'I-save ang bookmark';

  @override
  String get couldNotLoadChapter =>
      'Hindi ma-load ang kabanata. Pakisubukang muli.';

  @override
  String get couldNotLoadChapters =>
      'Hindi ma-load ang mga kabanata. Pakisubukang muli.';

  @override
  String verseWithText(Object text, Object verse) {
    return 'Talata $verse: $text';
  }

  @override
  String accentSwatchSemantics(Object name, Object selected) {
    return 'Kulay ng accent na $name$selected';
  }

  @override
  String get oldTestament => 'Lumang Tipan';

  @override
  String get newTestament => 'Bagong Tipan';

  @override
  String get deuterocanonApocrypha => 'Deuterocanon / Apocrypha';
}
