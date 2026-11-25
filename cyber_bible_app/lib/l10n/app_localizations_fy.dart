// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Western Frisian (`fy`).
class AppLocalizationsFy extends AppLocalizations {
  AppLocalizationsFy([String locale = 'fy']) : super(locale);

  @override
  String get settingsTitle => 'Ynstellings';

  @override
  String get languageSection => 'Taal';

  @override
  String get useSystemLanguage => 'Systeemtaal brûke';

  @override
  String get useSystemLanguageSubtitle =>
      'Brûk standert de taal fan it apparaat.';

  @override
  String get currentLanguage => 'Aktuele taal';

  @override
  String get appLanguage => 'Apptaal';

  @override
  String get chooseLanguage => 'Kies taal';

  @override
  String get theme => 'Tema';

  @override
  String get appearance => 'Uterlik';

  @override
  String get textSection => 'Tekst';

  @override
  String get readingFormatSection => 'Lêsopmaak';

  @override
  String get displaySection => 'Werjefte';

  @override
  String get verseNumbers => 'Fersnûmers';

  @override
  String get sectionHeadings => 'Seksjekoppen';

  @override
  String get redLetterText => 'Reade-lettertekst';

  @override
  String get selectABook => 'Kies in boek';

  @override
  String get traditionalOrder => 'Tradisjonele folchoarder';

  @override
  String get alphabeticalOrder => 'Alfabetyske folchoarder';

  @override
  String get bookmarks => 'Blêdwizers';

  @override
  String get retry => 'Nochris besykje';

  @override
  String get chooseTheme => 'Kies tema';

  @override
  String get customisableThemes => 'Oanpasbere tema\'s';

  @override
  String get customisableThemesSubtitle =>
      'Tik op in kaart om in aksintkleur te kiezen. \"Classic White\" stipet ek Ljocht, Tsjuster en Systeem.';

  @override
  String get setThemes => 'TEMA\'S YNSTELLE';

  @override
  String get setThemesSubtitle =>
      'Fêste, mei de hân makke paletten. Gjin oanpassing nedich - tik om ta te passen.';

  @override
  String get deleteBookmarkQuestion => 'Blêdwizer wiskje?';

  @override
  String get cancel => 'Annulearje';

  @override
  String get delete => 'Wiskje';

  @override
  String get bookmarkSaved => 'Blêdwizer bewarre';

  @override
  String get couldNotDeleteBookmark => 'Koe blêdwizer net wiskje.';

  @override
  String couldNotNavigate(Object reference) {
    return 'Koe net nei $reference gean.';
  }

  @override
  String get pageNotFound => 'Side net fûn';

  @override
  String noRouteDefined(Object routeName) {
    return 'Gjin rûte fêstlein foar \"$routeName\"';
  }

  @override
  String get english => 'Ingelsk';

  @override
  String get spanish => 'Spaansk';

  @override
  String get systemDefault => 'Systeemstandert';

  @override
  String get languageStatusEnglish => 'Ingelske weromfal aktyf';

  @override
  String get languageStatusSystem => 'Systeemtaal wurdt brûkt';

  @override
  String languageStatusSelected(Object languageName) {
    return 'Selektearre taal: $languageName';
  }

  @override
  String get themeLabel => 'Tema';

  @override
  String get notFoundTitle => 'Side net fûn';

  @override
  String get loadingCyberBible => 'Cyber Bible wurdt laden...';

  @override
  String get couldNotOpenDatabase =>
      'Koe de Bibeldatabase net iepenje. Besykje it nochris.';

  @override
  String get homeTagline => 'In frije en iepenboarne-app foar Bibelstúdzje';

  @override
  String get readTheBible => 'Lês de Bibel';

  @override
  String get settingsTooltip => 'Ynstellings';

  @override
  String get themeChoose => 'Kies tema';

  @override
  String get customThemes => 'Oanpasbere tema\'s';

  @override
  String get customThemesSubtitle =>
      'Tik op in kaart om in aksintkleur te kiezen. \"Classic White\" stipet ek Ljocht, Tsjuster en Systeem.';

  @override
  String get setThemesLabel => 'TEMA\'S YNSTELLE';

  @override
  String get deleteBookmarkDialog => 'Blêdwizer wiskje?';

