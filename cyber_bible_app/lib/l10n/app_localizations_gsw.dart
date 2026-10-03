// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Swiss German Alemannic Alsatian (`gsw`).
class AppLocalizationsGsw extends AppLocalizations {
  AppLocalizationsGsw([String locale = 'gsw']) : super(locale);

  @override
  String get settingsTitle => 'Iistellige';

  @override
  String get languageSection => 'Sprooch';

  @override
  String get useSystemLanguage => 'System-Sprooch bruuche';

  @override
  String get useSystemLanguageSubtitle =>
      'D Gerät-Sprooch als Standard bruuche.';

  @override
  String get currentLanguage => 'Aktuelli Sprooch';

  @override
  String get appLanguage => 'App-Sprooch';

  @override
  String get chooseLanguage => 'Sprooch uuswähle';

  @override
  String get theme => 'Thema';

  @override
  String get appearance => 'Uussäh';

  @override
  String get textSection => 'Text';

  @override
  String get readingFormatSection => 'Läse-Format';

  @override
  String get displaySection => 'Aazeige';

  @override
  String get verseNumbers => 'Vers-Nummere';

  @override
  String get sectionHeadings => 'Abschnittstitel';

  @override
  String get redLetterText => 'Rote Text';

  @override
  String get selectABook => 'Es Buech uuswähle';

  @override
  String get traditionalOrder => 'Traditionelli Reihefolg';

  @override
  String get alphabeticalOrder => 'Alphabetischi Reihefolg';

  @override
  String get bookmarks => 'Lesezeiche';

  @override
  String get retry => 'Nochmal probiere';

  @override
  String get chooseTheme => 'Es Thema uuswähle';

  @override
  String get customisableThemes => 'Aapassbari Theme';

  @override
  String get customisableThemesSubtitle =>
      'Uf e Charte tippe, zum e Akzentfarb uuswähle. \"Classic White\" cha au Hell-, Dunkel- und System-Modus.';

  @override
  String get setThemes => 'FESTI THEME';

  @override
  String get setThemesSubtitle =>
      'Sorgfältig gmachte, fixi Farbpalette. Nüt muess aapasst werde; zum Aawände tippe.';

  @override
  String get deleteBookmarkQuestion => 'S Lesezeiche lösche?';

  @override
  String get cancel => 'Abbräche';

  @override
  String get delete => 'Lösche';

  @override
  String get bookmarkSaved => 'Lesezeiche gspeicheret';

  @override
  String get couldNotDeleteBookmark =>
      'S Lesezeiche het nöd chöne glöscht werde.';

  @override
  String couldNotNavigate(Object reference) {
    return 'S het nöd chöne uf $reference navigiert werde.';
  }

  @override
  String get pageNotFound => 'Siite nöd gfunde';

  @override
  String noRouteDefined(Object routeName) {
    return 'Kei Wäg für \"$routeName\" definiert';
  }

  @override
  String get english => 'Änglisch';

  @override
  String get spanish => 'Schpanisch';

  @override
  String get systemDefault => 'System-Standard';

  @override
  String get languageStatusEnglish =>
      'Änglisch wird als Ersatz-Sprooch bruucht';

  @override
  String get languageStatusSystem => 'System-Sprooch wird bruucht';

  @override
  String languageStatusSelected(Object languageName) {
    return 'Uusgwählti Sprooch: $languageName';
  }

  @override
  String get themeLabel => 'Thema';

  @override
  String get notFoundTitle => 'Siite nöd gfunde';

  @override
  String get loadingCyberBible => 'Cyber Bible wird glade...';

  @override
  String get couldNotOpenDatabase =>
      'D Bibel-Datebank het nöd chöne göffnet werde. Bitte nomol probiere.';

  @override
  String get homeTagline => 'E gratis Open-Source-App fürs Bibelstudiere';

  @override
  String get readTheBible => 'D Bibel läse';

  @override
  String get settingsTooltip => 'Iistellige';

  @override
  String get themeChoose => 'Es Thema uuswähle';

  @override
  String get customThemes => 'Aapassbari Theme';

  @override
  String get customThemesSubtitle =>
      'Uf e Charte tippe, zum e Akzentfarb uuswähle. \"Classic White\" cha au Hell-, Dunkel- und System-Modus.';

  @override
  String get setThemesLabel => 'FESTI THEME';

  @override
  String get deleteBookmarkDialog => 'S Lesezeiche lösche?';

