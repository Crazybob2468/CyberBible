// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Scottish Gaelic Gaelic (`gd`).
class AppLocalizationsGd extends AppLocalizations {
  AppLocalizationsGd([String locale = 'gd']) : super(locale);

  @override
  String get settingsTitle => 'Roghainnean';

  @override
  String get languageSection => 'Cànan';

  @override
  String get useSystemLanguage => 'Cleachd cànan an t-siostaim';

  @override
  String get useSystemLanguageSubtitle =>
      'Cleachd cànan an uidheim mar bhun-roghainn.';

  @override
  String get currentLanguage => 'Cànan làithreach';

  @override
  String get appLanguage => 'Cànan na h-aplacaid';

  @override
  String get chooseLanguage => 'Tagh cànan';

  @override
  String get theme => 'Ùrlar';

  @override
  String get appearance => 'Coltas';

  @override
  String get textSection => 'Teacsa';

  @override
  String get readingFormatSection => 'Cruth leughaidh';

  @override
  String get displaySection => 'Sealladh';

  @override
  String get verseNumbers => 'Àireamhan rannan';

  @override
  String get sectionHeadings => 'Cinn-earrannan';

  @override
  String get redLetterText => 'Teacsa dearg';

  @override
  String get selectABook => 'Tagh leabhar';

  @override
  String get traditionalOrder => 'Òrdugh traidiseanta';

  @override
  String get alphabeticalOrder => 'Òrdugh aibidealach';

  @override
  String get bookmarks => 'Comharran-leabhair';

  @override
  String get retry => 'Feuch a-rithist';

  @override
  String get chooseTheme => 'Tagh ùrlar';

  @override
  String get customisableThemes => 'Ùrlaran gnàthaichte';

  @override
  String get customisableThemesSubtitle =>
      'Thoir gnogag air cairt gus dath stràc a thaghadh. Tha \"Classic White\" a\' cur taic ri modhan Soilleir, Dorcha agus Siostaim cuideachd.';

  @override
  String get setThemes => 'SUIDHICH ÙRLARAN';

  @override
  String get setThemesSubtitle =>
      'Paileatan stèidhichte, dèante le làimh. Chan eil feum air gnàthachadh - thoir gnogag gus cur an sàs.';

  @override
  String get deleteBookmarkQuestion => 'Sguab às an comharra-leabhair?';

  @override
  String get cancel => 'Sguir dheth';

  @override
  String get delete => 'Sguab às';

  @override
  String get bookmarkSaved => 'Comharra-leabhair air a shàbhaladh';

  @override
  String get couldNotDeleteBookmark =>
      'Cha b\' urrainn dhuinn an comharra-leabhair a sguabadh às.';

  @override
  String couldNotNavigate(Object reference) {
    return 'Cha b\' urrainn dhuinn seòladh gu $reference.';
  }

  @override
  String get pageNotFound => 'Cha deach an duilleag a lorg';

  @override
  String noRouteDefined(Object routeName) {
    return 'Chan eil slighe air a mìneachadh airson \"$routeName\"';
  }

  @override
  String get english => 'Beurla';

  @override
  String get spanish => 'Spàinntis';

  @override
  String get systemDefault => 'Bun-roghainn an t-siostaim';

  @override
  String get languageStatusEnglish => 'Cùl-taic Beurla gnìomhach';

  @override
  String get languageStatusSystem => 'A\' cleachdadh cànan an t-siostaim';

  @override
  String languageStatusSelected(Object languageName) {
    return 'Cànan taghte: $languageName';
  }

  @override
  String get themeLabel => 'Ùrlar';

  @override
  String get notFoundTitle => 'Cha deach an duilleag a lorg';

  @override
  String get loadingCyberBible => 'A\' luchdachadh Cyber Bible...';

  @override
  String get couldNotOpenDatabase =>
      'Cha b\' urrainn dhuinn stòr-dàta a\' Bhìobaill fhosgladh. Feuch a-rithist.';

  @override
  String get homeTagline =>
      'Aplacaid saor is fosgailte airson sgrùdadh a\' Bhìobaill';

  @override
  String get readTheBible => 'Leugh am Bìoball';

  @override
  String get settingsTooltip => 'Roghainnean';

  @override
  String get themeChoose => 'Tagh ùrlar';

  @override
  String get customThemes => 'Ùrlaran gnàthaichte';

  @override
  String get customThemesSubtitle =>
      'Thoir gnogag air cairt gus dath stràc a thaghadh. Tha \"Classic White\" a\' cur taic ri modhan Soilleir, Dorcha agus Siostaim cuideachd.';

  @override
  String get setThemesLabel => 'SUIDHICH ÙRLARAN';

  @override
  String get deleteBookmarkDialog => 'Sguab às an comharra-leabhair?';

