// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Kamba (`kam`).
class AppLocalizationsKam extends AppLocalizations {
  AppLocalizationsKam([String locale = 'kam']) : super(locale);

  @override
  String get settingsTitle => 'Mĩvango';

  @override
  String get languageSection => 'Kĩtavĩ';

  @override
  String get useSystemLanguage => 'Tumia kĩtavĩ kya sisitemu';

  @override
  String get useSystemLanguageSubtitle =>
      'Tumia kĩtavĩ kya kifaa ta kĩtavĩ kya kwambĩlĩlya.';

  @override
  String get currentLanguage => 'Kĩtavĩ kĩĩ';

  @override
  String get appLanguage => 'Kĩtavĩ kya app';

  @override
  String get chooseLanguage => 'Sagua kĩtavĩ';

  @override
  String get theme => 'Mũkũlũ';

  @override
  String get appearance => 'Ũonekano';

  @override
  String get textSection => 'Mwandĩko';

  @override
  String get readingFormatSection => 'Mĩtũkĩ ya kũsoma';

  @override
  String get displaySection => 'Onya';

  @override
  String get verseNumbers => 'Namba sya mĩsamo';

  @override
  String get sectionHeadings => 'Mĩtwe ya vikundi';

  @override
  String get redLetterText => 'Mwandĩko mũthuku';

  @override
  String get selectABook => 'Sagua ĩtabũ';

  @override
  String get traditionalOrder => 'Mũtũkĩ wa tene';

  @override
  String get alphabeticalOrder => 'Mũtũkĩ wa alifabeti';

  @override
  String get bookmarks => 'Vĩndĩkĩ';

  @override
  String get retry => 'Eka o na';

  @override
  String get chooseTheme => 'Sagua mũkũlũ';

  @override
  String get customisableThemes => 'Mĩkũlũ ĩĩvĩndũka';

  @override
  String get customisableThemesSubtitle =>
      'Kũnya kĩkadi nĩ ũsagũe rangi ya kũonekania. \"Classic White\" ĩtũma o na mĩtũkĩ ya Kĩangĩ, Kĩvũ, na Sisitemu.';

  @override
  String get setThemes => 'MĨKŨLŨ ĨTĨVĨNDŨKI';

  @override
  String get setThemesSubtitle =>
      'Mĩkũlũ ĩtĩvĩndũki ĩkethwa wega. Kũvĩndũa ti kwĩka; kũnya nĩ ũtũmie.';

  @override
  String get deleteBookmarkQuestion => 'Ũsye kĩndĩkĩ?';

  @override
  String get cancel => 'Tiga';

  @override
  String get delete => 'Ũsye';

  @override
  String get bookmarkSaved => 'Kĩndĩkĩ kĩĩkĩte';

  @override
  String get couldNotDeleteBookmark => 'Kĩndĩkĩ kĩtĩũsye.';

  @override
  String couldNotNavigate(Object reference) {
    return 'Kũya $reference kũtĩũkĩte.';
  }

  @override
  String get pageNotFound => 'Waraka wĩtĩoneka';

  @override
  String noRouteDefined(Object routeName) {
    return 'Njĩa ya \"$routeName\" ndĩĩkĩte';
  }

  @override
  String get english => 'Kĩingereza';

  @override
  String get spanish => 'Kĩspania';

  @override
  String get systemDefault => 'Kya sisitemu';

  @override
  String get languageStatusEnglish =>
      'Kĩingereza nĩkĩtũmĩka ta kĩtavĩ kya kũvĩndũa';

  @override
  String get languageStatusSystem => 'Kĩtavĩ kya sisitemu nĩkĩtũmĩka';

  @override
  String languageStatusSelected(Object languageName) {
    return 'Kĩtavĩ kĩĩsagũe: $languageName';
  }

  @override
  String get themeLabel => 'Mũkũlũ';

  @override
  String get notFoundTitle => 'Waraka wĩtĩoneka';

  @override
  String get loadingCyberBible => 'Cyber Bible nĩĩtũmĩka...';

  @override
  String get couldNotOpenDatabase =>
      'Basi ya maundũ ma Bible ndĩĩvũkĩte. Eka o na.';

  @override
  String get homeTagline =>
      'App ya kũsomesa Bible ya mbesa tiĩ na source ĩĩvũkĩte';

  @override
  String get readTheBible => 'Soma Bible';

  @override
  String get settingsTooltip => 'Mĩvango';

  @override
  String get themeChoose => 'Sagua mũkũlũ';

  @override
  String get customThemes => 'Mĩkũlũ ĩĩvĩndũka';

  @override
  String get customThemesSubtitle =>
      'Kũnya kĩkadi nĩ ũsagũe rangi ya kũonekania. \"Classic White\" ĩtũma o na mĩtũkĩ ya Kĩangĩ, Kĩvũ, na Sisitemu.';

  @override
  String get setThemesLabel => 'MĨKŨLŨ ĨTĨVĨNDŨKI';

