// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Zulu (`zu`).
class AppLocalizationsZu extends AppLocalizations {
  AppLocalizationsZu([String locale = 'zu']) : super(locale);

  @override
  String get settingsTitle => 'Izilungiselelo';

  @override
  String get languageSection => 'Ulimi';

  @override
  String get useSystemLanguage => 'Sebenzisa ulimi lwesistimu';

  @override
  String get useSystemLanguageSubtitle =>
      'Qondanisa ulimi lwedivayisi ngokuzenzakalelayo.';

  @override
  String get currentLanguage => 'Ulimi lwamanje';

  @override
  String get appLanguage => 'Ulimi lohlelo lokusebenza';

  @override
  String get chooseLanguage => 'Khetha ulimi';

  @override
  String get theme => 'Itimu';

  @override
  String get appearance => 'Ukubukeka';

  @override
  String get textSection => 'Umbhalo';

  @override
  String get readingFormatSection => 'Ifomethi yokufunda';

  @override
  String get displaySection => 'Bonisa';

  @override
  String get verseNumbers => 'Ivesi Izinombolo';

  @override
  String get sectionHeadings => 'Izihloko Zesigaba';

  @override
  String get redLetterText => 'Umbhalo Wencwadi Ebomvu';

  @override
  String get selectABook => 'Khetha Incwadi';

  @override
  String get traditionalOrder => 'Ukuhleleka kwendabuko';

  @override
  String get alphabeticalOrder => 'Ukuhleleka kwezinhlamvu';

  @override
  String get bookmarks => 'Amabhukumaka';

  @override
  String get retry => 'Zama futhi';

  @override
  String get chooseTheme => 'Khetha Itimu';

  @override
  String get customisableThemes => 'Izindikimba ezenziwe ngokwezifiso';

  @override
  String get customisableThemesSubtitle =>
      'Thepha ikhadi ukuze ukhethe umbala wokuphimisa. I-\"Classic White\" iphinde isekele amamodi okukhanya, okumnyama kanye nesistimu.';

  @override
  String get setThemes => 'SETHA IZINDABA';

  @override
  String get setThemesSubtitle =>
      'Amaphalethi alungisiwe, enziwe ngesandla. Akukho ukwenza ngendlela oyifisayo okudingekayo — vele uthephe ukuze usebenzise.';

  @override
  String get deleteBookmarkQuestion => 'Susa ibhukhimakhi?';

  @override
  String get cancel => 'Khansela';

  @override
  String get delete => 'Susa';

  @override
  String get bookmarkSaved => 'Ibhukhimakhi lilondoloziwe';

  @override
  String get couldNotDeleteBookmark => 'Ayikwazanga ukususa ibhukhimakhi.';

  @override
  String couldNotNavigate(Object reference) {
    return 'Ayikwazanga ukuzulazula uye ku-$reference.';
  }

  @override
  String get pageNotFound => 'Ikhasi Alitholakali';

  @override
  String noRouteDefined(Object routeName) {
    return 'Awukho umzila ochaziwe \"$routeName\"';
  }

  @override
  String get english => 'IsiNgisi';

  @override
  String get spanish => 'Isi-Español';

  @override
  String get systemDefault => 'Okuzenzakalelayo kwesistimu';

  @override
  String get languageStatusEnglish => 'Ukubuyela emuva kwesiNgisi kuyasebenza';

  @override
  String get languageStatusSystem => 'Ukusebenzisa ulimi lwesistimu';

  @override
  String languageStatusSelected(Object languageName) {
    return 'Ulimi olukhethiwe: $languageName';
  }

  @override
  String get themeLabel => 'Itimu';

  @override
  String get notFoundTitle => 'Ikhasi Alitholakali';

  @override
  String get loadingCyberBible => 'Ilayisha i-Cyber ​​Bible...';

  @override
  String get couldNotOpenDatabase =>
      'Ayikwazanga ukuvula isizindalwazi seBhayibheli. Sicela uzame futhi.';

  @override
  String get homeTagline =>
      'Uhlelo lokusebenza lokufunda iBhayibheli nomthombo ovulekile';

  @override
  String get readTheBible => 'Funda iBhayibheli';

  @override
  String get settingsTooltip => 'Izilungiselelo';

  @override
  String get themeChoose => 'Khetha Itimu';

  @override
  String get customThemes => 'Izindikimba ezenziwe ngokwezifiso';

  @override
  String get customThemesSubtitle =>
      'Thepha ikhadi ukuze ukhethe umbala wokuphimisa. I-\"Classic White\" iphinde isekele amamodi okukhanya, okumnyama kanye nesistimu.';

  @override
  String get setThemesLabel => 'SETHA IZINDABA';

  @override
  String get deleteBookmarkDialog => 'Susa ibhukhimakhi?';

