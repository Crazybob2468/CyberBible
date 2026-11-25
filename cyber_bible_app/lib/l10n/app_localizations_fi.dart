// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Finnish (`fi`).
class AppLocalizationsFi extends AppLocalizations {
  AppLocalizationsFi([String locale = 'fi']) : super(locale);

  @override
  String get settingsTitle => 'Asetukset';

  @override
  String get languageSection => 'Kieli';

  @override
  String get useSystemLanguage => 'Käytä järjestelmän kieltä';

  @override
  String get useSystemLanguageSubtitle => 'Käytä oletuksena laitteen kieltä.';

  @override
  String get currentLanguage => 'Nykyinen kieli';

  @override
  String get appLanguage => 'Sovelluksen kieli';

  @override
  String get chooseLanguage => 'Valitse kieli';

  @override
  String get theme => 'Teema';

  @override
  String get appearance => 'Ulkoasu';

  @override
  String get textSection => 'Teksti';

  @override
  String get readingFormatSection => 'Lukumuoto';

  @override
  String get displaySection => 'Näyttö';

  @override
  String get verseNumbers => 'Jakenumerot';

  @override
  String get sectionHeadings => 'Osioiden otsikot';

  @override
  String get redLetterText => 'Punakirjaiminen teksti';

  @override
  String get selectABook => 'Valitse kirja';

  @override
  String get traditionalOrder => 'Perinteinen järjestys';

  @override
  String get alphabeticalOrder => 'Aakkosjärjestys';

  @override
  String get bookmarks => 'Kirjanmerkit';

  @override
  String get retry => 'Yritä uudelleen';

  @override
  String get chooseTheme => 'Valitse teema';

  @override
  String get customisableThemes => 'Mukautettavat teemat';

  @override
  String get customisableThemesSubtitle =>
      'Valitse korostusväri napauttamalla korttia. \"Classic White\" tukee myös vaaleaa, tummaa ja järjestelmätilaa.';

  @override
  String get setThemes => 'ASETA TEEMAT';

  @override
  String get setThemesSubtitle =>
      'Kiinteät, käsin tehdyt paletit. Mukautusta ei tarvita - napauta vain ottaaksesi käyttöön.';

  @override
  String get deleteBookmarkQuestion => 'Poistetaanko kirjanmerkki?';

  @override
  String get cancel => 'Peruuta';

  @override
  String get delete => 'Poista';

  @override
  String get bookmarkSaved => 'Kirjanmerkki tallennettu';

  @override
  String get couldNotDeleteBookmark => 'Kirjanmerkkiä ei voitu poistaa.';

  @override
  String couldNotNavigate(Object reference) {
    return 'Kohteeseen $reference ei voitu siirtyä.';
  }

  @override
  String get pageNotFound => 'Sivua ei löytynyt';

  @override
  String noRouteDefined(Object routeName) {
    return 'Reittiä kohteelle \"$routeName\" ei ole määritetty';
  }

  @override
  String get english => 'Englanti';

  @override
  String get spanish => 'Español';

  @override
  String get systemDefault => 'Järjestelmän oletus';

  @override
  String get languageStatusEnglish => 'Englannin varakieli käytössä';

  @override
  String get languageStatusSystem => 'Käytetään järjestelmän kieltä';

  @override
  String languageStatusSelected(Object languageName) {
    return 'Valittu kieli: $languageName';
  }

  @override
  String get themeLabel => 'Teema';

  @override
  String get notFoundTitle => 'Sivua ei löytynyt';

  @override
  String get loadingCyberBible => 'Ladataan Cyber Biblea...';

  @override
  String get couldNotOpenDatabase =>
      'Raamatun tietokantaa ei voitu avata. Yritä uudelleen.';

  @override
  String get homeTagline =>
      'Maksuton ja avoimen lähdekoodin Raamatun opiskelusovellus';

  @override
  String get readTheBible => 'Lue Raamattua';

  @override
  String get settingsTooltip => 'Asetukset';

  @override
  String get themeChoose => 'Valitse teema';

  @override
  String get customThemes => 'Mukautettavat teemat';

  @override
  String get customThemesSubtitle =>
      'Valitse korostusväri napauttamalla korttia. \"Classic White\" tukee myös vaaleaa, tummaa ja järjestelmätilaa.';

  @override
  String get setThemesLabel => 'ASETA TEEMAT';

