// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Northern Sami (`se`).
class AppLocalizationsSe extends AppLocalizations {
  AppLocalizationsSe([String locale = 'se']) : super(locale);

  @override
  String get settingsTitle => 'Heivehusat';

  @override
  String get languageSection => 'Giella';

  @override
  String get useSystemLanguage => 'Geavat vuogádatgiela';

  @override
  String get useSystemLanguageSubtitle => 'Geavat ovdagihtii ovttadaga giela.';

  @override
  String get currentLanguage => 'Dálá giella';

  @override
  String get appLanguage => 'Prográmma giella';

  @override
  String get chooseLanguage => 'Vállje giela';

  @override
  String get theme => 'Fáddá';

  @override
  String get appearance => 'Fárda';

  @override
  String get textSection => 'Teaksta';

  @override
  String get readingFormatSection => 'Loganhámit';

  @override
  String get displaySection => 'Čájet';

  @override
  String get verseNumbers => 'Verse-nummarat';

  @override
  String get sectionHeadings => 'Oassečállagat';

  @override
  String get redLetterText => 'Ruoksat bustávat';

  @override
  String get selectABook => 'Vállje girjji';

  @override
  String get traditionalOrder => 'Árbevirolaš ortnet';

  @override
  String get alphabeticalOrder => 'Alfabehta ortnet';

  @override
  String get bookmarks => 'Girjemearkkat';

  @override
  String get retry => 'Geahččal fas';

  @override
  String get chooseTheme => 'Vállje fáddá';

  @override
  String get customisableThemes => 'Heivehahtti fáddát';

  @override
  String get customisableThemesSubtitle =>
      'Deaddil koartta válljet dihte ivdneaccenta. \"Classic White\" doarju maiddái čuvges, sevdnjes ja vuogádatmode.';

  @override
  String get setThemes => 'JÁVKKAS FÁDDÁT';

  @override
  String get setThemesSubtitle =>
      'Báikkálaččat ráhkaduvvon ivdnečoahkit. Heiveheapmi ii dárbbašuvvo; deaddil geavahit dihte.';

  @override
  String get deleteBookmarkQuestion => 'Sihko girjemearkka?';

  @override
  String get cancel => 'Gaskkalduhte';

  @override
  String get delete => 'Sihko';

  @override
  String get bookmarkSaved => 'Girjemearka vurkejuvvui';

  @override
  String get couldNotDeleteBookmark => 'Girjemearka ii sáhttán sihkkojuvvot.';

  @override
  String couldNotNavigate(Object reference) {
    return 'Ii sáhttán mannat $reference.';
  }

  @override
  String get pageNotFound => 'Siidu ii gávdnon';

  @override
  String noRouteDefined(Object routeName) {
    return 'Ii leat čujuhus meroštallojuvvon \"$routeName\" várás';
  }

  @override
  String get english => 'Eaŋgalsgiella';

  @override
  String get spanish => 'Spánskkagiella';

  @override
  String get systemDefault => 'Vuogádaga standarda';

  @override
  String get languageStatusEnglish => 'Eaŋgalsgiella lea várregiellan';

  @override
  String get languageStatusSystem => 'Geavaha vuogádatgiela';

  @override
  String languageStatusSelected(Object languageName) {
    return 'Válljejuvvon giella: $languageName';
  }

  @override
  String get themeLabel => 'Fáddá';

  @override
  String get notFoundTitle => 'Siidu ii gávdnon';

  @override
  String get loadingCyberBible => 'Cyber Bible vižžojuvvo...';

  @override
  String get couldNotOpenDatabase =>
      'Ii sáhttán rahpat Biibbala diehtovuođu. Geahččal fas.';

  @override
  String get homeTagline =>
      'Nuhttekeahtes ja rabas koda Biibbala dutkanapplikašuvdna';

  @override
  String get readTheBible => 'Loga Biibbala';

  @override
  String get settingsTooltip => 'Heivehusat';

  @override
  String get themeChoose => 'Vállje fáddá';

  @override
  String get customThemes => 'Heivehahtti fáddát';

  @override
  String get customThemesSubtitle =>
      'Deaddil koartta válljet dihte ivdneaccenta. \"Classic White\" doarju maiddái čuvges, sevdnjes ja vuogádatmode.';

  @override
  String get setThemesLabel => 'JÁVKKAS FÁDDÁT';

  @override
  String get deleteBookmarkDialog => 'Sihko girjemearkka?';