  @override
  String removeBookmarkMessage(Object details, Object reference) {
    return 'Susa \"$reference\"$details?\n\nLokhu akukwazi ukuhlehliswa.';
  }

  @override
  String get couldNotLoadBookmarks =>
      'Ayikwazanga ukulayisha amabhukumaka. Sicela uzame futhi.';

  @override
  String get bookmarkSavedMessage => 'Ibhukhimakhi lilondoloziwe';

  @override
  String get couldNotSaveBookmark => 'Ayikwazanga ukulondoloza ibhukhimakhi.';

  @override
  String get noBookmarksMatchFilter =>
      'Awekho amabhukumaka afana nalesi sihlungi.';

  @override
  String get clearFilter => 'Sula isihlungi';

  @override
  String get traditionalOrderLabel => 'Ukuhleleka kwendabuko';

  @override
  String get alphabeticalOrderLabel => 'Ukuhleleka kwezinhlamvu';

  @override
  String get bookmarksTabLabel => 'Amabhukumaka';

  @override
  String get fullChapter => 'Isahluko esigcwele';

  @override
  String get addBookmark => 'Engeza Ibhukhimakhi';

  @override
  String get selectVerse => 'Khetha Ivesi';

  @override
  String get labelOptional => 'Ilebula (uyazikhethela)';

  @override
  String get notesOptional => 'Amanothi (ongakukhetha)';

  @override
  String get save => 'Londoloza';

  @override
  String get goToVerse => 'Iya eVesi';

  @override
  String verseTitle(Object verse) {
    return 'Ivesi $verse';
  }

  @override
  String chapterTitle(Object chapter) {
    return 'Isahluko $chapter';
  }

  @override
  String get switchToFullChapter =>
      'Shintshela kubhukhimakhi yesahluko esigcwele';

  @override
  String get bookmarkSheetCancel => 'Khansela, vala ishidi lokubekisa';

  @override
  String get pickCustomAccent => 'Khetha ukuphimisa ngokwezifiso';

  @override
  String get apply => 'Faka isicelo';

  @override
  String get custom => 'Ngokwezifiso';

  @override
  String get brightnessSystem => 'Uhlelo';

  @override
  String get brightnessLight => 'Ukukhanya';

  @override
  String get brightnessDark => 'Kumnyama';

  @override
  String get selectBook => 'Khetha Incwadi';

  @override
  String get bookmarkFilterAll => 'Konke';

  @override
  String get bookmarkFilterUnlabeled => 'Akunalebula';

  @override
  String get bookmarkSortRecent => 'Okwakamuva kuqala';

  @override
  String get bookmarkSortCanonical => 'Ukuhleleka kweCanonical';

  @override
  String get chapterRetry => 'Zama futhi';

  @override
  String get fontSize => 'Usayizi Wefonti';

  @override
  String fontSizePixels(Object size) {
    return '$size px';
  }

  @override
  String get fontSizeSlider => 'Isilayida sikasayizi wefonti';

  @override
  String get fontSizeSliderHint =>
      'Swayipha ukuze ulungise ukusuka ku-12 kuye ku-28';

  @override
  String get fontPreview =>
      '\"Ekuqaleni uNkulunkulu wadala izulu nomhlaba.\" — Genesise 1:1';

  @override
  String get showVerseNumbersSubtitle =>
      'Bonisa imibhalo engenhla yenombolo yevesi esikrinini sokufunda.';

  @override
  String get showSectionHeadingsSubtitle =>
      'Bonisa izihloko zengxenye nezamaHubo phakathi kwamavesi.';

  @override
  String get wordsOfChristSubtitle =>
      'Bonisa amazwi kaJesu ngokubomvu. Khubaza umbala wombhalo owodwa.';

  @override
  String get verseFormatTitle => 'Ifomethi Yevesi';

  @override
  String get verseFormatSubtitle =>
      'Khetha ukuthi umbhalo wombhalo ubekwe kanjani.';

  @override
  String get paragraphMode => 'Isigaba';

  @override
  String get verseListMode => 'Uhlu lwamavesi';

  @override
  String get paragraphModeTooltip => 'Imodi yendima';

  @override
  String get verseListModeTooltip => 'Imodi yohlu lwamavesi';

  @override
  String get paragraphModeDescription =>
      'Umbhalo ugeleza ngokuqhubekayo nezigaba ezihlehlisiwe, njengeBhayibheli eliphrintiwe.';

  @override
  String get verseListModeDescription =>
      'Isigaba sombhalo ngasinye siqala ngomugqa waso, okwenza amavesi amavesi abonakale kalula.';

  @override
  String get deleteBookmarkTooltip => 'Susa ibhukhimakhi';

