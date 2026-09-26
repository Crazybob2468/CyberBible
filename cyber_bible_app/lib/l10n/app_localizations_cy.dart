// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Welsh (`cy`).
class AppLocalizationsCy extends AppLocalizations {
  AppLocalizationsCy([String locale = 'cy']) : super(locale);

  @override
  String get settingsTitle => 'Gosodiadau';

  @override
  String get languageSection => 'Iaith';

  @override
  String get useSystemLanguage => 'Defnyddio iaith y system';

  @override
  String get useSystemLanguageSubtitle =>
      'Defnyddiwch iaith y ddyfais yn ddiofyn.';

  @override
  String get currentLanguage => 'Iaith gyfredol';

  @override
  String get appLanguage => 'Iaith yr ap';

  @override
  String get chooseLanguage => 'Dewis iaith';

  @override
  String get theme => 'Thema';

  @override
  String get appearance => 'Golwg';

  @override
  String get textSection => 'Testun';

  @override
  String get readingFormatSection => 'Fformat darllen';

  @override
  String get displaySection => 'Arddangos';

  @override
  String get verseNumbers => 'Rhifau adnodau';

  @override
  String get sectionHeadings => 'Penawdau adrannau';

  @override
  String get redLetterText => 'Testun coch';

  @override
  String get selectABook => 'Dewis llyfr';

  @override
  String get traditionalOrder => 'Trefn draddodiadol';

  @override
  String get alphabeticalOrder => 'Trefn yr wyddor';

  @override
  String get bookmarks => 'Nodau tudalen';

  @override
  String get retry => 'Ceisio eto';

  @override
  String get chooseTheme => 'Dewis thema';

  @override
  String get customisableThemes => 'Themâu y gellir eu haddasu';

  @override
  String get customisableThemesSubtitle =>
      'Tapiwch gerdyn i ddewis lliw acen. Mae \"Classic White\" hefyd yn cefnogi moddau Golau, Tywyll a System.';

  @override
  String get setThemes => 'THEMÂU PENODEDIG';

  @override
  String get setThemesSubtitle =>
      'Paletau sefydlog wedi\'u crefftio â llaw. Nid oes angen addasu; tapiwch i\'w defnyddio.';

  @override
  String get deleteBookmarkQuestion => 'Dileu nod tudalen?';

  @override
  String get cancel => 'Canslo';

  @override
  String get delete => 'Dileu';

  @override
  String get bookmarkSaved => 'Cadwyd y nod tudalen';

  @override
  String get couldNotDeleteBookmark => 'Methu dileu\'r nod tudalen.';

  @override
  String couldNotNavigate(Object reference) {
    return 'Methu mynd i $reference.';
  }

  @override
  String get pageNotFound => 'Heb ddod o hyd i\'r dudalen';

  @override
  String noRouteDefined(Object routeName) {
    return 'Nid oes llwybr wedi\'i ddiffinio ar gyfer \"$routeName\"';
  }

  @override
  String get english => 'Saesneg';

  @override
  String get spanish => 'Sbaeneg';

  @override
  String get systemDefault => 'Diofyn y system';

  @override
  String get languageStatusEnglish => 'Defnyddir y Saesneg fel dewis wrth gefn';

  @override
  String get languageStatusSystem => 'Defnyddir iaith y system';

  @override
  String languageStatusSelected(Object languageName) {
    return 'Iaith a ddewiswyd: $languageName';
  }

  @override
  String get themeLabel => 'Thema';

  @override
  String get notFoundTitle => 'Heb ddod o hyd i\'r dudalen';

  @override
  String get loadingCyberBible => 'Yn llwytho Cyber Bible...';

  @override
  String get couldNotOpenDatabase =>
      'Methu agor cronfa ddata\'r Beibl. Rhowch gynnig arall arni.';

  @override
  String get homeTagline =>
      'Ap astudio\'r Beibl am ddim ac yn ffynhonnell agored';

  @override
  String get readTheBible => 'Darllen y Beibl';

  @override
  String get settingsTooltip => 'Gosodiadau';

  @override
  String get themeChoose => 'Dewis thema';

  @override
  String get customThemes => 'Themâu y gellir eu haddasu';

  @override
  String get customThemesSubtitle =>
      'Tapiwch gerdyn i ddewis lliw acen. Mae \"Classic White\" hefyd yn cefnogi moddau Golau, Tywyll a System.';

  @override
  String get setThemesLabel => 'THEMÂU PENODEDIG';

  @override
  String get deleteBookmarkDialog => 'Dileu nod tudalen?';

