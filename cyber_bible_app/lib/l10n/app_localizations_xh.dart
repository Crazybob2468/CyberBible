// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Xhosa (`xh`).
class AppLocalizationsXh extends AppLocalizations {
  AppLocalizationsXh([String locale = 'xh']) : super(locale);

  @override
  String get settingsTitle => 'Iisetingi';

  @override
  String get languageSection => 'Ulwimi';

  @override
  String get useSystemLanguage => 'Sebenzisa ulwimi lwesistim';

  @override
  String get useSystemLanguageSubtitle =>
      'Tshatisa ulwimi lwesixhobo ngokwendalo.';

  @override
  String get currentLanguage => 'Ulwimi lwangoku';

  @override
  String get appLanguage => 'Ulwimi lwe-App';

  @override
  String get chooseLanguage => 'Khetha ulwimi';

  @override
  String get theme => 'Umxholo';

  @override
  String get appearance => 'Imbonakalo';

  @override
  String get textSection => 'Isicatshulwa';

  @override
  String get readingFormatSection => 'IFomathi yokuFunda';

  @override
  String get displaySection => 'Bonisa';

  @override
  String get verseNumbers => 'Iinombolo zevesi';

  @override
  String get sectionHeadings => 'Izihloko zeCandelo';

  @override
  String get redLetterText => 'Umbhalo Onobumba Obomvu';

  @override
  String get selectABook => 'Khetha Incwadi';

  @override
  String get traditionalOrder => 'Umyalelo wemveli';

  @override
  String get alphabeticalOrder => 'Ulandelelwano lwealfabhethi';

  @override
  String get bookmarks => 'Iibhukhmakhi';

  @override
  String get retry => 'Zama kwakhona';

  @override
  String get chooseTheme => 'Khetha Umxholo';

  @override
  String get customisableThemes => 'Imixholo eLungiselelayo';

  @override
  String get customisableThemesSubtitle =>
      'Cofa ikhadi ukuze ukhethe umbala we-accent. \"I-Classic White\" ikwaxhasa ukuKhanya, ubumnyama kunye neendlela zeNkqubo.';

  @override
  String get setThemes => 'BEKA IMIxholo';

  @override
  String get setThemesSubtitle =>
      'Iipaliti ezilungisiweyo, ezenziwe ngesandla. Akukho lungelelwaniso lufunekayo - cofa nje ukuze ufake isicelo.';

  @override
  String get deleteBookmarkQuestion => 'Cima ibhukhimaki?';

  @override
  String get cancel => 'Rhoxisa';

  @override
  String get delete => 'Cima';

  @override
  String get bookmarkSaved => 'Ibhukhmakhi igciniwe';

  @override
  String get couldNotDeleteBookmark => 'Ayikwazanga ukucima ibhukumaki.';

  @override
  String couldNotNavigate(Object reference) {
    return 'Ayikwazanga ukuya $reference.';
  }

  @override
  String get pageNotFound => 'Iphela alifumaneki';

  @override
  String noRouteDefined(Object routeName) {
    return 'Akukho ndlela ichaziweyo \"$routeName\"';
  }

  @override
  String get english => 'IsiNgesi';

  @override
  String get spanish => 'Español';

  @override
  String get systemDefault => 'Indlela emiselweyo';

  @override
  String get languageStatusEnglish => 'Ukubuyisela umva kwesiNgesi kuyasebenza';

  @override
  String get languageStatusSystem => 'Ukusebenzisa ulwimi lwesistim';

  @override
  String languageStatusSelected(Object languageName) {
    return 'Ulwimi olukhethiweyo: []] $languageName';
  }

  @override
  String get themeLabel => 'Umxholo';

  @override
  String get notFoundTitle => 'Iphela alifumaneki';

  @override
  String get loadingCyberBible => 'Ilayisha iCyber ​​Bible...';

  @override
  String get couldNotOpenDatabase =>
      'Ayikwazanga ukuvula uvimba weenkcukacha weBhayibhile. Nceda zama kwakhona.';

  @override
  String get homeTagline =>
      'Usetyenziso lweBhayibhile lwasimahla noluvulelekileyo';

  @override
  String get readTheBible => 'Funda iBhayibhile';

  @override
  String get settingsTooltip => 'Iisetingi';

  @override
  String get themeChoose => 'Khetha Umxholo';

  @override
  String get customThemes => 'Imixholo eLungiselelayo';

  @override
  String get customThemesSubtitle =>
      'Cofa ikhadi ukuze ukhethe umbala we-accent. \"I-Classic White\" ikwaxhasa ukuKhanya, ubumnyama kunye neendlela zeNkqubo.';

  @override
  String get setThemesLabel => 'BEKA IMIxholo';

  @override
  String get deleteBookmarkDialog => 'Cima ibhukhimaki?';

