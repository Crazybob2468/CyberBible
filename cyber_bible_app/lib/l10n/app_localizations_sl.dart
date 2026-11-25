// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Slovenian (`sl`).
class AppLocalizationsSl extends AppLocalizations {
  AppLocalizationsSl([String locale = 'sl']) : super(locale);

  @override
  String get settingsTitle => 'nastavitve';

  @override
  String get languageSection => 'Jezik';

  @override
  String get useSystemLanguage => 'Uporabite sistemski jezik';

  @override
  String get useSystemLanguageSubtitle =>
      'Privzeto se ujema z jezikom naprave.';

  @override
  String get currentLanguage => 'Trenutni jezik';

  @override
  String get appLanguage => 'Jezik aplikacije';

  @override
  String get chooseLanguage => 'Izberite jezik';

  @override
  String get theme => 'Tema';

  @override
  String get appearance => 'Videz';

  @override
  String get textSection => 'Besedilo';

  @override
  String get readingFormatSection => 'Format branja';

  @override
  String get displaySection => 'Zaslon';

  @override
  String get verseNumbers => 'Številke verzov';

  @override
  String get sectionHeadings => 'Naslovi razdelkov';

  @override
  String get redLetterText => 'Besedilo z rdečimi črkami';

  @override
  String get selectABook => 'Izberite knjigo';

  @override
  String get traditionalOrder => 'Tradicionalni red';

  @override
  String get alphabeticalOrder => 'Abecedni red';

  @override
  String get bookmarks => 'Zaznamki';

  @override
  String get retry => 'Poskusite znova';

  @override
  String get chooseTheme => 'Izberite temo';

  @override
  String get customisableThemes => 'Prilagodljive teme';

  @override
  String get customisableThemesSubtitle =>
      'Tapnite kartico, da izberete barvo poudarka. \"Classic White\" podpira tudi načine Light, Dark in System.';

  @override
  String get setThemes => 'NASTAVITE TEME';

  @override
  String get setThemesSubtitle =>
      'Fiksne, ročno izdelane palete. Prilagajanje ni potrebno – samo tapnite za uporabo.';

  @override
  String get deleteBookmarkQuestion => 'Želite izbrisati zaznamek?';

  @override
  String get cancel => 'Prekliči';

  @override
  String get delete => 'Izbriši';

  @override
  String get bookmarkSaved => 'Zaznamek shranjen';

  @override
  String get couldNotDeleteBookmark => 'Zaznamka ni bilo mogoče izbrisati.';

  @override
  String couldNotNavigate(Object reference) {
    return 'Ni bilo mogoče krmariti do $reference.';
  }

  @override
  String get pageNotFound => 'Stran ni najdena';

  @override
  String noRouteDefined(Object routeName) {
    return 'Ni določene poti za \"$routeName\"';
  }

  @override
  String get english => 'angleščina';

  @override
  String get spanish => 'Español';

  @override
  String get systemDefault => 'Sistemsko privzeto';

  @override
  String get languageStatusEnglish =>
      'Nadomestna različica angleščine je aktivna';

  @override
  String get languageStatusSystem => 'Uporaba sistemskega jezika';

  @override
  String languageStatusSelected(Object languageName) {
    return 'Izbrani jezik: $languageName';
  }

  @override
  String get themeLabel => 'Tema';

  @override
  String get notFoundTitle => 'Stran ni najdena';

  @override
  String get loadingCyberBible => 'Nalaganje Cyber ​​Bible ...';

  @override
  String get couldNotOpenDatabase =>
      'Podatkovne zbirke Biblije ni bilo mogoče odpreti. prosim poskusite ponovno';

  @override
  String get homeTagline =>
      'Brezplačna in odprtokodna aplikacija za preučevanje Svetega pisma';

  @override
  String get readTheBible => 'Preberi Sveto pismo';

  @override
  String get settingsTooltip => 'nastavitve';

  @override
  String get themeChoose => 'Izberite temo';

  @override
  String get customThemes => 'Prilagodljive teme';

  @override
  String get customThemesSubtitle =>
      'Tapnite kartico, da izberete barvo poudarka. \"Classic White\" podpira tudi načine Light, Dark in System.';

  @override
  String get setThemesLabel => 'NASTAVITE TEME';

  @override
  String get deleteBookmarkDialog => 'Želite izbrisati zaznamek?';

