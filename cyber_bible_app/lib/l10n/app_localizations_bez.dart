// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Bena (`bez`).
class AppLocalizationsBez extends AppLocalizations {
  AppLocalizationsBez([String locale = 'bez']) : super(locale);

  @override
  String get settingsTitle => 'Ibilangilo';

  @override
  String get languageSection => 'Ilimi';

  @override
  String get useSystemLanguage => 'Kukola ilimi ya sisitemu';

  @override
  String get useSystemLanguageSubtitle =>
      'Kukola ilimi ya kifaa nga ilimi ya kwandila.';

  @override
  String get currentLanguage => 'Ilimi ya hanu';

  @override
  String get appLanguage => 'Ilimi ya app';

  @override
  String get chooseLanguage => 'Saghula ilimi';

  @override
  String get theme => 'Mlangi';

  @override
  String get appearance => 'Konekana';

  @override
  String get textSection => 'Mabhoko';

  @override
  String get readingFormatSection => 'Mpango gwa kusoma';

  @override
  String get displaySection => 'Langisa';

  @override
  String get verseNumbers => 'Namba sha milongo';

  @override
  String get sectionHeadings => 'Mitwe ya vipande';

  @override
  String get redLetterText => 'Mabhoko gha wekundu';

  @override
  String get selectABook => 'Saghula kitabu';

  @override
  String get traditionalOrder => 'Mpango gwa kawaida';

  @override
  String get alphabeticalOrder => 'Mpango gwa alfabeti';

  @override
  String get bookmarks => 'Ishara';

  @override
  String get retry => 'Ugeze kandi';

  @override
  String get chooseTheme => 'Saghula mlangi';

  @override
  String get customisableThemes => 'Mlangi ishayohinduka';

  @override
  String get customisableThemesSubtitle =>
      'Gusa kadi usaghule rangi. \"Classic White\" ishikilia pia mipango ya Mwanga, Giza na Sisitemu.';

  @override
  String get setThemes => 'MLANGI ISHAYOKALA';

  @override
  String get setThemesSubtitle =>
      'Rangi ishayokala ishakanywa kwa uangalifu. Hakuna kuibadilisha; gusa uitumie.';

  @override
  String get deleteBookmarkQuestion => 'Ufuta ishara?';

  @override
  String get cancel => 'Acha';

  @override
  String get delete => 'Futa';

  @override
  String get bookmarkSaved => 'Ishara ishabikwa';

  @override
  String get couldNotDeleteBookmark => 'Ishara haikuweza kufutwa.';

  @override
  String couldNotNavigate(Object reference) {
    return 'Haikuwezekana kwenda $reference.';
  }

  @override
  String get pageNotFound => 'Ukurasa haukupatikana';

  @override
  String noRouteDefined(Object routeName) {
    return 'Njia ya \"$routeName\" haikuwekwa';
  }

  @override
  String get english => 'Kiingereza';

  @override
  String get spanish => 'Kihispania';

  @override
  String get systemDefault => 'Mpango wa sisitemu';

  @override
  String get languageStatusEnglish =>
      'Kiingereza kinatumika kama ilimi ya badala';

  @override
  String get languageStatusSystem => 'Ilimi ya sisitemu inatumika';

  @override
  String languageStatusSelected(Object languageName) {
    return 'Ilimi ishashaguliwa: $languageName';
  }

  @override
  String get themeLabel => 'Mlangi';

  @override
  String get notFoundTitle => 'Ukurasa haukupatikana';

  @override
  String get loadingCyberBible => 'Cyber Bible inafunguka...';

  @override
  String get couldNotOpenDatabase =>
      'Hifadhidata ya Biblia haikuweza kufunguka. Ugeze kandi.';

  @override
  String get homeTagline => 'App ya kusoma Biblia bure na yenye source wazi';

  @override
  String get readTheBible => 'Soma Biblia';

  @override
  String get settingsTooltip => 'Ibilangilo';

