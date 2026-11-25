// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Lithuanian (`lt`).
class AppLocalizationsLt extends AppLocalizations {
  AppLocalizationsLt([String locale = 'lt']) : super(locale);

  @override
  String get settingsTitle => 'Nustatymai';

  @override
  String get languageSection => 'Kalba';

  @override
  String get useSystemLanguage => 'Naudokite sistemos kalbą';

  @override
  String get useSystemLanguageSubtitle =>
      'Pagal numatytuosius nustatymus suderinkite įrenginio kalbą.';

  @override
  String get currentLanguage => 'Dabartinė kalba';

  @override
  String get appLanguage => 'Programos kalba';

  @override
  String get chooseLanguage => 'Pasirinkite kalbą';

  @override
  String get theme => 'tema';

  @override
  String get appearance => 'Išvaizda';

  @override
  String get textSection => 'Tekstas';

  @override
  String get readingFormatSection => 'Skaitymo formatas';

  @override
  String get displaySection => 'Ekranas';

  @override
  String get verseNumbers => 'Eilėraščių skaičiai';

  @override
  String get sectionHeadings => 'Skyrių antraštės';

  @override
  String get redLetterText => 'Raudonos raidės tekstas';

  @override
  String get selectABook => 'Pasirinkite knygą';

  @override
  String get traditionalOrder => 'Tradicinė tvarka';

  @override
  String get alphabeticalOrder => 'Abėcėlės tvarka';

  @override
  String get bookmarks => 'Žymės';

  @override
  String get retry => 'Bandykite dar kartą';

  @override
  String get chooseTheme => 'Pasirinkite temą';

  @override
  String get customisableThemes => 'Pritaikomos temos';

  @override
  String get customisableThemesSubtitle =>
      'Bakstelėkite kortelę, kad pasirinktumėte akcento spalvą. „Classic White“ taip pat palaiko šviesos, tamsios ir sistemos režimus.';

  @override
  String get setThemes => 'NUSTATYTI TEMAS';

  @override
  String get setThemesSubtitle =>
      'Fiksuotos, rankų darbo paletės. Tinkinti nereikia – tiesiog palieskite, kad pritaikytumėte.';

  @override
  String get deleteBookmarkQuestion => 'Ištrinti žymę?';

  @override
  String get cancel => 'Atšaukti';

  @override
  String get delete => 'Ištrinti';

  @override
  String get bookmarkSaved => 'Žymė išsaugota';

  @override
  String get couldNotDeleteBookmark => 'Nepavyko ištrinti žymės.';

  @override
  String couldNotNavigate(Object reference) {
    return 'Nepavyko pereiti prie $reference.';
  }

  @override
  String get pageNotFound => 'Puslapis nerastas';

  @override
  String noRouteDefined(Object routeName) {
    return 'Maršrutas nenustatytas „$routeName“';
  }

  @override
  String get english => 'anglų kalba';

  @override
  String get spanish => 'Español';

  @override
  String get systemDefault => 'Numatytasis sistemos';

  @override
  String get languageStatusEnglish =>
      'Aktyvus anglų kalbos atsarginis variantas';

  @override
  String get languageStatusSystem => 'Naudojant sistemos kalbą';

  @override
  String languageStatusSelected(Object languageName) {
    return 'Pasirinkta kalba: $languageName';
  }

  @override
  String get themeLabel => 'tema';

  @override
  String get notFoundTitle => 'Puslapis nerastas';

  @override
  String get loadingCyberBible => 'Įkeliama kibernetinė biblija...';

  @override
  String get couldNotOpenDatabase =>
      'Nepavyko atidaryti Biblijos duomenų bazės. Bandykite dar kartą.';

  @override
  String get homeTagline => 'Nemokama atvirojo kodo Biblijos studijų programa';

  @override
  String get readTheBible => 'Skaityk Bibliją';

  @override
  String get settingsTooltip => 'Nustatymai';

  @override
  String get themeChoose => 'Pasirinkite temą';

  @override
  String get customThemes => 'Pritaikomos temos';

  @override
  String get customThemesSubtitle =>
      'Bakstelėkite kortelę, kad pasirinktumėte akcento spalvą. „Classic White“ taip pat palaiko šviesos, tamsios ir sistemos režimus.';

  @override
  String get setThemesLabel => 'NUSTATYTI TEMAS';

  @override
  String get deleteBookmarkDialog => 'Ištrinti žymę?';

