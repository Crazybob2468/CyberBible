// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Luxembourgish Letzeburgesch (`lb`).
class AppLocalizationsLb extends AppLocalizations {
  AppLocalizationsLb([String locale = 'lb']) : super(locale);

  @override
  String get settingsTitle => 'Astellungen';

  @override
  String get languageSection => 'Sprooch';

  @override
  String get useSystemLanguage => 'System-Sprooch benotzen';

  @override
  String get useSystemLanguageSubtitle =>
      'D\'Sprooch vum Apparat als Standard benotzen.';

  @override
  String get currentLanguage => 'Aktuell Sprooch';

  @override
  String get appLanguage => 'App-Sprooch';

  @override
  String get chooseLanguage => 'Sprooch auswielen';

  @override
  String get theme => 'Thema';

  @override
  String get appearance => 'Erscheinungsbild';

  @override
  String get textSection => 'Text';

  @override
  String get readingFormatSection => 'Liesformat';

  @override
  String get displaySection => 'Affichage';

  @override
  String get verseNumbers => 'Versnummeren';

  @override
  String get sectionHeadings => 'Rubriken';

  @override
  String get redLetterText => 'Rout Schrëft';

  @override
  String get selectABook => 'Buch auswielen';

  @override
  String get traditionalOrder => 'Traditionell Reiefolleg';

  @override
  String get alphabeticalOrder => 'Alphabetesch Reiefolleg';

  @override
  String get bookmarks => 'Lieszeechen';

  @override
  String get retry => 'Nach eng Kéier probéieren';

  @override
  String get chooseTheme => 'Thema auswielen';

  @override
  String get customisableThemes => 'Personaliséierbar Themen';

  @override
  String get customisableThemesSubtitle =>
      'Op eng Kaart tippen, fir eng Akzentfaarf auszewielen. \"Classic White\" ënnerstëtzt och déi hell, donkel a System-Modussen.';

  @override
  String get setThemes => 'FEST THEMEN';

  @override
  String get setThemesSubtitle =>
      'Fix, mat Suergfalt zesummegestallt Faarfpaletten. Keng Upassung néideg; einfach tippen, fir se unzewenden.';

  @override
  String get deleteBookmarkQuestion => 'Lieszeeche läschen?';

  @override
  String get cancel => 'Ofbriechen';

  @override
  String get delete => 'Läschen';

  @override
  String get bookmarkSaved => 'Lieszeeche gespäichert';

  @override
  String get couldNotDeleteBookmark => 'D\'Lieszeeche konnt net geläscht ginn.';

  @override
  String couldNotNavigate(Object reference) {
    return 'Konnt net op $reference navigéieren.';
  }

  @override
  String get pageNotFound => 'Säit net fonnt';

  @override
  String noRouteDefined(Object routeName) {
    return 'Keng Route fir \"$routeName\" definéiert';
  }

  @override
  String get english => 'Englesch';

  @override
  String get spanish => 'Spuenesch';

  @override
  String get systemDefault => 'Systemstandard';

  @override
  String get languageStatusEnglish => 'Englesch gëtt als Ersatz benotzt';

  @override
  String get languageStatusSystem => 'System-Sprooch gëtt benotzt';

  @override
  String languageStatusSelected(Object languageName) {
    return 'Ausgewielte Sprooch: $languageName';
  }

  @override
  String get themeLabel => 'Thema';

  @override
  String get notFoundTitle => 'Säit net fonnt';

  @override
  String get loadingCyberBible => 'Cyber-Bibel gëtt gelueden...';

  @override
  String get couldNotOpenDatabase =>
      'D\'Bibel-Datenbank konnt net opgemaach ginn. Probéiert et nach eng Kéier.';

  @override
  String get homeTagline => 'Eng gratis Open-Source-App fir d\'Bibelstudium';

  @override
  String get readTheBible => 'D\'Bibel liesen';

  @override
  String get settingsTooltip => 'Astellungen';

  @override
  String get themeChoose => 'Thema auswielen';

  @override
  String get customThemes => 'Personaliséierbar Themen';

  @override
  String get customThemesSubtitle =>
      'Op eng Kaart tippen, fir eng Akzentfaarf auszewielen. \"Classic White\" ënnerstëtzt och déi hell, donkel a System-Modussen.';

  @override
  String get setThemesLabel => 'FEST THEMEN';

  @override
  String get deleteBookmarkDialog => 'Lieszeeche läschen?';