  @override
  String removeBookmarkMessage(Object details, Object reference) {
    return 'Odstraniti \"$reference\"$details?\n\nTega ni mogoče razveljaviti.';
  }

  @override
  String get couldNotLoadBookmarks =>
      'Zaznamkov ni bilo mogoče naložiti. prosim poskusite ponovno';

  @override
  String get bookmarkSavedMessage => 'Zaznamek shranjen';

  @override
  String get couldNotSaveBookmark => 'Zaznamka ni bilo mogoče shraniti.';

  @override
  String get noBookmarksMatchFilter =>
      'Noben zaznamek se ne ujema s tem filtrom.';

  @override
  String get clearFilter => 'Počisti filter';

  @override
  String get traditionalOrderLabel => 'Tradicionalni red';

  @override
  String get alphabeticalOrderLabel => 'Abecedni red';

  @override
  String get bookmarksTabLabel => 'Zaznamki';

  @override
  String get fullChapter => 'Celotno poglavje';

  @override
  String get addBookmark => 'Dodaj zaznamek';

  @override
  String get selectVerse => 'Izberite verz';

  @override
  String get labelOptional => 'Oznaka (neobvezno)';

  @override
  String get notesOptional => 'Opombe (neobvezno)';

  @override
  String get save => 'Shrani';

  @override
  String get goToVerse => 'Pojdite na Verse';

  @override
  String verseTitle(Object verse) {
    return 'Verz $verse';
  }

  @override
  String chapterTitle(Object chapter) {
    return 'Poglavje $chapter';
  }

  @override
  String get switchToFullChapter => 'Preklopi na zaznamek celotnega poglavja';

  @override
  String get bookmarkSheetCancel => 'Prekliči, zapri list z zaznamki';

  @override
  String get pickCustomAccent => 'Izberite naglas po meri';

  @override
  String get apply => 'Prijavite se';

  @override
  String get custom => 'Po meri';

  @override
  String get brightnessSystem => 'Sistem';

  @override
  String get brightnessLight => 'Svetloba';

  @override
  String get brightnessDark => 'Temno';

  @override
  String get selectBook => 'Izberite knjigo';

  @override
  String get bookmarkFilterAll => 'Vse';

  @override
  String get bookmarkFilterUnlabeled => 'Neoznačeno';

  @override
  String get bookmarkSortRecent => 'Najprej zadnje';

  @override
  String get bookmarkSortCanonical => 'Kanonični red';

  @override
  String get chapterRetry => 'Poskusite znova';

  @override
  String get fontSize => 'Velikost pisave';

  @override
  String fontSizePixels(Object size) {
    return '$size px';
  }

  @override
  String get fontSizeSlider => 'Drsnik za velikost pisave';

  @override
  String get fontSizeSliderHint => 'Povlecite, da prilagodite od 12 do 28';

  @override
  String get fontPreview =>
      '\"V začetku je Bog ustvaril nebo in zemljo.\" — 1 Mz 1:1';

  @override
  String get showVerseNumbersSubtitle =>
      'Pokaži nadnapise številk verzov na zaslonu za branje.';

  @override
  String get showSectionHeadingsSubtitle =>
      'Pokažite naslove razdelkov in psalmov med odlomki.';

  @override
  String get wordsOfChristSubtitle =>
      'Pokaži Jezusove besede z rdečo barvo. Onemogoči za eno barvo besedila.';

  @override
  String get verseFormatTitle => 'Oblika verza';

  @override
  String get verseFormatSubtitle =>
      'Izberite, kako bo svetopisemsko besedilo postavljeno.';

  @override
  String get paragraphMode => 'odstavek';

  @override
  String get verseListMode => 'Seznam verzov';

  @override
  String get paragraphModeTooltip => 'Način odstavka';

  @override
  String get verseListModeTooltip => 'Način seznama verzov';

  @override
  String get paragraphModeDescription =>
      'Besedilo teče neprekinjeno z zamaknjenimi odstavki, kot natisnjeno Sveto pismo.';

  @override
  String get verseListModeDescription =>
      'Vsak odstavek iz svetih spisov se začne v svoji vrstici, zaradi česar je skupine verzov enostavno opaziti.';

  @override
  String get deleteBookmarkTooltip => 'Izbriši zaznamek';

