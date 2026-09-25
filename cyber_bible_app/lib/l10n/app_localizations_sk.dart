// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Slovak (`sk`).
class AppLocalizationsSk extends AppLocalizations {
  AppLocalizationsSk([String locale = 'sk']) : super(locale);

  @override
  String get settingsTitle => 'Nastavenia';

  @override
  String get languageSection => 'Jazyk';

  @override
  String get useSystemLanguage => 'Použite systémový jazyk';

  @override
  String get useSystemLanguageSubtitle =>
      'Štandardne sa zhoduje s jazykom zariadenia.';

  @override
  String get currentLanguage => 'Aktuálny jazyk';

  @override
  String get appLanguage => 'Jazyk aplikácie';

  @override
  String get chooseLanguage => 'Vyberte jazyk';

  @override
  String get theme => 'Téma';

  @override
  String get appearance => 'Vzhľad';

  @override
  String get textSection => 'Text';

  @override
  String get readingFormatSection => 'Formát čítania';

  @override
  String get displaySection => 'Displej';

  @override
  String get verseNumbers => 'Čísla veršov';

  @override
  String get sectionHeadings => 'Nadpisy sekcií';

  @override
  String get redLetterText => 'Text Red-Letter';

  @override
  String get selectABook => 'Vyberte knihu';

  @override
  String get traditionalOrder => 'Tradičný poriadok';

  @override
  String get alphabeticalOrder => 'Abecedné poradie';

  @override
  String get bookmarks => 'Záložky';

  @override
  String get retry => 'Skúste to znova';

  @override
  String get chooseTheme => 'Vyberte tému';

  @override
  String get customisableThemes => 'Prispôsobiteľné motívy';

  @override
  String get customisableThemesSubtitle =>
      'Klepnutím na kartu vyberte farbu zvýraznenia. „Classic White“ podporuje aj režimy Light, Dark a System.';

  @override
  String get setThemes => 'NASTAVIŤ TÉMY';

  @override
  String get setThemesSubtitle =>
      'Pevné, ručne vyrábané palety. Nie je potrebné žiadne prispôsobenie – stačí kliknúť a použiť.';

  @override
  String get deleteBookmarkQuestion => 'Odstrániť záložku?';

  @override
  String get cancel => 'Zrušiť';

  @override
  String get delete => 'Odstrániť';

  @override
  String get bookmarkSaved => 'Záložka bola uložená';

  @override
  String get couldNotDeleteBookmark => 'Záložku sa nepodarilo odstrániť.';

  @override
  String couldNotNavigate(Object reference) {
    return 'Nepodarilo sa prejsť na $reference.';
  }

  @override
  String get pageNotFound => 'Stránka sa nenašla';

  @override
  String noRouteDefined(Object routeName) {
    return 'Pre „$routeName“ nie je definovaná žiadna trasa';
  }

  @override
  String get english => 'angličtina';

  @override
  String get spanish => 'Španielčina';

  @override
  String get systemDefault => 'Predvolené nastavenie systému';

  @override
  String get languageStatusEnglish => 'Angličtina záložná aktívna';

  @override
  String get languageStatusSystem => 'Používanie systémového jazyka';

  @override
  String languageStatusSelected(Object languageName) {
    return 'Zvolený jazyk: $languageName';
  }

  @override
  String get themeLabel => 'Téma';

  @override
  String get notFoundTitle => 'Stránka sa nenašla';

  @override
  String get loadingCyberBible => 'Načítava sa kybernetická biblia...';

  @override
  String get couldNotOpenDatabase =>
      'Nepodarilo sa otvoriť biblickú databázu. Skúste to znova.';

  @override
  String get homeTagline => 'Bezplatná a otvorená aplikácia na štúdium Biblie';

  @override
  String get readTheBible => 'Prečítajte si Bibliu';

  @override
  String get settingsTooltip => 'Nastavenia';

  @override
  String get themeChoose => 'Vyberte tému';

  @override
  String get customThemes => 'Prispôsobiteľné motívy';

  @override
  String get customThemesSubtitle =>
      'Klepnutím na kartu vyberte farbu zvýraznenia. „Classic White“ podporuje aj režimy Light, Dark a System.';

  @override
  String get setThemesLabel => 'NASTAVIŤ TÉMY';

  @override
  String get deleteBookmarkDialog => 'Odstrániť záložku?';

