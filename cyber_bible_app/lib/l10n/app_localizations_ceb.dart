// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Cebuano (`ceb`).
class AppLocalizationsCeb extends AppLocalizations {
  AppLocalizationsCeb([String locale = 'ceb']) : super(locale);

  @override
  String get settingsTitle => 'Mga setting';

  @override
  String get languageSection => 'Pinulongan';

  @override
  String get useSystemLanguage => 'Gamita ang sistema nga pinulongan';

  @override
  String get useSystemLanguageSubtitle =>
      'Ipares ang pinulongan sa device pinaagi sa default.';

  @override
  String get currentLanguage => 'Kasamtangang pinulongan';

  @override
  String get appLanguage => 'Pinulongan sa app';

  @override
  String get chooseLanguage => 'Pagpili og pinulongan';

  @override
  String get theme => 'Tema';

  @override
  String get appearance => 'Panagway';

  @override
  String get textSection => 'Text';

  @override
  String get readingFormatSection => 'Format sa Pagbasa';

  @override
  String get displaySection => 'Pagpakita';

  @override
  String get verseNumbers => 'Numero sa Bersikulo';

  @override
  String get sectionHeadings => 'Mga Ulo sa Seksyon';

  @override
  String get redLetterText => 'Pula nga Sulat nga Teksto';

  @override
  String get selectABook => 'Pagpili ug Libro';

  @override
  String get traditionalOrder => 'Tradisyonal nga han-ay';

  @override
  String get alphabeticalOrder => 'Alpabetikong han-ay';

  @override
  String get bookmarks => 'Mga bookmark';

  @override
  String get retry => 'Sulayi pag-usab';

  @override
  String get chooseTheme => 'Pilia ang Tema';

  @override
  String get customisableThemes => 'Napasibo nga mga Tema';

  @override
  String get customisableThemesSubtitle =>
      'Pag-tap og kard aron makapili og kolor sa accent. Gisuportahan usab sa \"Classic White\" ang Light, Dark ug System mode.';

  @override
  String get setThemes => 'IHIMO ANG MGA TEMA';

  @override
  String get setThemesSubtitle =>
      'Giayo, hinimo sa kamot nga mga palette. Wala’y kinahanglan nga pag-customize - pag-tap lang aron magamit.';

  @override
  String get deleteBookmarkQuestion => 'I-delete ang bookmark?';

  @override
  String get cancel => 'Pagkanselar';

  @override
  String get delete => 'Pagtangtang';

  @override
  String get bookmarkSaved => 'Gitipigan ang bookmark';

  @override
  String get couldNotDeleteBookmark => 'Dili mapapas ang bookmark.';

  @override
  String couldNotNavigate(Object reference) {
    return 'Dili maka-navigate sa $reference.';
  }

  @override
  String get pageNotFound => 'Panid Wala Makita';

  @override
  String noRouteDefined(Object routeName) {
    return 'Walay ruta nga gihubit para sa \"$routeName\"';
  }

  @override
  String get english => 'English';

  @override
  String get spanish => 'Español';

  @override
  String get systemDefault => 'Default sa sistema';

  @override
  String get languageStatusEnglish => 'Aktibo ang English fallback';

  @override
  String get languageStatusSystem => 'Paggamit sa pinulongan sa sistema';

  @override
  String languageStatusSelected(Object languageName) {
    return 'Pinili nga pinulongan: $languageName';
  }

  @override
  String get themeLabel => 'Tema';

  @override
  String get notFoundTitle => 'Panid Wala Makita';

  @override
  String get loadingCyberBible => 'Nagkarga sa Cyber ​​Bible...';

  @override
  String get couldNotOpenDatabase =>
      'Dili maablihan ang database sa Bibliya. Palihug sulayi pag-usab.';

  @override
  String get homeTagline =>
      'Usa ka libre ug bukas nga tinubdan sa pagtuon sa Bibliya nga app';

  @override
  String get readTheBible => 'Basaha ang Bibliya';

  @override
  String get settingsTooltip => 'Mga setting';

  @override
  String get themeChoose => 'Pilia ang Tema';

  @override
  String get customThemes => 'Napasibo nga mga Tema';

  @override
  String get customThemesSubtitle =>
      'Pag-tap og kard aron makapili og kolor sa accent. Gisuportahan usab sa \"Classic White\" ang Light, Dark ug System mode.';

  @override
  String get setThemesLabel => 'IHIMO ANG MGA TEMA';

  @override
  String get deleteBookmarkDialog => 'I-delete ang bookmark?';