  @override
  String deleteBookmarkSemantics(Object reference) {
    return 'Izbriši zaznamek $reference';
  }

  @override
  String sortBookmarksTooltip(Object sortOrder) {
    return 'Razvrsti: $sortOrder';
  }

  @override
  String get noBookmarksYet => 'Zaznamkov še ni.';

  @override
  String get noBookmarksYetHint =>
      'Med branjem tapnite ikono zaznamka, da shranite lokacijo.';

  @override
  String bookmarkReferenceNavigationError(Object reference) {
    return 'Ni bilo mogoče krmariti do $reference.';
  }

  @override
  String themeCardSemantics(Object description, Object name, Object selected) {
    return '$name tema$selected. $description';
  }

  @override
  String get selectedThemeSuffix => ', trenutno izbrano';

  @override
  String get customisableAccentDescription => 'Prilagodljiva poudarjena barva.';

  @override
  String get fixedPaletteDescription => 'Fiksna paleta.';

  @override
  String accentColourTitle(Object themeName) {
    return 'Poudarjena barva — $themeName';
  }

  @override
  String get brightnessMode => 'NAČIN SVETLOSTI';

  @override
  String get lightMode => 'Svetlobni način';

  @override
  String get followSystemMode => 'Sledite sistemskemu načinu';

  @override
  String get darkMode => 'Temni način';

  @override
  String get customColourPicker => 'Izbirnik barv po meri';

  @override
  String get customColourTooltip => 'Barva po meri…';

  @override
  String get couldNotLoadBooks =>
      'Ni bilo mogoče naložiti seznama knjig. prosim poskusite ponovno';

  @override
  String chapterLabel(Object chapter) {
    return 'Poglavje $chapter';
  }

  @override
  String get traditionalOrderBooks => 'Tradicionalne knjige naročil';

  @override
  String get alphabeticalOrderBooks => 'Knjige po abecednem redu';

  @override
  String get home => 'domov';

  @override
  String get addBookmarkTooltip => 'Dodaj zaznamek';

  @override
  String get chooseBookChapter => 'Izberite knjigo in poglavje';

  @override
  String get chooseVerse => 'Izberi verz';

  @override
  String get bookChapterQuickNavigation =>
      'Hitra navigacija po knjigah in poglavjih';

  @override
  String get verseQuickNavigation => 'Verzi hitra navigacija';

  @override
  String get backToBooks => 'Nazaj k knjigam';

  @override
  String get selectBookTitle => 'Izberite Knjiga';

  @override
  String selectChapterTitle(Object bookName) {
    return 'Izberite poglavje ($bookName)';
  }

  @override
  String chapterSelectionLabel(Object chapter) {
    return 'Poglavje $chapter';
  }

  @override
  String verseSelectionLabel(Object verse) {
    return 'Verz $verse';
  }

  @override
  String fullChapterReference(Object bookName, Object chapter) {
    return 'Celotno poglavje: $bookName $chapter';
  }

  @override
  String get memorizeHint => 'Zapomni si';

  @override
  String get addNoteHint => 'Dodaj opombo ...';

  @override
  String get languageSearchHint => 'Iskanje jezikov';

  @override
  String get languageModuleInstalled => 'Nameščeno';

  @override
  String get languageModulePending => 'Strojni prevod je v teku';

  @override
  String get languageNoMatches => 'Noben jezik ne ustreza vašemu iskanju.';

  @override
  String get languageCatalogDescription =>
      'Jeziki, označeni kot nameščeni, delujejo brez povezave. Drugi jeziki bodo dodani kot strojno prevedeni moduli.';

  @override
  String get saveBookmarkSemantics => 'Shrani zaznamek';

  @override
  String get couldNotLoadChapter =>
      'Poglavja ni bilo mogoče naložiti. prosim poskusite ponovno';

  @override
  String get couldNotLoadChapters =>
      'Poglavij ni bilo mogoče naložiti. prosim poskusite ponovno';

  @override
  String verseWithText(Object text, Object verse) {
    return 'Verz $verse: $text';
  }

  @override
  String accentSwatchSemantics(Object name, Object selected) {
    return '$name poudarjena barva$selected';
  }

  @override
  String get oldTestament => 'Stara zaveza';

  @override
  String get newTestament => 'Nova zaveza';

  @override
  String get deuterocanonApocrypha => 'Deuterokanon / Apokrif';
}
