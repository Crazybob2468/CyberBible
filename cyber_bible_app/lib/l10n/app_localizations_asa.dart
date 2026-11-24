// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Asu (`asa`).
class AppLocalizationsAsa extends AppLocalizations {
  AppLocalizationsAsa([String locale = 'asa']) : super(locale);

  @override
  String get settingsTitle => 'Mapangilio';

  @override
  String get languageSection => 'Lugha';

  @override
  String get useSystemLanguage => 'Tumia lugha ya kifaa';

  @override
  String get useSystemLanguageSubtitle => 'Tumia lugha ya kifaa kiwe msingi.';

  @override
  String get currentLanguage => 'Lugha ya sasa';

  @override
  String get appLanguage => 'Lugha ya programu';

  @override
  String get chooseLanguage => 'Chagua lugha';

  @override
  String get theme => 'Mandhari';

  @override
  String get appearance => 'Muonekano';

  @override
  String get textSection => 'Maandishi';

  @override
  String get readingFormatSection => 'Mfumo wa kusoma';

  @override
  String get displaySection => 'Onesho';

  @override
  String get verseNumbers => 'Namba za mstari';

  @override
  String get sectionHeadings => 'Vichwa vya sehemu';

  @override
  String get redLetterText => 'Maandishi mekundu';

  @override
  String get selectABook => 'Chagua kitabu';

  @override
  String get traditionalOrder => 'Mpangilio wa kawaida';

  @override
  String get alphabeticalOrder => 'Mpangilio wa alfabeti';

  @override
  String get bookmarks => 'Alama za ukumbuko';

  @override
  String get retry => 'Jaribu tena';

  @override
  String get chooseTheme => 'Chagua mandhari';

  @override
  String get customisableThemes => 'Mandhari yanayoweza kubadilishwa';

  @override
  String get customisableThemesSubtitle =>
      'Bofya kadi kuchagua rangi. “Classic White” pia ina namna ya mwanga, giza na mfumo.';

  @override
  String get setThemes => 'WEKA MANDHARI';

  @override
  String get setThemesSubtitle =>
      'Rangi za kawaida zilizoandaliwa; bofya kuutumia.';

  @override
  String get deleteBookmarkQuestion => 'Ufute alama ya ukumbuko?';

  @override
  String get cancel => 'Ghairi';

  @override
  String get delete => 'Futa';

  @override
  String get bookmarkSaved => 'Alama imehifadhiwa';

  @override
  String get couldNotDeleteBookmark => 'Alama ya ukumbuko haikufutwa.';

  @override
  String couldNotNavigate(Object reference) {
    return 'Imeshindikana kwenda kwa $reference.';
  }

  @override
  String get pageNotFound => 'Ukurasa haukupatikana';

  @override
  String noRouteDefined(Object routeName) {
    return 'Hakuna njia iliyoteuliwa kwa \"$routeName\"';
  }

  @override
  String get english => 'Kiingereza';

  @override
  String get spanish => 'Kihispania';

  @override
  String get systemDefault => 'Chaguo-msingi cha mfumo';

  @override
  String get languageStatusEnglish => 'Lugha ya Kiingereza imechaguliwa';

  @override
  String get languageStatusSystem => 'Inatumia lugha ya mfumo';

  @override
  String languageStatusSelected(Object languageName) {
    return 'Lugha iliyochaguliwa: $languageName';
  }

  @override
  String get themeLabel => 'Mandhari';

  @override
  String get notFoundTitle => 'Ukurasa haukupatikana';

  @override
  String get loadingCyberBible => 'Cyber Bible inaonekana...';

  @override
  String get couldNotOpenDatabase =>
      'Hatuwezi kufungua hifadhidata ya Biblia. Tafadhali jaribu tena.';

  @override
  String get homeTagline => 'Programu ya Biblia ya bure na wazi';

  @override
  String get readTheBible => 'Soma Biblia';

  @override
  String get settingsTooltip => 'Mapangilio';

  @override
  String get themeChoose => 'Chagua mandhari';

  @override
  String get customThemes => 'Mandhari maalumu';