  @override
  String removeBookmarkMessage(Object details, Object reference) {
    return '\"$reference\"$details fuortsmite?\n\nDit kin net ûngedien makke wurde.';
  }

  @override
  String get couldNotLoadBookmarks =>
      'Koe blêdwizers net lade. Besykje it nochris.';

  @override
  String get bookmarkSavedMessage => 'Blêdwizer bewarre';

  @override
  String get couldNotSaveBookmark => 'Koe blêdwizer net bewarje.';

  @override
  String get noBookmarksMatchFilter => 'Gjin blêdwizers passe by dit filter.';

  @override
  String get clearFilter => 'Filter wiskje';

  @override
  String get traditionalOrderLabel => 'Tradisjonele folchoarder';

  @override
  String get alphabeticalOrderLabel => 'Alfabetyske folchoarder';

  @override
  String get bookmarksTabLabel => 'Blêdwizers';

  @override
  String get fullChapter => 'Hiel haadstik';

  @override
  String get addBookmark => 'Blêdwizer tafoegje';

  @override
  String get selectVerse => 'Kies fers';

  @override
  String get labelOptional => 'Label (opsjoneel)';

  @override
  String get notesOptional => 'Notysjes (opsjoneel)';

  @override
  String get save => 'Bewarje';

  @override
  String get goToVerse => 'Gean nei fers';

  @override
  String verseTitle(Object verse) {
    return 'Fers $verse';
  }

  @override
  String chapterTitle(Object chapter) {
    return 'Haadstik $chapter';
  }

  @override
  String get switchToFullChapter => 'Wikselje nei blêdwizer foar hiel haadstik';

  @override
  String get bookmarkSheetCancel => 'Annulearje, blêdwizerblêd slute';

  @override
  String get pickCustomAccent => 'Kies in eigen aksint';

  @override
  String get apply => 'Tapasse';

  @override
  String get custom => 'Oanpast';

  @override
  String get brightnessSystem => 'Systeem';

  @override
  String get brightnessLight => 'Ljocht';

  @override
  String get brightnessDark => 'Tsjuster';

  @override
  String get selectBook => 'Kies in boek';

  @override
  String get bookmarkFilterAll => 'Alles';

  @override
  String get bookmarkFilterUnlabeled => 'Sûnder label';

  @override
  String get bookmarkSortRecent => 'Resintste earst';

  @override
  String get bookmarkSortCanonical => 'Kanonike folchoarder';

  @override
  String get chapterRetry => 'Nochris besykje';

  @override
  String get fontSize => 'Lettergrutte';

  @override
  String fontSizePixels(Object size) {
    return '$size px';
  }

  @override
  String get fontSizeSlider => 'Skúfregelaar foar lettergrutte';

  @override
  String get fontSizeSliderHint => 'Fei om fan 12 nei 28 oan te passen';

  @override
  String get fontPreview =>
      '\"Yn it begjin skoep God de himel en de ierde.\" - Gen 1:1';

  @override
  String get showVerseNumbersSubtitle =>
      'Lit fersnûmers as boppeskreaun sjen yn it lêsskerm.';

  @override
  String get showSectionHeadingsSubtitle =>
      'Lit seksje- en Psalmkoppen tusken passaazjes sjen.';

  @override
  String get wordsOfChristSubtitle =>
      'Lit Jezus syn wurden yn read sjen. Skeakelje út foar ien tekstkleur.';

  @override
  String get verseFormatTitle => 'Fersopmaak';

  @override
  String get verseFormatSubtitle => 'Kies hoe\'t de Skrifttekst opmakke wurdt.';

  @override
  String get paragraphMode => 'Alinea';

  @override
  String get verseListMode => 'Ferslist';

  @override
  String get paragraphModeTooltip => 'Alineamodus';

  @override
  String get verseListModeTooltip => 'Ferslistmodus';

  @override
  String get paragraphModeDescription =>
      'Tekst rint troch mei ynspringende alinea\'s, lykas yn in printe Bibel.';

  @override
  String get verseListModeDescription =>
      'Elke Skriftalinea begjint op in eigen rigel, sadat fersgroepen maklik te sjen binne.';

  @override
  String get deleteBookmarkTooltip => 'Blêdwizer wiskje';