  @override
  String removeBookmarkMessage(Object details, Object reference) {
    return '\"$reference\"$details entferne?\n\nDas cha nüm rückgängig gmacht werde.';
  }

  @override
  String get couldNotLoadBookmarks =>
      'D Lesezeiche händ nöd chöne glade werde. Bitte nomol probiere.';

  @override
  String get bookmarkSavedMessage => 'Lesezeiche gspeicheret';

  @override
  String get couldNotSaveBookmark =>
      'S Lesezeiche het nöd chöne gspeicheret werde.';

  @override
  String get noBookmarksMatchFilter => 'Kei Lesezeiche passt uf dä Filter.';

  @override
  String get clearFilter => 'Filter lösche';

  @override
  String get traditionalOrderLabel => 'Traditionelli Reihefolg';

  @override
  String get alphabeticalOrderLabel => 'Alphabetischi Reihefolg';

  @override
  String get bookmarksTabLabel => 'Lesezeiche';

  @override
  String get fullChapter => 'S ganze Kapitel';

  @override
  String get addBookmark => 'Lesezeiche dezue tue';

  @override
  String get selectVerse => 'En Vers uuswähle';

  @override
  String get labelOptional => 'Bezeichnig (optional)';

  @override
  String get notesOptional => 'Notize (optional)';

  @override
  String get save => 'Speichere';

  @override
  String get goToVerse => 'Zum Vers gah';

  @override
  String verseTitle(Object verse) {
    return 'Vers $verse';
  }

  @override
  String chapterTitle(Object chapter) {
    return 'Kapitel $chapter';
  }

  @override
  String get switchToFullChapter => 'Zum Lesezeiche fürs ganze Kapitel wächsle';

  @override
  String get bookmarkSheetCancel =>
      'Abbräche und s Lesezeiche-Fänschter schliesse';

  @override
  String get pickCustomAccent => 'E eigeti Akzentfarb uuswähle';

  @override
  String get apply => 'Aawände';

  @override
  String get custom => 'Eigete';

  @override
  String get brightnessSystem => 'System';

  @override
  String get brightnessLight => 'Hell';

  @override
  String get brightnessDark => 'Dunkel';

  @override
  String get selectBook => 'Es Buech uuswähle';

  @override
  String get bookmarkFilterAll => 'Alli';

  @override
  String get bookmarkFilterUnlabeled => 'Ohni Bezeichnig';

  @override
  String get bookmarkSortRecent => 'S Neuschti zerscht';

  @override
  String get bookmarkSortCanonical => 'Kanonischi Reihefolg';

  @override
  String get chapterRetry => 'Nochmal probiere';

  @override
  String get fontSize => 'Schriftgrössi';

  @override
  String fontSizePixels(Object size) {
    return '$size px';
  }

  @override
  String get fontSizeSlider => 'Regler für d\'Schriftgrössi';

  @override
  String get fontSizeSliderHint => 'Schiebe zum zwüsche 12 und 28 aapasse';

  @override
  String get fontPreview =>
      '\"Am Afang het Gott Himmel und Ärde erschaffe.\" — 1. Mose 1:1';

  @override
  String get showVerseNumbersSubtitle =>
      'Vers-Nummer uf em Läsebildschirm aazeige.';

  @override
  String get showSectionHeadingsSubtitle =>
      'Abschnitts- und Psalm-Titel zwüsche de Textstelle aazeige.';

  @override
  String get wordsOfChristSubtitle =>
      'D Wort vo Jesus rot aazeige. Uschalte, wenn alli Text gliichfarbig söll sii.';

  @override
  String get verseFormatTitle => 'Vers-Format';

  @override
  String get verseFormatSubtitle => 'Wähle, wie dr Schrifttext aazeigt wird.';

  @override
  String get paragraphMode => 'Absatz';

  @override
  String get verseListMode => 'Vers-Lischte';

  @override
  String get paragraphModeTooltip => 'Absatz-Modus';

  @override
  String get verseListModeTooltip => 'Vers-Lischte-Modus';

  @override
  String get paragraphModeDescription =>
      'Dr Text fliesst wie i ere druckte Bibel fortlaufend i iigrückte Absätz.';

  @override
  String get verseListModeDescription =>
      'Jede Schrift-Absatz fangt i ere eigene Zeile aa, damit Vers-Gruppe eifach z erkenne sind.';

  @override
  String get deleteBookmarkTooltip => 'Lesezeiche lösche';