  @override
  String removeBookmarkMessage(Object details, Object reference) {
    return 'Odstrániť \"$reference\"$details?\n\nToto sa nedá vrátiť späť.';
  }

  @override
  String get couldNotLoadBookmarks =>
      'Nepodarilo sa načítať záložky. Skúste to znova.';

  @override
  String get bookmarkSavedMessage => 'Záložka bola uložená';

  @override
  String get couldNotSaveBookmark => 'Záložku sa nepodarilo uložiť.';

  @override
  String get noBookmarksMatchFilter =>
      'Tomuto filtru nevyhovujú žiadne záložky.';

  @override
  String get clearFilter => 'Vymazať filter';

  @override
  String get traditionalOrderLabel => 'Tradičný poriadok';

  @override
  String get alphabeticalOrderLabel => 'Abecedné poradie';

  @override
  String get bookmarksTabLabel => 'Záložky';

  @override
  String get fullChapter => 'Celá kapitola';

  @override
  String get addBookmark => 'Pridať záložku';

  @override
  String get selectVerse => 'Vyberte položku Verš';

  @override
  String get labelOptional => 'Štítok (voliteľné)';

  @override
  String get notesOptional => 'Poznámky (voliteľné)';

  @override
  String get save => 'Uložiť';

  @override
  String get goToVerse => 'Prejdite na Verš';

  @override
  String verseTitle(Object verse) {
    return 'Verš $verse';
  }

  @override
  String chapterTitle(Object chapter) {
    return 'Kapitola $chapter';
  }

  @override
  String get switchToFullChapter => 'Prepnúť na záložku celej kapitoly';

  @override
  String get bookmarkSheetCancel => 'Zrušiť, zatvoriť hárok so záložkami';

  @override
  String get pickCustomAccent => 'Vyberte si vlastný akcent';

  @override
  String get apply => 'Použiť';

  @override
  String get custom => 'Vlastné';

  @override
  String get brightnessSystem => 'Systém';

  @override
  String get brightnessLight => 'Svetlo';

  @override
  String get brightnessDark => 'Tmavý';

  @override
  String get selectBook => 'Vyberte knihu';

  @override
  String get bookmarkFilterAll => 'Všetky';

  @override
  String get bookmarkFilterUnlabeled => 'Neoznačené';

  @override
  String get bookmarkSortRecent => 'Najskôr nedávno';

  @override
  String get bookmarkSortCanonical => 'Kanonické poradie';

  @override
  String get chapterRetry => 'Skúste to znova';

  @override
  String get fontSize => 'Veľkosť písma';

  @override
  String fontSizePixels(Object size) {
    return '$size pixelov';
  }

  @override
  String get fontSizeSlider => 'Posuvník veľkosti písma';

  @override
  String get fontSizeSliderHint => 'Potiahnutím prstom upravíte od 12 do 28';

  @override
  String get fontPreview => '\"Na počiatku stvoril Boh nebo a zem.\" — Gn 1:1';

  @override
  String get showVerseNumbersSubtitle =>
      'Zobraziť horné indexy čísel veršov na obrazovke čítania.';

  @override
  String get showSectionHeadingsSubtitle =>
      'Medzi pasážami zobraziť nadpisy sekcií a žalmov.';

  @override
  String get wordsOfChristSubtitle =>
      'Ukáž Ježišove slová červenou farbou. Zakázať pre jednu farbu textu.';

  @override
  String get verseFormatTitle => 'Formát veršov';

  @override
  String get verseFormatSubtitle => 'Vyberte spôsob rozloženia textu z Písma.';

  @override
  String get paragraphMode => 'Odsek';

  @override
  String get verseListMode => 'Zoznam veršov';

  @override
  String get paragraphModeTooltip => 'Režim odsekov';

  @override
  String get verseListModeTooltip => 'Režim zoznamu veršov';

  @override
  String get paragraphModeDescription =>
      'Text plynie nepretržite s odsadenými odsekmi ako vytlačená Biblia.';

  @override
  String get verseListModeDescription =>
      'Každý odsek Písma začína na svojom riadku, vďaka čomu je ľahké rozpoznať skupiny veršov.';

  @override
  String get deleteBookmarkTooltip => 'Odstrániť záložku';