  @override
  String get customThemesSubtitle =>
      'Tap a card to choose an accent colour. \"Classic White\" also supports Light, Dark and System modes.';

  @override
  String get setThemesLabel => 'WEKA MANDHARI';

  @override
  String get deleteBookmarkDialog => 'Ufute alama ya ukumbuko?';

  @override
  String removeBookmarkMessage(Object details, Object reference) {
    return 'Remove \"$reference\"$details?\n\nThis cannot be undone.';
  }

  @override
  String get couldNotLoadBookmarks =>
      'Could not load bookmarks. Please try again.';

  @override
  String get bookmarkSavedMessage => 'Alama imehifadhiwa';

  @override
  String get couldNotSaveBookmark => 'Alama haikuhifadhiwa.';

  @override
  String get noBookmarksMatchFilter =>
      'Hakuna alama zinazolingana na kichujio hiki.';

  @override
  String get clearFilter => 'Ondoa kichujio';

  @override
  String get traditionalOrderLabel => 'Mpangilio wa kawaida';

  @override
  String get alphabeticalOrderLabel => 'Mpangilio wa alfabeti';

  @override
  String get bookmarksTabLabel => 'Alama za ukumbuko';

  @override
  String get fullChapter => 'Sura nzima';

  @override
  String get addBookmark => 'Ongeza alama';

  @override
  String get selectVerse => 'Chagua mstari';

  @override
  String get labelOptional => 'Jina (si lazima)';

  @override
  String get notesOptional => 'Maelezo (si lazima)';

  @override
  String get save => 'Hifadhi';

  @override
  String get goToVerse => 'Nenda kwa mstari';

  @override
  String verseTitle(Object verse) {
    return 'Mstari $verse';
  }

  @override
  String chapterTitle(Object chapter) {
    return 'Sura $chapter';
  }

  @override
  String get switchToFullChapter => 'Rudi kwa sura nzima';

  @override
  String get bookmarkSheetCancel => 'Ghairi';

  @override
  String get pickCustomAccent => 'Chagua rangi ya msisitizo';

  @override
  String get apply => 'Tumia';

  @override
  String get custom => 'Maalumu';

  @override
  String get brightnessSystem => 'Mfumo';

  @override
  String get brightnessLight => 'Mwanga';

  @override
  String get brightnessDark => 'Giza';

  @override
  String get selectBook => 'Chagua kitabu';

  @override
  String get bookmarkFilterAll => 'Zote';

  @override
  String get bookmarkFilterUnlabeled => 'Zisizo na jina';

  @override
  String get bookmarkSortRecent => 'Za hivi karibuni';

  @override
  String get bookmarkSortCanonical => 'Kwa mpangilio wa Biblia';

  @override
  String get chapterRetry => 'Jaribu tena';

  @override
  String get fontSize => 'Ukubwa wa herufi';

  @override
  String fontSizePixels(Object size) {
    return '$size px';
  }

  @override
  String get fontSizeSlider => 'Ukubwa wa herufi';

  @override
  String get fontSizeSliderHint =>
      'Badilisha ukubwa wa herufi kati ya 12 na 28';

  @override
  String get fontPreview => '“Neno lake ni mwanga.” — Mwanzo 1:1';

  @override
  String get showVerseNumbersSubtitle => 'Onyesha namba za mistari.';

  @override
  String get showSectionHeadingsSubtitle =>
      'Onyesha vichwa vya sehemu ndani ya sura.';

  @override
  String get wordsOfChristSubtitle =>
      'Onyesha maneno ya Kristo kwa herufi nyekundu.';

  @override
  String get verseFormatTitle => 'Muundo wa mstari';

  @override
  String get verseFormatSubtitle => 'Chagua namna unavyopenda kusoma mistari.';

  @override
  String get paragraphMode => 'Mfumo wa aya';

  @override
  String get verseListMode => 'Mfumo wa orodha ya mistari';

  @override
  String get paragraphModeTooltip => 'Chagua mtindo wa aya';

  @override
  String get verseListModeTooltip => 'Chagua mtindo wa orodha ya mistari';

  @override
  String get paragraphModeDescription =>
      'Huchanganya mistari katika aya za kawaida.';

