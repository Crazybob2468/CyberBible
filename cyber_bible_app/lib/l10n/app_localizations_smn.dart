// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Inari Sami (`smn`).
class AppLocalizationsSmn extends AppLocalizations {
  AppLocalizationsSmn([String locale = 'smn']) : super(locale);

  @override
  String get settingsTitle => 'Asâttâsah';

  @override
  String get languageSection => 'Kielâ';

  @override
  String get useSystemLanguage => 'Kävti systeemkielâ';

  @override
  String get useSystemLanguageSubtitle => 'Kävti räähti kielâ vuáđukielân.';

  @override
  String get currentLanguage => 'Tääbbin kielâ';

  @override
  String get appLanguage => 'Appkielâ';

  @override
  String get chooseLanguage => 'Valji kielâ';

  @override
  String get theme => 'Temá';

  @override
  String get appearance => 'Oinim';

  @override
  String get textSection => 'Teekst';

  @override
  String get readingFormatSection => 'Logomääđhi';

  @override
  String get displaySection => 'Čááittim';

  @override
  String get verseNumbers => 'Verssijnumerah';

  @override
  String get sectionHeadings => 'Ohtâdâhpeivi';

  @override
  String get redLetterText => 'Punas teekst';

  @override
  String get selectABook => 'Valji kirjâ';

  @override
  String get traditionalOrder => 'Áárvustâllâmjärjestem';

  @override
  String get alphabeticalOrder => 'Aakkosjärjestem';

  @override
  String get bookmarks => 'Merkkâ';

  @override
  String get retry => 'Kiččâd vuot';

  @override
  String get chooseTheme => 'Valji temá';

  @override
  String get customisableThemes => 'Muddemtemáh';

  @override
  String get customisableThemesSubtitle =>
      'Čuákkid kártta, et valjii akcenttiivd. \"Classic White\" tuárjoo čieŋâl, tumeed já systeemtemá.';

  @override
  String get setThemes => 'PEIVEMTEMÁH';

  @override
  String get setThemesSubtitle =>
      'Peivemtiivd, moh láá ráhtum huolâst. Ij taarbâ muddem; čuákkid kavnâdittân.';

  @override
  String get deleteBookmarkQuestion => 'Toos merkkâ?';

  @override
  String get cancel => 'Jorrâ';

  @override
  String get delete => 'Toos';

  @override
  String get bookmarkSaved => 'Merkkâ lij vuorkkim';

  @override
  String get couldNotDeleteBookmark => 'Merkkâ ij máhđul toosâđ.';

  @override
  String couldNotNavigate(Object reference) {
    return 'Ij máhđul puáttee $reference.';
  }

  @override
  String get pageNotFound => 'Sijđo ij kavnum';

  @override
  String noRouteDefined(Object routeName) {
    return '\"$routeName\" várás ij lah määđhi meridum';
  }

  @override
  String get english => 'Eŋgelâskielâ';

  @override
  String get spanish => 'Spánskielâ';

  @override
  String get systemDefault => 'Systeemvuáđudâh';

  @override
  String get languageStatusEnglish => 'Eŋgelâskielâ lii kevttum vuáttámkielân';

  @override
  String get languageStatusSystem => 'Systeemkielâ lii kevttum';

  @override
  String languageStatusSelected(Object languageName) {
    return 'Valjim kielâ: $languageName';
  }

  @override
  String get themeLabel => 'Temá';

  @override
  String get notFoundTitle => 'Sijđo ij kavnum';

  @override
  String get loadingCyberBible => 'Cyber Bible lii loadim...';

  @override
  String get couldNotOpenDatabase =>
      'Bible tietokanta ij máhđul rahâdiđ. Kiččâd vuot.';

  @override
  String get homeTagline => 'Mávsuuhis já oovtâstuvâi source Bible-oppâmapp';

  @override
  String get readTheBible => 'Log Bible';

  @override
  String get settingsTooltip => 'Asâttâsah';

  @override
  String get themeChoose => 'Valji temá';

  @override
  String get customThemes => 'Muddemtemáh';

  @override
  String get customThemesSubtitle =>
      'Čuákkid kártta, et valjii akcenttiivd. \"Classic White\" tuárjoo čieŋâl, tumeed já systeemtemá.';

  @override
  String get setThemesLabel => 'PEIVEMTEMÁH';

