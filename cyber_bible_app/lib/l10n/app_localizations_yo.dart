// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Yoruba (`yo`).
class AppLocalizationsYo extends AppLocalizations {
  AppLocalizationsYo([String locale = 'yo']) : super(locale);

  @override
  String get settingsTitle => 'Àwọn ètò';

  @override
  String get languageSection => 'Èdè';

  @override
  String get useSystemLanguage => 'Lo èdè ètò ẹ̀rọ';

  @override
  String get useSystemLanguageSubtitle =>
      'Lo èdè ẹ̀rọ gẹ́gẹ́ bí èyí tí a máa lò ní ìbẹ̀rẹ̀.';

  @override
  String get currentLanguage => 'Èdè lọ́wọ́lọ́wọ́';

  @override
  String get appLanguage => 'Èdè ìṣàfilọ́lẹ̀';

  @override
  String get chooseLanguage => 'Yan èdè';

  @override
  String get theme => 'Àkòrí';

  @override
  String get appearance => 'Ìrísí';

  @override
  String get textSection => 'Ọ̀rọ̀';

  @override
  String get readingFormatSection => 'Ọ̀nà kíkà';

  @override
  String get displaySection => 'Ìfihàn';

  @override
  String get verseNumbers => 'Àwọn nọ́mbà ẹsẹ';

  @override
  String get sectionHeadings => 'Àwọn àkọlé apá';

  @override
  String get redLetterText => 'Ọ̀rọ̀ lẹ́tà pupa';

  @override
  String get selectABook => 'Yan ìwé kan';

  @override
  String get traditionalOrder => 'Ètò ìbílẹ̀';

  @override
  String get alphabeticalOrder => 'Ètò lẹ́tà';

  @override
  String get bookmarks => 'Àwọn àmì ìwé';

  @override
  String get retry => 'Gbìyànjú lẹ́ẹ̀kan sí i';

  @override
  String get chooseTheme => 'Yan àkòrí';

  @override
  String get customisableThemes => 'Àwọn àkòrí tí a lè ṣe àtúnṣe sí';

  @override
  String get customisableThemesSubtitle =>
      'Fọwọ́ kan káàdì láti yan àwọ̀ àsọyé. \"Classic White\" tún ní àwọn ipò Ìmọ́lẹ̀, Òkùnkùn àti Ètò.';

  @override
  String get setThemes => 'ÀWỌN ÀKÒRÍ TÍ A ṢÈTÒ';

  @override
  String get setThemesSubtitle =>
      'Àwọn àwọ̀ tí a ti pèsè tẹ́lẹ̀. Kò sí àtúnṣe tó yẹ; fọwọ́ kàn án láti lò ó.';

  @override
  String get deleteBookmarkQuestion => 'Pa àmì ìwé rẹ́?';

  @override
  String get cancel => 'Fagilé';

  @override
  String get delete => 'Pa rẹ́';

  @override
  String get bookmarkSaved => 'A ti fi àmì ìwé pamọ́';

  @override
  String get couldNotDeleteBookmark => 'A kò lè pa àmì ìwé rẹ́.';

  @override
  String couldNotNavigate(Object reference) {
    return 'A kò lè lọ sí $reference.';
  }

  @override
  String get pageNotFound => 'A kò rí ojú ìwé náà';

  @override
  String noRouteDefined(Object routeName) {
    return 'A kò sọ ọ̀nà kan fún \"$routeName\"';
  }

  @override
  String get english => 'Gẹ̀ẹ́sì';

  @override
  String get spanish => 'Èdè Sípáníìṣì';

  @override
  String get systemDefault => 'Ètò ẹ̀rọ';

  @override
  String get languageStatusEnglish => 'A ń lo Gẹ̀ẹ́sì gẹ́gẹ́ bí àfidípò';

  @override
  String get languageStatusSystem => 'A ń lo èdè ètò ẹ̀rọ';

  @override
  String languageStatusSelected(Object languageName) {
    return 'Èdè tí a yàn: $languageName';
  }