  @override
  String removeBookmarkMessage(Object details, Object reference) {
    return 'Thoir air falbh \"$reference\"$details?\n\nChan urrainn seo a chur air ais.';
  }

  @override
  String get couldNotLoadBookmarks =>
      'Cha b\' urrainn dhuinn comharran-leabhair a luchdachadh. Feuch a-rithist.';

  @override
  String get bookmarkSavedMessage => 'Comharra-leabhair air a shàbhaladh';

  @override
  String get couldNotSaveBookmark =>
      'Cha b\' urrainn dhuinn an comharra-leabhair a shàbhaladh.';

  @override
  String get noBookmarksMatchFilter =>
      'Chan eil comharra-leabhair a\' freagairt ris a\' chriathrag seo.';

  @override
  String get clearFilter => 'Glan a\' chriathrag';

  @override
  String get traditionalOrderLabel => 'Òrdugh traidiseanta';

  @override
  String get alphabeticalOrderLabel => 'Òrdugh aibidealach';

  @override
  String get bookmarksTabLabel => 'Comharran-leabhair';

  @override
  String get fullChapter => 'Caibideil shlàn';

  @override
  String get addBookmark => 'Cuir comharra-leabhair ris';

  @override
  String get selectVerse => 'Tagh rann';

  @override
  String get labelOptional => 'Leubail (roghainneil)';

  @override
  String get notesOptional => 'Nòtaichean (roghainneil)';

  @override
  String get save => 'Sàbhail';

  @override
  String get goToVerse => 'Rach gu rann';

  @override
  String verseTitle(Object verse) {
    return 'Rann $verse';
  }

  @override
  String chapterTitle(Object chapter) {
    return 'Caibideil $chapter';
  }

  @override
  String get switchToFullChapter =>
      'Gluais gu comharra-leabhair na caibideil shlàin';

  @override
  String get bookmarkSheetCancel =>
      'Sguir dheth, dùin duilleag nan comharran-leabhair';

  @override
  String get pickCustomAccent => 'Tagh stràc ghnàthaichte';

  @override
  String get apply => 'Cuir an sàs';

  @override
  String get custom => 'Gnàthaichte';

  @override
  String get brightnessSystem => 'Siostam';

  @override
  String get brightnessLight => 'Soilleir';

  @override
  String get brightnessDark => 'Dorcha';

  @override
  String get selectBook => 'Tagh leabhar';

  @override
  String get bookmarkFilterAll => 'Uile';

  @override
  String get bookmarkFilterUnlabeled => 'Gun leubail';

  @override
  String get bookmarkSortRecent => 'As ùire an toiseach';

  @override
  String get bookmarkSortCanonical => 'Òrdugh cananach';

  @override
  String get chapterRetry => 'Feuch a-rithist';

  @override
  String get fontSize => 'Meud a\' chruth-clò';

  @override
  String fontSizePixels(Object size) {
    return '$size px';
  }

  @override
  String get fontSizeSlider => 'Sleamhnag meud a\' chruth-clò';

  @override
  String get fontSizeSliderHint => 'Slaod gus atharrachadh bho 12 gu 28';

  @override
  String get fontPreview =>
      '\"Anns an toiseach chruthaich Dia na nèamhan agus an talamh.\" - Gen 1:1';

  @override
  String get showVerseNumbersSubtitle =>
      'Seall àireamhan rannan os-sgrìobhte air an sgrìn leughaidh.';

  @override
  String get showSectionHeadingsSubtitle =>
      'Seall cinn-earrannan agus Sailm eadar earrannan.';

  @override
  String get wordsOfChristSubtitle =>
      'Seall faclan Ìosa ann an dearg. Cuir à comas airson aon dath teacsa.';

  @override
  String get verseFormatTitle => 'Cruth rannan';

  @override
  String get verseFormatSubtitle =>
      'Tagh mar a chuirear teacsa an Sgriobtuir ann an cruth.';

  @override
  String get paragraphMode => 'Paragraf';

  @override
  String get verseListMode => 'Liosta rannan';

  @override
  String get paragraphModeTooltip => 'Modh paragraf';

  @override
  String get verseListModeTooltip => 'Modh liosta rannan';

  @override
  String get paragraphModeDescription =>
      'Bidh teacsa a\' sruthadh gu leantainneach le paragrafan beàrnraichte, mar Bhìoball clò-bhuailte.';

  @override
  String get verseListModeDescription =>
      'Tòisichidh gach paragraf Sgriobtuir air loidhne fhèin, ga dhèanamh furasta buidhnean rannan fhaicinn.';

  @override
  String get deleteBookmarkTooltip => 'Sguab às comharra-leabhair';