  @override
  String removeBookmarkMessage(Object details, Object reference) {
    return 'Tynnu \"$reference\"$details?\n\nNi ellir dadwneud hyn.';
  }

  @override
  String get couldNotLoadBookmarks =>
      'Methu llwytho nodau tudalen. Rhowch gynnig arall arni.';

  @override
  String get bookmarkSavedMessage => 'Cadwyd y nod tudalen';

  @override
  String get couldNotSaveBookmark => 'Methu cadw\'r nod tudalen.';

  @override
  String get noBookmarksMatchFilter =>
      'Nid oes nodau tudalen yn cyfateb i\'r hidlydd hwn.';

  @override
  String get clearFilter => 'Clirio\'r hidlydd';

  @override
  String get traditionalOrderLabel => 'Trefn draddodiadol';

  @override
  String get alphabeticalOrderLabel => 'Trefn yr wyddor';

  @override
  String get bookmarksTabLabel => 'Nodau tudalen';

  @override
  String get fullChapter => 'Pennod gyfan';

  @override
  String get addBookmark => 'Ychwanegu nod tudalen';

  @override
  String get selectVerse => 'Dewis adnod';

  @override
  String get labelOptional => 'Label (dewisol)';

  @override
  String get notesOptional => 'Nodiadau (dewisol)';

  @override
  String get save => 'Cadw';

  @override
  String get goToVerse => 'Mynd at adnod';

  @override
  String verseTitle(Object verse) {
    return 'Adnod $verse';
  }

  @override
  String chapterTitle(Object chapter) {
    return 'Pennod $chapter';
  }

  @override
  String get switchToFullChapter => 'Newid i nod tudalen pennod gyfan';

  @override
  String get bookmarkSheetCancel => 'Canslo a chau\'r panel nod tudalen';

  @override
  String get pickCustomAccent => 'Dewis lliw acen personol';

  @override
  String get apply => 'Gweithredu';

  @override
  String get custom => 'Personol';

  @override
  String get brightnessSystem => 'Y system';

  @override
  String get brightnessLight => 'Golau';

  @override
  String get brightnessDark => 'Tywyll';

  @override
  String get selectBook => 'Dewis llyfr';

  @override
  String get bookmarkFilterAll => 'Pob un';

  @override
  String get bookmarkFilterUnlabeled => 'Heb label';

  @override
  String get bookmarkSortRecent => 'Diweddaraf yn gyntaf';

  @override
  String get bookmarkSortCanonical => 'Trefn ganonaidd';

  @override
  String get chapterRetry => 'Ceisio eto';

  @override
  String get fontSize => 'Maint y ffont';

  @override
  String fontSizePixels(Object size) {
    return '$size px';
  }

  @override
  String get fontSizeSlider => 'Llithrydd maint y ffont';

  @override
  String get fontSizeSliderHint => 'Sychwch i addasu o 12 i 28';

  @override
  String get fontPreview =>
      '\"Yn y dechreuad creodd Duw y nefoedd a\'r ddaear.\" — Gen 1:1';

  @override
  String get showVerseNumbersSubtitle =>
      'Dangos uwchysgrifau rhifau\'r adnodau ar y sgrin ddarllen.';

  @override
  String get showSectionHeadingsSubtitle =>
      'Dangos penawdau adrannau a Salmau rhwng darnau.';

  @override
  String get wordsOfChristSubtitle =>
      'Dangos geiriau Iesu mewn coch. Diffoddwch am un lliw testun.';

  @override
  String get verseFormatTitle => 'Fformat adnodau';

  @override
  String get verseFormatSubtitle =>
      'Dewiswch sut y caiff testun yr ysgrythur ei osod.';

  @override
  String get paragraphMode => 'Paragraff';

  @override
  String get verseListMode => 'Rhestr adnodau';

  @override
  String get paragraphModeTooltip => 'Modd paragraff';

  @override
  String get verseListModeTooltip => 'Modd rhestr adnodau';

  @override
  String get paragraphModeDescription =>
      'Mae\'r testun yn llifo\'n ddi-dor mewn paragraffau wedi\'u mewnoli, fel Beibl printiedig.';

  @override
  String get verseListModeDescription =>
      'Mae pob paragraff o\'r ysgrythur yn dechrau ar ei linell ei hun, gan wneud grwpiau o adnodau\'n hawdd eu gweld.';

  @override
  String get deleteBookmarkTooltip => 'Dileu nod tudalen';