  @override
  String removeBookmarkMessage(Object details, Object reference) {
    return 'Pašalinti „$reference“$details?\n\nTo negalima anuliuoti.';
  }

  @override
  String get couldNotLoadBookmarks =>
      'Nepavyko įkelti žymių. Bandykite dar kartą.';

  @override
  String get bookmarkSavedMessage => 'Žymė išsaugota';

  @override
  String get couldNotSaveBookmark => 'Nepavyko išsaugoti žymės.';

  @override
  String get noBookmarksMatchFilter => 'Nėra šio filtro atitinkančių žymių.';

  @override
  String get clearFilter => 'Išvalytas filtras';

  @override
  String get traditionalOrderLabel => 'Tradicinė tvarka';

  @override
  String get alphabeticalOrderLabel => 'Abėcėlės tvarka';

  @override
  String get bookmarksTabLabel => 'Žymės';

  @override
  String get fullChapter => 'Visas skyrius';

  @override
  String get addBookmark => 'Pridėti žymę';

  @override
  String get selectVerse => 'Pasirinkite eilėraštį';

  @override
  String get labelOptional => 'Etiketė (neprivaloma)';

  @override
  String get notesOptional => 'Pastabos (neprivaloma)';

  @override
  String get save => 'Išsaugoti';

  @override
  String get goToVerse => 'Eikite į eilėraštį';

  @override
  String verseTitle(Object verse) {
    return 'Eilėraštis $verse';
  }

  @override
  String chapterTitle(Object chapter) {
    return 'Skyrius $chapter';
  }

  @override
  String get switchToFullChapter => 'Perjungti į viso skyriaus žymę';

  @override
  String get bookmarkSheetCancel => 'Atšaukti, uždaryti žymių lapą';

  @override
  String get pickCustomAccent => 'Pasirinkite individualų akcentą';

  @override
  String get apply => 'Taikyti';

  @override
  String get custom => 'Pasirinktinis';

  @override
  String get brightnessSystem => 'Sistema';

  @override
  String get brightnessLight => 'Šviesa';

  @override
  String get brightnessDark => 'Tamsus';

  @override
  String get selectBook => 'Pasirinkite knygą';

  @override
  String get bookmarkFilterAll => 'Visi';

  @override
  String get bookmarkFilterUnlabeled => 'Nepaženklinta';

  @override
  String get bookmarkSortRecent => 'Pirmiausia neseniai';

  @override
  String get bookmarkSortCanonical => 'Kanoninė tvarka';

  @override
  String get chapterRetry => 'Bandykite dar kartą';

  @override
  String get fontSize => 'Šrifto dydis';

  @override
  String fontSizePixels(Object size) {
    return '$size px';
  }

  @override
  String get fontSizeSlider => 'Šrifto dydžio slankiklis';

  @override
  String get fontSizeSliderHint =>
      'Braukite, kad sureguliuotumėte nuo 12 iki 28';

  @override
  String get fontPreview =>
      '„Pradžioje Dievas sukūrė dangų ir žemę“. — Gen 1:1';

  @override
  String get showVerseNumbersSubtitle =>
      'Skaitymo ekrane rodykite eilėraščių skaičių viršutinius indeksus.';

  @override
  String get showSectionHeadingsSubtitle =>
      'Rodyti skyriaus ir psalmės antraštes tarp ištraukų.';

  @override
  String get wordsOfChristSubtitle =>
      'Parodykite Jėzaus žodžius raudonai. Išjungti vienai teksto spalvai.';

  @override
  String get verseFormatTitle => 'Eilėraščio formatas';

  @override
  String get verseFormatSubtitle =>
      'Pasirinkite, kaip išdėstomas Rašto tekstas.';

  @override
  String get paragraphMode => 'Pastraipa';

  @override
  String get verseListMode => 'Eilėraščių sąrašas';

  @override
  String get paragraphModeTooltip => 'Pastraipos režimas';

  @override
  String get verseListModeTooltip => 'Eilėraščių sąrašo režimas';

  @override
  String get paragraphModeDescription =>
      'Tekstas nuolat teka su įtrauktomis pastraipomis, kaip spausdintoje Biblijoje.';

  @override
  String get verseListModeDescription =>
      'Kiekviena Rašto pastraipa prasideda savo eilute, todėl eilučių grupes lengva pastebėti.';

  @override
  String get deleteBookmarkTooltip => 'Ištrinti žymę';

  @override
  String deleteBookmarkSemantics(Object reference) {
    return 'Ištrinti žymę $reference';
  }

