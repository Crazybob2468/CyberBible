// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Swahili (`sw`).
class AppLocalizationsSw extends AppLocalizations {
  AppLocalizationsSw([String locale = 'sw']) : super(locale);

  @override
  String get settingsTitle => 'Mipangilio';

  @override
  String get languageSection => 'Lugha';

  @override
  String get useSystemLanguage => 'Tumia lugha ya mfumo';

  @override
  String get useSystemLanguageSubtitle =>
      'Linganisha lugha ya kifaa kwa chaguomsingi.';

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
  String get readingFormatSection => 'Umbizo la Kusoma';

  @override
  String get displaySection => 'Onyesho';

  @override
  String get verseNumbers => 'Nambari za Aya';

  @override
  String get sectionHeadings => 'Vichwa vya Sehemu';

  @override
  String get redLetterText => 'Maandishi ya Barua Nyekundu';

  @override
  String get selectABook => 'Chagua Kitabu';

  @override
  String get traditionalOrder => 'Utaratibu wa jadi';

  @override
  String get alphabeticalOrder => 'Mpangilio wa alfabeti';

  @override
  String get bookmarks => 'Alamisho';

  @override
  String get retry => 'Jaribu tena';

  @override
  String get chooseTheme => 'Chagua Mandhari';

  @override
  String get customisableThemes => 'Mandhari Zinazoweza Kubinafsishwa';

  @override
  String get customisableThemesSubtitle =>
      'Gusa kadi ili kuchagua rangi ya lafudhi. \"Classic White\" pia inasaidia hali za Mwanga, Giza na Mfumo.';

  @override
  String get setThemes => 'WEKA MADA';

  @override
  String get setThemesSubtitle =>
      'Palettes zisizohamishika, zilizofanywa kwa mikono. Hakuna ubinafsishaji unaohitajika - gusa tu ili kuomba.';

  @override
  String get deleteBookmarkQuestion => 'Ungependa kufuta alamisho?';

  @override
  String get cancel => 'Ghairi';

  @override
  String get delete => 'Futa';

  @override
  String get bookmarkSaved => 'Alamisho imehifadhiwa';

  @override
  String get couldNotDeleteBookmark => 'Haikuweza kufuta alamisho.';

  @override
  String couldNotNavigate(Object reference) {
    return 'Haikuweza kwenda kwa $reference.';
  }

  @override
  String get pageNotFound => 'Ukurasa Haujapatikana';

  @override
  String noRouteDefined(Object routeName) {
    return 'Hakuna njia iliyofafanuliwa kwa \"$routeName\"';
  }

  @override
  String get english => 'Kiingereza';

  @override
  String get spanish => 'Kihispania';

  @override
  String get systemDefault => 'Chaguomsingi ya mfumo';

  @override
  String get languageStatusEnglish => 'Njia mbadala ya Kiingereza imetumika';

  @override
  String get languageStatusSystem => 'Kwa kutumia lugha ya mfumo';

  @override
  String languageStatusSelected(Object languageName) {
    return 'Lugha iliyochaguliwa: $languageName';
  }

  @override
  String get themeLabel => 'Mandhari';

  @override
  String get notFoundTitle => 'Ukurasa Haujapatikana';

  @override
  String get loadingCyberBible => 'Inapakia Cyber ​​Bible...';

  @override
  String get couldNotOpenDatabase =>
      'Haikuweza kufungua hifadhidata ya Biblia. Tafadhali jaribu tena.';

  @override
  String get homeTagline => 'Programu ya bure na ya wazi ya kujifunza Biblia';

  @override
  String get readTheBible => 'Soma Biblia';

  @override
  String get settingsTooltip => 'Mipangilio';

  @override
  String get themeChoose => 'Chagua Mandhari';

  @override
  String get customThemes => 'Mandhari Zinazoweza Kubinafsishwa';

  @override
  String get customThemesSubtitle =>
      'Gusa kadi ili kuchagua rangi ya lafudhi. \"Classic White\" pia inasaidia hali za Mwanga, Giza na Mfumo.';

  @override
  String get setThemesLabel => 'WEKA MADA';

  @override
  String get deleteBookmarkDialog => 'Ungependa kufuta alamisho?';

  @override
  String removeBookmarkMessage(Object details, Object reference) {
    return 'Ondoa \"$reference\"$details?\n\nHili haliwezi kutenduliwa.';
  }