  @override
  String deleteBookmarkSemantics(Object reference) {
    return 'Dileu nod tudalen $reference';
  }

  @override
  String sortBookmarksTooltip(Object sortOrder) {
    return 'Trefnu: $sortOrder';
  }

  @override
  String get noBookmarksYet => 'Dim nodau tudalen eto.';

  @override
  String get noBookmarksYetHint =>
      'Tapiwch eicon y nod tudalen wrth ddarllen i gadw lleoliad.';

  @override
  String bookmarkReferenceNavigationError(Object reference) {
    return 'Methu mynd i $reference.';
  }

  @override
  String themeCardSemantics(Object description, Object name, Object selected) {
    return 'Thema $name$selected. $description';
  }

  @override
  String get selectedThemeSuffix => ', wedi\'i dewis ar hyn o bryd';

  @override
  String get customisableAccentDescription => 'Lliw acen y gellir ei addasu.';

  @override
  String get fixedPaletteDescription => 'Palet sefydlog.';

  @override
  String accentColourTitle(Object themeName) {
    return 'Lliw acen — $themeName';
  }

  @override
  String get brightnessMode => 'MODD DISGLEIRDEB';

  @override
  String get lightMode => 'Modd golau';

  @override
  String get followSystemMode => 'Dilyn modd y system';

  @override
  String get darkMode => 'Modd tywyll';

  @override
  String get customColourPicker => 'Dewisydd lliw personol';

  @override
  String get customColourTooltip => 'Lliw personol…';

  @override
  String get couldNotLoadBooks =>
      'Methu llwytho rhestr y llyfrau. Rhowch gynnig arall arni.';

  @override
  String chapterLabel(Object chapter) {
    return 'Pennod $chapter';
  }

  @override
  String get traditionalOrderBooks => 'Llyfrau yn y drefn draddodiadol';

  @override
  String get alphabeticalOrderBooks => 'Llyfrau yn nhrefn yr wyddor';

  @override
  String get home => 'Cartref';

  @override
  String get addBookmarkTooltip => 'Ychwanegu nod tudalen';

  @override
  String get chooseBookChapter => 'Dewis llyfr a phennod';

  @override
  String get chooseVerse => 'Dewis adnod';

  @override
  String get bookChapterQuickNavigation => 'Llywio cyflym i lyfr a phennod';

  @override
  String get verseQuickNavigation => 'Llywio cyflym i adnod';

  @override
  String get backToBooks => 'Yn ôl at y llyfrau';

  @override
  String get selectBookTitle => 'Dewis llyfr';

  @override
  String selectChapterTitle(Object bookName) {
    return 'Dewis pennod ($bookName)';
  }

  @override
  String chapterSelectionLabel(Object chapter) {
    return 'Pennod $chapter';
  }

  @override
  String verseSelectionLabel(Object verse) {
    return 'Adnod $verse';
  }

  @override
  String fullChapterReference(Object bookName, Object chapter) {
    return 'Pennod gyfan: $bookName $chapter';
  }

  @override
  String get memorizeHint => 'Cofio';

  @override
  String get addNoteHint => 'Ychwanegu nodyn...';

  @override
  String get languageSearchHint => 'Chwilio ieithoedd';

  @override
  String get languageModuleInstalled => 'Wedi\'i osod';

  @override
  String get languageModulePending => 'Cyfieithiad peirianyddol yn yr arfaeth';

  @override
  String get languageNoMatches =>
      'Nid oes ieithoedd yn cyfateb i\'ch chwiliad.';

  @override
  String get languageCatalogDescription =>
      'Mae ieithoedd sydd wedi\'u gosod yn gweithio heb gysylltiad. Ychwanegir ieithoedd eraill fel modiwlau wedi\'u cyfieithu gan beiriant.';

  @override
  String get saveBookmarkSemantics => 'Cadw nod tudalen';

  @override
  String get couldNotLoadChapter =>
      'Methu llwytho\'r bennod. Rhowch gynnig arall arni.';

  @override
  String get couldNotLoadChapters =>
      'Methu llwytho\'r penodau. Rhowch gynnig arall arni.';

  @override
  String verseWithText(Object text, Object verse) {
    return 'Adnod $verse: $text';
  }

  @override
  String accentSwatchSemantics(Object name, Object selected) {
    return 'Lliw acen $name$selected';
  }

  @override
  String get oldTestament => 'Yr Hen Destament';

  @override
  String get newTestament => 'Y Testament Newydd';

  @override
  String get deuterocanonApocrypha => 'Ail-ganonaidd / Apocryffa';
}