  @override
  String sortBookmarksTooltip(Object sortOrder) {
    return 'Rūšiuoti: $sortOrder';
  }

  @override
  String get noBookmarksYet => 'Žymių dar nėra.';

  @override
  String get noBookmarksYetHint =>
      'Skaitydami bakstelėkite žymės piktogramą, kad išsaugotumėte vietą.';

  @override
  String bookmarkReferenceNavigationError(Object reference) {
    return 'Nepavyko pereiti prie $reference.';
  }

  @override
  String themeCardSemantics(Object description, Object name, Object selected) {
    return '$name tema$selected. $description';
  }

  @override
  String get selectedThemeSuffix => ', šiuo metu pasirinkta';

  @override
  String get customisableAccentDescription => 'Pritaikoma akcento spalva.';

  @override
  String get fixedPaletteDescription => 'Fiksuota paletė.';

  @override
  String accentColourTitle(Object themeName) {
    return 'Akcentinė spalva – $themeName';
  }

  @override
  String get brightnessMode => 'RYŠKUMO REŽIMAS';

  @override
  String get lightMode => 'Šviesos režimas';

  @override
  String get followSystemMode => 'Sekite sistemos režimą';

  @override
  String get darkMode => 'Tamsus režimas';

  @override
  String get customColourPicker => 'Pasirinktinis spalvų rinkiklis';

  @override
  String get customColourTooltip => 'Pasirinktinė spalva…';

  @override
  String get couldNotLoadBooks =>
      'Nepavyko įkelti knygų sąrašo. Bandykite dar kartą.';

  @override
  String chapterLabel(Object chapter) {
    return 'Skyrius $chapter';
  }

  @override
  String get traditionalOrderBooks => 'Tradicinės užsakymų knygos';

  @override
  String get alphabeticalOrderBooks => 'Abėcėlės tvarka knygos';

  @override
  String get home => 'Pradžia';

  @override
  String get addBookmarkTooltip => 'Pridėti žymę';

  @override
  String get chooseBookChapter => 'Pasirinkite knygą ir skyrių';

  @override
  String get chooseVerse => 'Pasirinkite eilėraštį';

  @override
  String get bookChapterQuickNavigation => 'Greita knygų ir skyrių naršymas';

  @override
  String get verseQuickNavigation => 'Eilėraščių greita navigacija';

  @override
  String get backToBooks => 'Atgal į knygas';

  @override
  String get selectBookTitle => 'Pasirinkite Knyga';

  @override
  String selectChapterTitle(Object bookName) {
    return 'Pasirinkite skyrių ($bookName)';
  }

  @override
  String chapterSelectionLabel(Object chapter) {
    return 'Skyrius $chapter';
  }

  @override
  String verseSelectionLabel(Object verse) {
    return 'Eilėraštis $verse';
  }

  @override
  String fullChapterReference(Object bookName, Object chapter) {
    return 'Visas skyrius: $bookName $chapter';
  }

  @override
  String get memorizeHint => 'Įsimink';

  @override
  String get addNoteHint => 'Pridėti pastabą...';

  @override
  String get languageSearchHint => 'Ieškoti kalbų';

  @override
  String get languageModuleInstalled => 'Įdiegta';

  @override
  String get languageModulePending => 'Laukiama mašininio vertimo';

  @override
  String get languageNoMatches => 'Nėra jūsų paiešką atitinkančių kalbų.';

  @override
  String get languageCatalogDescription =>
      'Kalbos, pažymėtos kaip įdiegtos, veikia neprisijungus. Kitos kalbos bus pridėtos kaip mašininio vertimo moduliai.';

  @override
  String get saveBookmarkSemantics => 'Išsaugoti žymę';

  @override
  String get couldNotLoadChapter =>
      'Nepavyko įkelti skyriaus. Bandykite dar kartą.';

  @override
  String get couldNotLoadChapters =>
      'Nepavyko įkelti skyrių. Bandykite dar kartą.';

  @override
  String verseWithText(Object text, Object verse) {
    return 'Eilėraštis $verse: $text';
  }

  @override
  String accentSwatchSemantics(Object name, Object selected) {
    return '$name akcento spalva$selected';
  }

  @override
  String get oldTestament => 'Senasis Testamentas';

  @override
  String get newTestament => 'Naujasis Testamentas';

  @override
  String get deuterocanonApocrypha => 'Deuterokanonas / Apokrifai';
}
