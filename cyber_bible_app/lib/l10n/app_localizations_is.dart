// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Icelandic (`is`).
class AppLocalizationsIs extends AppLocalizations {
  AppLocalizationsIs([String locale = 'is']) : super(locale);

  @override
  String get settingsTitle => 'Stillingar';

  @override
  String get languageSection => 'Language';

  @override
  String get useSystemLanguage => 'Notaðu tungumál kerfisins';

  @override
  String get useSystemLanguageSubtitle =>
      'Passaðu tungumál tækisins sjálfgefið.';

  @override
  String get currentLanguage => 'Núverandi tungumál';

  @override
  String get appLanguage => 'Tungumál apps';

  @override
  String get chooseLanguage => 'Veldu bakgrunn';

  @override
  String get theme => 'Klukka';

  @override
  String get appearance => 'Útliti';

  @override
  String get textSection => 'Text';

  @override
  String get readingFormatSection => 'Lestrarsnið';

  @override
  String get displaySection => 'Display';

  @override
  String get verseNumbers => 'Verse Numbers';

  @override
  String get sectionHeadings => 'Section Headings';

  @override
  String get redLetterText => 'Red-Letter Text';

  @override
  String get selectABook => 'Select a Book';

  @override
  String get traditionalOrder => 'Traditional order';

  @override
  String get alphabeticalOrder => 'Alphabetical order';

  @override
  String get bookmarks => 'Bookmarks';

  @override
  String get retry => '';

  @override
  String get chooseTheme => 'Veldu Theme';

  @override
  String get customisableThemes => 'Sérsniðin þemu';

  @override
  String get customisableThemesSubtitle =>
      'Smelltu á kort til að velja áherslulit. „Classic White“ styður einnig ljósa-, dökk- og kerfisstillingar.';

  @override
  String get setThemes => 'SET THEMES';

  @override
  String get setThemesSubtitle =>
      'Fastar, handgerðar litatöflur. Engin þörf á aðlögun — pikkaðu bara til að sækja um.';

  @override
  String get deleteBookmarkQuestion => 'Eyða bókamerki?';

  @override
  String get cancel => 'Cancel';

  @override
  String get delete => 'Eyða';

  @override
  String get bookmarkSaved => 'Bókamerki vistað';

  @override
  String get couldNotDeleteBookmark => 'Ekki tókst að eyða bókamerki.';

  @override
  String couldNotNavigate(Object reference) {
    return 'Ekki tókst að fara í $reference.';
  }

  @override
  String get pageNotFound => 'Síða fannst ekki';

  @override
  String noRouteDefined(Object routeName) {
    return 'Engin leið skilgreind fyrir \"$routeName\"';
  }

  @override
  String get english => 'enska';

  @override
  String get spanish => 'Español';

  @override
  String get systemDefault => 'Sjálfgefið kerfi';

  @override
  String get languageStatusEnglish => 'English fallback active';

  @override
  String get languageStatusSystem => 'Using system language';

  @override
  String languageStatusSelected(Object languageName) {
    return 'Veldu tungumál: $languageName';
  }

  @override
  String get themeLabel => 'Theme';

  @override
  String get notFoundTitle => 'Page Not Found';

  @override
  String get loadingCyberBible => 'Loading Cyber Bible... ';

  @override
  String get couldNotOpenDatabase =>
      'Gæti ekki opnað biblíugagnagrunninn. Reyndu aftur.';

  @override
  String get homeTagline => 'A ókeypis og opið biblíunámsforrit';

  @override
  String get readTheBible => 'Lestu Bible';

  @override
  String get settingsTooltip => 'Settings';

  @override
  String get themeChoose => 'Veldu þema';

  @override
  String get customThemes => 'Sérsniðin þemu';

  @override
  String get customThemesSubtitle =>
      'Tappaðu kort til að velja áherslulit. \"Classic White\" styður einnig ljós, dökk og kerfisstillingar.';

  @override
  String get setThemesLabel => 'SET THEMES';

  @override
  String get deleteBookmarkDialog => 'Eyða bókamerki?';

  @override
  String removeBookmarkMessage(Object details, Object reference) {
    return 'Fjarlægja \"$reference\"$details?\n\nEkki er hægt að afturkalla þetta.';
  }

