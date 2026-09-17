// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Czech (`cs`).
class AppLocalizationsCs extends AppLocalizations {
  AppLocalizationsCs([String locale = 'cs']) : super(locale);

  @override
  String get settingsTitle => 'Nastavení';

  @override
  String get languageSection => 'Jazyk';

  @override
  String get useSystemLanguage => 'Použít jazyk systému';

  @override
  String get useSystemLanguageSubtitle =>
      'Ve výchozím nastavení použít jazyk zařízení.';

  @override
  String get currentLanguage => 'Aktuální jazyk';

  @override
  String get appLanguage => 'Jazyk aplikace';

  @override
  String get chooseLanguage => 'Vyberte jazyk';

  @override
  String get theme => 'Motiv';

  @override
  String get appearance => 'Vzhled';

  @override
  String get textSection => 'Text';

  @override
  String get readingFormatSection => 'Formát čtení';

  @override
  String get displaySection => 'Zobrazení';

  @override
  String get verseNumbers => 'Čísla veršů';

  @override
  String get sectionHeadings => 'Nadpisy oddílů';

  @override
  String get redLetterText => 'Text červenými písmeny';

  @override
  String get selectABook => 'Vyberte knihu';

  @override
  String get traditionalOrder => 'Tradiční pořadí';

  @override
  String get alphabeticalOrder => 'Abecední pořadí';

  @override
  String get bookmarks => 'Záložky';

  @override
  String get retry => 'Zkusit znovu';

  @override
  String get chooseTheme => 'Vyberte motiv';

  @override
  String get customisableThemes => 'Přizpůsobitelné motivy';

  @override
  String get customisableThemesSubtitle =>
      'Klepnutím na kartu vyberte zvýrazňující barvu. \"Klasická bílá\" podporuje také světlý, tmavý a systémový režim.';

  @override
  String get setThemes => 'PEVNĚ DANÉ MOTIVY';

  @override
  String get setThemesSubtitle =>
      'Pevné, ručně vytvořené palety. Není třeba je přizpůsobovat - stačí klepnout a použít.';

  @override
  String get deleteBookmarkQuestion => 'Smazat záložku?';

  @override
  String get cancel => 'Zrušit';

  @override
  String get delete => 'Smazat';

  @override
  String get bookmarkSaved => 'Záložka uložena';

  @override
  String get couldNotDeleteBookmark => 'Záložku se nepodařilo smazat.';

  @override
  String couldNotNavigate(Object reference) {
    return 'Nelze přejít na $reference.';
  }

  @override
  String get pageNotFound => 'Stránka nenalezena';

  @override
  String noRouteDefined(Object routeName) {
    return 'Pro \"$routeName\" není definována žádná cesta';
  }

  @override
  String get english => 'Angličtina';

  @override
  String get spanish => 'Španělština';

  @override
  String get systemDefault => 'Výchozí nastavení systému';

  @override
  String get languageStatusEnglish => 'Aktivní záložní angličtina';

  @override
  String get languageStatusSystem => 'Používá se jazyk systému';

  @override
  String languageStatusSelected(Object languageName) {
    return 'Vybraný jazyk: $languageName';
  }

  @override
  String get themeLabel => 'Motiv';

  @override
  String get notFoundTitle => 'Stránka nenalezena';

  @override
  String get loadingCyberBible => 'Načítá se Cyber Bible...';

  @override
  String get couldNotOpenDatabase =>
      'Databázi Bible se nepodařilo otevřít. Zkuste to prosím znovu.';

  @override
  String get homeTagline =>
      'Bezplatná aplikace s otevřeným zdrojovým kódem pro studium Bible';

  @override
  String get readTheBible => 'Číst Bibli';

  @override
  String get settingsTooltip => 'Nastavení';

  @override
  String get themeChoose => 'Vyberte motiv';

  @override
  String get customThemes => 'Přizpůsobitelné motivy';

  @override
  String get customThemesSubtitle =>
      'Klepnutím na kartu vyberte zvýrazňující barvu. \"Klasická bílá\" podporuje také světlý, tmavý a systémový režim.';