  @override
  String get themeChoose => 'Saghula mlangi';

  @override
  String get customThemes => 'Mlangi ishayohinduka';

  @override
  String get customThemesSubtitle =>
      'Gusa kadi usaghule rangi. \"Classic White\" ishikilia pia mipango ya Mwanga, Giza na Sisitemu.';

  @override
  String get setThemesLabel => 'MLANGI ISHAYOKALA';

  @override
  String get deleteBookmarkDialog => 'Ufuta ishara?';

  @override
  String removeBookmarkMessage(Object details, Object reference) {
    return 'Ufuta \"$reference\"$details?\n\nHili haliwezi kurudishwa.';
  }

  @override
  String get couldNotLoadBookmarks =>
      'Ishara hazikuweza kupakiwa. Ugeze kandi.';

  @override
  String get bookmarkSavedMessage => 'Ishara ishabikwa';

  @override
  String get couldNotSaveBookmark => 'Ishara haikuweza kubikwa.';

  @override
  String get noBookmarksMatchFilter =>
      'Hakuna ishara inayolingana na kichujio hiki.';

  @override
  String get clearFilter => 'Futa kichujio';

  @override
  String get traditionalOrderLabel => 'Mpango gwa kawaida';

  @override
  String get alphabeticalOrderLabel => 'Mpango gwa alfabeti';

  @override
  String get bookmarksTabLabel => 'Ishara';

  @override
  String get fullChapter => 'Sura yote';

  @override
  String get addBookmark => 'Ongeza ishara';

  @override
  String get selectVerse => 'Saghula mstari';

  @override
  String get labelOptional => 'Jina (si lazima)';

  @override
  String get notesOptional => 'Maelezo (si lazima)';

  @override
  String get save => 'Bika';

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
  String get switchToFullChapter => 'Badilisha kuwa ishara ya sura yote';

  @override
  String get bookmarkSheetCancel => 'Acha na funga paneli ya ishara';

  @override
  String get pickCustomAccent => 'Saghula rangi ya binafsi';

  @override
  String get apply => 'Tumia';

  @override
  String get custom => 'Ya binafsi';

  @override
  String get brightnessSystem => 'Sisitemu';

  @override
  String get brightnessLight => 'Mwanga';

  @override
  String get brightnessDark => 'Giza';

  @override
  String get selectBook => 'Saghula kitabu';

  @override
  String get bookmarkFilterAll => 'Vyote';

  @override
  String get bookmarkFilterUnlabeled => 'Bila jina';

  @override
  String get bookmarkSortRecent => 'Vya karibuni kwanza';

  @override
  String get bookmarkSortCanonical => 'Mpango wa Biblia';

  @override
  String get chapterRetry => 'Ugeze kandi';

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
      '\"Hapo mwanzo Mungu aliumba mbingu na dunia.\" — Mwan 1:1';

  @override
  String get showVerseNumbersSubtitle =>
      'Onyesha namba za mistari kwenye skrini ya kusoma.';

  @override
  String get showSectionHeadingsSubtitle =>
      'Onyesha vichwa vya vipande na Zaburi kati ya maandiko.';

  @override
  String get wordsOfChristSubtitle =>
      'Onyesha maneno ya Yesu kwa rangi nyekundu. Zima kwa kutumia rangi moja ya maandishi.';

  @override
  String get verseFormatTitle => 'Mpango wa mstari';

  @override
  String get verseFormatSubtitle => 'Saghula mpango wa maandishi ya Maandiko.';

  @override
  String get paragraphMode => 'Aya ya maandishi';

  @override
  String get verseListMode => 'Orodha ya mistari';

  @override
  String get paragraphModeTooltip => 'Mpango wa aya';

  @override
  String get verseListModeTooltip => 'Mpango wa orodha ya mistari';

  @override
  String get paragraphModeDescription =>
      'Maandishi yanapita kwenye aya zilizoingizwa ndani, kama Biblia iliyochapishwa.';