  @override
  String removeBookmarkMessage(Object details, Object reference) {
    return '\"$reference\"$details ewechhuelen?\n\nDës Aktioun kann net réckgängeg gemaach ginn.';
  }

  @override
  String get couldNotLoadBookmarks =>
      'D\'Lieszeeche konnten net geluede ginn. Probéiert et nach eng Kéier.';

  @override
  String get bookmarkSavedMessage => 'Lieszeeche gespäichert';

  @override
  String get couldNotSaveBookmark =>
      'D\'Lieszeeche konnt net gespäichert ginn.';

  @override
  String get noBookmarksMatchFilter => 'Keng Lieszeeche passen op dëse Filter.';

  @override
  String get clearFilter => 'Filter läschen';

  @override
  String get traditionalOrderLabel => 'Traditionell Reiefolleg';

  @override
  String get alphabeticalOrderLabel => 'Alphabetesch Reiefolleg';

  @override
  String get bookmarksTabLabel => 'Lieszeechen';

  @override
  String get fullChapter => 'Dat ganzt Kapitel';

  @override
  String get addBookmark => 'Lieszeeche derbäisetzen';

  @override
  String get selectVerse => 'Vers auswielen';

  @override
  String get labelOptional => 'Label (optional)';

  @override
  String get notesOptional => 'Notizen (optional)';

  @override
  String get save => 'Späicheren';

  @override
  String get goToVerse => 'Bei de Vers goen';

  @override
  String verseTitle(Object verse) {
    return 'Vers $verse';
  }

  @override
  String chapterTitle(Object chapter) {
    return 'Kapitel $chapter';
  }

  @override
  String get switchToFullChapter =>
      'Op e Lieszeeche fir dat ganzt Kapitel wiesselen';

  @override
  String get bookmarkSheetCancel =>
      'Ofbriechen an d\'Lieszeechen-Fënster zoumaachen';

  @override
  String get pickCustomAccent => 'Eng personaliséiert Akzentfaarf auswielen';

  @override
  String get apply => 'Uwenden';

  @override
  String get custom => 'Personaliséiert';

  @override
  String get brightnessSystem => 'System';

  @override
  String get brightnessLight => 'Hell';

  @override
  String get brightnessDark => 'Donkel';

  @override
  String get selectBook => 'Buch auswielen';

  @override
  String get bookmarkFilterAll => 'All';

  @override
  String get bookmarkFilterUnlabeled => 'Ouni Label';

  @override
  String get bookmarkSortRecent => 'Neist als éischt';

  @override
  String get bookmarkSortCanonical => 'Kanonesch Reiefolleg';

  @override
  String get chapterRetry => 'Nach eng Kéier probéieren';

  @override
  String get fontSize => 'Schrëftgréisst';

  @override
  String fontSizePixels(Object size) {
    return '$size px';
  }

  @override
  String get fontSizeSlider => 'Schieber fir d\'Schrëftgréisst';

  @override
  String get fontSizeSliderHint => 'Schieben, fir tëschent 12 an 28 unzepassen';

  @override
  String get fontPreview =>
      '\"Am Ufank huet Gott den Himmel an d\'Äerd erschaf.\" — Gen 1:1';

  @override
  String get showVerseNumbersSubtitle =>
      'Versnummeren um Liesbildschierm weisen.';

  @override
  String get showSectionHeadingsSubtitle =>
      'Rubriken a Psalm-Titelen tëschent de Passagen weisen.';

  @override
  String get wordsOfChristSubtitle =>
      'D\'Wierder vum Jesus rout weisen. Desaktivéiert dës Optioun fir eng eenheetlech Textfaarf.';

  @override
  String get verseFormatTitle => 'Versformat';

  @override
  String get verseFormatSubtitle => 'Wielt, wéi de Schrëfttext ugewisen gëtt.';

  @override
  String get paragraphMode => 'Paragraph';

  @override
  String get verseListMode => 'Verslëscht';

  @override
  String get paragraphModeTooltip => 'Paragraph-Modus';

  @override
  String get verseListModeTooltip => 'Verslëscht-Modus';

  @override
  String get paragraphModeDescription =>
      'Den Text leeft kontinuéierlech a liicht ageréckelte Paragraphe weider, wéi an enger gedréckter Bibel.';

  @override
  String get verseListModeDescription =>
      'All Schrëftparagraph fänkt op enger eegener Zeil un, fir Versgruppen einfach ze erkennen.';