  @override
  String removeBookmarkMessage(Object details, Object reference) {
    return 'Susa \"$reference\"$details?\n\nOku akunakwenziwa kwakhona.';
  }

  @override
  String get couldNotLoadBookmarks =>
      'Ayikwazanga ukulayisha amanqaku eencwadi. Nceda zama kwakhona.';

  @override
  String get bookmarkSavedMessage => 'Ibhukhmakhi igciniwe';

  @override
  String get couldNotSaveBookmark => 'Ayikwazanga ukugcina incwadi ephawulayo.';

  @override
  String get noBookmarksMatchFilter =>
      'Akukho manqaku eencwadi angqamana nesi sihluzo.';

  @override
  String get clearFilter => 'Cima isihluzi';

  @override
  String get traditionalOrderLabel => 'Umyalelo wemveli';

  @override
  String get alphabeticalOrderLabel => 'Ulandelelwano lwealfabhethi';

  @override
  String get bookmarksTabLabel => 'Iibhukhmakhi';

  @override
  String get fullChapter => 'Isahluko esipheleleyo';

  @override
  String get addBookmark => 'Yongeza iBookmark';

  @override
  String get selectVerse => 'Khetha iVesi';

  @override
  String get labelOptional => 'Ileyibhile (uyazikhethela)';

  @override
  String get notesOptional => 'Amanqaku (ukhetho)';

  @override
  String get save => 'Gcina';

  @override
  String get goToVerse => 'Yiya kwiVesi';

  @override
  String verseTitle(Object verse) {
    return 'Ivesi []] $verse';
  }

  @override
  String chapterTitle(Object chapter) {
    return 'Isahluko $chapter';
  }

  @override
  String get switchToFullChapter =>
      'Tshintshela kwisahluko esipheleleyo sebhukumaki';

  @override
  String get bookmarkSheetCancel => 'Rhoxisa, vala iphepha lokuphawula';

  @override
  String get pickCustomAccent => 'Khetha i-accent yangokwezifiso';

  @override
  String get apply => 'Faka isicelo';

  @override
  String get custom => 'Isiko';

  @override
  String get brightnessSystem => 'Inkqubo';

  @override
  String get brightnessLight => 'Ukukhanya';

  @override
  String get brightnessDark => 'Mnyama';

  @override
  String get selectBook => 'Khetha Incwadi';

  @override
  String get bookmarkFilterAll => 'Konke';

  @override
  String get bookmarkFilterUnlabeled => 'Ayibhalwanga';

  @override
  String get bookmarkSortRecent => 'Kutshanje kuqala';

  @override
  String get bookmarkSortCanonical => 'Umyalelo weCanonical';

  @override
  String get chapterRetry => 'Zama kwakhona';

  @override
  String get fontSize => 'Isayizi yefonti';

  @override
  String fontSizePixels(Object size) {
    return '[]] px $size';
  }

  @override
  String get fontSizeSlider => 'Isilayida sobungakanani befonti';

  @override
  String get fontSizeSliderHint =>
      'Swayipha ukuze ulungelelanise ukusuka kwi-12 ukuya kwi-28';

  @override
  String get fontPreview =>
      '“Ekuqaleni uThixo wadala izulu nomhlaba. — Gen 1:1';

  @override
  String get showVerseNumbersSubtitle =>
      'Bonisa imibhalo ephezulu yeevesi kwisikrini sokufunda.';

  @override
  String get showSectionHeadingsSubtitle =>
      'Bonisa imixholo yecandelo neyeNdumiso phakathi kwezicatshulwa.';

  @override
  String get wordsOfChristSubtitle =>
      'Bonisa amazwi kaYesu abomvu. Khubaza kumbhalo omnye wombala.';

  @override
  String get verseFormatTitle => 'Ukuma kweVesi';

  @override
  String get verseFormatSubtitle => 'Khetha indlela isibhalo esibekwe ngayo.';

  @override
  String get paragraphMode => 'Umhlathi';

  @override
  String get verseListMode => 'Uluhlu lweevesi';

  @override
  String get paragraphModeTooltip => 'Imo yomhlathi';

  @override
  String get verseListModeTooltip => 'Imowudi yoluhlu lweevesi';

  @override
  String get paragraphModeDescription =>
      'Isicatshulwa sihamba ngokuqhubekayo kunye neziqendu ezihlehlisiwe, njengeBhayibhile eprintiweyo.';

  @override
  String get verseListModeDescription =>
      'Isiqendu ngasinye sesibhalo siqala kumgca waso, nto leyo eyenza kube lula ukubona amaqela eendinyana.';

  @override
  String get deleteBookmarkTooltip => 'Cima ibhukhimakhi';