  @override
  String get themeLabel => 'Àkòrí';

  @override
  String get notFoundTitle => 'A kò rí ojú ìwé náà';

  @override
  String get loadingCyberBible => 'Ń ṣí Cyber Bible...';

  @override
  String get couldNotOpenDatabase =>
      'A kò lè ṣí ibi ìpamọ́ dátà Bíbélì. Jọ̀wọ́ tún gbìyànjú.';

  @override
  String get homeTagline =>
      'Ìṣàfilọ́lẹ̀ ìkẹ́kọ̀ọ́ Bíbélì ọ̀fẹ́ tí orísun rẹ̀ ṣí sílẹ̀';

  @override
  String get readTheBible => 'Ka Bíbélì';

  @override
  String get settingsTooltip => 'Àwọn ètò';

  @override
  String get themeChoose => 'Yan àkòrí';

  @override
  String get customThemes => 'Àwọn àkòrí tí a lè ṣe àtúnṣe sí';

  @override
  String get customThemesSubtitle =>
      'Fọwọ́ kan káàdì láti yan àwọ̀ àsọyé. \"Classic White\" tún ní àwọn ipò Ìmọ́lẹ̀, Òkùnkùn àti Ètò.';

  @override
  String get setThemesLabel => 'ÀWỌN ÀKÒRÍ TÍ A ṢÈTÒ';

  @override
  String get deleteBookmarkDialog => 'Pa àmì ìwé rẹ́?';

  @override
  String removeBookmarkMessage(Object details, Object reference) {
    return 'Yọ \"$reference\"$details kúrò?\n\nA kò lè dá èyí padà.';
  }

  @override
  String get couldNotLoadBookmarks =>
      'A kò lè ṣí àwọn àmì ìwé. Jọ̀wọ́ tún gbìyànjú.';

  @override
  String get bookmarkSavedMessage => 'A ti fi àmì ìwé pamọ́';

  @override
  String get couldNotSaveBookmark => 'A kò lè fi àmì ìwé pamọ́.';

  @override
  String get noBookmarksMatchFilter => 'Kò sí àmì ìwé tó bá àlẹ̀mọ́ yìí mu.';

  @override
  String get clearFilter => 'Pa àlẹ̀mọ́ rẹ́';

  @override
  String get traditionalOrderLabel => 'Ètò ìbílẹ̀';

  @override
  String get alphabeticalOrderLabel => 'Ètò lẹ́tà';

  @override
  String get bookmarksTabLabel => 'Àwọn àmì ìwé';

  @override
  String get fullChapter => 'Gbogbo orí';

  @override
  String get addBookmark => 'Fi àmì ìwé kún un';

  @override
  String get selectVerse => 'Yan ẹsẹ';

  @override
  String get labelOptional => 'Àmì (kò pọndandan)';

  @override
  String get notesOptional => 'Àkọsílẹ̀ (kò pọndandan)';

  @override
  String get save => 'Fi pamọ́';

  @override
  String get goToVerse => 'Lọ sí ẹsẹ';

  @override
  String verseTitle(Object verse) {
    return 'Ẹsẹ $verse';
  }

  @override
  String chapterTitle(Object chapter) {
    return 'Orí $chapter';
  }

  @override
  String get switchToFullChapter => 'Yí padà sí àmì ìwé gbogbo orí';

  @override
  String get bookmarkSheetCancel => 'Fagilé, kí o sì ti ojú ìwé àmì ìwé';

  @override
  String get pickCustomAccent => 'Yan àwọ̀ àsọyé àdáni';

  @override
  String get apply => 'Mú ṣiṣẹ́';

  @override
  String get custom => 'Àdáni';

  @override
  String get brightnessSystem => 'Ètò ẹ̀rọ';

  @override
  String get brightnessLight => 'Ìmọ́lẹ̀';

  @override
  String get brightnessDark => 'Òkùnkùn';

  @override
  String get selectBook => 'Yan ìwé kan';

  @override
  String get bookmarkFilterAll => 'Gbogbo wọn';

