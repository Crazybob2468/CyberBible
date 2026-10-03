// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Maori (`mi`).
class AppLocalizationsMi extends AppLocalizations {
  AppLocalizationsMi([String locale = 'mi']) : super(locale);

  @override
  String get settingsTitle => 'Ngā Tautuhinga';

  @override
  String get languageSection => 'Reo';

  @override
  String get useSystemLanguage => 'Whakamahia te reo o te pūnaha';

  @override
  String get useSystemLanguageSubtitle =>
      'Whāia te reo o te pūrere hei reo taunoa.';

  @override
  String get currentLanguage => 'Te reo o nāianei';

  @override
  String get appLanguage => 'Te reo o te taupānga';

  @override
  String get chooseLanguage => 'Kōwhiria he reo';

  @override
  String get theme => 'Āhua';

  @override
  String get appearance => 'Āhua whakaatu';

  @override
  String get textSection => 'Kuputuhi';

  @override
  String get readingFormatSection => 'Hōputu pānui';

  @override
  String get displaySection => 'Whakaaturanga';

  @override
  String get verseNumbers => 'Tau whiti';

  @override
  String get sectionHeadings => 'Ngā pane wāhanga';

  @override
  String get redLetterText => 'Kuputuhi pū whero';

  @override
  String get selectABook => 'Kōwhiria he pukapuka';

  @override
  String get traditionalOrder => 'Raupapa tuku iho';

  @override
  String get alphabeticalOrder => 'Raupapa pū';

  @override
  String get bookmarks => 'Ngā tohuwāhi';

  @override
  String get retry => 'Ngana anō';

  @override
  String get chooseTheme => 'Kōwhiria te āhua';

  @override
  String get customisableThemes => 'Ngā āhua ka taea te whakarite';

  @override
  String get customisableThemesSubtitle =>
      'Pāwhiria tētahi kāri hei kōwhiri tae miramira. Ka tautoko hoki a \"Classic White\" i ngā aratau Mārama, Pōuri me te Pūnaha.';

  @override
  String get setThemes => 'NGĀ ĀHUA TAUTU';

  @override
  String get setThemesSubtitle =>
      'He huinga tae pūmau, āta hangaia. Kāore he whakarerekētanga; pāwhiria hei whakamahi.';

  @override
  String get deleteBookmarkQuestion => 'Mukua te tohuwāhi?';

  @override
  String get cancel => 'Whakakore';

  @override
  String get delete => 'Mukua';

  @override
  String get bookmarkSaved => 'Kua tiakina te tohuwāhi';

  @override
  String get couldNotDeleteBookmark => 'Kāore i taea te muku i te tohuwāhi.';

  @override
  String couldNotNavigate(Object reference) {
    return 'Kāore i taea te whakatere ki $reference.';
  }

  @override
  String get pageNotFound => 'Kāore i kitea te whārangi';

  @override
  String noRouteDefined(Object routeName) {
    return 'Kāore he ara i tautuhia mō \"$routeName\"';
  }

  @override
  String get english => 'Ingarihi';

  @override
  String get spanish => 'Pāniora';

  @override
  String get systemDefault => 'Taunoa pūnaha';

  @override
  String get languageStatusEnglish =>
      'Kei te whakamahia te reo Ingarihi hei reo tārua';

  @override
  String get languageStatusSystem => 'Kei te whakamahia te reo o te pūnaha';

  @override
  String languageStatusSelected(Object languageName) {
    return 'Kua kōwhiria te reo: $languageName';
  }

  @override
  String get themeLabel => 'Āhua';

  @override
  String get notFoundTitle => 'Kāore i kitea te whārangi';

  @override
  String get loadingCyberBible => 'Kei te uta i te Paipera Matihiko...';

  @override
  String get couldNotOpenDatabase =>
      'Kāore i taea te whakatuwhera te pātengi raraunga Paipera. Ngana anō.';

  @override
  String get homeTagline => 'He taupānga ako Paipera koreutu, pūtake tuwhera';

  @override
  String get readTheBible => 'Pānuihia te Paipera';

  @override
  String get settingsTooltip => 'Ngā tautuhinga';

  @override
  String get themeChoose => 'Kōwhiria te āhua';

  @override
  String get customThemes => 'Ngā āhua ka taea te whakarite';

  @override
  String get customThemesSubtitle =>
      'Pāwhiria tētahi kāri hei kōwhiri tae miramira. Ka tautoko hoki a \"Classic White\" i ngā aratau Mārama, Pōuri me te Pūnaha.';

  @override
  String get setThemesLabel => 'NGĀ ĀHUA TAUTU';