  @override
  String deleteBookmarkSemantics(Object reference) {
    return 'Lesezeiche $reference lösche';
  }

  @override
  String sortBookmarksTooltip(Object sortOrder) {
    return 'Sortiere: $sortOrder';
  }

  @override
  String get noBookmarksYet => 'No kei Lesezeiche.';

  @override
  String get noBookmarksYetHint =>
      'Tippe bim Läse uf s Lesezeiche-Symbol, zum e Stell speichere.';

  @override
  String bookmarkReferenceNavigationError(Object reference) {
    return 'S het nöd chöne uf $reference navigiert werde.';
  }

  @override
  String themeCardSemantics(Object description, Object name, Object selected) {
    return 'Thema $name$selected. $description';
  }

  @override
  String get selectedThemeSuffix => ', aktuell uusgwählt';

  @override
  String get customisableAccentDescription => 'Aapassbari Akzentfarb.';

  @override
  String get fixedPaletteDescription => 'Festi Farbpalette.';

  @override
  String accentColourTitle(Object themeName) {
    return 'Akzentfarb — $themeName';
  }

  @override
  String get brightnessMode => 'HELLIGKEITS-MODUS';

  @override
  String get lightMode => 'Hell-Modus';

  @override
  String get followSystemMode => 'System-Modus folge';

  @override
  String get darkMode => 'Dunkel-Modus';

  @override
  String get customColourPicker => 'Eigeti Farb uuswähle';

  @override
  String get customColourTooltip => 'Eigeti Farb...';

  @override
  String get couldNotLoadBooks =>
      'D Buech-Lischte het nöd chöne glade werde. Bitte nomol probiere.';

  @override
  String chapterLabel(Object chapter) {
    return 'Kapitel $chapter';
  }

  @override
  String get traditionalOrderBooks => 'Buecher i traditioneller Reihefolg';

  @override
  String get alphabeticalOrderBooks => 'Buecher alphabetisch sortiert';

  @override
  String get home => 'Startsiite';

  @override
  String get addBookmarkTooltip => 'Lesezeiche dezue tue';

  @override
  String get chooseBookChapter => 'Buech und Kapitel uuswähle';

  @override
  String get chooseVerse => 'En Vers uuswähle';

  @override
  String get bookChapterQuickNavigation => 'Schnäll zum Buech und Kapitel gah';

  @override
  String get verseQuickNavigation => 'Schnäll zum Vers gah';

  @override
  String get backToBooks => 'Zrugg zu de Buecher';

  @override
  String get selectBookTitle => 'Es Buech uuswähle';

  @override
  String selectChapterTitle(Object bookName) {
    return 'Kapitel uuswähle ($bookName)';
  }

  @override
  String chapterSelectionLabel(Object chapter) {
    return 'Kapitel $chapter';
  }

  @override
  String verseSelectionLabel(Object verse) {
    return 'Vers $verse';
  }

  @override
  String fullChapterReference(Object bookName, Object chapter) {
    return 'S ganze Kapitel: $bookName $chapter';
  }

  @override
  String get memorizeHint => 'Uuswendig lerne';

  @override
  String get addNoteHint => 'E Notiz dezue tue...';

  @override
  String get languageSearchHint => 'Sprooche sueche';

  @override
  String get languageModuleInstalled => 'Installiert';

  @override
  String get languageModulePending => 'Maschine-Übersetzig stoht no uus';

  @override
  String get languageNoMatches => 'Kei Sprooch passt uf dini Suechi.';

  @override
  String get languageCatalogDescription =>
      'Installierti Sprooche funktioniered offline. Anderi Sprooche chömed als maschine-übersetzti Module dezue.';

  @override
  String get saveBookmarkSemantics => 'Lesezeiche speichere';

  @override
  String get couldNotLoadChapter =>
      'S Kapitel het nöd chöne glade werde. Bitte nomol probiere.';

  @override
  String get couldNotLoadChapters =>
      'D Kapitel händ nöd chöne glade werde. Bitte nomol probiere.';

  @override
  String verseWithText(Object text, Object verse) {
    return 'Vers $verse: $text';
  }

  @override
  String accentSwatchSemantics(Object name, Object selected) {
    return 'Akzentfarb $name$selected';
  }

  @override
  String get oldTestament => 'Alte Testament';

  @override
  String get newTestament => 'Neue Testament';

  @override
  String get deuterocanonApocrypha => 'Deuterokanon / Apokryphe';
}