  @override
  String deleteBookmarkSemantics(Object reference) {
    return 'Blêdwizer $reference wiskje';
  }

  @override
  String sortBookmarksTooltip(Object sortOrder) {
    return 'Sortearje: $sortOrder';
  }

  @override
  String get noBookmarksYet => 'Noch gjin blêdwizers.';

  @override
  String get noBookmarksYetHint =>
      'Tik by it lêzen op it blêdwizerikoan om in plak te bewarjen.';

  @override
  String bookmarkReferenceNavigationError(Object reference) {
    return 'Koe net nei $reference gean.';
  }

  @override
  String themeCardSemantics(Object description, Object name, Object selected) {
    return 'Tema $name$selected. $description';
  }

  @override
  String get selectedThemeSuffix => ', no selektearre';

  @override
  String get customisableAccentDescription => 'Oanpasbere aksintkleur.';

  @override
  String get fixedPaletteDescription => 'Fêst palet.';

  @override
  String accentColourTitle(Object themeName) {
    return 'Aksintkleur - $themeName';
  }

  @override
  String get brightnessMode => 'HELDERHEIDSMODUS';

  @override
  String get lightMode => 'Ljochte modus';

  @override
  String get followSystemMode => 'Systeemmodus folgje';

  @override
  String get darkMode => 'Tsjustere modus';

  @override
  String get customColourPicker => 'Eigen kleurkiezer';

  @override
  String get customColourTooltip => 'Eigen kleur…';

  @override
  String get couldNotLoadBooks =>
      'Koe de boekenlist net lade. Besykje it nochris.';

  @override
  String chapterLabel(Object chapter) {
    return 'Haadstik $chapter';
  }

  @override
  String get traditionalOrderBooks => 'Boeken yn tradisjonele folchoarder';

  @override
  String get alphabeticalOrderBooks => 'Boeken yn alfabetyske folchoarder';

  @override
  String get home => 'Thús';

  @override
  String get addBookmarkTooltip => 'Blêdwizer tafoegje';

  @override
  String get chooseBookChapter => 'Kies boek en haadstik';

  @override
  String get chooseVerse => 'Kies fers';

  @override
  String get bookChapterQuickNavigation =>
      'Flugge navigaasje foar boek en haadstik';

  @override
  String get verseQuickNavigation => 'Flugge fersnavigaasje';

  @override
  String get backToBooks => 'Werom nei boeken';

  @override
  String get selectBookTitle => 'Kies boek';

  @override
  String selectChapterTitle(Object bookName) {
    return 'Kies haadstik ($bookName)';
  }

  @override
  String chapterSelectionLabel(Object chapter) {
    return 'Haadstik $chapter';
  }

  @override
  String verseSelectionLabel(Object verse) {
    return 'Fers $verse';
  }

  @override
  String fullChapterReference(Object bookName, Object chapter) {
    return 'Hiel haadstik: $bookName $chapter';
  }

  @override
  String get memorizeHint => 'Ut \'e holle leare';

  @override
  String get addNoteHint => 'Notysje tafoegje...';

  @override
  String get languageSearchHint => 'Talen sykje';

  @override
  String get languageModuleInstalled => 'Ynstallearre';

  @override
  String get languageModulePending => 'Masine-oersetting yn ôfwachting';

  @override
  String get languageNoMatches => 'Gjin talen passe by jo sykaksje.';

  @override
  String get languageCatalogDescription =>
      'Talen dy’t as ynstallearre markearre binne wurkje offline. Oare talen wurde as masine-oersette modules tafoege.';

  @override
  String get saveBookmarkSemantics => 'Blêdwizer bewarje';

  @override
  String get couldNotLoadChapter =>
      'Koe it haadstik net lade. Besykje it nochris.';

  @override
  String get couldNotLoadChapters =>
      'Koe haadstikken net lade. Besykje it nochris.';

  @override
  String verseWithText(Object text, Object verse) {
    return 'Fers $verse: $text';
  }

  @override
  String accentSwatchSemantics(Object name, Object selected) {
    return 'Aksintkleur $name$selected';
  }

  @override
  String get oldTestament => 'Alde Testamint';

  @override
  String get newTestament => 'Nije Testamint';

  @override
  String get deuterocanonApocrypha => 'Deuterokanon / Apokryfen';
}