  @override
  String get deleteBookmarkDialog => 'Toos merkkâ?';

  @override
  String removeBookmarkMessage(Object details, Object reference) {
    return 'Toos \"$reference\"$details?\n\nTaat tooim ij máhđul maŋašâttiđ.';
  }

  @override
  String get couldNotLoadBookmarks => 'Merkkâi loadim ij máhđul. Kiččâd vuot.';

  @override
  String get bookmarkSavedMessage => 'Merkkâ lij vuorkkim';

  @override
  String get couldNotSaveBookmark => 'Merkkâ vuorkkim ij máhđul.';

  @override
  String get noBookmarksMatchFilter =>
      'Ij lah merkkâ, mii kuávdá taam filtteri.';

  @override
  String get clearFilter => 'Čuollâ filter';

  @override
  String get traditionalOrderLabel => 'Áárvustâllâmjärjestem';

  @override
  String get alphabeticalOrderLabel => 'Aakkosjärjestem';

  @override
  String get bookmarksTabLabel => 'Merkkâh';

  @override
  String get fullChapter => 'Täysi kappâl';

  @override
  String get addBookmark => 'Laset merkkâ';

  @override
  String get selectVerse => 'Valji verss';

  @override
  String get labelOptional => 'Nommâ (ij taarbâ)';

  @override
  String get notesOptional => 'Muštâttâsah (ij taarbâ)';

  @override
  String get save => 'Vuorkki';

  @override
  String get goToVerse => 'Puáttee verssân';

  @override
  String verseTitle(Object verse) {
    return 'Verss $verse';
  }

  @override
  String chapterTitle(Object chapter) {
    return 'Kappâl $chapter';
  }

  @override
  String get switchToFullChapter => 'Muddee täysi kappâl-merkkân';

  @override
  String get bookmarkSheetCancel => 'Jorrâ já kiäsu merkkâpaneel';

  @override
  String get pickCustomAccent => 'Valji muddemakcenttiivd';

  @override
  String get apply => 'Kevtti';

  @override
  String get custom => 'Muddem';

  @override
  String get brightnessSystem => 'Systeem';

  @override
  String get brightnessLight => 'Čieŋâl';

  @override
  String get brightnessDark => 'Tumeed';

  @override
  String get selectBook => 'Valji kirjâ';

  @override
  String get bookmarkFilterAll => 'Puoh';

  @override
  String get bookmarkFilterUnlabeled => 'Nommâttem';

  @override
  String get bookmarkSortRecent => 'Uđđâsâmuuh ovdân';

  @override
  String get bookmarkSortCanonical => 'Kanonjärjestem';

  @override
  String get chapterRetry => 'Kiččâd vuot';

  @override
  String get fontSize => 'Teekststáátu';

  @override
  String fontSizePixels(Object size) {
    return '$size px';
  }

  @override
  String get fontSizeSlider => 'Teekststáátu muddem';

  @override
  String get fontSizeSliderHint => 'Sirdâ et muddee 12–28 väli';

  @override
  String get fontPreview =>
      '\"Almâsâšmist Ipmil ráhtij almâi já eennâm.\" — 1 Moos 1:1';

  @override
  String get showVerseNumbersSubtitle => 'Čááit verssijnumerah logomskärmán.';

  @override
  String get showSectionHeadingsSubtitle =>
      'Čááit ohtâdâh- já Psalmpeivi tekstâi kooskâ.';

  @override
  String get wordsOfChristSubtitle =>
      'Čááit Jesus säänijid punas. Časku et kevttiđ ovtâ tiivd teekstân.';

  @override
  String get verseFormatTitle => 'Verssiformaat';

  @override
  String get verseFormatSubtitle => 'Valji, mo Scripture-teekst lii järjestum.';

  @override
  String get paragraphMode => 'Paragraf';

  @override
  String get verseListMode => 'Verssiluuhâ';

  @override
  String get paragraphModeTooltip => 'Paragrafmoodi';

  @override
  String get verseListModeTooltip => 'Verssiluuhâmoodi';

  @override
  String get paragraphModeDescription =>
      'Teekst vuolgâ uáli paragrafijn, tegu čállum Bibleest.';

  @override
  String get verseListModeDescription =>
      'Kuáski Scripture-paragraf álgá su own riviist, et verssihäämi láá čuávum.';

  @override
  String get deleteBookmarkTooltip => 'Toos merkkâ';