  @override
  String get deleteBookmarkDialog => 'Poistetaanko kirjanmerkki?';

  @override
  String removeBookmarkMessage(Object details, Object reference) {
    return 'Poistetaanko \"$reference\"$details?\n\nTätä ei voi kumota.';
  }

  @override
  String get couldNotLoadBookmarks =>
      'Kirjanmerkkejä ei voitu ladata. Yritä uudelleen.';

  @override
  String get bookmarkSavedMessage => 'Kirjanmerkki tallennettu';

  @override
  String get couldNotSaveBookmark => 'Kirjanmerkkiä ei voitu tallentaa.';

  @override
  String get noBookmarksMatchFilter =>
      'Yksikään kirjanmerkki ei vastaa tätä suodatinta.';

  @override
  String get clearFilter => 'Tyhjennä suodatin';

  @override
  String get traditionalOrderLabel => 'Perinteinen järjestys';

  @override
  String get alphabeticalOrderLabel => 'Aakkosjärjestys';

  @override
  String get bookmarksTabLabel => 'Kirjanmerkit';

  @override
  String get fullChapter => 'Koko luku';

  @override
  String get addBookmark => 'Lisää kirjanmerkki';

  @override
  String get selectVerse => 'Valitse jae';

  @override
  String get labelOptional => 'Nimiö (valinnainen)';

  @override
  String get notesOptional => 'Muistiinpanot (valinnainen)';

  @override
  String get save => 'Tallenna';

  @override
  String get goToVerse => 'Siirry jakeeseen';

  @override
  String verseTitle(Object verse) {
    return 'Jae $verse';
  }

  @override
  String chapterTitle(Object chapter) {
    return 'Luku $chapter';
  }

  @override
  String get switchToFullChapter => 'Vaihda koko luvun kirjanmerkkiin';

  @override
  String get bookmarkSheetCancel => 'Peruuta, sulje kirjanmerkkipaneeli';

  @override
  String get pickCustomAccent => 'Valitse mukautettu korostusväri';

  @override
  String get apply => 'Käytä';

  @override
  String get custom => 'Mukautettu';

  @override
  String get brightnessSystem => 'Järjestelmä';

  @override
  String get brightnessLight => 'Vaalea';

  @override
  String get brightnessDark => 'Tumma';

  @override
  String get selectBook => 'Valitse kirja';

  @override
  String get bookmarkFilterAll => 'Kaikki';

  @override
  String get bookmarkFilterUnlabeled => 'Nimeämättömät';

  @override
  String get bookmarkSortRecent => 'Uusimmat ensin';

  @override
  String get bookmarkSortCanonical => 'Kanoninen järjestys';

  @override
  String get chapterRetry => 'Yritä uudelleen';

  @override
  String get fontSize => 'Fonttikoko';

  @override
  String fontSizePixels(Object size) {
    return '$size px';
  }

  @override
  String get fontSizeSlider => 'Fonttikoon liukusäädin';

  @override
  String get fontSizeSliderHint => 'Säädä välillä 12-28 pyyhkäisemällä';

  @override
  String get fontPreview =>
      '\"Alussa Jumala loi taivaan ja maan.\" — 1. Moos. 1:1';

  @override
  String get showVerseNumbersSubtitle =>
      'Näytä jakenumeroiden yläindeksit lukuruudussa.';

  @override
  String get showSectionHeadingsSubtitle =>
      'Näytä osioiden ja psalmien otsikot kohtien välissä.';

  @override
  String get wordsOfChristSubtitle =>
      'Näytä Jeesuksen sanat punaisina. Poista käytöstä, jos haluat yhden tekstivärin.';

  @override
  String get verseFormatTitle => 'Jakeen muoto';

  @override
  String get verseFormatSubtitle => 'Valitse, miten raamatunteksti asetellaan.';

  @override
  String get paragraphMode => 'Kappale';

  @override
  String get verseListMode => 'Jae luettelo';

  @override
  String get paragraphModeTooltip => 'Kappaletila';

  @override
  String get verseListModeTooltip => 'Jae-luettelotila';

  @override
  String get paragraphModeDescription =>
      'Teksti jatkuu sisennetyissä kappaleissa kuten painetussa Raamatussa.';

  @override
  String get verseListModeDescription =>
      'Jokainen raamatunkohtien kappale alkaa omalta riviltään, jolloin jeryhmät on helppo havaita.';

  @override
  String get deleteBookmarkTooltip => 'Poista kirjanmerkki';