  @override
  String get deleteBookmarkDialog => 'Ũsye kĩndĩkĩ?';

  @override
  String removeBookmarkMessage(Object details, Object reference) {
    return 'Ũsye \"$reference\"$details?\n\nŨtũmĩĩ ũyũ ndũĩvĩndũka.';
  }

  @override
  String get couldNotLoadBookmarks => 'Kũtũma vĩndĩkĩ kũtĩũkĩte. Eka o na.';

  @override
  String get bookmarkSavedMessage => 'Kĩndĩkĩ kĩĩkĩte';

  @override
  String get couldNotSaveBookmark => 'Kĩndĩkĩ kĩtĩĩkĩte.';

  @override
  String get noBookmarksMatchFilter =>
      'Kĩndĩkĩ kĩmwe kĩtĩyĩsĩĩana na filter ĩĩ.';

  @override
  String get clearFilter => 'Sya filter';

  @override
  String get traditionalOrderLabel => 'Mũtũkĩ wa tene';

  @override
  String get alphabeticalOrderLabel => 'Mũtũkĩ wa alifabeti';

  @override
  String get bookmarksTabLabel => 'Vĩndĩkĩ';

  @override
  String get fullChapter => 'Kĩsomo kĩkũ';

  @override
  String get addBookmark => 'Ongezea kĩndĩkĩ';

  @override
  String get selectVerse => 'Sagua musamo';

  @override
  String get labelOptional => 'Ĩtwa (ti ya lazima)';

  @override
  String get notesOptional => 'Bĩlĩ (ti ya lazima)';

  @override
  String get save => 'Ĩka';

  @override
  String get goToVerse => 'Ya musamo';

  @override
  String verseTitle(Object verse) {
    return 'Musamo $verse';
  }

  @override
  String chapterTitle(Object chapter) {
    return 'Kĩsomo $chapter';
  }

  @override
  String get switchToFullChapter => 'Vĩndũla kĩndĩkĩ kya kĩsomo kĩkũ';

  @override
  String get bookmarkSheetCancel => 'Tiga na uvale kĩanda kya vĩndĩkĩ';

  @override
  String get pickCustomAccent => 'Sagua rangi ya kũonekania ĩĩvĩndũkĩte';

  @override
  String get apply => 'Tumia';

  @override
  String get custom => 'Ĩĩvĩndũkĩte';

  @override
  String get brightnessSystem => 'Sisitemu';

  @override
  String get brightnessLight => 'Kĩangĩ';

  @override
  String get brightnessDark => 'Kĩvũ';

  @override
  String get selectBook => 'Sagua ĩtabũ';

  @override
  String get bookmarkFilterAll => 'Yonthe';

  @override
  String get bookmarkFilterUnlabeled => 'Ĩtwa ndĩĩte';

  @override
  String get bookmarkSortRecent => 'Ĩĩvĩndũkĩte nĩĩtangĩla';

  @override
  String get bookmarkSortCanonical => 'Mũtũkĩ wa kanoni';

  @override
  String get chapterRetry => 'Eka o na';

  @override
  String get fontSize => 'Ũkũ wa marũa';

  @override
  String fontSizePixels(Object size) {
    return '$size px';
  }

  @override
  String get fontSizeSlider => 'Mũtũũkĩ wa ũkũ wa marũa';

  @override
  String get fontSizeSliderHint => 'Sũkũma ũvĩndũe kuuma 12 nginya 28';

  @override
  String get fontPreview =>
      '\"Mbĩlĩlĩlo Ngai nĩũmbĩĩte igũrũ na nthĩ.\" — Mwa 1:1';

  @override
  String get showVerseNumbersSubtitle =>
      'Onya namba sya mĩsamo kĩonekanĩlo kya kũsoma.';

  @override
  String get showSectionHeadingsSubtitle =>
      'Onya mĩtwe ya vikundi na Sálmo katikati ya maandĩko.';

  @override
  String get wordsOfChristSubtitle =>
      'Onya maundũ ma Yesu na rangi mũthuku. Vala ũtũmie rangi ĩmwe ya maandĩko.';

  @override
  String get verseFormatTitle => 'Mĩtũkĩ ya musamo';

  @override
  String get verseFormatSubtitle => 'Sagua ũtũkĩ wa maandĩko ma Kĩveo.';

  @override
  String get paragraphMode => 'Kĩvĩndĩkĩ';

  @override
  String get verseListMode => 'Mũtũũkĩ wa mĩsamo';

  @override
  String get paragraphModeTooltip => 'Mũtũkĩ wa kĩvĩndĩkĩ';

  @override
  String get verseListModeTooltip => 'Mũtũkĩ wa mĩsamo';

  @override
  String get paragraphModeDescription =>
      'Maandĩko nĩmakũlũma katikati ya vĩndĩkĩ, ta Bible ĩĩcapĩĩte.';

  @override
  String get verseListModeDescription =>
      'Kĩvĩndĩkĩ kĩla kya Kĩveo kĩtandĩka kĩlaini kyakyo, nĩũone mĩsamo wega.';