  @override
  String removeBookmarkMessage(Object details, Object reference) {
    return 'Váldde eret \"$reference\"$details?\n\nDán ii sáhte máhcat.';
  }

  @override
  String get couldNotLoadBookmarks =>
      'Ii sáhttán vižžat girjemearkkaid. Geahččal fas.';

  @override
  String get bookmarkSavedMessage => 'Girjemearka vurkejuvvui';

  @override
  String get couldNotSaveBookmark => 'Girjemearka ii sáhttán vurkejuvvot.';

  @override
  String get noBookmarksMatchFilter =>
      'Ii oktage girjemearka heive dán sillen.';

  @override
  String get clearFilter => 'Sálke silli';

  @override
  String get traditionalOrderLabel => 'Árbevirolaš ortnet';

  @override
  String get alphabeticalOrderLabel => 'Alfabehta ortnet';

  @override
  String get bookmarksTabLabel => 'Girjemearkkat';

  @override
  String get fullChapter => 'Olles kapihtal';

  @override
  String get addBookmark => 'Lasit girjemearkka';

  @override
  String get selectVerse => 'Vállje verse';

  @override
  String get labelOptional => 'Mearka (eaktodáhtolaš)';

  @override
  String get notesOptional => 'Notáhtat (eaktodáhtolaččat)';

  @override
  String get save => 'Vurke';

  @override
  String get goToVerse => 'Mana versii';

  @override
  String verseTitle(Object verse) {
    return 'Versa $verse';
  }

  @override
  String chapterTitle(Object chapter) {
    return 'Kapihtal $chapter';
  }

  @override
  String get switchToFullChapter => 'Molso olles kapihttala girjemearkkas';

  @override
  String get bookmarkSheetCancel => 'Gaskkalduhte ja gidde girjemearkka láse';

  @override
  String get pickCustomAccent => 'Vállje iežat accentivnni';

  @override
  String get apply => 'Geavat';

  @override
  String get custom => 'Iežas';

  @override
  String get brightnessSystem => 'Vuogádat';

  @override
  String get brightnessLight => 'Čuvges';

  @override
  String get brightnessDark => 'Sevdnjes';

  @override
  String get selectBook => 'Vállje girjji';

  @override
  String get bookmarkFilterAll => 'Buot';

  @override
  String get bookmarkFilterUnlabeled => 'Mearkka haga';

  @override
  String get bookmarkSortRecent => 'Ođđaseamos álggus';

  @override
  String get bookmarkSortCanonical => 'Kanoniijalaš ortnet';

  @override
  String get chapterRetry => 'Geahččal fas';

  @override
  String get fontSize => 'Fontta sturrodat';

  @override
  String fontSizePixels(Object size) {
    return '$size px';
  }

  @override
  String get fontSizeSlider => 'Fontta sturrodatlihkadan';

  @override
  String get fontSizeSliderHint => 'Sirdde heivehit gaskal 12 ja 28';

  @override
  String get fontPreview =>
      '\"Álgodagas Ipmil ráhkadii albmi ja eatnama.\" — Gen 1:1';

  @override
  String get showVerseNumbersSubtitle =>
      'Čájet verse-nummariid bajilčállagiid loganskovis.';

  @override
  String get showSectionHeadingsSubtitle =>
      'Čájet oasse- ja Salmočállagiid teavstaoasiid gaskkas.';

  @override
  String get wordsOfChristSubtitle =>
      'Čájet Jesus sániid ruoksadin. Jávkke jus háliidat ovtta teakstaivnni.';

  @override
  String get verseFormatTitle => 'Versehápmi';

  @override
  String get verseFormatSubtitle =>
      'Vállje mo čállagii galgá leat heivehuvvon.';

  @override
  String get paragraphMode => 'Mearkkačálus';

  @override
  String get verseListMode => 'Verse-listu';

  @override
  String get paragraphModeTooltip => 'Mearkkačállagameannu';

  @override
  String get verseListModeTooltip => 'Verse-listumeannu';

  @override
  String get paragraphModeDescription =>
      'Teaksta lea joatkašuvvi ja sisačuožžilan mearkkačállagiin, nugo preantta Biibbalis.';

  @override
  String get verseListModeDescription =>
      'Juohke čállagaoassi álgá iežas linnjás, vai versejoavkkut leat álkit oaidnit.';

  @override
  String get deleteBookmarkTooltip => 'Sihko girjemearkka';