  @override
  String get bookmarkFilterUnlabeled => 'Kò ní àmì';

  @override
  String get bookmarkSortRecent => 'Àwọn tuntun kọ́kọ́';

  @override
  String get bookmarkSortCanonical => 'Ètò ìwé Bíbélì';

  @override
  String get chapterRetry => 'Gbìyànjú lẹ́ẹ̀kan sí i';

  @override
  String get fontSize => 'Ìwọ̀n lẹ́tà';

  @override
  String fontSizePixels(Object size) {
    return '$size px';
  }

  @override
  String get fontSizeSlider => 'Ohun fífà fún ìwọ̀n lẹ́tà';

  @override
  String get fontSizeSliderHint => 'Fà á láti ṣàtúnṣe láti 12 sí 28';

  @override
  String get fontPreview =>
      '\"Ní ìbẹ̀rẹ̀, Ọlọ́run dá ọ̀run àti ayé.\" — Gen 1:1';

  @override
  String get showVerseNumbersSubtitle =>
      'Fi àwọn nọ́mbà ẹsẹ kéékèèké hàn lórí ojú ìwé kíkà.';

  @override
  String get showSectionHeadingsSubtitle =>
      'Fi àwọn àkọlé apá àti Sáàmù hàn láàárín àwọn ọ̀rọ̀.';

  @override
  String get wordsOfChristSubtitle =>
      'Fi ọ̀rọ̀ Jésù hàn ní pupa. Pa á láti lo àwọ̀ ọ̀rọ̀ kan ṣoṣo.';

  @override
  String get verseFormatTitle => 'Ọ̀nà ẹsẹ';

  @override
  String get verseFormatSubtitle => 'Yan bí a ṣe máa tò ọ̀rọ̀ Ìwé Mímọ́ sí.';

  @override
  String get paragraphMode => 'Ìpínrọ̀';

  @override
  String get verseListMode => 'Àkójọ ẹsẹ';

  @override
  String get paragraphModeTooltip => 'Ipò ìpínrọ̀';

  @override
  String get verseListModeTooltip => 'Ipò àkójọ ẹsẹ';

  @override
  String get paragraphModeDescription =>
      'Ọ̀rọ̀ ń ṣàn láìdáwọ́ dúró nínú àwọn ìpínrọ̀ tí a fà sẹ́yìn, bíi Bíbélì tí a tẹ̀ jáde.';

  @override
  String get verseListModeDescription =>
      'Ìpínrọ̀ Ìwé Mímọ́ kọ̀ọ̀kan bẹ̀rẹ̀ lórí ìlà tirẹ̀, èyí sì mú kí a rí àkójọpọ̀ ẹsẹ dáadáa.';

  @override
  String get deleteBookmarkTooltip => 'Pa àmì ìwé rẹ́';

  @override
  String deleteBookmarkSemantics(Object reference) {
    return 'Pa àmì ìwé $reference rẹ́';
  }

  @override
  String sortBookmarksTooltip(Object sortOrder) {
    return 'Tò lẹ́sẹẹsẹ: $sortOrder';
  }

  @override
  String get noBookmarksYet => 'Kò tíì sí àmì ìwé.';

  @override
  String get noBookmarksYetHint =>
      'Fọwọ́ kan àmì ìwé nígbà tí o bá ń kàwé láti fi ibi kan pamọ́.';

  @override
  String bookmarkReferenceNavigationError(Object reference) {
    return 'A kò lè lọ sí $reference.';
  }

  @override
  String themeCardSemantics(Object description, Object name, Object selected) {
    return 'Àkòrí $name$selected. $description';
  }

  @override
  String get selectedThemeSuffix => ', tí a ti yàn báyìí';

  @override
  String get customisableAccentDescription =>
      'Àwọ̀ àsọyé tí a lè ṣe àtúnṣe sí.';

  @override
  String get fixedPaletteDescription => 'Àkójọpọ̀ àwọ̀ tí a ti ṣètò.';

