// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Sangu (`sbp`).
class AppLocalizationsSbp extends AppLocalizations {
  AppLocalizationsSbp([String locale = 'sbp']) : super(locale);

  @override
  String get settingsTitle => 'Makwikala';

  @override
  String get languageSection => 'Ululimi';

  @override
  String get useSystemLanguage => 'Tumia ululimi wa sisitemu';

  @override
  String get useSystemLanguageSubtitle =>
      'Tumia ululimi wa kifaa ngati ululimi wa mwanzo.';

  @override
  String get currentLanguage => 'Ululimi wa lino';

  @override
  String get appLanguage => 'Ululimi wa app';

  @override
  String get chooseLanguage => 'Saghula ululimi';

  @override
  String get theme => 'Mufano';

  @override
  String get appearance => 'Moneka';

  @override
  String get textSection => 'Mazwi';

  @override
  String get readingFormatSection => 'Mufano wa kusoma';

  @override
  String get displaySection => 'Onyesha';

  @override
  String get verseNumbers => 'Namba sha milongo';

  @override
  String get sectionHeadings => 'Mitu ya vikundi';

  @override
  String get redLetterText => 'Mazwi mafipa';

  @override
  String get selectABook => 'Saghula kitabu';

  @override
  String get traditionalOrder => 'Mfululizo wa kale';

  @override
  String get alphabeticalOrder => 'Mfululizo wa alifabeti';

  @override
  String get bookmarks => 'Viashiria';

  @override
  String get retry => 'Jaribu futi';

  @override
  String get chooseTheme => 'Saghula mufano';

  @override
  String get customisableThemes => 'Mifano ya kubadilisha';

  @override
  String get customisableThemesSubtitle =>
      'Bonyza khadi kusaghula rangi ya mkazo. \"Classic White\" yinaunga mkono hali ya mwanga, giza na sisitemu.';

  @override
  String get setThemes => 'MIFANO ISIYOBADILIKA';

  @override
  String get setThemesSubtitle =>
      'Rangi zisizobadilika zilizotengenezwa kwa umakini. Hakuna kubadilisha; bonyza kuzitumia.';

  @override
  String get deleteBookmarkQuestion => 'Futa kiashiria?';

  @override
  String get cancel => 'Acha';

  @override
  String get delete => 'Futa';

  @override
  String get bookmarkSaved => 'Kiashiria kimehifadhiwa';

  @override
  String get couldNotDeleteBookmark => 'Kiashiria hakikuweza kufutwa.';

  @override
  String couldNotNavigate(Object reference) {
    return 'Haikuwezekana kwenda $reference.';
  }

  @override
  String get pageNotFound => 'Ukurasa haukupatikana';

  @override
  String noRouteDefined(Object routeName) {
    return 'Hakuna njia iliyowekwa kwa \"$routeName\"';
  }

  @override
  String get english => 'Kiingereza';

  @override
  String get spanish => 'Kihispania';

  @override
  String get systemDefault => 'Chaguo-msingi la sisitemu';

  @override
  String get languageStatusEnglish =>
      'Kiingereza kinatumika kama ululimi wa akiba';

  @override
  String get languageStatusSystem => 'Ululimi wa sisitemu unatumika';

  @override
  String languageStatusSelected(Object languageName) {
    return 'Ululimi uliochaguliwa: $languageName';
  }

  @override
  String get themeLabel => 'Mufano';

  @override
  String get notFoundTitle => 'Ukurasa haukupatikana';

  @override
  String get loadingCyberBible => 'Cyber Bible inapakiwa...';

  @override
  String get couldNotOpenDatabase =>
      'Hifadhidata ya Biblia haikuweza kufunguliwa. Jaribu futi.';

  @override
  String get homeTagline => 'App ya kusoma Biblia ya bure na chanzo wazi';

  @override
  String get readTheBible => 'Soma Biblia';

  @override
  String get settingsTooltip => 'Makwikala';

  @override
  String get themeChoose => 'Saghula mufano';

  @override
  String get customThemes => 'Mifano ya kubadilisha';

  @override
  String get customThemesSubtitle =>
      'Bonyza khadi kusaghula rangi ya mkazo. \"Classic White\" yinaunga mkono hali ya mwanga, giza na sisitemu.';

  @override
  String get setThemesLabel => 'MIFANO ISIYOBADILIKA';

  @override
  String get deleteBookmarkDialog => 'Futa kiashiria?';

