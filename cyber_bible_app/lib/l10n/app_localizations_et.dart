// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Estonian (`et`).
class AppLocalizationsEt extends AppLocalizations {
  AppLocalizationsEt([String locale = 'et']) : super(locale);

  @override
  String get settingsTitle => 'Seaded';

  @override
  String get languageSection => 'Keel';

  @override
  String get useSystemLanguage => 'Kasutage süsteemi keelt';

  @override
  String get useSystemLanguageSubtitle => 'Sobitage vaikimisi seadme keel.';

  @override
  String get currentLanguage => 'Praegune keel';

  @override
  String get appLanguage => 'Rakenduse keel';

  @override
  String get chooseLanguage => 'Valige keel';

  @override
  String get theme => 'Teema';

  @override
  String get appearance => 'Välimus';

  @override
  String get textSection => 'Tekst';

  @override
  String get readingFormatSection => 'Lugemisvorming';

  @override
  String get displaySection => 'Ekraan';

  @override
  String get verseNumbers => 'Salmide numbrid';

  @override
  String get sectionHeadings => 'Sektsioonide pealkirjad';

  @override
  String get redLetterText => 'Punase tähega tekst';

  @override
  String get selectABook => 'Valige raamat';

  @override
  String get traditionalOrder => 'Traditsiooniline kord';

  @override
  String get alphabeticalOrder => 'Tähestikuline järjekord';

  @override
  String get bookmarks => 'Järjehoidjad';

  @override
  String get retry => 'Proovi uuesti';

  @override
  String get chooseTheme => 'Valige Teema';

  @override
  String get customisableThemes => 'Kohandatavad teemad';

  @override
  String get customisableThemesSubtitle =>
      'Aktsentvärvi valimiseks puudutage kaarti. \"Classic White\" toetab ka režiime Light, Dark ja System.';

  @override
  String get setThemes => 'MÄÄRA TEEMAD';

  @override
  String get setThemesSubtitle =>
      'Fikseeritud, käsitsi valmistatud paletid. Kohandamine pole vajalik – lihtsalt puudutage, et rakendada.';

  @override
  String get deleteBookmarkQuestion => 'Kas kustutada järjehoidja?';

  @override
  String get cancel => 'Tühista';

  @override
  String get delete => 'Kustuta';

  @override
  String get bookmarkSaved => 'Järjehoidja salvestatud';

  @override
  String get couldNotDeleteBookmark => 'Järjehoidjat ei saanud kustutada.';

  @override
  String couldNotNavigate(Object reference) {
    return 'Sisse $reference ei õnnestunud navigeerida.';
  }

  @override
  String get pageNotFound => 'Lehte ei leitud';

  @override
  String noRouteDefined(Object routeName) {
    return '\"$routeName\" jaoks pole marsruuti määratud';
  }

  @override
  String get english => 'inglise keel';

  @override
  String get spanish => 'Español';

  @override
  String get systemDefault => 'Süsteemi vaikeseade';

  @override
  String get languageStatusEnglish => 'Aktiivne inglise keel';

  @override
  String get languageStatusSystem => 'Süsteemi keele kasutamine';

  @override
  String languageStatusSelected(Object languageName) {
    return 'Valitud keel: $languageName';
  }

  @override
  String get themeLabel => 'Teema';

  @override
  String get notFoundTitle => 'Lehte ei leitud';

  @override
  String get loadingCyberBible => 'Küberpiibli laadimine...';

  @override
  String get couldNotOpenDatabase =>
      'Piibli andmebaasi ei saanud avada. Palun proovi uuesti.';

  @override
  String get homeTagline => 'Tasuta ja avatud lähtekoodiga piibliõpperakendus';

  @override
  String get readTheBible => 'Lugege piiblit';

  @override
  String get settingsTooltip => 'Seaded';

  @override
  String get themeChoose => 'Valige Teema';

  @override
  String get customThemes => 'Kohandatavad teemad';

  @override
  String get customThemesSubtitle =>
      'Aktsentvärvi valimiseks puudutage kaarti. \"Classic White\" toetab ka režiime Light, Dark ja System.';

  @override
  String get setThemesLabel => 'MÄÄRA TEEMAD';

  @override
  String get deleteBookmarkDialog => 'Kas kustutada järjehoidja?';