  @override
  String deleteBookmarkSemantics(Object reference) {
    return 'Poista kirjanmerkki $reference';
  }

  @override
  String sortBookmarksTooltip(Object sortOrder) {
    return 'Lajittele: $sortOrder';
  }

  @override
  String get noBookmarksYet => 'Ei vielä kirjanmerkkejä.';

  @override
  String get noBookmarksYetHint =>
      'Tallenna paikka napauttamalla kirjanmerkkikuvaketta lukiessasi.';

  @override
  String bookmarkReferenceNavigationError(Object reference) {
    return 'Kohteeseen $reference ei voitu siirtyä.';
  }

  @override
  String themeCardSemantics(Object description, Object name, Object selected) {
    return '$name-teema$selected. $description';
  }

  @override
  String get selectedThemeSuffix => ', valittuna';

  @override
  String get customisableAccentDescription => 'Mukautettava korostusväri.';

  @override
  String get fixedPaletteDescription => 'Kiinteä paletti.';

  @override
  String accentColourTitle(Object themeName) {
    return 'Korostusväri — $themeName';
  }

  @override
  String get brightnessMode => 'KIRKKAUSTILA';

  @override
  String get lightMode => 'Vaalea tila';

  @override
  String get followSystemMode => 'Seuraa järjestelmätilaa';

  @override
  String get darkMode => 'Tumma tila';

  @override
  String get customColourPicker => 'Mukautettu värinvalitsin';

  @override
  String get customColourTooltip => 'Mukautettu väri…';

  @override
  String get couldNotLoadBooks =>
      'Kirjaluetteloa ei voitu ladata. Yritä uudelleen.';

  @override
  String chapterLabel(Object chapter) {
    return 'Luku $chapter';
  }

  @override
  String get traditionalOrderBooks => 'Perinteisen järjestyksen kirjat';

  @override
  String get alphabeticalOrderBooks => 'Aakkosjärjestyksen kirjat';

  @override
  String get home => 'Koti';

  @override
  String get addBookmarkTooltip => 'Lisää kirjanmerkki';

  @override
  String get chooseBookChapter => 'Valitse kirja ja luku';

  @override
  String get chooseVerse => 'Valitse jae';

  @override
  String get bookChapterQuickNavigation => 'Kirjan ja luvun pikasiirtyminen';

  @override
  String get verseQuickNavigation => 'Jakeen pikasiirtyminen';

  @override
  String get backToBooks => 'Takaisin kirjoihin';

  @override
  String get selectBookTitle => 'Valitse kirja';

  @override
  String selectChapterTitle(Object bookName) {
    return 'Valitse luku ($bookName)';
  }

  @override
  String chapterSelectionLabel(Object chapter) {
    return 'Luku $chapter';
  }

  @override
  String verseSelectionLabel(Object verse) {
    return 'Jae $verse';
  }

  @override
  String fullChapterReference(Object bookName, Object chapter) {
    return 'Koko luku: $bookName $chapter';
  }

  @override
  String get memorizeHint => 'Opettele ulkoa';

  @override
  String get addNoteHint => 'Lisää muistiinpano...';

  @override
  String get languageSearchHint => 'Hae kieliä';

  @override
  String get languageModuleInstalled => 'Asennettu';

  @override
  String get languageModulePending => 'Konekäännös odottaa';

  @override
  String get languageNoMatches => 'Hakua vastaavia kieliä ei löytynyt.';

  @override
  String get languageCatalogDescription =>
      'Asennetut kielet toimivat ilman verkkoyhteyttä. Muut kielet lisätään konekäännösmoduuleina.';

  @override
  String get saveBookmarkSemantics => 'Tallenna kirjanmerkki';

  @override
  String get couldNotLoadChapter => 'Lukua ei voitu ladata. Yritä uudelleen.';

  @override
  String get couldNotLoadChapters => 'Lukuja ei voitu ladata. Yritä uudelleen.';

  @override
  String verseWithText(Object text, Object verse) {
    return 'Jae $verse: $text';
  }

  @override
  String accentSwatchSemantics(Object name, Object selected) {
    return '$name-korostusväri$selected';
  }

  @override
  String get oldTestament => 'Vanha testamentti';

  @override
  String get newTestament => 'Uusi testamentti';

  @override
  String get deuterocanonApocrypha =>
      'Deuterokanoniset kirjat / apokryfikirjat';
}