  @override
  String deleteBookmarkSemantics(Object reference) {
    return 'Susa ibhukhimakhi $reference';
  }

  @override
  String sortBookmarksTooltip(Object sortOrder) {
    return 'Hlunga: $sortOrder';
  }

  @override
  String get noBookmarksYet => 'Awekho amabhukumaka okwamanje.';

  @override
  String get noBookmarksYetHint =>
      'Thepha isithonjana sebhukhimakhi ngenkathi ufunda ukuze ulondoloze indawo.';

  @override
  String bookmarkReferenceNavigationError(Object reference) {
    return 'Ayikwazanga ukuzulazula uye ku-$reference.';
  }

  @override
  String themeCardSemantics(Object description, Object name, Object selected) {
    return '$name itimu$selected. $description';
  }

  @override
  String get selectedThemeSuffix => ', ekhethiwe okwamanje';

  @override
  String get customisableAccentDescription =>
      'Umbala wokuphimisa ngendlela oyifisayo.';

  @override
  String get fixedPaletteDescription => 'Iphalethi engashintshi.';

  @override
  String accentColourTitle(Object themeName) {
    return 'Umbala Wokugcizelela - $themeName';
  }

  @override
  String get brightnessMode => 'IMODI YOKUKHANYA';

  @override
  String get lightMode => 'Imodi ekhanyayo';

  @override
  String get followSystemMode => 'Landela imodi yesistimu';

  @override
  String get darkMode => 'Imodi emnyama';

  @override
  String get customColourPicker => 'Isikhethi sombala ngokwezifiso';

  @override
  String get customColourTooltip => 'Umbala ngokwezifiso...';

  @override
  String get couldNotLoadBooks =>
      'Ayikwazanga ukulayisha uhlu lwezincwadi. Sicela uzame futhi.';

  @override
  String chapterLabel(Object chapter) {
    return 'Isahluko $chapter';
  }

  @override
  String get traditionalOrderBooks => 'Izincwadi zoku-oda zendabuko';

  @override
  String get alphabeticalOrderBooks => 'Izincwadi zoku-oda ngama-alfabhethi';

  @override
  String get home => 'Ikhaya';

  @override
  String get addBookmarkTooltip => 'Engeza ibhukhimakhi';

  @override
  String get chooseBookChapter => 'Khetha incwadi nesahluko';

  @override
  String get chooseVerse => 'Khetha ivesi';

  @override
  String get bookChapterQuickNavigation =>
      'Incwadi nesahluko ukuzulazula okusheshayo';

  @override
  String get verseQuickNavigation => 'Ukuzulazula okusheshayo kwevesi';

  @override
  String get backToBooks => 'Buyela ezincwadini';

  @override
  String get selectBookTitle => 'Khetha Incwadi';

  @override
  String selectChapterTitle(Object bookName) {
    return 'Khetha Isahluko ($bookName)';
  }

  @override
  String chapterSelectionLabel(Object chapter) {
    return 'Isahluko $chapter';
  }

  @override
  String verseSelectionLabel(Object verse) {
    return 'Ivesi $verse';
  }

  @override
  String fullChapterReference(Object bookName, Object chapter) {
    return 'Isahluko esigcwele: $bookName $chapter';
  }

  @override
  String get memorizeHint => 'Ngekhanda';

  @override
  String get addNoteHint => 'Engeza inothi...';

  @override
  String get languageSearchHint => 'Sesha izilimi';

  @override
  String get languageModuleInstalled => 'Kufakiwe';

  @override
  String get languageModulePending => 'Ukuhumusha ngomshini kulindile';

  @override
  String get languageNoMatches => 'Azikho izilimi ezifana nosesho lwakho.';

  @override
  String get languageCatalogDescription =>
      'Izilimi ezimakwe njengezifakiwe zisebenza ungaxhunyiwe ku-inthanethi. Ezinye izilimi zizongezwa njengamamojula ahunyushwe ngomshini.';

  @override
  String get saveBookmarkSemantics => 'Londoloza ibhukhimakhi';

  @override
  String get couldNotLoadChapter =>
      'Ayikwazanga ukulayisha isahluko. Sicela uzame futhi.';

  @override
  String get couldNotLoadChapters =>
      'Ayikwazanga ukulayisha izahluko. Sicela uzame futhi.';

  @override
  String verseWithText(Object text, Object verse) {
    return 'Ivesi $verse: $text';
  }

  @override
  String accentSwatchSemantics(Object name, Object selected) {
    return '$name umbala we-accent$selected';
  }

  @override
  String get oldTestament => 'ITestamente Elidala';

  @override
  String get newTestament => 'ITestamente Elisha';

  @override
  String get deuterocanonApocrypha => 'I-Deuterocanon / Apocrypha';
}
