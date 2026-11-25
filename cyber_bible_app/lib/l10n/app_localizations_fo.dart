// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Faroese (`fo`).
class AppLocalizationsFo extends AppLocalizations {
  AppLocalizationsFo([String locale = 'fo']) : super(locale);

  @override
  String get settingsTitle => 'Innstillingar';

  @override
  String get languageSection => 'Mál';

  @override
  String get useSystemLanguage => 'Brúka skipanarmál';

  @override
  String get useSystemLanguageSubtitle => 'Passa tólmálið sum standard.';

  @override
  String get currentLanguage => 'Núverandi mál';

  @override
  String get appLanguage => 'App mál';

  @override
  String get chooseLanguage => 'Vel mál';

  @override
  String get theme => 'Evni';

  @override
  String get appearance => 'Koma';

  @override
  String get textSection => 'Tekstur';

  @override
  String get readingFormatSection => 'Lestrarsnið';

  @override
  String get displaySection => 'Sýna fram';

  @override
  String get verseNumbers => 'Vers tøl';

  @override
  String get sectionHeadings => 'Yvirskriftir á deildum';

  @override
  String get redLetterText => 'Tekstur við reyðum bókstavum';

  @override
  String get selectABook => 'Vel eina bók';

  @override
  String get traditionalOrder => 'Siðbundna skipan';

  @override
  String get alphabeticalOrder => 'Bókstavaraðfylgja';

  @override
  String get bookmarks => 'Bókamerki';

  @override
  String get retry => 'Royn aftur';

  @override
  String get chooseTheme => 'Vel Tema';

  @override
  String get customisableThemes => 'Tema, sum kunnu tillagast';

  @override
  String get customisableThemesSubtitle =>
      'Trýst á eitt kort fyri at velja ein aksentlit. \"Classic White\" stuðlar eisini Ljós, Myrk og System háttum.';

  @override
  String get setThemes => 'SETT TEMA';

  @override
  String get setThemesSubtitle =>
      'Fastar, hondgjørdar palettir. Eingin tilpassing er neyðug — trýst bara á fyri at søkja.';

  @override
  String get deleteBookmarkQuestion => 'Strika bókamerki?';

  @override
  String get cancel => 'strika';

  @override
  String get delete => 'Strúka burtur';

  @override
  String get bookmarkSaved => 'Bókamerki goymt';

  @override
  String get couldNotDeleteBookmark => 'Kundi ikki strika bókamerki.';

  @override
  String couldNotNavigate(Object reference) {
    return 'Kundi ikki navigera til $reference.';
  }

  @override
  String get pageNotFound => 'Síða er ikki funnin';

  @override
  String noRouteDefined(Object routeName) {
    return 'Eingin leið ásett fyri \"$routeName\".';
  }

  @override
  String get english => 'Enskt';

  @override
  String get spanish => 'Spanskt';

  @override
  String get systemDefault => 'Forsett skipan';

  @override
  String get languageStatusEnglish => 'Enskt fallback virkið';

  @override
  String get languageStatusSystem => 'Brúka skipanarmál';

  @override
  String languageStatusSelected(Object languageName) {
    return 'Valt mál: $languageName';
  }

  @override
  String get themeLabel => 'Evni';

  @override
  String get notFoundTitle => 'Síða er ikki funnin';

  @override
  String get loadingCyberBible => 'Loading Netbíblian...';

  @override
  String get couldNotOpenDatabase =>
      'Kundi ikki opna bíbliudátugrunnin. Vinarliga royn aftur.';

  @override
  String get homeTagline => 'Ein ókeypis og opin bíbliulestrarapp';

  @override
  String get readTheBible => 'Les Bíbliuna';

  @override
  String get settingsTooltip => 'Innstillingar';

  @override
  String get themeChoose => 'Vel Tema';

  @override
  String get customThemes => 'Tema, sum kunnu tillagast';

  @override
  String get customThemesSubtitle =>
      'Trýst á eitt kort fyri at velja ein aksentlit. \"Classic White\" stuðlar eisini Ljós, Myrk og System háttum.';

  @override
  String get setThemesLabel => 'SETT TEMA';

  @override
  String get deleteBookmarkDialog => 'Strika bókamerki?';

