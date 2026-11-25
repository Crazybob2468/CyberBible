// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Luo (`luo`).
class AppLocalizationsLuo extends AppLocalizations {
  AppLocalizationsLuo([String locale = 'luo']) : super(locale);

  @override
  String get settingsTitle => 'Ter mar tero';

  @override
  String get languageSection => 'Dhok';

  @override
  String get useSystemLanguage => 'Ti kod dhok mar nyonyo';

  @override
  String get useSystemLanguageSubtitle => 'Luwo dhok mar nyonyo motimo doko.';

  @override
  String get currentLanguage => 'Dhok ma itiyo kodo sani';

  @override
  String get appLanguage => 'Dhok mar purugram';

  @override
  String get chooseLanguage => 'Yier dhok';

  @override
  String get theme => 'Ranyisi';

  @override
  String get appearance => 'Kite mar nen';

  @override
  String get textSection => 'Weche';

  @override
  String get readingFormatSection => 'Kite mar somo';

  @override
  String get displaySection => 'Kite mar nyiso';

  @override
  String get verseNumbers => 'Nembaro mag weche';

  @override
  String get sectionHeadings => 'Wich weche mag sehemu';

  @override
  String get redLetterText => 'Weche ma gi rangi mar makwar';

  @override
  String get selectABook => 'Yier buk';

  @override
  String get traditionalOrder => 'Rong\' ma chon';

  @override
  String get alphabeticalOrder => 'Rong\' mar nyise';

  @override
  String get bookmarks => 'Alama mag buk';

  @override
  String get retry => 'Tem kendo';

  @override
  String get chooseTheme => 'Yier ranyisi';

  @override
  String get customisableThemes => 'Ranyisi ma inyalo loko';

  @override
  String get customisableThemesSubtitle =>
      'Diel kad ma idhi iyiero rangi mar alama. \"Kwar machon\" bende tiyo kod kite ma ler, ma rachet, kod mar nyonyo.';

  @override
  String get setThemes => 'RANYISI MA OSETER';

  @override
  String get setThemesSubtitle =>
      'Rangi ma osetero gi lwet. Pok nitie gi gima onego ilok; diel mondo iti kodo.';

  @override
  String get deleteBookmarkQuestion => 'Kwany alama mar buk?';

  @override
  String get cancel => 'Juki';

  @override
  String get delete => 'Kwany';

  @override
  String get bookmarkSaved => 'Alama mar buk osekan';

  @override
  String get couldNotDeleteBookmark => 'Onge konyo kwanyo alama mar buk.';

  @override
  String couldNotNavigate(Object reference) {
    return 'Onge konyo dhi e $reference.';
  }

  @override
  String get pageNotFound => 'Pot buk onge';

  @override
  String noRouteDefined(Object routeName) {
    return 'Yo onge ma osetero ne \"$routeName\"';
  }

  @override
  String get english => 'Dho-Saez';

  @override
  String get spanish => 'Dho-Spain';

  @override
  String get systemDefault => 'Mar nyonyo';

  @override
  String get languageStatusEnglish => 'Dho-Saez e tiyo kaka dhok mar kony';

  @override
  String get languageStatusSystem => 'Tiyo kod dhok mar nyonyo';

  @override
  String languageStatusSelected(Object languageName) {
    return 'Dhok ma iyiero: $languageName';
  }

  @override
  String get themeLabel => 'Ranyisi';

  @override
  String get notFoundTitle => 'Pot buk onge';

  @override
  String get loadingCyberBible => 'Pang\'o Cyber Bible...';

  @override
  String get couldNotOpenDatabase =>
      'Onge konyo yabo kan mar weche mag Biblia. Tem kendo.';

  @override
  String get homeTagline =>
      'Purugram mar nono Biblia ma ni ng\'ato duto nyalo tiyo kodo';

  @override
  String get readTheBible => 'Som Biblia';

  @override
  String get settingsTooltip => 'Ter mar tero';

  @override
  String get themeChoose => 'Yier ranyisi';

  @override
  String get customThemes => 'Ranyisi ma inyalo loko';

  @override
  String get customThemesSubtitle =>
      'Diel kad ma idhi iyiero rangi mar alama. \"Kwar machon\" bende tiyo kod kite ma ler, ma rachet, kod mar nyonyo.';