  @override
  String accentColourTitle(Object themeName) {
    return 'Àwọ̀ àsọyé — $themeName';
  }

  @override
  String get brightnessMode => 'IPÒ ÌMỌ́LẸ̀';

  @override
  String get lightMode => 'Ipò ìmọ́lẹ̀';

  @override
  String get followSystemMode => 'Tẹ̀lé ipò ètò ẹ̀rọ';

  @override
  String get darkMode => 'Ipò òkùnkùn';

  @override
  String get customColourPicker => 'Aṣàyàn àwọ̀ àdáni';

  @override
  String get customColourTooltip => 'Àwọ̀ àdáni…';

  @override
  String get couldNotLoadBooks =>
      'A kò lè ṣí àkójọ àwọn ìwé. Jọ̀wọ́ tún gbìyànjú.';

  @override
  String chapterLabel(Object chapter) {
    return 'Orí $chapter';
  }

  @override
  String get traditionalOrderBooks => 'Àwọn ìwé ní ètò ìbílẹ̀';

  @override
  String get alphabeticalOrderBooks => 'Àwọn ìwé ní ètò lẹ́tà';

  @override
  String get home => 'Ilé';

  @override
  String get addBookmarkTooltip => 'Fi àmì ìwé kún un';

  @override
  String get chooseBookChapter => 'Yan ìwé àti orí';

  @override
  String get chooseVerse => 'Yan ẹsẹ';

  @override
  String get bookChapterQuickNavigation => 'Ìlọ kíákíá sí ìwé àti orí';

  @override
  String get verseQuickNavigation => 'Ìlọ kíákíá sí ẹsẹ';

  @override
  String get backToBooks => 'Padà sí àwọn ìwé';

  @override
  String get selectBookTitle => 'Yan ìwé';

  @override
  String selectChapterTitle(Object bookName) {
    return 'Yan orí ($bookName)';
  }

  @override
  String chapterSelectionLabel(Object chapter) {
    return 'Orí $chapter';
  }

  @override
  String verseSelectionLabel(Object verse) {
    return 'Ẹsẹ $verse';
  }

  @override
  String fullChapterReference(Object bookName, Object chapter) {
    return 'Gbogbo orí: $bookName $chapter';
  }

  @override
  String get memorizeHint => 'Há sórí';

  @override
  String get addNoteHint => 'Fi àkọsílẹ̀ kún un...';

  @override
  String get languageSearchHint => 'Wá àwọn èdè';

  @override
  String get languageModuleInstalled => 'A ti fi sí ẹ̀rọ';

  @override
  String get languageModulePending => 'Ìtumọ̀ ẹ̀rọ ṣì ń bọ̀';

  @override
  String get languageNoMatches => 'Kò sí èdè tó bá ìwárí rẹ mu.';

  @override
  String get languageCatalogDescription =>
      'Àwọn èdè tí a ti fi sí ẹ̀rọ ń ṣiṣẹ́ láìsí ayélujára. A ó fi àwọn èdè yòókù kún un gẹ́gẹ́ bí àwọn ìtumọ̀ ẹ̀rọ.';

  @override
  String get saveBookmarkSemantics => 'Fi àmì ìwé pamọ́';

  @override
  String get couldNotLoadChapter => 'A kò lè ṣí orí náà. Jọ̀wọ́ tún gbìyànjú.';

  @override
  String get couldNotLoadChapters =>
      'A kò lè ṣí àwọn orí náà. Jọ̀wọ́ tún gbìyànjú.';

  @override
  String verseWithText(Object text, Object verse) {
    return 'Ẹsẹ $verse: $text';
  }

  @override
  String accentSwatchSemantics(Object name, Object selected) {
    return 'Àwọ̀ àsọyé $name$selected';
  }

  @override
  String get oldTestament => 'Majẹ̀mú Láéláé';

  @override
  String get newTestament => 'Majẹ̀mú Tuntun';

  @override
  String get deuterocanonApocrypha => 'Àwọn ìwé Deuterocanon / Apocrypha';
}