  @override
  String removeBookmarkMessage(Object details, Object reference) {
    return 'Strika \"$reference\"$details?\n\nHetta kann ikki gerast aftur.';
  }

  @override
  String get couldNotLoadBookmarks =>
      'Kundi ikki heinta bókamerki. Vinarliga royn aftur.';

  @override
  String get bookmarkSavedMessage => 'Bókamerki goymt';

  @override
  String get couldNotSaveBookmark => 'Kundi ikki goyma bókamerki.';

  @override
  String get noBookmarksMatchFilter =>
      'Eingi bókamerki passa til hetta filtrið.';

  @override
  String get clearFilter => 'Rudda filtur';

  @override
  String get traditionalOrderLabel => 'Siðbundna skipan';

  @override
  String get alphabeticalOrderLabel => 'Bókstavaraðfylgja';

  @override
  String get bookmarksTabLabel => 'Bókamerki';

  @override
  String get fullChapter => 'Heilur kapittul';

  @override
  String get addBookmark => 'Legg bókamerki til';

  @override
  String get selectVerse => 'Vel vers';

  @override
  String get labelOptional => 'Merki (valfrítt)';

  @override
  String get notesOptional => 'Viðmerkingar (valfrítt)';

  @override
  String get save => 'Bjarga';

  @override
  String get goToVerse => 'Far til Vers 1.1.';

  @override
  String verseTitle(Object verse) {
    return 'Vers $verse';
  }

  @override
  String chapterTitle(Object chapter) {
    return 'Kapittul $chapter';
  }

  @override
  String get switchToFullChapter => 'Skift til fullan kapittul bókamerki';

  @override
  String get bookmarkSheetCancel => 'Avlýs, lukka bókamerkjaarkið';

  @override
  String get pickCustomAccent => 'Vel ein sersniðgivnan aksent';

  @override
  String get apply => 'Søkja';

  @override
  String get custom => 'Skikkur';

  @override
  String get brightnessSystem => 'Skipan';

  @override
  String get brightnessLight => 'Ljós';

  @override
  String get brightnessDark => 'Myrkur';

  @override
  String get selectBook => 'Vel eina bók';

  @override
  String get bookmarkFilterAll => 'Altíð';

  @override
  String get bookmarkFilterUnlabeled => 'Ómerkt';

  @override
  String get bookmarkSortRecent => 'Nýggjari fyrstu';

  @override
  String get bookmarkSortCanonical => 'Kanonisk skipan';

  @override
  String get chapterRetry => 'Royn aftur';

  @override
  String get fontSize => 'Skriftstødd';

  @override
  String fontSizePixels(Object size) {
    return '$size px';
  }

  @override
  String get fontSizeSlider => 'Renniskriftsstødd';

  @override
  String get fontSizeSliderHint => 'Strýs fyri at stilla frá 12 til 28';

  @override
  String get fontPreview =>
      '\"Í byrjanini skapti Gud himmal og jørð.\" — 1 Mós 1:1.';

  @override
  String get showVerseNumbersSubtitle =>
      'Vís versnummar yvirskrift á lestrarskerminum.';

  @override
  String get showSectionHeadingsSubtitle =>
      'Vís parti- og sálmayvirskriftir millum brotini.';

  @override
  String get wordsOfChristSubtitle =>
      'Vís orðini hjá Jesusi við reyðum. Sløkk fyri ein tekstlit.';

  @override
  String get verseFormatTitle => 'Vers snið';

  @override
  String get verseFormatSubtitle => 'Vel, hvussu skriftteksturin er lagdur út.';

  @override
  String get paragraphMode => 'Stk.';

  @override
  String get verseListMode => 'Verslisti';

  @override
  String get paragraphModeTooltip => 'Stk.stilling';

  @override
  String get verseListModeTooltip => 'Vers-lista háttur';

  @override
  String get paragraphModeDescription =>
      'Tekstur rennur áhaldandi við innskotnum paragraffum, sum ein prentað bíblia.';

  @override
  String get verseListModeDescription =>
      'Hvørt skriftstøð byrjar á síni egnu linju, og tað ger, at versbólkar eru lættir at síggja.';

  @override
  String get deleteBookmarkTooltip => 'Strika bókamerki';

  @override
  String deleteBookmarkSemantics(Object reference) {
    return 'Strika bókamerki $reference';
  }