  @override
  String removeBookmarkMessage(Object details, Object reference) {
    return 'Kas eemaldada \"$reference\"$details?\n\nSeda ei saa tagasi võtta.';
  }

  @override
  String get couldNotLoadBookmarks =>
      'Järjehoidjaid ei saanud laadida. Palun proovi uuesti.';

  @override
  String get bookmarkSavedMessage => 'Järjehoidja salvestatud';

  @override
  String get couldNotSaveBookmark => 'Järjehoidjat ei saanud salvestada.';

  @override
  String get noBookmarksMatchFilter =>
      'Sellele filtrile ei vasta ükski järjehoidja.';

  @override
  String get clearFilter => 'Selge filter';

  @override
  String get traditionalOrderLabel => 'Traditsiooniline kord';

  @override
  String get alphabeticalOrderLabel => 'Tähestikuline järjekord';

  @override
  String get bookmarksTabLabel => 'Järjehoidjad';

  @override
  String get fullChapter => 'Täielik peatükk';

  @override
  String get addBookmark => 'Lisa järjehoidja';

  @override
  String get selectVerse => 'Valige Salm';

  @override
  String get labelOptional => 'Silt (valikuline)';

  @override
  String get notesOptional => 'Märkused (valikuline)';

  @override
  String get save => 'Salvesta';

  @override
  String get goToVerse => 'Mine salmi juurde';

  @override
  String verseTitle(Object verse) {
    return 'Salm $verse';
  }

  @override
  String chapterTitle(Object chapter) {
    return 'Peatükk $chapter';
  }

  @override
  String get switchToFullChapter => 'Lülitu kogu peatüki järjehoidjale';

  @override
  String get bookmarkSheetCancel => 'Tühista, sulge järjehoidjaleht';

  @override
  String get pickCustomAccent => 'Valige kohandatud aktsent';

  @override
  String get apply => 'Rakenda';

  @override
  String get custom => 'Kohandatud';

  @override
  String get brightnessSystem => 'Süsteem';

  @override
  String get brightnessLight => 'Valgus';

  @override
  String get brightnessDark => 'Tume';

  @override
  String get selectBook => 'Valige raamat';

  @override
  String get bookmarkFilterAll => 'Kõik';

  @override
  String get bookmarkFilterUnlabeled => 'Märgistamata';

  @override
  String get bookmarkSortRecent => 'Hiljutine esimene';

  @override
  String get bookmarkSortCanonical => 'Kanooniline kord';

  @override
  String get chapterRetry => 'Proovi uuesti';

  @override
  String get fontSize => 'Fondi suurus';

  @override
  String fontSizePixels(Object size) {
    return '$size px';
  }

  @override
  String get fontSizeSlider => 'Fondi suuruse liugur';

  @override
  String get fontSizeSliderHint => 'Pühkige, et reguleerida väärtusi 12–28';

  @override
  String get fontPreview => '\"Alguses lõi Jumal taeva ja maa.\" — Gen 1:1';

  @override
  String get showVerseNumbersSubtitle =>
      'Näita lugemiskuval salminumbrite ülaindekseid.';

  @override
  String get showSectionHeadingsSubtitle =>
      'Näita lõikude ja psalmi pealkirju lõikude vahel.';

  @override
  String get wordsOfChristSubtitle =>
      'Näidake Jeesuse sõnu punasega. Keela ühe tekstivärvi jaoks.';

  @override
  String get verseFormatTitle => 'Salmi formaat';

  @override
  String get verseFormatSubtitle =>
      'Valige, kuidas pühakirja tekst on paigutatud.';

  @override
  String get paragraphMode => 'Lõik';

  @override
  String get verseListMode => 'Salmide loetelu';

  @override
  String get paragraphModeTooltip => 'Lõigurežiim';

  @override
  String get verseListModeTooltip => 'Salmide loendi režiim';

  @override
  String get paragraphModeDescription =>
      'Tekst voolab pidevalt taandega lõikudega, nagu trükitud piibel.';

  @override
  String get verseListModeDescription =>
      'Iga pühakirjalõik algab eraldi real, mis muudab salmirühmad hõlpsasti märgatavaks.';

  @override
  String get deleteBookmarkTooltip => 'Kustuta järjehoidja';

  @override
  String deleteBookmarkSemantics(Object reference) {
    return 'Kustuta järjehoidja $reference';
  }

