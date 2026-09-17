// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Basque (`eu`).
class AppLocalizationsEu extends AppLocalizations {
  AppLocalizationsEu([String locale = 'eu']) : super(locale);

  @override
  String get settingsTitle => 'Ezarpenak';

  @override
  String get languageSection => 'Hizkuntza';

  @override
  String get useSystemLanguage => 'Erabili sistemaren hizkuntza';

  @override
  String get useSystemLanguageSubtitle =>
      'Lehenespenez, bat etorri gailuaren hizkuntzarekin.';

  @override
  String get currentLanguage => 'Uneko hizkuntza';

  @override
  String get appLanguage => 'Aplikazioaren hizkuntza';

  @override
  String get chooseLanguage => 'Aukeratu hizkuntza';

  @override
  String get theme => 'Gaia';

  @override
  String get appearance => 'Itxura';

  @override
  String get textSection => 'Testua';

  @override
  String get readingFormatSection => 'Irakurtzeko formatua';

  @override
  String get displaySection => 'Bistaratzea';

  @override
  String get verseNumbers => 'Bertso-zenbakiak';

  @override
  String get sectionHeadings => 'Ataleko izenburuak';

  @override
  String get redLetterText => 'Letra gorriko testua';

  @override
  String get selectABook => 'Hautatu liburu bat';

  @override
  String get traditionalOrder => 'Ohiko ordena';

  @override
  String get alphabeticalOrder => 'Ordena alfabetikoa';

  @override
  String get bookmarks => 'Laster-markak';

  @override
  String get retry => 'Saiatu berriro';

  @override
  String get chooseTheme => 'Aukeratu gaia';

  @override
  String get customisableThemes => 'Pertsonaliza daitezkeen gaiak';

  @override
  String get customisableThemesSubtitle =>
      'Ukitu txartel bat azentu-kolorea aukeratzeko. \"Classic White\" gaiak Argi, Ilun eta Sistema moduak ere onartzen ditu.';

  @override
  String get setThemes => 'EZARRI GAIAK';

  @override
  String get setThemesSubtitle =>
      'Paleta finko eta eskuz sortuak. Ez da pertsonalizaziorik behar; ukitu aplikatzeko.';

  @override
  String get deleteBookmarkQuestion => 'Ezabatu laster-marka?';

  @override
  String get cancel => 'Utzi';

  @override
  String get delete => 'Ezabatu';

  @override
  String get bookmarkSaved => 'Laster-marka gorde da';

  @override
  String get couldNotDeleteBookmark => 'Ezin izan da laster-marka ezabatu.';

  @override
  String couldNotNavigate(Object reference) {
    return 'Ezin izan da $reference helbidera nabigatu.';
  }

  @override
  String get pageNotFound => 'Ez da orria aurkitu';

  @override
  String noRouteDefined(Object routeName) {
    return 'Ez dago \"$routeName\" ibilbiderik definituta';
  }

  @override
  String get english => 'Ingelesa';

  @override
  String get spanish => 'Español';

  @override
  String get systemDefault => 'Sistemaren lehenetsia';

  @override
  String get languageStatusEnglish => 'Ingelesezko ordezkoa aktibo';

  @override
  String get languageStatusSystem => 'Sistemaren hizkuntza erabiltzen';

  @override
  String languageStatusSelected(Object languageName) {
    return 'Hautatutako hizkuntza: $languageName';
  }

  @override
  String get themeLabel => 'Gaia';

  @override
  String get notFoundTitle => 'Ez da orria aurkitu';

  @override
  String get loadingCyberBible => 'Cyber Bible kargatzen...';

  @override
  String get couldNotOpenDatabase =>
      'Ezin izan da Bibliaren datu-basea ireki. Saiatu berriro.';

  @override
  String get homeTagline => 'Doako eta kode irekiko Biblia ikasteko aplikazioa';

  @override
  String get readTheBible => 'Irakurri Biblia';

  @override
  String get settingsTooltip => 'Ezarpenak';

  @override
  String get themeChoose => 'Aukeratu gaia';

  @override
  String get customThemes => 'Pertsonaliza daitezkeen gaiak';

  @override
  String get customThemesSubtitle =>
      'Ukitu txartel bat azentu-kolorea aukeratzeko. \"Classic White\" gaiak Argi, Ilun eta Sistema moduak ere onartzen ditu.';

  @override
  String get setThemesLabel => 'EZARRI GAIAK';

  @override
  String get deleteBookmarkDialog => 'Ezabatu laster-marka?';