  @override
  String get deleteBookmarkDialog => 'Mukua te tohuwāhi?';

  @override
  String removeBookmarkMessage(Object details, Object reference) {
    return 'Tango i \"$reference\"$details?\n\nKāore e taea tēnei te whakahoki.';
  }

  @override
  String get couldNotLoadBookmarks =>
      'Kāore i taea te uta i ngā tohuwāhi. Ngana anō.';

  @override
  String get bookmarkSavedMessage => 'Kua tiakina te tohuwāhi';

  @override
  String get couldNotSaveBookmark => 'Kāore i taea te tiaki i te tohuwāhi.';

  @override
  String get noBookmarksMatchFilter =>
      'Kāore he tohuwāhi e hāngai ana ki tēnei tātari.';

  @override
  String get clearFilter => 'Ūkuia te tātari';

  @override
  String get traditionalOrderLabel => 'Raupapa tuku iho';

  @override
  String get alphabeticalOrderLabel => 'Raupapa pū';

  @override
  String get bookmarksTabLabel => 'Ngā tohuwāhi';

  @override
  String get fullChapter => 'Upoko katoa';

  @override
  String get addBookmark => 'Tāpiri tohuwāhi';

  @override
  String get selectVerse => 'Kōwhiria he whiti';

  @override
  String get labelOptional => 'Tapanga (kōwhiringa)';

  @override
  String get notesOptional => 'Ngā tuhipoka (kōwhiringa)';

  @override
  String get save => 'Tiaki';

  @override
  String get goToVerse => 'Haere ki te whiti';

  @override
  String verseTitle(Object verse) {
    return 'Whiti $verse';
  }

  @override
  String chapterTitle(Object chapter) {
    return 'Upoko $chapter';
  }

  @override
  String get switchToFullChapter => 'Hurihia ki te tohuwāhi upoko katoa';

  @override
  String get bookmarkSheetCancel => 'Whakakore, katia te paepae tohuwāhi';

  @override
  String get pickCustomAccent => 'Kōwhiria he tae miramira ritenga';

  @override
  String get apply => 'Hoatu';

  @override
  String get custom => 'Ritenga';

  @override
  String get brightnessSystem => 'Pūnaha';

  @override
  String get brightnessLight => 'Mārama';

  @override
  String get brightnessDark => 'Pōuri';

  @override
  String get selectBook => 'Kōwhiria he pukapuka';

  @override
  String get bookmarkFilterAll => 'Katoa';

  @override
  String get bookmarkFilterUnlabeled => 'Kāore he tapanga';

  @override
  String get bookmarkSortRecent => 'Ko ngā mea hou i te tuatahi';

  @override
  String get bookmarkSortCanonical => 'Raupapa Paipera';

  @override
  String get chapterRetry => 'Ngana anō';

  @override
  String get fontSize => 'Rahi momotuhi';

  @override
  String fontSizePixels(Object size) {
    return '$size paita';
  }

  @override
  String get fontSizeSlider => 'Pae whakarite rahi momotuhi';

  @override
  String get fontSizeSliderHint => 'Nuku hei whakarite mai i te 12 ki te 28';

  @override
  String get fontPreview =>
      '\"I te tīmatanga i hanga e te Atua te rangi me te whenua.\" — Kene 1:1';

  @override
  String get showVerseNumbersSubtitle =>
      'Whakaaturia ngā tau whiti ki te mata pānui.';

  @override
  String get showSectionHeadingsSubtitle =>
      'Whakaaturia ngā pane wāhanga me ngā pane Waiata i waenganui i ngā kōwae.';

  @override
  String get wordsOfChristSubtitle =>
      'Whakaaturia ngā kupu a Ihu ki te whero. Whakawetohia kia kotahi anake te tae kuputuhi.';

  @override
  String get verseFormatTitle => 'Hōputu whiti';

  @override
  String get verseFormatSubtitle =>
      'Kōwhiria te whakatakotoranga o ngā kupu Karaipiture.';

  @override
  String get paragraphMode => 'Kōwae';

  @override
  String get verseListMode => 'Rārangi whiti';

  @override
  String get paragraphModeTooltip => 'Aratau kōwae';

  @override
  String get verseListModeTooltip => 'Aratau rārangi whiti';

  @override
  String get paragraphModeDescription =>
      'Ka rere tonu te kuputuhi ki ngā kōwae nuku, pērā i te Paipera tā.';

  @override
  String get verseListModeDescription =>
      'Ka tīmata ia kōwae Karaipiture ki tōna ake rārangi, kia māmā te kite i ngā rōpū whiti.';

  @override
  String get deleteBookmarkTooltip => 'Mukua te tohuwāhi';

