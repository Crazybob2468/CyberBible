// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Hungarian (`hu`).
class AppLocalizationsHu extends AppLocalizations {
  AppLocalizationsHu([String locale = 'hu']) : super(locale);

  @override
  String get settingsTitle => 'Beállítások elemre';

  @override
  String get languageSection => 'Nyelv';

  @override
  String get useSystemLanguage => 'Használja a rendszer nyelvét';

  @override
  String get useSystemLanguageSubtitle =>
      'Alapértelmezés szerint igazítsa meg az eszköz nyelvét.';

  @override
  String get currentLanguage => 'Jelenlegi nyelv';

  @override
  String get appLanguage => 'Alkalmazás nyelve';

  @override
  String get chooseLanguage => 'Válasszon nyelvet';

  @override
  String get theme => 'Téma';

  @override
  String get appearance => 'Megjelenés';

  @override
  String get textSection => 'Szöveg';

  @override
  String get readingFormatSection => 'Olvasási formátum';

  @override
  String get displaySection => 'Kijelző';

  @override
  String get verseNumbers => 'Versszámok';

  @override
  String get sectionHeadings => 'Szakaszcímek';

  @override
  String get redLetterText => 'Piros betűs szöveg';

  @override
  String get selectABook => 'Válasszon egy Könyvet';

  @override
  String get traditionalOrder => 'Hagyományos rend';

  @override
  String get alphabeticalOrder => 'ABC sorrendben';

  @override
  String get bookmarks => 'Könyvjelzők';

  @override
  String get retry => 'Próbálja újra';

  @override
  String get chooseTheme => 'Válassza a Témát';

  @override
  String get customisableThemes => 'Testreszabható témák';

  @override
  String get customisableThemesSubtitle =>
      'Tap a card to choose an accent colour. A \"Classic White\" támogatja a Light, Dark és a System módokat is.';

  @override
  String get setThemes => 'TÉMÁK BEÁLLÍTÁSA';

  @override
  String get setThemesSubtitle =>
      'Fix, kézzel készített paletták. Nincs szükség testreszabásra – csak érintse meg az alkalmazáshoz.';

  @override
  String get deleteBookmarkQuestion => 'Törli a könyvjelzőt?';

  @override
  String get cancel => 'Mégse';

  @override
  String get delete => 'Töröl';

  @override
  String get bookmarkSaved => 'Könyvjelző mentve';

  @override
  String get couldNotDeleteBookmark => 'Nem sikerült törölni a könyvjelzőt.';

  @override
  String couldNotNavigate(Object reference) {
    return 'Nem sikerült navigálni ide: $reference.';
  }

  @override
  String get pageNotFound => 'Az oldal nem található';

  @override
  String noRouteDefined(Object routeName) {
    return 'Nincs útvonal meghatározva a következőhöz: \"$routeName\"';
  }

  @override
  String get english => 'angol';

  @override
  String get spanish => 'Español';

  @override
  String get systemDefault => 'Rendszer alapértelmezett';

  @override
  String get languageStatusEnglish => 'Angol tartalék aktív';

  @override
  String get languageStatusSystem => 'Rendszernyelv használata';

  @override
  String languageStatusSelected(Object languageName) {
    return 'Választott nyelv: $languageName';
  }

  @override
  String get themeLabel => 'Téma';

  @override
  String get notFoundTitle => 'Az oldal nem található';

  @override
  String get loadingCyberBible => 'Kiberbiblia betöltése...';

  @override
  String get couldNotOpenDatabase =>
      'Nem sikerült megnyitni a bibliai adatbázist. Kérjük, próbálja újra.';

  @override
  String get homeTagline =>
      'Egy ingyenes és nyílt forráskódú bibliatanulmányozó alkalmazás';

  @override
  String get readTheBible => 'Olvasd a Bibliát';

  @override
  String get settingsTooltip => 'Beállítások elemre';

  @override
  String get themeChoose => 'Válassza a Témát';

  @override
  String get customThemes => 'Testreszabható témák';

  @override
  String get customThemesSubtitle =>
      'Érintse meg a kártyát egy kiemelő szín kiválasztásához. A \"Classic White\" támogatja a Light, Dark és a System módokat is.';

  @override
  String get setThemesLabel => 'TÉMÁK BEÁLLÍTÁSA';

  @override
  String get deleteBookmarkDialog => 'Törli a könyvjelzőt?';