  @override
  String get couldNotLoadBookmarks =>
      'Ekki tókst að hlaða inn bókamerkjum. Reyndu aftur.';

  @override
  String get bookmarkSavedMessage => 'Bókamerki vistað';

  @override
  String get couldNotSaveBookmark => 'Ekki tókst að vista bókamerki.';

  @override
  String get noBookmarksMatchFilter => 'Engin bókamerki passa við þessa síu.';

  @override
  String get clearFilter => 'Hreinsa síu';

  @override
  String get traditionalOrderLabel => 'Hefðbundin pöntun';

  @override
  String get alphabeticalOrderLabel => 'Stafrófsröð';

  @override
  String get bookmarksTabLabel => 'Tenglar';

  @override
  String get fullChapter => 'Allur kaflinn';

  @override
  String get addBookmark => 'Bæta við bókamerki';

  @override
  String get selectVerse => 'Velja vers';

  @override
  String get labelOptional => 'Merki (valfrjálst)';

  @override
  String get notesOptional => 'Athugasemdir (valfrjálst)';

  @override
  String get save => 'Vista';

  @override
  String get goToVerse => 'Opna vers';

  @override
  String verseTitle(Object verse) {
    return 'Verse $verse';
  }

  @override
  String chapterTitle(Object chapter) {
    return 'Kafli $chapter';
  }

  @override
  String get switchToFullChapter => 'Skipta yfir í fullan kafla bookmark';

  @override
  String get bookmarkSheetCancel => 'Cancel, loka bókamerkjablað';

  @override
  String get pickCustomAccent => 'Veldu sérsniðinn hreim';

  @override
  String get apply => 'Apply';

  @override
  String get custom => 'Custom';

  @override
  String get brightnessSystem => 'System';

  @override
  String get brightnessLight => 'Light';

  @override
  String get brightnessDark => 'Dark';

  @override
  String get selectBook => 'Veldu bók';

  @override
  String get bookmarkFilterAll => 'Veldu a';

  @override
  String get bookmarkFilterUnlabeled => 'Ómerkt';

  @override
  String get bookmarkSortRecent => 'Nýlegt fyrst';

  @override
  String get bookmarkSortCanonical => 'Canonical röð';

  @override
  String get chapterRetry => 'Reyna aftur';

  @override
  String get fontSize => 'Leturstærð';

  @override
  String fontSizePixels(Object size) {
    return '$size px';
  }

  @override
  String get fontSizeSlider => 'Leturstærð sleði';

  @override
  String get fontSizeSliderHint => 'Strjúktu til að stilla frá 12 til 28';

  @override
  String get fontPreview => '„Í upphafi skapaði Guð himin og jörð.\" — Gen 1:1';

  @override
  String get showVerseNumbersSubtitle =>
      'Sýna yfirlit yfir versanúmer á lestrarglugganum.';

  @override
  String get showSectionHeadingsSubtitle =>
      'Sýna kafla og sálmafyrirsagnir milli kafla.';

  @override
  String get wordsOfChristSubtitle =>
      'Sýna orð Jesú með rauðu letri. Afvirkja fyrir einn textalit.';

  @override
  String get verseFormatTitle => 'Verse Format';

  @override
  String get verseFormatSubtitle =>
      'Veldu hvernig ritningartexti er settur fram.';

  @override
  String get paragraphMode => 'Par/9';

  @override
  String get verseListMode => 'Verse list';

  @override
  String get paragraphModeTooltip => 'Málsgreinarhamur';

  @override
  String get verseListModeTooltip => 'Vers-listahamur';

  @override
  String get paragraphModeDescription =>
      'Textinn flæðir stöðugt með inndregnum málsgreinum eins og prentaðri biblíu.';

  @override
  String get verseListModeDescription =>
      'Hver ritningargrein byrjar á sinni línu og því er auðvelt að koma auga á versahópa.';

  @override
  String get deleteBookmarkTooltip => 'Breyta nÃºmeri upphafssÃ­Ã°u';

  @override
  String deleteBookmarkSemantics(Object reference) {
    return 'Eyða bókamerki $reference';
  }