  @override
  String get couldNotLoadBookmarks =>
      'Haikuweza kupakia alamisho. Tafadhali jaribu tena.';

  @override
  String get bookmarkSavedMessage => 'Alamisho imehifadhiwa';

  @override
  String get couldNotSaveBookmark => 'Haikuweza kuhifadhi alamisho.';

  @override
  String get noBookmarksMatchFilter =>
      'Hakuna alamisho zinazolingana na kichujio hiki.';

  @override
  String get clearFilter => 'Futa kichujio';

  @override
  String get traditionalOrderLabel => 'Utaratibu wa jadi';

  @override
  String get alphabeticalOrderLabel => 'Mpangilio wa alfabeti';

  @override
  String get bookmarksTabLabel => 'Alamisho';

  @override
  String get fullChapter => 'Sura kamili';

  @override
  String get addBookmark => 'Ongeza Alamisho';

  @override
  String get selectVerse => 'Chagua Aya';

  @override
  String get labelOptional => 'Lebo (ya hiari)';

  @override
  String get notesOptional => 'Vidokezo (si lazima)';

  @override
  String get save => 'Hifadhi';

  @override
  String get goToVerse => 'Nenda kwa Aya';

  @override
  String verseTitle(Object verse) {
    return 'Kifungu cha $verse';
  }

  @override
  String chapterTitle(Object chapter) {
    return 'Sura ya $chapter';
  }

  @override
  String get switchToFullChapter => 'Badili hadi alamisho ya sura kamili';

  @override
  String get bookmarkSheetCancel => 'Ghairi, funga laha la alamisho';

  @override
  String get pickCustomAccent => 'Chagua lafudhi maalum';

  @override
  String get apply => 'Omba';

  @override
  String get custom => 'Desturi';

  @override
  String get brightnessSystem => 'Mfumo';

  @override
  String get brightnessLight => 'Mwanga';

  @override
  String get brightnessDark => 'Giza';

  @override
  String get selectBook => 'Chagua Kitabu';

  @override
  String get bookmarkFilterAll => 'Wote';

  @override
  String get bookmarkFilterUnlabeled => 'Haina lebo';

  @override
  String get bookmarkSortRecent => 'Hivi karibuni kwanza';

  @override
  String get bookmarkSortCanonical => 'Utaratibu wa kisheria';

  @override
  String get chapterRetry => 'Jaribu tena';

  @override
  String get fontSize => 'Ukubwa wa herufi';

  @override
  String fontSizePixels(Object size) {
    return '$size px';
  }

  @override
  String get fontSizeSlider => 'Kitelezi cha saizi ya herufi';

  @override
  String get fontSizeSliderHint =>
      'Telezesha kidole ili kurekebisha kutoka 12 hadi 28';

  @override
  String get fontPreview =>
      '\"Hapo mwanzo Mungu aliziumba mbingu na nchi.\" — Mwanzo 1:1';

  @override
  String get showVerseNumbersSubtitle =>
      'Onyesha maandishi makuu ya nambari ya aya kwenye skrini ya kusoma.';

  @override
  String get showSectionHeadingsSubtitle =>
      'Onyesha vichwa vya sehemu na Zaburi kati ya vifungu.';

  @override
  String get wordsOfChristSubtitle =>
      'Onyesha maneno ya Yesu kwa rangi nyekundu. Zima kwa rangi moja ya maandishi.';

  @override
  String get verseFormatTitle => 'Umbizo la Aya';

  @override
  String get verseFormatSubtitle =>
      'Chagua jinsi maandishi ya maandiko yanavyowekwa.';

  @override
  String get paragraphMode => 'Aya';

  @override
  String get verseListMode => 'Orodha ya aya';

  @override
  String get paragraphModeTooltip => 'Hali ya aya';

  @override
  String get verseListModeTooltip => 'Njia ya orodha ya aya';

  @override
  String get paragraphModeDescription =>
      'Maandishi hutiririka kwa mfululizo na aya zilizoingizwa ndani, kama Biblia iliyochapishwa.';

  @override
  String get verseListModeDescription =>
      'Kila aya ya maandiko huanza kwenye mstari wake, na kufanya vikundi vya mstari kuwa rahisi kuona.';

  @override
  String get deleteBookmarkTooltip => 'Futa alamisho';

  @override
  String deleteBookmarkSemantics(Object reference) {
    return 'Futa alamisho $reference';
  }