  @override
  String removeBookmarkMessage(Object details, Object reference) {
    return 'Eltávolítja a következőt: \"$reference\"$details?\n\nEzt nem lehet visszavonni.';
  }

  @override
  String get couldNotLoadBookmarks =>
      'Nem sikerült betölteni a könyvjelzőket. Kérjük, próbálja újra.';

  @override
  String get bookmarkSavedMessage => 'Könyvjelző mentve';

  @override
  String get couldNotSaveBookmark => 'Nem sikerült menteni a könyvjelzőt.';

  @override
  String get noBookmarksMatchFilter =>
      'Egyetlen könyvjelző sem felel meg ennek a szűrőnek.';

  @override
  String get clearFilter => 'Tiszta szűrő';

  @override
  String get traditionalOrderLabel => 'Hagyományos rend';

  @override
  String get alphabeticalOrderLabel => 'ABC sorrendben';

  @override
  String get bookmarksTabLabel => 'Könyvjelzők';

  @override
  String get fullChapter => 'Teljes fejezet';

  @override
  String get addBookmark => 'Könyvjelző hozzáadása';

  @override
  String get selectVerse => 'Válassza a Verse lehetőséget';

  @override
  String get labelOptional => 'Címke (nem kötelező)';

  @override
  String get notesOptional => 'Megjegyzések (opcionális)';

  @override
  String get save => 'Megtakarítás';

  @override
  String get goToVerse => 'Ugrás a Vershez';

  @override
  String verseTitle(Object verse) {
    return 'Verse $verse';
  }

  @override
  String chapterTitle(Object chapter) {
    return 'fejezet $chapter';
  }

  @override
  String get switchToFullChapter => 'Váltás a teljes fejezet könyvjelzőjére';

  @override
  String get bookmarkSheetCancel => 'Mégse, könyvjelzőlap bezárása';

  @override
  String get pickCustomAccent => 'Válasszon egyéni akcentust';

  @override
  String get apply => 'Alkalmazni';

  @override
  String get custom => 'Szokás';

  @override
  String get brightnessSystem => 'Rendszer';

  @override
  String get brightnessLight => 'Fény';

  @override
  String get brightnessDark => 'Sötét';

  @override
  String get selectBook => 'Válasszon egy Könyvet';

  @override
  String get bookmarkFilterAll => 'Minden';

  @override
  String get bookmarkFilterUnlabeled => 'Címkézetlen';

  @override
  String get bookmarkSortRecent => 'Legutóbbi első';

  @override
  String get bookmarkSortCanonical => 'Kanonikus rend';

  @override
  String get chapterRetry => 'Próbálja újra';

  @override
  String get fontSize => 'Betűméret';

  @override
  String fontSizePixels(Object size) {
    return '$size px';
  }

  @override
  String get fontSizeSlider => 'Betűméret csúszka';

  @override
  String get fontSizeSliderHint => 'Csúsztassa a 12 és 28 közötti beállításhoz';

  @override
  String get fontPreview =>
      '\"Kezdetben teremtette Isten az eget és a földet.\" – Gen 1:1';

  @override
  String get showVerseNumbersSubtitle =>
      'Versszám felső indexének megjelenítése az olvasási képernyőn.';

  @override
  String get showSectionHeadingsSubtitle =>
      'A szakaszok és a zsoltárok címsorainak megjelenítése a részek között.';

  @override
  String get wordsOfChristSubtitle =>
      'Mutasd pirossal Jézus szavait! Letiltás egyetlen szövegszín esetén.';

  @override
  String get verseFormatTitle => 'Vers formátum';

  @override
  String get verseFormatSubtitle =>
      'Válassza ki a szentírás szövegének elrendezését.';

  @override
  String get paragraphMode => 'Bekezdés';

  @override
  String get verseListMode => 'Verslista';

  @override
  String get paragraphModeTooltip => 'Bekezdésmód';

  @override
  String get verseListModeTooltip => 'Verslista mód';

  @override
  String get paragraphModeDescription =>
      'A szöveg folyamatosan folyik behúzott bekezdésekkel, akár egy nyomtatott Biblia.';

  @override
  String get verseListModeDescription =>
      'Minden szentírási bekezdés a saját sorával kezdődik, így a verscsoportok könnyen felismerhetők.';

  @override
  String get deleteBookmarkTooltip => 'Könyvjelző törlése';