  @override
  String get deleteBookmarkTooltip => 'Lieszeeche läschen';

  @override
  String deleteBookmarkSemantics(Object reference) {
    return 'Lieszeeche $reference läschen';
  }

  @override
  String sortBookmarksTooltip(Object sortOrder) {
    return 'Sortéieren: $sortOrder';
  }

  @override
  String get noBookmarksYet => 'Nach keng Lieszeechen.';

  @override
  String get noBookmarksYetHint =>
      'Tippt beim Liesen op d\'Lieszeechen-Ikon, fir eng Plaz ze späicheren.';

  @override
  String bookmarkReferenceNavigationError(Object reference) {
    return 'Konnt net op $reference navigéieren.';
  }

  @override
  String themeCardSemantics(Object description, Object name, Object selected) {
    return 'Thema $name$selected. $description';
  }

  @override
  String get selectedThemeSuffix => ', aktuell ausgewielt';

  @override
  String get customisableAccentDescription => 'Personaliséierbar Akzentfaarf.';

  @override
  String get fixedPaletteDescription => 'Fix Faarfpalette.';

  @override
  String accentColourTitle(Object themeName) {
    return 'Akzentfaarf — $themeName';
  }

  @override
  String get brightnessMode => 'HELLIGKEETS-MODUS';

  @override
  String get lightMode => 'Hell Modus';

  @override
  String get followSystemMode => 'Systemmodus iwwerhuelen';

  @override
  String get darkMode => 'Donkele Modus';

  @override
  String get customColourPicker => 'Personaliséierte Faarfwieler';

  @override
  String get customColourTooltip => 'Personaliséiert Faarf...';

  @override
  String get couldNotLoadBooks =>
      'D\'Bicherlëscht konnt net geluede ginn. Probéiert et nach eng Kéier.';

  @override
  String chapterLabel(Object chapter) {
    return 'Kapitel $chapter';
  }

  @override
  String get traditionalOrderBooks => 'Bicher an traditioneller Reiefolleg';

  @override
  String get alphabeticalOrderBooks => 'Bicher an alphabetescher Reiefolleg';

  @override
  String get home => 'Startsäit';

  @override
  String get addBookmarkTooltip => 'Lieszeeche derbäisetzen';

  @override
  String get chooseBookChapter => 'Buch a Kapitel auswielen';

  @override
  String get chooseVerse => 'Vers auswielen';

  @override
  String get bookChapterQuickNavigation =>
      'Séier Navigatioun bei Buch a Kapitel';

  @override
  String get verseQuickNavigation => 'Séier Navigatioun bei de Vers';

  @override
  String get backToBooks => 'Zréck bei d\'Bicher';

  @override
  String get selectBookTitle => 'Buch auswielen';

  @override
  String selectChapterTitle(Object bookName) {
    return 'Kapitel auswielen ($bookName)';
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
    return 'Ganzt Kapitel: $bookName $chapter';
  }

  @override
  String get memorizeHint => 'Auswenneg léieren';

  @override
  String get addNoteHint => 'Notiz derbäisetzen...';

  @override
  String get languageSearchHint => 'Sprooche sichen';

  @override
  String get languageModuleInstalled => 'Installéiert';

  @override
  String get languageModulePending => 'Maschinell Iwwersetzung ausstoend';

  @override
  String get languageNoMatches => 'Keng Sprooch passt op Är Sich.';

  @override
  String get languageCatalogDescription =>
      'Installéiert Sprooche funktionéieren offline. Aner Sprooche ginn als maschinell iwwersate Moduler dobäigesat.';

  @override
  String get saveBookmarkSemantics => 'Lieszeeche späicheren';

  @override
  String get couldNotLoadChapter =>
      'D\'Kapitel konnt net geluede ginn. Probéiert et nach eng Kéier.';

  @override
  String get couldNotLoadChapters =>
      'D\'Kapitelen konnten net geluede ginn. Probéiert et nach eng Kéier.';

  @override
  String verseWithText(Object text, Object verse) {
    return 'Vers $verse: $text';
  }

  @override
  String accentSwatchSemantics(Object name, Object selected) {
    return 'Akzentfaarf $name$selected';
  }

  @override
  String get oldTestament => 'Alen Testament';

  @override
  String get newTestament => 'Neien Testament';

  @override
  String get deuterocanonApocrypha => 'Deuterokanon / Apokryphen';
}