  @override
  String sortBookmarksTooltip(Object sortOrder) {
    return 'Sorteeri: $sortOrder';
  }

  @override
  String get noBookmarksYet => 'Järjehoidjaid pole veel.';

  @override
  String get noBookmarksYetHint =>
      'Asukoha salvestamiseks puudutage lugemise ajal järjehoidjaikooni.';

  @override
  String bookmarkReferenceNavigationError(Object reference) {
    return 'Sisse $reference ei õnnestunud navigeerida.';
  }

  @override
  String themeCardSemantics(Object description, Object name, Object selected) {
    return '$name teema$selected. $description';
  }

  @override
  String get selectedThemeSuffix => ', praegu valitud';

  @override
  String get customisableAccentDescription => 'Kohandatav aktsentvärv.';

  @override
  String get fixedPaletteDescription => 'Fikseeritud palett.';

  @override
  String accentColourTitle(Object themeName) {
    return 'Aktsentvärv — $themeName';
  }

  @override
  String get brightnessMode => 'HELEDUSE REŽIIM';

  @override
  String get lightMode => 'Valgusrežiim';

  @override
  String get followSystemMode => 'Järgige süsteemirežiimi';

  @override
  String get darkMode => 'Tume režiim';

  @override
  String get customColourPicker => 'Kohandatud värvivalija';

  @override
  String get customColourTooltip => 'Kohandatud värv…';

  @override
  String get couldNotLoadBooks =>
      'Raamatute loendit ei saanud laadida. Palun proovi uuesti.';

  @override
  String chapterLabel(Object chapter) {
    return 'Peatükk $chapter';
  }

  @override
  String get traditionalOrderBooks => 'Traditsioonilised tellimisraamatud';

  @override
  String get alphabeticalOrderBooks => 'Tähestikulised tellimisraamatud';

  @override
  String get home => 'Kodu';

  @override
  String get addBookmarkTooltip => 'Lisa järjehoidja';

  @override
  String get chooseBookChapter => 'Valige raamat ja peatükk';

  @override
  String get chooseVerse => 'Valige salm';

  @override
  String get bookChapterQuickNavigation =>
      'Raamatu ja peatüki kiire navigeerimine';

  @override
  String get verseQuickNavigation => 'Salmi kiire navigeerimine';

  @override
  String get backToBooks => 'Tagasi raamatute juurde';

  @override
  String get selectBookTitle => 'Valige Book';

  @override
  String selectChapterTitle(Object bookName) {
    return 'Valige peatükk ($bookName)';
  }

  @override
  String chapterSelectionLabel(Object chapter) {
    return 'Peatükk $chapter';
  }

  @override
  String verseSelectionLabel(Object verse) {
    return 'Salm $verse';
  }

  @override
  String fullChapterReference(Object bookName, Object chapter) {
    return 'Täielik peatükk: $bookName $chapter';
  }

  @override
  String get memorizeHint => 'Jäta meelde';

  @override
  String get addNoteHint => 'Lisa märge...';

  @override
  String get languageSearchHint => 'Otsi keeli';

  @override
  String get languageModuleInstalled => 'Paigaldatud';

  @override
  String get languageModulePending => 'Masintõlge on pooleli';

  @override
  String get languageNoMatches => 'Teie otsingule ei vasta ükski keel.';

  @override
  String get languageCatalogDescription =>
      'Installitud keeled töötavad võrguühenduseta. Muud keeled lisatakse masintõlkemoodulitena.';

  @override
  String get saveBookmarkSemantics => 'Salvesta järjehoidja';

  @override
  String get couldNotLoadChapter =>
      'Peatükki ei saanud laadida. Palun proovi uuesti.';

  @override
  String get couldNotLoadChapters =>
      'Peatükke ei saanud laadida. Palun proovi uuesti.';

  @override
  String verseWithText(Object text, Object verse) {
    return 'Salm $verse: $text';
  }

  @override
  String accentSwatchSemantics(Object name, Object selected) {
    return '$name aktsentvärv$selected';
  }

  @override
  String get oldTestament => 'Vana Testament';

  @override
  String get newTestament => 'Uus Testament';

  @override
  String get deuterocanonApocrypha => 'Deuterokanon / Apokrüüfid';
}