  @override
  String deleteBookmarkSemantics(Object reference) {
    return '$reference könyvjelző törlése';
  }

  @override
  String sortBookmarksTooltip(Object sortOrder) {
    return 'Rendezés: $sortOrder';
  }

  @override
  String get noBookmarksYet => 'Még nincsenek könyvjelzők.';

  @override
  String get noBookmarksYetHint =>
      'Érintse meg a könyvjelző ikont olvasás közben egy hely mentéséhez.';

  @override
  String bookmarkReferenceNavigationError(Object reference) {
    return 'Nem sikerült navigálni ide: $reference.';
  }

  @override
  String themeCardSemantics(Object description, Object name, Object selected) {
    return '$name téma$selected. $description';
  }

  @override
  String get selectedThemeSuffix => ', jelenleg kiválasztva';

  @override
  String get customisableAccentDescription => 'Testreszabható kiemelő szín.';

  @override
  String get fixedPaletteDescription => 'Fix paletta.';

  @override
  String accentColourTitle(Object themeName) {
    return 'Kiemelt szín — $themeName';
  }

  @override
  String get brightnessMode => 'FÉNYERŐ MÓD';

  @override
  String get lightMode => 'Fény mód';

  @override
  String get followSystemMode => 'Kövesse a rendszermódot';

  @override
  String get darkMode => 'Sötét mód';

  @override
  String get customColourPicker => 'Egyedi színválasztó';

  @override
  String get customColourTooltip => 'Egyedi szín…';

  @override
  String get couldNotLoadBooks =>
      'Nem sikerült betölteni a könyvlistát. Kérjük, próbálja újra.';

  @override
  String chapterLabel(Object chapter) {
    return 'fejezet $chapter';
  }

  @override
  String get traditionalOrderBooks => 'Hagyományos rendelési könyvek';

  @override
  String get alphabeticalOrderBooks => 'ABC sorrendben';

  @override
  String get home => 'Otthon';

  @override
  String get addBookmarkTooltip => 'Könyvjelző hozzáadása';

  @override
  String get chooseBookChapter => 'Válasszon könyvet és fejezetet';

  @override
  String get chooseVerse => 'Válassz verset';

  @override
  String get bookChapterQuickNavigation => 'Könyv és fejezet gyors navigáció';

  @override
  String get verseQuickNavigation => 'Vers gyors navigáció';

  @override
  String get backToBooks => 'Vissza a könyvekhez';

  @override
  String get selectBookTitle => 'Válassza a Könyv lehetőséget';

  @override
  String selectChapterTitle(Object bookName) {
    return 'Fejezet kiválasztása ($bookName)';
  }

  @override
  String chapterSelectionLabel(Object chapter) {
    return 'fejezet $chapter';
  }

  @override
  String verseSelectionLabel(Object verse) {
    return 'Verse $verse';
  }

  @override
  String fullChapterReference(Object bookName, Object chapter) {
    return 'Teljes fejezet: $bookName $chapter';
  }

  @override
  String get memorizeHint => 'Memorizálni';

  @override
  String get addNoteHint => 'Megjegyzés hozzáadása...';

  @override
  String get languageSearchHint => 'Nyelvek keresése';

  @override
  String get languageModuleInstalled => 'Telepítve';

  @override
  String get languageModulePending => 'Gépi fordítás függőben';

  @override
  String get languageNoMatches => 'Egyetlen nyelv sem felel meg a keresésnek.';

  @override
  String get languageCatalogDescription =>
      'A telepítettként megjelölt nyelvek offline módban működnek. Más nyelvek gépi fordítású modulként kerülnek hozzáadásra.';

  @override
  String get saveBookmarkSemantics => 'Könyvjelző mentése';

  @override
  String get couldNotLoadChapter =>
      'Nem sikerült betölteni a fejezetet. Kérjük, próbálja újra.';

  @override
  String get couldNotLoadChapters =>
      'Nem sikerült betölteni a fejezeteket. Kérjük, próbálja újra.';

  @override
  String verseWithText(Object text, Object verse) {
    return '$verse vers: $text';
  }

  @override
  String accentSwatchSemantics(Object name, Object selected) {
    return '$name kiemelő szín$selected';
  }

  @override
  String get oldTestament => 'Ószövetség';

  @override
  String get newTestament => 'újszövetség';

  @override
  String get deuterocanonApocrypha => 'Deuterokanon / Apokrif';
}