  @override
  String removeBookmarkMessage(Object details, Object reference) {
    return 'Kuhaa ang \"$reference\"$details?\n\nKini dili mahimong bawion.';
  }

  @override
  String get couldNotLoadBookmarks =>
      'Dili makarga ang mga bookmark. Palihug sulayi pag-usab.';

  @override
  String get bookmarkSavedMessage => 'Gitipigan ang bookmark';

  @override
  String get couldNotSaveBookmark => 'Dili ma-save ang bookmark.';

  @override
  String get noBookmarksMatchFilter =>
      'Walay mga bookmark nga motakdo niini nga filter.';

  @override
  String get clearFilter => 'Klaro nga filter';

  @override
  String get traditionalOrderLabel => 'Tradisyonal nga han-ay';

  @override
  String get alphabeticalOrderLabel => 'Alpabetikong han-ay';

  @override
  String get bookmarksTabLabel => 'Mga bookmark';

  @override
  String get fullChapter => 'Tibuok nga kapitulo';

  @override
  String get addBookmark => 'Idugang ang Bookmark';

  @override
  String get selectVerse => 'Pilia ang Bersikulo';

  @override
  String get labelOptional => 'Label (opsyonal)';

  @override
  String get notesOptional => 'Mga nota (opsyonal)';

  @override
  String get save => 'Tipigi';

  @override
  String get goToVerse => 'Adto sa Bersikulo';

  @override
  String verseTitle(Object verse) {
    return 'Bersikulo $verse';
  }

  @override
  String chapterTitle(Object chapter) {
    return 'Kapitulo $chapter';
  }

  @override
  String get switchToFullChapter =>
      'Pagbalhin sa tibuok nga bookmark sa kapitulo';

  @override
  String get bookmarkSheetCancel => 'Pagkansela, isira ang bookmark sheet';

  @override
  String get pickCustomAccent => 'Pagpili og custom accent';

  @override
  String get apply => 'Pag-aplay';

  @override
  String get custom => 'Custom';

  @override
  String get brightnessSystem => 'Sistema';

  @override
  String get brightnessLight => 'Kahayag';

  @override
  String get brightnessDark => 'Ngitngit';

  @override
  String get selectBook => 'Pagpili ug Libro';

  @override
  String get bookmarkFilterAll => 'Tanan';

  @override
  String get bookmarkFilterUnlabeled => 'Walay label';

  @override
  String get bookmarkSortRecent => 'Bag-o lang una';

  @override
  String get bookmarkSortCanonical => 'Canonical order';

  @override
  String get chapterRetry => 'Sulayi pag-usab';

  @override
  String get fontSize => 'Gidak-on sa Font';

  @override
  String fontSizePixels(Object size) {
    return '$size px';
  }

  @override
  String get fontSizeSlider => 'Slider sa gidak-on sa font';

  @override
  String get fontSizeSliderHint =>
      'Pag-swipe aron ma-adjust gikan sa 12 ngadto sa 28';

  @override
  String get fontPreview =>
      '\"Sa sinugdan gibuhat sa Dios ang mga langit ug ang yuta.\" — Gen 1:1';

  @override
  String get showVerseNumbersSubtitle =>
      'Ipakita ang mga superscript sa numero sa bersikulo sa screen sa pagbasa.';

  @override
  String get showSectionHeadingsSubtitle =>
      'Ipakita ang mga ulohan sa seksyon ug Salmo taliwala sa mga tudling.';

  @override
  String get wordsOfChristSubtitle =>
      'Ipakita ang mga pulong ni Jesus nga pula. Pag-disable alang sa usa ka kolor sa teksto.';

  @override
  String get verseFormatTitle => 'Pormat sa Bersikulo';

  @override
  String get verseFormatSubtitle =>
      'Pilia kon giunsa pagbutang ang teksto sa kasulatan.';

  @override
  String get paragraphMode => 'Parapo';

  @override
  String get verseListMode => 'Listahan sa bersikulo';

  @override
  String get paragraphModeTooltip => 'Paragraph mode';

  @override
  String get verseListModeTooltip => 'Verse-list mode';

  @override
  String get paragraphModeDescription =>
      'Ang teksto padayon nga nag-agay uban sa mga indent nga parapo, sama sa usa ka giimprinta nga Bibliya.';

  @override
  String get verseListModeDescription =>
      'Ang matag paragraph sa kasulatan nagsugod sa kaugalingon nga linya niini, nga naghimo sa mga grupo sa bersikulo nga dali nga makit-an.';

  @override
  String get deleteBookmarkTooltip => 'Pagtangtang sa bookmark';