  @override
  String sortBookmarksTooltip(Object sortOrder) {
    return 'Raða: $sortOrder';
  }

  @override
  String get noBookmarksYet => 'Engin bókamerki enn.';

  @override
  String get noBookmarksYetHint =>
      'Pikkaðu á bókamerkið við lestur til að vista staðsetningu.';

  @override
  String bookmarkReferenceNavigationError(Object reference) {
    return 'Ekki tókst að fara í $reference.';
  }

  @override
  String themeCardSemantics(Object description, Object name, Object selected) {
    return '$name theme$selected. $description';
  }

  @override
  String get selectedThemeSuffix =>
      'Ertu viss um að þú viljir eyða völdu svæði?';

  @override
  String get customisableAccentDescription =>
      'Áherslulitur sem hægt er að sérsníða.';

  @override
  String get fixedPaletteDescription => 'Lagað litaspjald.';

  @override
  String accentColourTitle(Object themeName) {
    return 'Accent Colour — $themeName';
  }

  @override
  String get brightnessMode => 'BRIGHTNESS MODE';

  @override
  String get lightMode => 'Light mode';

  @override
  String get followSystemMode => 'Follow system mode';

  @override
  String get darkMode => 'Dark mode';

  @override
  String get customColourPicker => 'Custom color picker';

  @override
  String get customColourTooltip => 'Custom color... ';

  @override
  String get couldNotLoadBooks =>
      'Could ekki hlaða bókalistanum. Reyndu aftur.';

  @override
  String chapterLabel(Object chapter) {
    return 'Chapter $chapter';
  }

  @override
  String get traditionalOrderBooks => 'Hefðbundnar pantanir bækur';

  @override
  String get alphabeticalOrderBooks => 'Bæta við bókamerki';

  @override
  String get home => 'Veldu bók og kafla';

  @override
  String get addBookmarkTooltip => 'Bæta við bókamerki';

  @override
  String get chooseBookChapter => 'Veldu bók og kafla';

  @override
  String get chooseVerse => 'Veldu vers';

  @override
  String get bookChapterQuickNavigation => 'Bók og kafli fljótur siglingar';

  @override
  String get verseQuickNavigation => 'Verse fljótur siglingar';

  @override
  String get backToBooks => 'Til baka í bækur';

  @override
  String get selectBookTitle => 'Velja bók';

  @override
  String selectChapterTitle(Object bookName) {
    return 'Veldu kafla ($bookName)';
  }

  @override
  String chapterSelectionLabel(Object chapter) {
    return 'Kafli $chapter';
  }

  @override
  String verseSelectionLabel(Object verse) {
    return 'Verse $verse';
  }

  @override
  String fullChapterReference(Object bookName, Object chapter) {
    return 'Allur kaflinn: $bookName $chapter';
  }

  @override
  String get memorizeHint => 'Leggja á minnið';

  @override
  String get addNoteHint => 'Bættu við athugasemd...';

  @override
  String get languageSearchHint => 'Leita að tungumálum';

  @override
  String get languageModuleInstalled => 'Uppsett þemu';

  @override
  String get languageModulePending => 'Vélþýðing í bið';

  @override
  String get languageNoMatches => 'Engin tungumál passa við leitina þína.';

  @override
  String get languageCatalogDescription =>
      'Tungumál merkt sem uppsett vinna án nettengingar. Öðrum tungumálum verður bætt við sem vélþýddum einingum.';

  @override
  String get saveBookmarkSemantics => 'Save bookmark';

  @override
  String get couldNotLoadChapter => 'Gæti ekki hlaðið kaflanum. Reyndu aftur.';

  @override
  String get couldNotLoadChapters =>
      'Gæti ekki hlaðið inn köflum. Reyndu aftur.';

  @override
  String verseWithText(Object text, Object verse) {
    return 'Verse $verse: $text';
  }

  @override
  String accentSwatchSemantics(Object name, Object selected) {
    return '$name hreimlit$selected';
  }

  @override
  String get oldTestament => 'Gamla testamentið';

  @override
  String get newTestament => 'Nýja testamentið';

  @override
  String get deuterocanonApocrypha => 'Deuterocanon / Apocrypha';
}