  @override
  String removeBookmarkMessage(Object details, Object reference) {
    return 'Kendu \"$reference\"$details?\n\nEzin da desegin.';
  }

  @override
  String get couldNotLoadBookmarks =>
      'Ezin izan dira laster-markak kargatu. Saiatu berriro.';

  @override
  String get bookmarkSavedMessage => 'Laster-marka gorde da';

  @override
  String get couldNotSaveBookmark => 'Ezin izan da laster-marka gorde.';

  @override
  String get noBookmarksMatchFilter =>
      'Ez dago iragazki honekin bat datorren laster-markarik.';

  @override
  String get clearFilter => 'Garbitu iragazkia';

  @override
  String get traditionalOrderLabel => 'Ohiko ordena';

  @override
  String get alphabeticalOrderLabel => 'Ordena alfabetikoa';

  @override
  String get bookmarksTabLabel => 'Laster-markak';

  @override
  String get fullChapter => 'Kapitulu osoa';

  @override
  String get addBookmark => 'Gehitu laster-marka';

  @override
  String get selectVerse => 'Hautatu bertsoa';

  @override
  String get labelOptional => 'Etiketa (aukerakoa)';

  @override
  String get notesOptional => 'Oharrak (aukerakoak)';

  @override
  String get save => 'Gorde';

  @override
  String get goToVerse => 'Joan bertsora';

  @override
  String verseTitle(Object verse) {
    return '$verse. bertsoa';
  }

  @override
  String chapterTitle(Object chapter) {
    return '$chapter. kapitulua';
  }

  @override
  String get switchToFullChapter => 'Aldatu kapitulu osoko laster-markara';

  @override
  String get bookmarkSheetCancel => 'Utzi, itxi laster-marken orria';

  @override
  String get pickCustomAccent => 'Aukeratu azentu pertsonalizatua';

  @override
  String get apply => 'Aplikatu';

  @override
  String get custom => 'Pertsonalizatua';

  @override
  String get brightnessSystem => 'Sistema';

  @override
  String get brightnessLight => 'Argia';

  @override
  String get brightnessDark => 'Iluna';

  @override
  String get selectBook => 'Hautatu liburu bat';

  @override
  String get bookmarkFilterAll => 'Guztiak';

  @override
  String get bookmarkFilterUnlabeled => 'Etiketarik gabe';

  @override
  String get bookmarkSortRecent => 'Berrienak lehenengo';

  @override
  String get bookmarkSortCanonical => 'Ordena kanonikoa';

  @override
  String get chapterRetry => 'Saiatu berriro';

  @override
  String get fontSize => 'Letra-tamaina';

  @override
  String fontSizePixels(Object size) {
    return '$size px';
  }

  @override
  String get fontSizeSlider => 'Letra-tamainaren graduatzailea';

  @override
  String get fontSizeSliderHint => 'Irristatu 12tik 28ra doitzeko';

  @override
  String get fontPreview =>
      '\"Hasieran, Jainkoak zeruak eta lurra sortu zituen.\" — Has 1:1';

  @override
  String get showVerseNumbersSubtitle =>
      'Erakutsi bertso-zenbakien goi-indizeak irakurketa-pantailan.';

  @override
  String get showSectionHeadingsSubtitle =>
      'Erakutsi atalen eta Salmoen izenburuak pasarte artean.';

  @override
  String get wordsOfChristSubtitle =>
      'Erakutsi Jesusen hitzak gorriz. Desgaitu testu-kolore bakarra erabiltzeko.';

  @override
  String get verseFormatTitle => 'Bertso-formatua';

  @override
  String get verseFormatSubtitle =>
      'Aukeratu nola antolatzen den Eskriturako testua.';

  @override
  String get paragraphMode => 'Paragrafoa';

  @override
  String get verseListMode => 'Bertso-zerrenda';

  @override
  String get paragraphModeTooltip => 'Paragrafo modua';

  @override
  String get verseListModeTooltip => 'Bertso-zerrenda modua';

  @override
  String get paragraphModeDescription =>
      'Testua jarraian doa, koska duten paragrafoekin, inprimatutako Biblia batean bezala.';

  @override
  String get verseListModeDescription =>
      'Eskriturako paragrafo bakoitza bere lerroan hasten da, bertso-taldeak erraz ikusteko.';

  @override
  String get deleteBookmarkTooltip => 'Ezabatu laster-marka';

  @override
  String deleteBookmarkSemantics(Object reference) {
    return 'Ezabatu $reference laster-marka';
  }