  @override
  String deleteBookmarkSemantics(Object reference) {
    return 'Pagtangtang sa bookmark $reference';
  }

  @override
  String sortBookmarksTooltip(Object sortOrder) {
    return 'Pagsunud-sunod: $sortOrder';
  }

  @override
  String get noBookmarksYet => 'Wala pa\'y mga bookmark.';

  @override
  String get noBookmarksYetHint =>
      'I-tap ang icon sa bookmark samtang nagbasa aron makatipig og lokasyon.';

  @override
  String bookmarkReferenceNavigationError(Object reference) {
    return 'Dili maka-navigate sa $reference.';
  }

  @override
  String themeCardSemantics(Object description, Object name, Object selected) {
    return '$name nga tema$selected. $description';
  }

  @override
  String get selectedThemeSuffix => ', gipili karon';

  @override
  String get customisableAccentDescription => 'Napasibo nga kolor sa accent.';

  @override
  String get fixedPaletteDescription => 'Naayos nga palette.';

  @override
  String accentColourTitle(Object themeName) {
    return 'Kolor sa Accent — $themeName';
  }

  @override
  String get brightnessMode => 'BRIGHTNESS MODE';

  @override
  String get lightMode => 'Kahayag nga mode';

  @override
  String get followSystemMode => 'Sunda ang mode sa sistema';

  @override
  String get darkMode => 'Dark mode';

  @override
  String get customColourPicker => 'Pasadya nga tigpili sa kolor';

  @override
  String get customColourTooltip => 'Custom nga kolor…';

  @override
  String get couldNotLoadBooks =>
      'Dili makarga ang listahan sa mga libro. Palihug sulayi pag-usab.';

  @override
  String chapterLabel(Object chapter) {
    return 'Kapitulo $chapter';
  }

  @override
  String get traditionalOrderBooks => 'Tradisyonal nga mga libro sa order';

  @override
  String get alphabeticalOrderBooks => 'Alpabetikong han-ay nga mga libro';

  @override
  String get home => 'Balay';

  @override
  String get addBookmarkTooltip => 'Idugang ang bookmark';

  @override
  String get chooseBookChapter => 'Pilia ang libro ug kapitulo';

  @override
  String get chooseVerse => 'Pilia ang bersikulo';

  @override
  String get bookChapterQuickNavigation =>
      'Libro ug kapitulo dali nga nabigasyon';

  @override
  String get verseQuickNavigation => 'Bersikulo dali nga nabigasyon';

  @override
  String get backToBooks => 'Balik sa mga libro';

  @override
  String get selectBookTitle => 'Pilia ang Libro';

  @override
  String selectChapterTitle(Object bookName) {
    return 'Pilia ang Kapitulo ($bookName)';
  }

  @override
  String chapterSelectionLabel(Object chapter) {
    return 'Kapitulo $chapter';
  }

  @override
  String verseSelectionLabel(Object verse) {
    return 'Bersikulo $verse';
  }

  @override
  String fullChapterReference(Object bookName, Object chapter) {
    return 'Tibuok nga kapitulo: $bookName $chapter';
  }

  @override
  String get memorizeHint => 'Sag-ulohon';

  @override
  String get addNoteHint => 'Pagdugang og nota...';

  @override
  String get languageSearchHint => 'Pangitag mga pinulongan';

  @override
  String get languageModuleInstalled => 'Gi-install';

  @override
  String get languageModulePending => 'Ang paghubad sa makina naghulat';

  @override
  String get languageNoMatches =>
      'Walay pinulongan nga mohaum sa imong pagpangita.';

  @override
  String get languageCatalogDescription =>
      'Mga pinulongan nga gimarkahan isip na-install nga trabaho offline. Ang ubang mga pinulongan idugang isip mga module nga gihubad sa makina.';

  @override
  String get saveBookmarkSemantics => 'I-save ang bookmark';

  @override
  String get couldNotLoadChapter =>
      'Dili ma-load ang kapitulo. Palihug sulayi pag-usab.';

  @override
  String get couldNotLoadChapters =>
      'Dili makarga ang mga kapitulo. Palihug sulayi pag-usab.';

  @override
  String verseWithText(Object text, Object verse) {
    return 'Bersikulo $verse: $text';
  }

  @override
  String accentSwatchSemantics(Object name, Object selected) {
    return '$name ang kolor sa accent$selected';
  }

  @override
  String get oldTestament => 'Daang Tugon';

  @override
  String get newTestament => 'Bag-ong Tugon';

  @override
  String get deuterocanonApocrypha => 'Deuterocanon / Apokripa';
}