  @override
  String deleteBookmarkSemantics(Object reference) {
    return 'Cima incwadi ephawulayo []] $reference';
  }

  @override
  String sortBookmarksTooltip(Object sortOrder) {
    return 'Hlela: $sortOrder';
  }

  @override
  String get noBookmarksYet => 'Akukho zibhukhimaksi okwangoku.';

  @override
  String get noBookmarksYetHint =>
      'Cofa iqhosha lebhukhimakhi ngelixa ufunda ukugcina indawo.';

  @override
  String bookmarkReferenceNavigationError(Object reference) {
    return 'Ayikwazanga ukuya $reference.';
  }

  @override
  String themeCardSemantics(Object description, Object name, Object selected) {
    return '[]] umxholo[[]]. []] $name $selected $description';
  }

  @override
  String get selectedThemeSuffix => ', ekhethiweyo ngoku';

  @override
  String get customisableAccentDescription => 'Umbala we-accent owenzekayo.';

  @override
  String get fixedPaletteDescription => 'Iphalethi ezinzileyo.';

  @override
  String accentColourTitle(Object themeName) {
    return 'Umbala wonyuso — []] $themeName';
  }

  @override
  String get brightnessMode => 'IMODE YOKUKHANYA';

  @override
  String get lightMode => 'Imowudi yokukhanya';

  @override
  String get followSystemMode => 'Landela indlela yesixokelelwano';

  @override
  String get darkMode => 'Imowudi emnyama';

  @override
  String get customColourPicker => 'Isicholi sombala ngokwezifiso';

  @override
  String get customColourTooltip => 'Umbala oqhelekileyo...';

  @override
  String get couldNotLoadBooks =>
      'Ayikwazanga ukulayisha uluhlu lweencwadi. Nceda zama kwakhona.';

  @override
  String chapterLabel(Object chapter) {
    return 'Isahluko $chapter';
  }

  @override
  String get traditionalOrderBooks => 'Iincwadi zokuodola zemveli';

  @override
  String get alphabeticalOrderBooks => 'Iincwadi zokulandelelana kwealfabhethi';

  @override
  String get home => 'Ekhaya';

  @override
  String get addBookmarkTooltip => 'Yongeza ibhukhimakhi';

  @override
  String get chooseBookChapter => 'Khetha incwadi kunye nesahluko';

  @override
  String get chooseVerse => 'Khetha ivesi';

  @override
  String get bookChapterQuickNavigation =>
      'Incwadi kunye nesahluko ukukhangela ngokukhawuleza';

  @override
  String get verseQuickNavigation => 'Ivesi yokukhangela ngokukhawuleza';

  @override
  String get backToBooks => 'Buyela kwiincwadi';

  @override
  String get selectBookTitle => 'Khetha Incwadi';

  @override
  String selectChapterTitle(Object bookName) {
    return 'Khetha iSahluko ($bookName)';
  }

  @override
  String chapterSelectionLabel(Object chapter) {
    return 'Isahluko $chapter';
  }

  @override
  String verseSelectionLabel(Object verse) {
    return 'Ivesi []] $verse';
  }

  @override
  String fullChapterReference(Object bookName, Object chapter) {
    return 'Isahluko esipheleleyo: $bookName []] $chapter';
  }

  @override
  String get memorizeHint => 'Ngentloko';

  @override
  String get addNoteHint => 'Yongeza inqaku...';

  @override
  String get languageSearchHint => 'Phendla iilwimi';

  @override
  String get languageModuleInstalled => 'Ifakiwe';

  @override
  String get languageModulePending => 'Inguqulelo yomatshini ilindile';

  @override
  String get languageNoMatches =>
      'Akukho zilwimi zihambelana nophendlo lwakho.';

  @override
  String get languageCatalogDescription =>
      'Iilwimi eziphawulwe njengomsebenzi ofakiweyo ngaphandle kweintanethi. Ezinye iilwimi ziya kongezwa njengeemodyuli eziguqulelwe ngoomatshini.';

  @override
  String get saveBookmarkSemantics => 'Gcina ibhukhimaki';

  @override
  String get couldNotLoadChapter =>
      'Ayikwazanga ukulayisha isahluko. Nceda zama kwakhona.';

  @override
  String get couldNotLoadChapters =>
      'Ayikwazanga ukulayisha izahluko. Nceda zama kwakhona.';

  @override
  String verseWithText(Object text, Object verse) {
    return 'Ivesi $verse: []] $text';
  }

  @override
  String accentSwatchSemantics(Object name, Object selected) {
    return '[]] umbala wonyuso[[]] $name $selected';
  }

  @override
  String get oldTestament => 'ITestamente eNdala';

  @override
  String get newTestament => 'ITestamente Entsha';

  @override
  String get deuterocanonApocrypha => 'Deuteronon / Apocrypha';
}