  @override
  String get setThemesLabel => 'PEVNĚ DANÉ MOTIVY';

  @override
  String get deleteBookmarkDialog => 'Smazat záložku?';

  @override
  String removeBookmarkMessage(Object details, Object reference) {
    return 'Odebrat \"$reference\"$details?\n\nTuto akci nelze vrátit zpět.';
  }

  @override
  String get couldNotLoadBookmarks =>
      'Záložky se nepodařilo načíst. Zkuste to prosím znovu.';

  @override
  String get bookmarkSavedMessage => 'Záložka uložena';

  @override
  String get couldNotSaveBookmark => 'Záložku se nepodařilo uložit.';

  @override
  String get noBookmarksMatchFilter =>
      'Žádné záložky neodpovídají tomuto filtru.';

  @override
  String get clearFilter => 'Vymazat filtr';

  @override
  String get traditionalOrderLabel => 'Tradiční pořadí';

  @override
  String get alphabeticalOrderLabel => 'Abecední pořadí';

  @override
  String get bookmarksTabLabel => 'Záložky';

  @override
  String get fullChapter => 'Celá kapitola';

  @override
  String get addBookmark => 'Přidat záložku';

  @override
  String get selectVerse => 'Vyberte verš';

  @override
  String get labelOptional => 'Štítek (volitelné)';

  @override
  String get notesOptional => 'Poznámky (volitelné)';

  @override
  String get save => 'Uložit';

  @override
  String get goToVerse => 'Přejít na verš';

  @override
  String verseTitle(Object verse) {
    return 'Verš $verse';
  }

  @override
  String chapterTitle(Object chapter) {
    return 'Kapitola $chapter';
  }

  @override
  String get switchToFullChapter => 'Přepnout na záložku celé kapitoly';

  @override
  String get bookmarkSheetCancel => 'Zrušit a zavřít panel záložky';

  @override
  String get pickCustomAccent => 'Vyberte vlastní zvýrazňující barvu';

  @override
  String get apply => 'Použít';

  @override
  String get custom => 'Vlastní';

  @override
  String get brightnessSystem => 'Systém';

  @override
  String get brightnessLight => 'Světlý';

  @override
  String get brightnessDark => 'Tmavý';

  @override
  String get selectBook => 'Vyberte knihu';

  @override
  String get bookmarkFilterAll => 'Vše';

  @override
  String get bookmarkFilterUnlabeled => 'Bez štítku';

  @override
  String get bookmarkSortRecent => 'Nejnovější první';

  @override
  String get bookmarkSortCanonical => 'Kanonické pořadí';

  @override
  String get chapterRetry => 'Zkusit znovu';

  @override
  String get fontSize => 'Velikost písma';

  @override
  String fontSizePixels(Object size) {
    return '$size px';
  }

  @override
  String get fontSizeSlider => 'Posuvník velikosti písma';

  @override
  String get fontSizeSliderHint => 'Tažením upravte hodnotu od 12 do 28';

  @override
  String get fontPreview => '\"Na počátku stvořil Bůh nebe a zemi.\" - Gn 1,1';

  @override
  String get showVerseNumbersSubtitle =>
      'Na obrazovce čtení zobrazovat čísla veršů jako horní indexy.';

  @override
  String get showSectionHeadingsSubtitle =>
      'Zobrazovat mezi úryvky nadpisy oddílů a žalmů.';

  @override
  String get wordsOfChristSubtitle =>
      'Zobrazovat Ježíšova slova červeně. Pro jednu barvu textu vypněte.';

  @override
  String get verseFormatTitle => 'Formát veršů';

  @override
  String get verseFormatSubtitle => 'Zvolte rozvržení textu Písma.';

  @override
  String get paragraphMode => 'Odstavec';

  @override
  String get verseListMode => 'Seznam veršů';

  @override
  String get paragraphModeTooltip => 'Režim odstavce';

  @override
  String get verseListModeTooltip => 'Režim seznamu veršů';

  @override
  String get paragraphModeDescription =>
      'Text plyne souvisle s odsazenými odstavci jako v tištěné Bibli.';