  @override
  String deleteBookmarkSemantics(Object reference) {
    return 'Toos merkkâ $reference';
  }

  @override
  String sortBookmarksTooltip(Object sortOrder) {
    return 'Järjestâ: $sortOrder';
  }

  @override
  String get noBookmarksYet => 'Merkkâ ij lah veikkâ.';

  @override
  String get noBookmarksYetHint =>
      'Čuákkid merkkâikoon logomääi, et vuorkkiđ sajadâh.';

  @override
  String bookmarkReferenceNavigationError(Object reference) {
    return 'Ij máhđul puáttee $reference.';
  }

  @override
  String themeCardSemantics(Object description, Object name, Object selected) {
    return 'Temá $name$selected. $description';
  }

  @override
  String get selectedThemeSuffix => ', valjim nääi';

  @override
  String get customisableAccentDescription => 'Muddemakcenttiivd.';

  @override
  String get fixedPaletteDescription => 'Peivemtiivd.';

  @override
  String accentColourTitle(Object themeName) {
    return 'Akcenttiivd — $themeName';
  }

  @override
  String get brightnessMode => 'ČIEŊÂLMOODI';

  @override
  String get lightMode => 'Čieŋâlmoodi';

  @override
  String get followSystemMode => 'Systeemmoodin čuávu';

  @override
  String get darkMode => 'Tumeedmoodi';

  @override
  String get customColourPicker => 'Muddemtiivd valji';

  @override
  String get customColourTooltip => 'Muddemtiivd...';

  @override
  String get couldNotLoadBooks => 'Kirjâluuhâ loadim ij máhđul. Kiččâd vuot.';

  @override
  String chapterLabel(Object chapter) {
    return 'Kappâl $chapter';
  }

  @override
  String get traditionalOrderBooks => 'Kirjeh áárvustâllâmjärjestmist';

  @override
  String get alphabeticalOrderBooks => 'Kirjeh aakkosjärjestmist';

  @override
  String get home => 'Peeivi';

  @override
  String get addBookmarkTooltip => 'Laset merkkâ';

  @override
  String get chooseBookChapter => 'Valji kirjâ já kappâl';

  @override
  String get chooseVerse => 'Valji verss';

  @override
  String get bookChapterQuickNavigation => 'Puáttee hoittâ kirjâ já kappâl';

  @override
  String get verseQuickNavigation => 'Puáttee hoittâ verss';

  @override
  String get backToBooks => 'Maŋa kirjâi';

  @override
  String get selectBookTitle => 'Valji kirjâ';

  @override
  String selectChapterTitle(Object bookName) {
    return 'Valji kappâl ($bookName)';
  }

  @override
  String chapterSelectionLabel(Object chapter) {
    return 'Kappâl $chapter';
  }

  @override
  String verseSelectionLabel(Object verse) {
    return 'Verss $verse';
  }

  @override
  String fullChapterReference(Object bookName, Object chapter) {
    return 'Täysi kappâl: $bookName $chapter';
  }

  @override
  String get memorizeHint => 'Muštâ';

  @override
  String get addNoteHint => 'Laset muštâttâs...';

  @override
  String get languageSearchHint => 'Oovtâst kielâid';

  @override
  String get languageModuleInstalled => 'Installum';

  @override
  String get languageModulePending => 'Machine-čuávdâm odottem';

  @override
  String get languageNoMatches => 'Ij lah kielâ, mii kuávdá tuu oovtâstâm.';

  @override
  String get languageCatalogDescription =>
      'Installum kielâh toimâ internettem. Eres kielâh láá lasettum machine-čuávdâm-modulein.';

  @override
  String get saveBookmarkSemantics => 'Vuorkki merkkâ';

  @override
  String get couldNotLoadChapter => 'Kappâl loadim ij máhđul. Kiččâd vuot.';

  @override
  String get couldNotLoadChapters => 'Kappâlâi loadim ij máhđul. Kiččâd vuot.';

  @override
  String verseWithText(Object text, Object verse) {
    return 'Verss $verse: $text';
  }

  @override
  String accentSwatchSemantics(Object name, Object selected) {
    return 'Akcenttiivd $name$selected';
  }

  @override
  String get oldTestament => 'Ovdil testament';

  @override
  String get newTestament => 'Uđđâ testament';

  @override
  String get deuterocanonApocrypha => 'Deuterokanon / Apokryfa';
}