  @override
  String get setThemesLabel => 'RANYISI MA OSETER';

  @override
  String get deleteBookmarkDialog => 'Kwany alama mar buk?';

  @override
  String removeBookmarkMessage(Object details, Object reference) {
    return 'Kwany \"$reference\"$details?\n\nOnge yo mar dwoko gi nyuma.';
  }

  @override
  String get couldNotLoadBookmarks =>
      'Onge konyo pang\'o alama mag buk. Tem kendo.';

  @override
  String get bookmarkSavedMessage => 'Alama mar buk osekan';

  @override
  String get couldNotSaveBookmark => 'Onge konyo kano alama mar buk.';

  @override
  String get noBookmarksMatchFilter =>
      'Onge alama mar buk ma rwate kod yiero ni.';

  @override
  String get clearFilter => 'Lweyo yiero';

  @override
  String get traditionalOrderLabel => 'Rong\' ma chon';

  @override
  String get alphabeticalOrderLabel => 'Rong\' mar nyise';

  @override
  String get bookmarksTabLabel => 'Alama mag buk';

  @override
  String get fullChapter => 'Sura duto';

  @override
  String get addBookmark => 'Med alama mar buk';

  @override
  String get selectVerse => 'Yier wach';

  @override
  String get labelOptional => 'Nying (ok lazima)';

  @override
  String get notesOptional => 'Ngeche (ok lazima)';

  @override
  String get save => 'Kan';

  @override
  String get goToVerse => 'Dhi e wach';

  @override
  String verseTitle(Object verse) {
    return 'Wach $verse';
  }

  @override
  String chapterTitle(Object chapter) {
    return 'Sura $chapter';
  }

  @override
  String get switchToFullChapter => 'Lok e alama mar sura duto';

  @override
  String get bookmarkSheetCancel => 'Juki, lor karat mar alama mar buk';

  @override
  String get pickCustomAccent => 'Yier rangi mar alama ma in iwuoyo';

  @override
  String get apply => 'Tiw';

  @override
  String get custom => 'Ma iloko';

  @override
  String get brightnessSystem => 'Mar nyonyo';

  @override
  String get brightnessLight => 'Ler';

  @override
  String get brightnessDark => 'Rachet';

  @override
  String get selectBook => 'Yier buk';

  @override
  String get bookmarkFilterAll => 'Duto';

  @override
  String get bookmarkFilterUnlabeled => 'Ma onge nying';

  @override
  String get bookmarkSortRecent => 'Mokelo chon';

  @override
  String get bookmarkSortCanonical => 'Rong\' mar buk';

  @override
  String get chapterRetry => 'Tem kendo';

  @override
  String get fontSize => 'Dite mar kit weche';

  @override
  String fontSizePixels(Object size) {
    return '$size px';
  }

  @override
  String get fontSizeSlider => 'Loyango dite mar kit weche';

  @override
  String get fontSizeSliderHint => 'Yweyo mondo ilok chakre 12 nyaka 28';

  @override
  String get fontPreview =>
      '\"E chako Nyasaye nochweyo polo kod piny.\" — Chak 1:1';

  @override
  String get showVerseNumbersSubtitle =>
      'Nyis nembaro mag weche ma malo e wang somo.';

  @override
  String get showSectionHeadingsSubtitle =>
      'Nyis wich weche mag sehemu kod Zaburi e kind weche.';

  @override
  String get wordsOfChristSubtitle =>
      'Nyis weche Yesu gi rangi mar makwar. Kwany mondo weche duto obed gi rangi achiel.';

  @override
  String get verseFormatTitle => 'Kite mar wach';

  @override
  String get verseFormatSubtitle => 'Yier kaka weche mag Muma odakie.';

  @override
  String get paragraphMode => 'Paragraf';

  @override
  String get verseListMode => 'Roth mag weche';

  @override
  String get paragraphModeTooltip => 'Kite mar paragraf';

  @override
  String get verseListModeTooltip => 'Kite mar roth mag weche';

  @override
  String get paragraphModeDescription =>
      'Weche dhi nyime ka gi paragraf ma odonyo, kaka e Biblia ma ochop.';

  @override
  String get verseListModeDescription =>
      'Paragraf ka paragraf mar Muma chako e ranyisi mar girkeni, momiyo gurup mag weche nen maber.';