  @override
  String deleteBookmarkSemantics(Object reference) {
    return 'Odstrániť záložku $reference';
  }

  @override
  String sortBookmarksTooltip(Object sortOrder) {
    return 'Zoradiť: $sortOrder';
  }

  @override
  String get noBookmarksYet => 'Zatiaľ žiadne záložky.';

  @override
  String get noBookmarksYetHint =>
      'Klepnutím na ikonu záložky počas čítania uložíte polohu.';

  @override
  String bookmarkReferenceNavigationError(Object reference) {
    return 'Nepodarilo sa prejsť na $reference.';
  }

  @override
  String themeCardSemantics(Object description, Object name, Object selected) {
    return '$name téma$selected. $description';
  }

  @override
  String get selectedThemeSuffix => ', aktuálne vybraté';

  @override
  String get customisableAccentDescription => 'Prispôsobiteľná farba akcentu.';

  @override
  String get fixedPaletteDescription => 'Pevná paleta.';

  @override
  String accentColourTitle(Object themeName) {
    return 'Farba zvýraznenia — $themeName';
  }

  @override
  String get brightnessMode => 'REŽIM JASU';

  @override
  String get lightMode => 'Svetelný režim';

  @override
  String get followSystemMode => 'Postupujte podľa systémového režimu';

  @override
  String get darkMode => 'Tmavý režim';

  @override
  String get customColourPicker => 'Vlastný výber farieb';

  @override
  String get customColourTooltip => 'Vlastná farba…';

  @override
  String get couldNotLoadBooks =>
      'Nepodarilo sa načítať zoznam kníh. Skúste to znova.';

  @override
  String chapterLabel(Object chapter) {
    return 'Kapitola $chapter';
  }

  @override
  String get traditionalOrderBooks => 'Tradičné knihy objednávok';

  @override
  String get alphabeticalOrderBooks => 'Knihy abecedných objednávok';

  @override
  String get home => 'Domov';

  @override
  String get addBookmarkTooltip => 'Pridať záložku';

  @override
  String get chooseBookChapter => 'Vyberte knihu a kapitolu';

  @override
  String get chooseVerse => 'Vyberte verš';

  @override
  String get bookChapterQuickNavigation =>
      'Rýchla navigácia v knihách a kapitolách';

  @override
  String get verseQuickNavigation => 'Veršovaná rýchla navigácia';

  @override
  String get backToBooks => 'Späť ku knihám';

  @override
  String get selectBookTitle => 'Vyberte položku Kniha';

  @override
  String selectChapterTitle(Object bookName) {
    return 'Vybrať kapitolu ($bookName)';
  }

  @override
  String chapterSelectionLabel(Object chapter) {
    return 'Kapitola $chapter';
  }

  @override
  String verseSelectionLabel(Object verse) {
    return 'Verš $verse';
  }

  @override
  String fullChapterReference(Object bookName, Object chapter) {
    return 'Celá kapitola: $bookName $chapter';
  }

  @override
  String get memorizeHint => 'Zapamätať si';

  @override
  String get addNoteHint => 'Pridať poznámku...';

  @override
  String get languageSearchHint => 'Hľadať jazyky';

  @override
  String get languageModuleInstalled => 'Nainštalované';

  @override
  String get languageModulePending => 'Čaká sa na strojový preklad';

  @override
  String get languageNoMatches =>
      'Vášmu vyhľadávaniu nezodpovedajú žiadne jazyky.';

  @override
  String get languageCatalogDescription =>
      'Jazyky označené ako nainštalované fungujú offline. Ďalšie jazyky budú pridané ako strojovo preložené moduly.';

  @override
  String get saveBookmarkSemantics => 'Uložiť záložku';

  @override
  String get couldNotLoadChapter =>
      'Nepodarilo sa načítať kapitolu. Skúste to znova.';

  @override
  String get couldNotLoadChapters =>
      'Nepodarilo sa načítať kapitoly. Skúste to znova.';

  @override
  String verseWithText(Object text, Object verse) {
    return 'Verš $verse: $text';
  }

  @override
  String accentSwatchSemantics(Object name, Object selected) {
    return '$name farba akcentu$selected';
  }

  @override
  String get oldTestament => 'Starý zákon';

  @override
  String get newTestament => 'Nový zákon';

  @override
  String get deuterocanonApocrypha => 'Deuterokánon / apokryfy';
}