  @override
  String deleteBookmarkSemantics(Object reference) {
    return 'Sguab às comharra-leabhair $reference';
  }

  @override
  String sortBookmarksTooltip(Object sortOrder) {
    return 'Seòrsaich: $sortOrder';
  }

  @override
  String get noBookmarksYet => 'Gun chomharran-leabhair fhathast.';

  @override
  String get noBookmarksYetHint =>
      'Thoir gnogag air ìomhaigheag a\' chomharra-leabhair fhad \'s a leughas tu gus àite a shàbhaladh.';

  @override
  String bookmarkReferenceNavigationError(Object reference) {
    return 'Cha b\' urrainn dhuinn seòladh gu $reference.';
  }

  @override
  String themeCardSemantics(Object description, Object name, Object selected) {
    return 'Ùrlar $name$selected. $description';
  }

  @override
  String get selectedThemeSuffix => ', taghte an-dràsta';

  @override
  String get customisableAccentDescription => 'Dath stràc gnàthaichte.';

  @override
  String get fixedPaletteDescription => 'Paileat stèidhichte.';

  @override
  String accentColourTitle(Object themeName) {
    return 'Dath stràc - $themeName';
  }

  @override
  String get brightnessMode => 'MODH SOILLEIREACHD';

  @override
  String get lightMode => 'Modh soilleir';

  @override
  String get followSystemMode => 'Lean modh an t-siostaim';

  @override
  String get darkMode => 'Modh dorcha';

  @override
  String get customColourPicker => 'Taghadair dath gnàthaichte';

  @override
  String get customColourTooltip => 'Dath gnàthaichte…';

  @override
  String get couldNotLoadBooks =>
      'Cha b\' urrainn dhuinn liosta nan leabhraichean a luchdachadh. Feuch a-rithist.';

  @override
  String chapterLabel(Object chapter) {
    return 'Caibideil $chapter';
  }

  @override
  String get traditionalOrderBooks =>
      'Leabhraichean ann an òrdugh traidiseanta';

  @override
  String get alphabeticalOrderBooks =>
      'Leabhraichean ann an òrdugh aibidealach';

  @override
  String get home => 'Dachaigh';

  @override
  String get addBookmarkTooltip => 'Cuir comharra-leabhair ris';

  @override
  String get chooseBookChapter => 'Tagh leabhar is caibideil';

  @override
  String get chooseVerse => 'Tagh rann';

  @override
  String get bookChapterQuickNavigation =>
      'Seòladh luath leabhair is caibideil';

  @override
  String get verseQuickNavigation => 'Seòladh luath rannan';

  @override
  String get backToBooks => 'Air ais gu leabhraichean';

  @override
  String get selectBookTitle => 'Tagh leabhar';

  @override
  String selectChapterTitle(Object bookName) {
    return 'Tagh caibideil ($bookName)';
  }

  @override
  String chapterSelectionLabel(Object chapter) {
    return 'Caibideil $chapter';
  }

  @override
  String verseSelectionLabel(Object verse) {
    return 'Rann $verse';
  }

  @override
  String fullChapterReference(Object bookName, Object chapter) {
    return 'Caibideil shlàn: $bookName $chapter';
  }

  @override
  String get memorizeHint => 'Cuir air chuimhne';

  @override
  String get addNoteHint => 'Cuir nòta ris...';

  @override
  String get languageSearchHint => 'Lorg cànanan';

  @override
  String get languageModuleInstalled => 'Air a stàladh';

  @override
  String get languageModulePending => 'Eadar-theangachadh inneil ri feitheamh';

  @override
  String get languageNoMatches =>
      'Chan eil cànan a\' freagairt ris an lorg agad.';

  @override
  String get languageCatalogDescription =>
      'Bidh cànanan air an comharrachadh mar stàlaichte ag obair far loidhne. Thèid cànanan eile a chur ris mar mhodalan eadar-theangaichte le inneal.';

  @override
  String get saveBookmarkSemantics => 'Sàbhail comharra-leabhair';

  @override
  String get couldNotLoadChapter =>
      'Cha b\' urrainn dhuinn a\' chaibideil a luchdachadh. Feuch a-rithist.';

  @override
  String get couldNotLoadChapters =>
      'Cha b\' urrainn dhuinn caibideilean a luchdachadh. Feuch a-rithist.';

  @override
  String verseWithText(Object text, Object verse) {
    return 'Rann $verse: $text';
  }

  @override
  String accentSwatchSemantics(Object name, Object selected) {
    return 'Dath stràc $name$selected';
  }

  @override
  String get oldTestament => 'An Seann Tiomnadh';

  @override
  String get newTestament => 'An Tiomnadh Nuadh';

  @override
  String get deuterocanonApocrypha => 'Deuterocanon / Apocrypha';
}