  @override
  String get deleteBookmarkTooltip => 'Kwany alama mar buk';

  @override
  String deleteBookmarkSemantics(Object reference) {
    return 'Kwany alama mar buk $reference';
  }

  @override
  String sortBookmarksTooltip(Object sortOrder) {
    return 'Rong\': $sortOrder';
  }

  @override
  String get noBookmarksYet => 'Pok in gi alama mag buk.';

  @override
  String get noBookmarksYetHint =>
      'Diel alama mar buk ka isomo mondo ikan kabedo.';

  @override
  String bookmarkReferenceNavigationError(Object reference) {
    return 'Onge konyo dhi e $reference.';
  }

  @override
  String themeCardSemantics(Object description, Object name, Object selected) {
    return 'Ranyisi $name$selected. $description';
  }

  @override
  String get selectedThemeSuffix => ', oseyer sani';

  @override
  String get customisableAccentDescription => 'Rangi mar alama ma inyalo loko.';

  @override
  String get fixedPaletteDescription => 'Gurup rangi ma ok olokre.';

  @override
  String accentColourTitle(Object themeName) {
    return 'Rangi mar alama — $themeName';
  }

  @override
  String get brightnessMode => 'KITE MAR LER';

  @override
  String get lightMode => 'Kite ma ler';

  @override
  String get followSystemMode => 'Luwo kite mar nyonyo';

  @override
  String get darkMode => 'Kite ma rachet';

  @override
  String get customColourPicker => 'Yier rangi ma iloko';

  @override
  String get customColourTooltip => 'Rangi ma iloko...';

  @override
  String get couldNotLoadBooks =>
      'Onge konyo pang\'o liste mar buku. Tem kendo.';

  @override
  String chapterLabel(Object chapter) {
    return 'Sura $chapter';
  }

  @override
  String get traditionalOrderBooks => 'Buku e rong\' ma chon';

  @override
  String get alphabeticalOrderBooks => 'Buku e rong\' mar nyise';

  @override
  String get home => 'Dala';

  @override
  String get addBookmarkTooltip => 'Med alama mar buk';

  @override
  String get chooseBookChapter => 'Yier buk kod sura';

  @override
  String get chooseVerse => 'Yier wach';

  @override
  String get bookChapterQuickNavigation => 'Yo mar chweyo dhi e buk kod sura';

  @override
  String get verseQuickNavigation => 'Yo mar chweyo dhi e wach';

  @override
  String get backToBooks => 'Dwog e buku';

  @override
  String get selectBookTitle => 'Yier buk';

  @override
  String selectChapterTitle(Object bookName) {
    return 'Yier sura ($bookName)';
  }

  @override
  String chapterSelectionLabel(Object chapter) {
    return 'Sura $chapter';
  }

  @override
  String verseSelectionLabel(Object verse) {
    return 'Wach $verse';
  }

  @override
  String fullChapterReference(Object bookName, Object chapter) {
    return 'Sura duto: $bookName $chapter';
  }

  @override
  String get memorizeHint => 'Poo e wi';

  @override
  String get addNoteHint => 'Med ngech...';

  @override
  String get languageSearchHint => 'Many dhok';

  @override
  String get languageModuleInstalled => 'Oseket';

  @override
  String get languageModulePending => 'Loko gi masini pod orit';

  @override
  String get languageNoMatches => 'Onge dhok ma rwate kod manyo mari.';

  @override
  String get languageCatalogDescription =>
      'Dhok ma oseketo nyalo tiyo ka onge intanet. Dhok mamoko biro medo kaka modulu ma olok gi masini.';

  @override
  String get saveBookmarkSemantics => 'Kan alama mar buk';

  @override
  String get couldNotLoadChapter => 'Onge konyo pang\'o sura. Tem kendo.';

  @override
  String get couldNotLoadChapters => 'Onge konyo pang\'o sura. Tem kendo.';

  @override
  String verseWithText(Object text, Object verse) {
    return 'Wach $verse: $text';
  }

  @override
  String accentSwatchSemantics(Object name, Object selected) {
    return 'Rangi mar alama $name$selected';
  }

  @override
  String get oldTestament => 'Singruok mar Chon';

  @override
  String get newTestament => 'Singruok Manyien';

  @override
  String get deuterocanonApocrypha => 'Deuterokanon / Apokrifa';
}