  @override
  String removeBookmarkMessage(Object details, Object reference) {
    return 'Futa \"$reference\"$details?\n\nHili haliwezi kurejeshwa.';
  }

  @override
  String get couldNotLoadBookmarks =>
      'Viashiria havikuweza kupakiwa. Jaribu futi.';

  @override
  String get bookmarkSavedMessage => 'Kiashiria kimehifadhiwa';

  @override
  String get couldNotSaveBookmark => 'Kiashiria hakikuweza kuhifadhiwa.';

  @override
  String get noBookmarksMatchFilter =>
      'Hakuna kiashiria kinacholingana na kichujio hiki.';

  @override
  String get clearFilter => 'Futa kichujio';

  @override
  String get traditionalOrderLabel => 'Mfululizo wa kale';

  @override
  String get alphabeticalOrderLabel => 'Mfululizo wa alifabeti';

  @override
  String get bookmarksTabLabel => 'Viashiria';

  @override
  String get fullChapter => 'Sura nzima';

  @override
  String get addBookmark => 'Ongeza kiashiria';

  @override
  String get selectVerse => 'Chagua mstari';

  @override
  String get labelOptional => 'Lebo (si lazima)';

  @override
  String get notesOptional => 'Maelezo (si lazima)';

  @override
  String get save => 'Hifadhi';

  @override
  String get goToVerse => 'Nenda kwenye mstari';

  @override
  String verseTitle(Object verse) {
    return 'Mstari $verse';
  }

  @override
  String chapterTitle(Object chapter) {
    return 'Sura $chapter';
  }

  @override
  String get switchToFullChapter => 'Badili kuwa kiashiria cha sura nzima';

  @override
  String get bookmarkSheetCancel => 'Acha na funga paneli ya viashiria';

  @override
  String get pickCustomAccent => 'Chagua rangi ya mkazo ya pekee';

  @override
  String get apply => 'Tumia';

  @override
  String get custom => 'Ya pekee';

  @override
  String get brightnessSystem => 'Sisitemu';

  @override
  String get brightnessLight => 'Mwanga';

  @override
  String get brightnessDark => 'Giza';

  @override
  String get selectBook => 'Chagua kitabu';

  @override
  String get bookmarkFilterAll => 'Vyote';

  @override
  String get bookmarkFilterUnlabeled => 'Bila lebo';

  @override
  String get bookmarkSortRecent => 'Vipya kwanza';

  @override
  String get bookmarkSortCanonical => 'Mfululizo wa Biblia';

  @override
  String get chapterRetry => 'Jaribu futi';

  @override
  String get fontSize => 'Ukubwa wa herufi';

  @override
  String fontSizePixels(Object size) {
    return '$size px';
  }

  @override
  String get fontSizeSlider => 'Kitelezi cha ukubwa wa herufi';

  @override
  String get fontSizeSliderHint => 'Telezesha kubadilisha kutoka 12 hadi 28';

  @override
  String get fontPreview =>
      '\"Hapo mwanzo Mungu aliumba mbingu na dunia.\" — Mwanzo 1:1';

  @override
  String get showVerseNumbersSubtitle =>
      'Onyesha namba za mistari kwenye skrini ya kusoma.';

  @override
  String get showSectionHeadingsSubtitle =>
      'Onyesha vichwa vya sehemu na Zaburi kati ya vifungu.';

  @override
  String get wordsOfChristSubtitle =>
      'Onyesha maneno ya Yesu kwa rangi nyekundu. Zima kutumia rangi moja ya maandishi.';

  @override
  String get verseFormatTitle => 'Mufano wa mstari';

  @override
  String get verseFormatSubtitle =>
      'Chagua mpangilio wa maandishi ya Maandiko.';

  @override
  String get paragraphMode => 'Aya';

  @override
  String get verseListMode => 'Orodha ya mistari';

  @override
  String get paragraphModeTooltip => 'Hali ya aya';

  @override
  String get verseListModeTooltip => 'Hali ya orodha ya mistari';

  @override
  String get paragraphModeDescription =>
      'Maandishi yanapita mfululizo katika aya zilizoingizwa ndani, kama Biblia iliyochapishwa.';

  @override
  String get verseListModeDescription =>
      'Kila aya ya Maandiko huanza kwenye mstari wake ili makundi ya mistari yaonekane wazi.';

  @override
  String get deleteBookmarkTooltip => 'Futa kiashiria';