  @override
  String get deleteBookmarkTooltip => 'Ũsye kĩndĩkĩ';

  @override
  String deleteBookmarkSemantics(Object reference) {
    return 'Ũsye kĩndĩkĩ $reference';
  }

  @override
  String sortBookmarksTooltip(Object sortOrder) {
    return 'Tũũka: $sortOrder';
  }

  @override
  String get noBookmarksYet => 'Kĩndĩkĩ kĩtĩĩte.';

  @override
  String get noBookmarksYetHint => 'Kũnya alama ya kĩndĩkĩ ũkĩsoma ũĩke handũ.';

  @override
  String bookmarkReferenceNavigationError(Object reference) {
    return 'Kũya $reference kũtĩũkĩte.';
  }

  @override
  String themeCardSemantics(Object description, Object name, Object selected) {
    return 'Mũkũlũ $name$selected. $description';
  }

  @override
  String get selectedThemeSuffix => ', ũsagũe ĩĩ';

  @override
  String get customisableAccentDescription => 'Rangi ya kũonekania ĩĩvĩndũka.';

  @override
  String get fixedPaletteDescription => 'Mĩkũlũ ĩtĩvĩndũki.';

  @override
  String accentColourTitle(Object themeName) {
    return 'Rangi — $themeName';
  }

  @override
  String get brightnessMode => 'MŨTŨKĨ WA KĨANGĨ';

  @override
  String get lightMode => 'Mũtũkĩ wa kĩangĩ';

  @override
  String get followSystemMode => 'Tũũka mũtũkĩ wa sisitemu';

  @override
  String get darkMode => 'Mũtũkĩ wa kĩvũ';

  @override
  String get customColourPicker => 'Sagua rangi ĩĩvĩndũkĩte';

  @override
  String get customColourTooltip => 'Rangi ĩĩvĩndũkĩte...';

  @override
  String get couldNotLoadBooks => 'Mũtũũkĩ wa matabu ndũĩkĩte. Eka o na.';

  @override
  String chapterLabel(Object chapter) {
    return 'Kĩsomo $chapter';
  }

  @override
  String get traditionalOrderBooks => 'Matabu mũtũkĩ wa tene';

  @override
  String get alphabeticalOrderBooks => 'Matabu mũtũkĩ wa alifabeti';

  @override
  String get home => 'Mũciĩ';

  @override
  String get addBookmarkTooltip => 'Ongezea kĩndĩkĩ';

  @override
  String get chooseBookChapter => 'Sagua ĩtabũ na kĩsomo';

  @override
  String get chooseVerse => 'Sagua musamo';

  @override
  String get bookChapterQuickNavigation => 'Ya ĩtabũ na kĩsomo na iini';

  @override
  String get verseQuickNavigation => 'Ya musamo na iini';

  @override
  String get backToBooks => 'Tũũka matabu';

  @override
  String get selectBookTitle => 'Sagua ĩtabũ';

  @override
  String selectChapterTitle(Object bookName) {
    return 'Sagua kĩsomo ($bookName)';
  }

  @override
  String chapterSelectionLabel(Object chapter) {
    return 'Kĩsomo $chapter';
  }

  @override
  String verseSelectionLabel(Object verse) {
    return 'Musamo $verse';
  }

  @override
  String fullChapterReference(Object bookName, Object chapter) {
    return 'Kĩsomo kĩkũ: $bookName $chapter';
  }

  @override
  String get memorizeHint => 'Ĩka mũtwe';

  @override
  String get addNoteHint => 'Ongezea kĩandĩko...';

  @override
  String get languageSearchHint => 'Saka ndimi';

  @override
  String get languageModuleInstalled => 'Ĩĩkĩte';

  @override
  String get languageModulePending => 'Kũvĩndũa kwa máyini kũrĩĩ';

  @override
  String get languageNoMatches => 'Ndĩmi ĩmwe ndĩĩsĩĩanĩte na ũsakĩ.';

  @override
  String get languageCatalogDescription =>
      'Ndimi ĩĩkĩte nĩmakũlũma itavĩ internet. Ndimi ingĩ nĩmaongezewe ta moduli sya kũvĩndũa kwa máyini.';

  @override
  String get saveBookmarkSemantics => 'Ĩka kĩndĩkĩ';

  @override
  String get couldNotLoadChapter => 'Kĩsomo kĩtĩĩte. Eka o na.';

  @override
  String get couldNotLoadChapters => 'Mĩsomo ndĩĩte. Eka o na.';

  @override
  String verseWithText(Object text, Object verse) {
    return 'Musamo $verse: $text';
  }

  @override
  String accentSwatchSemantics(Object name, Object selected) {
    return 'Rangi $name$selected';
  }

  @override
  String get oldTestament => 'Ĩandĩko ya tene';

  @override
  String get newTestament => 'Ĩandĩko ya ũkũ';

  @override
  String get deuterocanonApocrypha => 'Deuterokanon / Apokrifa';
}