  @override
  String get verseListModeDescription =>
      'Každý odstavec Písma začíná na vlastním řádku, takže skupiny veršů snadno uvidíte.';

  @override
  String get deleteBookmarkTooltip => 'Smazat záložku';

  @override
  String deleteBookmarkSemantics(Object reference) {
    return 'Smazat záložku $reference';
  }

  @override
  String sortBookmarksTooltip(Object sortOrder) {
    return 'Řadit: $sortOrder';
  }

  @override
  String get noBookmarksYet => 'Zatím žádné záložky.';

  @override
  String get noBookmarksYetHint =>
      'Při čtení klepněte na ikonu záložky a uložte si místo.';

  @override
  String bookmarkReferenceNavigationError(Object reference) {
    return 'Nelze přejít na $reference.';
  }

  @override
  String themeCardSemantics(Object description, Object name, Object selected) {
    return 'Motiv $name$selected. $description';
  }

  @override
  String get selectedThemeSuffix => ', aktuálně vybraný';

  @override
  String get customisableAccentDescription =>
      'Přizpůsobitelná zvýrazňující barva.';

  @override
  String get fixedPaletteDescription => 'Pevná paleta.';

  @override
  String accentColourTitle(Object themeName) {
    return 'Zvýrazňující barva - $themeName';
  }

  @override
  String get brightnessMode => 'REŽIM JASU';

  @override
  String get lightMode => 'Světlý režim';

  @override
  String get followSystemMode => 'Použít režim systému';

  @override
  String get darkMode => 'Tmavý režim';

  @override
  String get customColourPicker => 'Výběr vlastní barvy';

  @override
  String get customColourTooltip => 'Vlastní barva...';

  @override
  String get couldNotLoadBooks =>
      'Seznam knih se nepodařilo načíst. Zkuste to prosím znovu.';

  @override
  String chapterLabel(Object chapter) {
    return 'Kapitola $chapter';
  }

  @override
  String get traditionalOrderBooks => 'Knihy v tradičním pořadí';

  @override
  String get alphabeticalOrderBooks => 'Knihy v abecedním pořadí';

  @override
  String get home => 'Domů';

  @override
  String get addBookmarkTooltip => 'Přidat záložku';

  @override
  String get chooseBookChapter => 'Vyberte knihu a kapitolu';

  @override
  String get chooseVerse => 'Vyberte verš';

  @override
  String get bookChapterQuickNavigation => 'Rychlá navigace knihou a kapitolou';

  @override
  String get verseQuickNavigation => 'Rychlá navigace veršem';

  @override
  String get backToBooks => 'Zpět ke knihám';

  @override
  String get selectBookTitle => 'Vyberte knihu';

  @override
  String selectChapterTitle(Object bookName) {
    return 'Vyberte kapitolu ($bookName)';
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
  String get memorizeHint => 'Zapamatovat';

  @override
  String get addNoteHint => 'Přidat poznámku...';

  @override
  String get languageSearchHint => 'Hledat jazyky';

  @override
  String get languageModuleInstalled => 'Nainstalováno';

  @override
  String get languageModulePending => 'Čeká na strojový překlad';

  @override
  String get languageNoMatches => 'Vašemu hledání neodpovídají žádné jazyky.';

  @override
  String get languageCatalogDescription =>
      'Jazyky označené jako nainstalované fungují offline. Další jazyky budou přidány jako moduly se strojovým překladem.';

  @override
  String get saveBookmarkSemantics => 'Uložit záložku';

  @override
  String get couldNotLoadChapter =>
      'Kapitolu se nepodařilo načíst. Zkuste to prosím znovu.';

  @override
  String get couldNotLoadChapters =>
      'Kapitoly se nepodařilo načíst. Zkuste to prosím znovu.';

  @override
  String verseWithText(Object text, Object verse) {
    return 'Verš $verse: $text';
  }

  @override
  String accentSwatchSemantics(Object name, Object selected) {
    return 'Zvýrazňující barva $name$selected';
  }

  @override
  String get oldTestament => 'Starý zákon';

  @override
  String get newTestament => 'Nový zákon';

  @override
  String get deuterocanonApocrypha => 'Deuterokanon / apokryfy';
}