  @override
  String sortBookmarksTooltip(Object sortOrder) {
    return 'Sortera: $sortOrder';
  }

  @override
  String get noBookmarksYet => 'Eingi búmerki enn.';

  @override
  String get noBookmarksYetHint =>
      'Trýst á bókamerkja-ikonið, meðan tú lesur, fyri at goyma eitt stað.';

  @override
  String bookmarkReferenceNavigationError(Object reference) {
    return 'Kundi ikki navigera til $reference.';
  }

  @override
  String themeCardSemantics(Object description, Object name, Object selected) {
    return '$name tema$selected. $description';
  }

  @override
  String get selectedThemeSuffix => ', valt í løtuni .';

  @override
  String get customisableAccentDescription => 'Tillagaður aksentlitur.';

  @override
  String get fixedPaletteDescription => 'Fast paletta.';

  @override
  String accentColourTitle(Object themeName) {
    return 'Aksentlitur — $themeName';
  }

  @override
  String get brightnessMode => 'LJÓSSTÆRTSTILL';

  @override
  String get lightMode => 'Ljósstilling';

  @override
  String get followSystemMode => 'Fylg skipanarstilling';

  @override
  String get darkMode => 'Myrkur háttur';

  @override
  String get customColourPicker => 'Sersniðgivin litveljari';

  @override
  String get customColourTooltip => 'Sersniðgivin litur...';

  @override
  String get couldNotLoadBooks =>
      'Fekk ikki heinta bókalistan. Vinarliga royn aftur.';

  @override
  String chapterLabel(Object chapter) {
    return 'Kapittul $chapter';
  }

  @override
  String get traditionalOrderBooks => 'Siðbundnar bíleggingarbøkur';

  @override
  String get alphabeticalOrderBooks => 'Skipanarbøkur í bókstavarað';

  @override
  String get home => 'Heima';

  @override
  String get addBookmarkTooltip => 'Legg bókamerki til';

  @override
  String get chooseBookChapter => 'Vel bók og kap.';

  @override
  String get chooseVerse => 'Vel vers';

  @override
  String get bookChapterQuickNavigation => 'Bóka- og kapittul skjót navigatión';

  @override
  String get verseQuickNavigation => 'Vers skjót navigatión';

  @override
  String get backToBooks => 'Aftur til bøkurnar';

  @override
  String get selectBookTitle => 'Vel Bílegg';

  @override
  String selectChapterTitle(Object bookName) {
    return 'Vel Kapittul ($bookName)';
  }

  @override
  String chapterSelectionLabel(Object chapter) {
    return 'Kapittul $chapter';
  }

  @override
  String verseSelectionLabel(Object verse) {
    return 'Vers $verse';
  }

  @override
  String fullChapterReference(Object bookName, Object chapter) {
    return 'Fullur kapittul: $bookName $chapter';
  }

  @override
  String get memorizeHint => 'Læra uttanat';

  @override
  String get addNoteHint => 'Legg eina viðmerking til...';

  @override
  String get languageSearchHint => 'Leita mál';

  @override
  String get languageModuleInstalled => 'Sett upp';

  @override
  String get languageModulePending => 'Maskintýðing er í bíðirøð';

  @override
  String get languageNoMatches => 'Eingi mál passa til tína leiting.';

  @override
  String get languageCatalogDescription =>
      'Mál merkt sum innstillað virka offline. Onnur mál verða løgd afturat sum maskintýdd modul.';

  @override
  String get saveBookmarkSemantics => 'Goym bókamerki';

  @override
  String get couldNotLoadChapter =>
      'Kundi ikki heinta kapitlið. Vinarliga royn aftur.';

  @override
  String get couldNotLoadChapters =>
      'Kundi ikki heinta kapitlar. Vinarliga royn aftur.';

  @override
  String verseWithText(Object text, Object verse) {
    return 'Vers $verse: $text';
  }

  @override
  String accentSwatchSemantics(Object name, Object selected) {
    return '$name aksentlitur$selected';
  }

  @override
  String get oldTestament => 'Gamla Testamenti';

  @override
  String get newTestament => 'Nýggja Testamenti';

  @override
  String get deuterocanonApocrypha => '5. Mótbók / Apokryf';
}