  @override
  String get verseListModeDescription =>
      'Kila aya ya Maandiko huanza kwenye mstari wake ili vikundi vya mistari vionekane vizuri.';

  @override
  String get deleteBookmarkTooltip => 'Futa ishara';

  @override
  String deleteBookmarkSemantics(Object reference) {
    return 'Futa ishara $reference';
  }

  @override
  String sortBookmarksTooltip(Object sortOrder) {
    return 'Panga: $sortOrder';
  }

  @override
  String get noBookmarksYet => 'Bado hakuna ishara.';

  @override
  String get noBookmarksYetHint =>
      'Gusa alama ya ishara unaposoma ili kubika mahali.';

  @override
  String bookmarkReferenceNavigationError(Object reference) {
    return 'Haikuwezekana kwenda $reference.';
  }

  @override
  String themeCardSemantics(Object description, Object name, Object selected) {
    return 'Mlangi $name$selected. $description';
  }

  @override
  String get selectedThemeSuffix => ', ishashaguliwa sasa';

  @override
  String get customisableAccentDescription => 'Rangi inayoweza kubadilika.';

  @override
  String get fixedPaletteDescription => 'Rangi isiyobadilika.';

  @override
  String accentColourTitle(Object themeName) {
    return 'Rangi — $themeName';
  }

  @override
  String get brightnessMode => 'MPANGO WA MWANGA';

  @override
  String get lightMode => 'Mpango wa mwanga';

  @override
  String get followSystemMode => 'Fuata mpango wa sisitemu';

  @override
  String get darkMode => 'Mpango wa giza';

  @override
  String get customColourPicker => 'Kichagua rangi ya binafsi';

  @override
  String get customColourTooltip => 'Rangi ya binafsi...';

  @override
  String get couldNotLoadBooks =>
      'Orodha ya vitabu haikuweza kupakiwa. Ugeze kandi.';

  @override
  String chapterLabel(Object chapter) {
    return 'Sura $chapter';
  }

  @override
  String get traditionalOrderBooks => 'Vitabu kwa mpango wa kawaida';

  @override
  String get alphabeticalOrderBooks => 'Vitabu kwa alfabeti';

  @override
  String get home => 'Nyumbani';

  @override
  String get addBookmarkTooltip => 'Ongeza ishara';

  @override
  String get chooseBookChapter => 'Saghula kitabu na sura';

  @override
  String get chooseVerse => 'Saghula mstari';

  @override
  String get bookChapterQuickNavigation => 'Nenda haraka kwenye kitabu na sura';

  @override
  String get verseQuickNavigation => 'Nenda haraka kwenye mstari';

  @override
  String get backToBooks => 'Rudi kwenye vitabu';

  @override
  String get selectBookTitle => 'Saghula kitabu';

  @override
  String selectChapterTitle(Object bookName) {
    return 'Saghula sura ($bookName)';
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
    return 'Sura yote: $bookName $chapter';
  }

  @override
  String get memorizeHint => 'Kariri';

  @override
  String get addNoteHint => 'Ongeza maelezo...';

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
      'Lugha zilizowekwa zinafanya kazi bila intaneti. Lugha nyingine zitaongezwa kama moduli zilizotafsiriwa na mashine.';

  @override
  String get saveBookmarkSemantics => 'Bika ishara';

  @override
  String get couldNotLoadChapter => 'Sura haikuweza kupakiwa. Ugeze kandi.';

  @override
  String get couldNotLoadChapters => 'Sura hazikuweza kupakiwa. Ugeze kandi.';

  @override
  String verseWithText(Object text, Object verse) {
    return 'Mstari $verse: $text';
  }

  @override
  String accentSwatchSemantics(Object name, Object selected) {
    return 'Rangi $name$selected';
  }

  @override
  String get oldTestament => 'Agano la Kale';

  @override
  String get newTestament => 'Agano Jipya';

  @override
  String get deuterocanonApocrypha => 'Deuterokanoni / Apokrifa';
}