  @override
  String sortBookmarksTooltip(Object sortOrder) {
    return 'Ordenatu: $sortOrder';
  }

  @override
  String get noBookmarksYet => 'Oraindik ez dago laster-markarik.';

  @override
  String get noBookmarksYetHint =>
      'Irakurtzen ari zarela, ukitu laster-markaren ikonoa kokapen bat gordetzeko.';

  @override
  String bookmarkReferenceNavigationError(Object reference) {
    return 'Ezin izan da $reference helbidera nabigatu.';
  }

  @override
  String themeCardSemantics(Object description, Object name, Object selected) {
    return '$name gaia$selected. $description';
  }

  @override
  String get selectedThemeSuffix => ', une honetan hautatua';

  @override
  String get customisableAccentDescription =>
      'Azentu-kolore pertsonalizagarria.';

  @override
  String get fixedPaletteDescription => 'Paleta finkoa.';

  @override
  String accentColourTitle(Object themeName) {
    return 'Azentu-kolorea — $themeName';
  }

  @override
  String get brightnessMode => 'DISTIRA MODUA';

  @override
  String get lightMode => 'Modu argia';

  @override
  String get followSystemMode => 'Jarraitu sistemaren modua';

  @override
  String get darkMode => 'Modu iluna';

  @override
  String get customColourPicker => 'Kolore pertsonalizatuaren hautatzailea';

  @override
  String get customColourTooltip => 'Kolore pertsonalizatua…';

  @override
  String get couldNotLoadBooks =>
      'Ezin izan da liburuen zerrenda kargatu. Saiatu berriro.';

  @override
  String chapterLabel(Object chapter) {
    return '$chapter. kapitulua';
  }

  @override
  String get traditionalOrderBooks => 'Ohiko ordenako liburuak';

  @override
  String get alphabeticalOrderBooks => 'Ordena alfabetikoko liburuak';

  @override
  String get home => 'Hasiera';

  @override
  String get addBookmarkTooltip => 'Gehitu laster-marka';

  @override
  String get chooseBookChapter => 'Aukeratu liburua eta kapitulua';

  @override
  String get chooseVerse => 'Aukeratu bertsoa';

  @override
  String get bookChapterQuickNavigation =>
      'Liburu eta kapituluen nabigazio azkarra';

  @override
  String get verseQuickNavigation => 'Bertsoen nabigazio azkarra';

  @override
  String get backToBooks => 'Itzuli liburuetara';

  @override
  String get selectBookTitle => 'Hautatu liburua';

  @override
  String selectChapterTitle(Object bookName) {
    return 'Hautatu kapitulua ($bookName)';
  }

  @override
  String chapterSelectionLabel(Object chapter) {
    return '$chapter. kapitulua';
  }

  @override
  String verseSelectionLabel(Object verse) {
    return '$verse. bertsoa';
  }

  @override
  String fullChapterReference(Object bookName, Object chapter) {
    return 'Kapitulu osoa: $bookName $chapter';
  }

  @override
  String get memorizeHint => 'Memorizatu';

  @override
  String get addNoteHint => 'Gehitu ohar bat...';

  @override
  String get languageSearchHint => 'Bilatu hizkuntzak';

  @override
  String get languageModuleInstalled => 'Instalatuta';

  @override
  String get languageModulePending => 'Itzulpen automatikoa zain';

  @override
  String get languageNoMatches =>
      'Ez dago zure bilaketarekin bat datorren hizkuntzarik.';

  @override
  String get languageCatalogDescription =>
      'Instalatutako hizkuntzek lineaz kanpo funtzionatzen dute. Beste hizkuntza batzuk itzulpen automatikoko modulu gisa gehituko dira.';

  @override
  String get saveBookmarkSemantics => 'Gorde laster-marka';

  @override
  String get couldNotLoadChapter =>
      'Ezin izan da kapitulua kargatu. Saiatu berriro.';

  @override
  String get couldNotLoadChapters =>
      'Ezin izan dira kapituluak kargatu. Saiatu berriro.';

  @override
  String verseWithText(Object text, Object verse) {
    return '$verse. bertsoa: $text';
  }

  @override
  String accentSwatchSemantics(Object name, Object selected) {
    return '$name azentu-kolorea$selected';
  }

  @override
  String get oldTestament => 'Itun Zaharra';

  @override
  String get newTestament => 'Itun Berria';

  @override
  String get deuterocanonApocrypha => 'Deuterokanona / Apokrifoak';
}