  @override
  String deleteBookmarkSemantics(Object reference) {
    return 'Sihko girjemearkka $reference';
  }

  @override
  String sortBookmarksTooltip(Object sortOrder) {
    return 'Ráddje: $sortOrder';
  }

  @override
  String get noBookmarksYet => 'Ii leat vel girjemearka.';

  @override
  String get noBookmarksYetHint =>
      'Deaddil girjemearkka gova lohkadettiin vurket dihte saji.';

  @override
  String bookmarkReferenceNavigationError(Object reference) {
    return 'Ii sáhttán mannat $reference.';
  }

  @override
  String themeCardSemantics(Object description, Object name, Object selected) {
    return 'Fáddá $name$selected. $description';
  }

  @override
  String get selectedThemeSuffix => ', dál válljejuvvon';

  @override
  String get customisableAccentDescription => 'Heivehahtti accentivdni.';

  @override
  String get fixedPaletteDescription => 'Jávkkas ivdnečoahkki.';

  @override
  String accentColourTitle(Object themeName) {
    return 'Accentivdni — $themeName';
  }

  @override
  String get brightnessMode => 'ČUOVGA MODE';

  @override
  String get lightMode => 'Čuvges meannu';

  @override
  String get followSystemMode => 'Čuovo vuogádatmode';

  @override
  String get darkMode => 'Sevdnjes meannu';

  @override
  String get customColourPicker => 'Iežas ivdneválljen';

  @override
  String get customColourTooltip => 'Iežas ivdni…';

  @override
  String get couldNotLoadBooks =>
      'Ii sáhttán vižžat girjelisttu. Geahččal fas.';

  @override
  String chapterLabel(Object chapter) {
    return 'Kapihtal $chapter';
  }

  @override
  String get traditionalOrderBooks => 'Girjjit árbevirolaš ortnegis';

  @override
  String get alphabeticalOrderBooks => 'Girjjit alfabehta ortnegis';

  @override
  String get home => 'Ruoktu';

  @override
  String get addBookmarkTooltip => 'Lasit girjemearkka';

  @override
  String get chooseBookChapter => 'Vállje girjji ja kapihttala';

  @override
  String get chooseVerse => 'Vállje verse';

  @override
  String get bookChapterQuickNavigation =>
      'Jođánis navigašuvdna girjái ja kapihttalii';

  @override
  String get verseQuickNavigation => 'Jođánis navigašuvdna versii';

  @override
  String get backToBooks => 'Ruovttoluotta girjjiide';

  @override
  String get selectBookTitle => 'Vállje girjji';

  @override
  String selectChapterTitle(Object bookName) {
    return 'Vállje kapihttala ($bookName)';
  }

  @override
  String chapterSelectionLabel(Object chapter) {
    return 'Kapihtal $chapter';
  }

  @override
  String verseSelectionLabel(Object verse) {
    return 'Versa $verse';
  }

  @override
  String fullChapterReference(Object bookName, Object chapter) {
    return 'Olles kapihtal: $bookName $chapter';
  }

  @override
  String get memorizeHint => 'Muitte';

  @override
  String get addNoteHint => 'Lasit notáhta...';

  @override
  String get languageSearchHint => 'Oza gielaid';

  @override
  String get languageModuleInstalled => 'Sajáiduvvon';

  @override
  String get languageModulePending => 'Mašiidnafárren vuordá';

  @override
  String get languageNoMatches => 'Ii oktage giella heive ohcamii.';

  @override
  String get languageCatalogDescription =>
      'Sajáiduvvon gielat doibmet fierpmádatkeahtes. Eará gielat lasihuvvojit mašiidnafárrenmodulan.';

  @override
  String get saveBookmarkSemantics => 'Vurke girjemearkka';

  @override
  String get couldNotLoadChapter =>
      'Ii sáhttán vižžat kapihttala. Geahččal fas.';

  @override
  String get couldNotLoadChapters =>
      'Ii sáhttán vižžat kapihttaliid. Geahččal fas.';

  @override
  String verseWithText(Object text, Object verse) {
    return 'Versa $verse: $text';
  }

  @override
  String accentSwatchSemantics(Object name, Object selected) {
    return 'Accentivdni $name$selected';
  }

  @override
  String get oldTestament => 'Boares testamenta';

  @override
  String get newTestament => 'Ođđa testamenta';

  @override
  String get deuterocanonApocrypha => 'Deuterokanonalaš girjjit / Apocrypha';
}