  @override
  String sortBookmarksTooltip(Object sortOrder) {
    return 'Panga: $sortOrder';
  }

  @override
  String get noBookmarksYet => 'Bado hakuna alamisho.';

  @override
  String get noBookmarksYetHint =>
      'Gusa aikoni ya alamisho unaposoma ili kuhifadhi eneo.';

  @override
  String bookmarkReferenceNavigationError(Object reference) {
    return 'Haikuweza kwenda kwa $reference.';
  }

  @override
  String themeCardSemantics(Object description, Object name, Object selected) {
    return 'Mandhari ya $name$selected. $description';
  }

  @override
  String get selectedThemeSuffix => ', iliyochaguliwa kwa sasa';

  @override
  String get customisableAccentDescription =>
      'Rangi ya lafudhi inayoweza kubinafsishwa.';

  @override
  String get fixedPaletteDescription => 'Palette zisizohamishika.';

  @override
  String accentColourTitle(Object themeName) {
    return 'Rangi ya Lafudhi - $themeName';
  }

  @override
  String get brightnessMode => 'NDANI YA KUNG\'AA';

  @override
  String get lightMode => 'Hali ya mwanga';

  @override
  String get followSystemMode => 'Fuata hali ya mfumo';

  @override
  String get darkMode => 'Hali ya giza';

  @override
  String get customColourPicker => 'Kiteua rangi maalum';

  @override
  String get customColourTooltip => 'Rangi maalum...';

  @override
  String get couldNotLoadBooks =>
      'Haikuweza kupakia orodha ya vitabu. Tafadhali jaribu tena.';

  @override
  String chapterLabel(Object chapter) {
    return 'Sura ya $chapter';
  }

  @override
  String get traditionalOrderBooks => 'Vitabu vya maagizo ya jadi';

  @override
  String get alphabeticalOrderBooks => 'Vitabu vya utaratibu wa alfabeti';

  @override
  String get home => 'Nyumbani';

  @override
  String get addBookmarkTooltip => 'Ongeza alamisho';

  @override
  String get chooseBookChapter => 'Chagua kitabu na sura';

  @override
  String get chooseVerse => 'Chagua aya';

  @override
  String get bookChapterQuickNavigation =>
      'Uelekezaji wa haraka wa kitabu na sura';

  @override
  String get verseQuickNavigation => 'Urambazaji wa haraka wa aya';

  @override
  String get backToBooks => 'Rudi kwenye vitabu';

  @override
  String get selectBookTitle => 'Chagua Kitabu';

  @override
  String selectChapterTitle(Object bookName) {
    return 'Chagua Sura ($bookName)';
  }

  @override
  String chapterSelectionLabel(Object chapter) {
    return 'Sura ya $chapter';
  }

  @override
  String verseSelectionLabel(Object verse) {
    return 'Kifungu cha $verse';
  }

  @override
  String fullChapterReference(Object bookName, Object chapter) {
    return 'Sura kamili: $bookName $chapter';
  }

  @override
  String get memorizeHint => 'Kukariri';

  @override
  String get addNoteHint => 'Ongeza dokezo...';

  @override
  String get languageSearchHint => 'Tafuta lugha';

  @override
  String get languageModuleInstalled => 'Imesakinishwa';

  @override
  String get languageModulePending => 'Tafsiri ya mashine inasubiri';

  @override
  String get languageNoMatches =>
      'Hakuna lugha zinazolingana na utafutaji wako.';

  @override
  String get languageCatalogDescription =>
      'Lugha zilizotiwa alama kuwa zimesakinishwa hufanya kazi nje ya mtandao. Lugha zingine zitaongezwa kama moduli zilizotafsiriwa na mashine.';

  @override
  String get saveBookmarkSemantics => 'Hifadhi alamisho';

  @override
  String get couldNotLoadChapter =>
      'Haikuweza kupakia sura. Tafadhali jaribu tena.';

  @override
  String get couldNotLoadChapters =>
      'Haikuweza kupakia sura. Tafadhali jaribu tena.';

  @override
  String verseWithText(Object text, Object verse) {
    return 'Aya $verse: $text';
  }

  @override
  String accentSwatchSemantics(Object name, Object selected) {
    return '$name rangi ya lafudhi$selected';
  }

  @override
  String get oldTestament => 'Agano la Kale';

  @override
  String get newTestament => 'Agano Jipya';

  @override
  String get deuterocanonApocrypha => 'Deuterocanon / Apocrypha';
}