  @override
  String deleteBookmarkSemantics(Object reference) {
    return 'Futa kiashiria $reference';
  }

  @override
  String sortBookmarksTooltip(Object sortOrder) {
    return 'Panga: $sortOrder';
  }

  @override
  String get noBookmarksYet => 'Bado hakuna viashiria.';

  @override
  String get noBookmarksYetHint =>
      'Bonyza alama ya kiashiria unaposoma ili kuhifadhi mahali.';

  @override
  String bookmarkReferenceNavigationError(Object reference) {
    return 'Haikuwezekana kwenda $reference.';
  }

  @override
  String themeCardSemantics(Object description, Object name, Object selected) {
    return 'Mufano $name$selected. $description';
  }

  @override
  String get selectedThemeSuffix => ', umechaguliwa sasa';

  @override
  String get customisableAccentDescription =>
      'Rangi ya mkazo inayoweza kubadilika.';

  @override
  String get fixedPaletteDescription => 'Paleti ya rangi isiyobadilika.';

  @override
  String accentColourTitle(Object themeName) {
    return 'Rangi ya mkazo — $themeName';
  }

  @override
  String get brightnessMode => 'HALI YA MWANGA';

  @override
  String get lightMode => 'Hali ya mwanga';

  @override
  String get followSystemMode => 'Fuata hali ya sisitemu';

  @override
  String get darkMode => 'Hali ya giza';

  @override
  String get customColourPicker => 'Kichagua rangi ya pekee';

  @override
  String get customColourTooltip => 'Rangi ya pekee...';

  @override
  String get couldNotLoadBooks =>
      'Orodha ya vitabu haikuweza kupakiwa. Jaribu futi.';

  @override
  String chapterLabel(Object chapter) {
    return 'Sura $chapter';
  }

  @override
  String get traditionalOrderBooks => 'Vitabu kwa mfululizo wa kale';

  @override
  String get alphabeticalOrderBooks => 'Vitabu kwa mfululizo wa alifabeti';

  @override
  String get home => 'Nyumbani';

  @override
  String get addBookmarkTooltip => 'Ongeza kiashiria';

  @override
  String get chooseBookChapter => 'Chagua kitabu na sura';

  @override
  String get chooseVerse => 'Chagua mstari';

  @override
  String get bookChapterQuickNavigation => 'Nenda haraka kwenye kitabu na sura';

  @override
  String get verseQuickNavigation => 'Nenda haraka kwenye mstari';

  @override
  String get backToBooks => 'Rudi kwenye vitabu';

  @override
  String get selectBookTitle => 'Chagua kitabu';

  @override
  String selectChapterTitle(Object bookName) {
    return 'Chagua sura ($bookName)';
  }

  @override
  String chapterSelectionLabel(Object chapter) {
    return 'Sura $chapter';
  }

  @override
  String verseSelectionLabel(Object verse) {
    return 'Mstari $verse';
  }

  @override
  String fullChapterReference(Object bookName, Object chapter) {
    return 'Sura nzima: $bookName $chapter';
  }

  @override
  String get memorizeHint => 'Kariri';

  @override
  String get addNoteHint => 'Ongeza dokezo...';

  @override
  String get languageSearchHint => 'Tafuta lugha';

  @override
  String get languageModuleInstalled => 'Imewekwa';

  @override
  String get languageModulePending => 'Tafsiri ya mashine inasubiri';

  @override
  String get languageNoMatches =>
      'Hakuna lugha inayolingana na utafutaji wako.';

  @override
  String get languageCatalogDescription =>
      'Lugha zilizowekwa hufanya kazi bila intaneti. Lugha nyingine zitaongezwa kama moduli za tafsiri ya mashine.';

  @override
  String get saveBookmarkSemantics => 'Hifadhi kiashiria';

  @override
  String get couldNotLoadChapter => 'Sura haikuweza kupakiwa. Jaribu futi.';

  @override
  String get couldNotLoadChapters => 'Sura hazikuweza kupakiwa. Jaribu futi.';

  @override
  String verseWithText(Object text, Object verse) {
    return 'Mstari $verse: $text';
  }

  @override
  String accentSwatchSemantics(Object name, Object selected) {
    return 'Rangi ya mkazo $name$selected';
  }

  @override
  String get oldTestament => 'Agano la Kale';

  @override
  String get newTestament => 'Agano Jipya';

  @override
  String get deuterocanonApocrypha => 'Deuterokanoni / Apokrifa';
}