  @override
  String get verseListModeDescription =>
      'Huonyesha kila mstari katika mstari tofauti.';

  @override
  String get deleteBookmarkTooltip => 'Futa alama iliyochaguliwa';

  @override
  String deleteBookmarkSemantics(Object reference) {
    return 'Futa alama ya $reference';
  }

  @override
  String sortBookmarksTooltip(Object sortOrder) {
    return 'Panga alama kwa $sortOrder';
  }

  @override
  String get noBookmarksYet => 'Bado hakuna alama za ukumbuko.';

  @override
  String get noBookmarksYetHint => 'Ongeza alama unapoisoma.';

  @override
  String bookmarkReferenceNavigationError(Object reference) {
    return 'Imeshindikana kwenda kwa $reference.';
  }

  @override
  String themeCardSemantics(Object description, Object name, Object selected) {
    return '$name theme$selected. $description';
  }

  @override
  String get selectedThemeSuffix => 'imechaguliwa';

  @override
  String get customisableAccentDescription => 'Chagua rangi yako ya msisitizo.';

  @override
  String get fixedPaletteDescription => 'Paleti thabiti iliyoandaliwa tayari.';

  @override
  String accentColourTitle(Object themeName) {
    return 'Rangi ya msisitizo — $themeName';
  }

  @override
  String get brightnessMode => 'Hali ya mwanga';

  @override
  String get lightMode => 'Mwanga';

  @override
  String get followSystemMode => 'Fuata mfumo';

  @override
  String get darkMode => 'Giza';

  @override
  String get customColourPicker => 'Kichagua rangi maalumu';

  @override
  String get customColourTooltip => 'Chagua rangi maalumu...';

  @override
  String get couldNotLoadBooks => 'Imeshindikana kupakia orodha ya vitabu.';

  @override
  String chapterLabel(Object chapter) {
    return 'Sura $chapter';
  }

  @override
  String get traditionalOrderBooks => 'Mpangilio wa kawaida';

  @override
  String get alphabeticalOrderBooks => 'Mpangilio wa alfabeti';

  @override
  String get home => 'Nyumbani';

  @override
  String get addBookmarkTooltip => 'Ongeza alama ya ukumbuko';

  @override
  String get chooseBookChapter => 'Chagua kitabu na sura';

  @override
  String get chooseVerse => 'Chagua mstari';

  @override
  String get bookChapterQuickNavigation => 'Urambazaji wa kitabu na sura';

  @override
  String get verseQuickNavigation => 'Urambazaji wa mstari';

  @override
  String get backToBooks => 'Rudi kwa vitabu';

  @override
  String get selectBookTitle => 'Chagua kitabu';

  @override
  String selectChapterTitle(Object bookName) {
    return 'Chagua sura ya $bookName';
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
  String get memorizeHint => 'Andika maandishi ya kukariri';

  @override
  String get addNoteHint => 'Ongeza maelezo...';

  @override
  String get languageSearchHint => 'Tafuta lugha';

  @override
  String get languageModuleInstalled => 'Moduli ya lugha imewekwa';

  @override
  String get languageModulePending => 'Moduli ya lugha bado haipo';

  @override
  String get languageNoMatches => 'Hakuna lugha inayolingana.';

  @override
  String get languageCatalogDescription => 'Chagua lugha ya programu.';

  @override
  String get saveBookmarkSemantics => 'Hifadhi alama ya ukumbuko';

  @override
  String get couldNotLoadChapter => 'Imeshindikana kupakia sura.';

  @override
  String get couldNotLoadChapters => 'Imeshindikana kupakia sura za kitabu.';

  @override
  String verseWithText(Object text, Object verse) {
    return 'Mstari $verse: $text';
  }

  @override
  String accentSwatchSemantics(Object name, Object selected) {
    return 'Rangi ya msisitizo $name$selected';
  }

  @override
  String get oldTestament => 'Agano la Kale';

  @override
  String get newTestament => 'Agano Jipya';

  @override
  String get deuterocanonApocrypha => 'Deuterokanoni / Apokrifa';
}