  @override
  String deleteBookmarkSemantics(Object reference) {
    return 'Mukua te tohuwāhi $reference';
  }

  @override
  String sortBookmarksTooltip(Object sortOrder) {
    return 'Kōmaka: $sortOrder';
  }

  @override
  String get noBookmarksYet => 'Kāore anō he tohuwāhi.';

  @override
  String get noBookmarksYetHint =>
      'Pāwhiria te ata tohuwāhi i a koe e pānui ana hei tiaki wāhi.';

  @override
  String bookmarkReferenceNavigationError(Object reference) {
    return 'Kāore i taea te whakatere ki $reference.';
  }

  @override
  String themeCardSemantics(Object description, Object name, Object selected) {
    return 'Āhua $name$selected. $description';
  }

  @override
  String get selectedThemeSuffix => ', kua kōwhiria ināianei';

  @override
  String get customisableAccentDescription =>
      'Tae miramira ka taea te whakarite.';

  @override
  String get fixedPaletteDescription => 'Huinga tae pūmau.';

  @override
  String accentColourTitle(Object themeName) {
    return 'Tae miramira — $themeName';
  }

  @override
  String get brightnessMode => 'ARATAU MĀRAMATANGA';

  @override
  String get lightMode => 'Aratau mārama';

  @override
  String get followSystemMode => 'Whāia te aratau pūnaha';

  @override
  String get darkMode => 'Aratau pōuri';

  @override
  String get customColourPicker => 'Kōwhiringa tae ritenga';

  @override
  String get customColourTooltip => 'Tae ritenga...';

  @override
  String get couldNotLoadBooks =>
      'Kāore i taea te uta i te rārangi pukapuka. Ngana anō.';

  @override
  String chapterLabel(Object chapter) {
    return 'Upoko $chapter';
  }

  @override
  String get traditionalOrderBooks => 'Ngā pukapuka i te raupapa tuku iho';

  @override
  String get alphabeticalOrderBooks => 'Ngā pukapuka i te raupapa pū';

  @override
  String get home => 'Kāinga';

  @override
  String get addBookmarkTooltip => 'Tāpiri tohuwāhi';

  @override
  String get chooseBookChapter => 'Kōwhiria te pukapuka me te upoko';

  @override
  String get chooseVerse => 'Kōwhiria he whiti';

  @override
  String get bookChapterQuickNavigation =>
      'Whakatere tere ki te pukapuka me te upoko';

  @override
  String get verseQuickNavigation => 'Whakatere tere ki te whiti';

  @override
  String get backToBooks => 'Hoki ki ngā pukapuka';

  @override
  String get selectBookTitle => 'Kōwhiria he pukapuka';

  @override
  String selectChapterTitle(Object bookName) {
    return 'Kōwhiria te upoko ($bookName)';
  }

  @override
  String chapterSelectionLabel(Object chapter) {
    return 'Upoko $chapter';
  }

  @override
  String verseSelectionLabel(Object verse) {
    return 'Whiti $verse';
  }

  @override
  String fullChapterReference(Object bookName, Object chapter) {
    return 'Upoko katoa: $bookName $chapter';
  }

  @override
  String get memorizeHint => 'Whakamahara';

  @override
  String get addNoteHint => 'Tāpiri tuhipoka...';

  @override
  String get languageSearchHint => 'Rapua ngā reo';

  @override
  String get languageModuleInstalled => 'Kua tāutahia';

  @override
  String get languageModulePending =>
      'Kei te tatari ki te whakamāoritanga mīhini';

  @override
  String get languageNoMatches => 'Kāore he reo e hāngai ana ki tō rapunga.';

  @override
  String get languageCatalogDescription =>
      'Ka mahi tuimotu ngā reo kua tāutahia. Ka tāpirihia ētahi atu hei kōwae whakamāori mīhini.';

  @override
  String get saveBookmarkSemantics => 'Tiakina te tohuwāhi';

  @override
  String get couldNotLoadChapter =>
      'Kāore i taea te uta i te upoko. Ngana anō.';

  @override
  String get couldNotLoadChapters =>
      'Kāore i taea te uta i ngā upoko. Ngana anō.';

  @override
  String verseWithText(Object text, Object verse) {
    return 'Whiti $verse: $text';
  }

  @override
  String accentSwatchSemantics(Object name, Object selected) {
    return 'Tae miramira $name$selected';
  }

  @override
  String get oldTestament => 'Te Kawenata Tawhito';

  @override
  String get newTestament => 'Te Kawenata Hou';

  @override
  String get deuterocanonApocrypha =>
      'Ngā pukapuka Deuterocanonical / Apokiripa';
}
