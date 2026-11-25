// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Nhengatu (`yrl`).
class AppLocalizationsYrl extends AppLocalizations {
  AppLocalizationsYrl([String locale = 'yrl']) : super(locale);

  @override
  String get settingsTitle => 'Muatirisawa';

  @override
  String get languageSection => 'Nheenga';

  @override
  String get useSystemLanguage => 'Puranga nheenga sistema';

  @override
  String get useSystemLanguageSubtitle =>
      'Puranga nheenga aparelho nheenga yande.';

  @override
  String get currentLanguage => 'Nheenga yande';

  @override
  String get appLanguage => 'Nheenga app';

  @override
  String get chooseLanguage => 'Puranga nheenga';

  @override
  String get theme => 'Mba\'e';

  @override
  String get appearance => 'Mba\'e rekó';

  @override
  String get textSection => 'Kuatia';

  @override
  String get readingFormatSection => 'Kuatia moñe\'ẽ';

  @override
  String get displaySection => 'Hechuka';

  @override
  String get verseNumbers => 'Mba\'e papera';

  @override
  String get sectionHeadings => 'Mba\'e rery';

  @override
  String get redLetterText => 'Kuatia pytã';

  @override
  String get selectABook => 'Puranga kuatia';

  @override
  String get traditionalOrder => 'Mba\'e rekó yma';

  @override
  String get alphabeticalOrder => 'Mba\'e apara';

  @override
  String get bookmarks => 'Mba\'e rechuka';

  @override
  String get retry => 'Japo jey';

  @override
  String get chooseTheme => 'Puranga mba\'e';

  @override
  String get customisableThemes => 'Mba\'e moambue';

  @override
  String get customisableThemesSubtitle =>
      'Mba\'e rechuka rupi puranga sa\'y. \"Classic White\" ohechuka avei hesakã, pytũ ha sistema rekó.';

  @override
  String get setThemes => 'MBA\'E MBARETE';

  @override
  String get setThemesSubtitle =>
      'Sa\'y imbarete, porã jeporavo. Ndaipóri moambue; jeporu hag̃ua japoko.';

  @override
  String get deleteBookmarkQuestion => 'Mba\'e rechuka mbogue?';

  @override
  String get cancel => 'Joko';

  @override
  String get delete => 'Mbogue';

  @override
  String get bookmarkSaved => 'Mba\'e rechuka oñongatu';

  @override
  String get couldNotDeleteBookmark => 'Ndaikatúi mba\'e rechuka mbogue.';

  @override
  String couldNotNavigate(Object reference) {
    return 'Ndaikatúi $reference peho.';
  }

  @override
  String get pageNotFound => 'Kuatia ndoguejái';

  @override
  String noRouteDefined(Object routeName) {
    return 'Tape ndojapói \"$routeName\" rehe';
  }

  @override
  String get english => 'Inglês';

  @override
  String get spanish => 'Espanhol';

  @override
  String get systemDefault => 'Sistema yande';

  @override
  String get languageStatusEnglish => 'Inglês ojeporu nheenga ambue ramo';

  @override
  String get languageStatusSystem => 'Sistema nheenga ojeporu';

  @override
  String languageStatusSelected(Object languageName) {
    return 'Nheenga purangá: $languageName';
  }

  @override
  String get themeLabel => 'Mba\'e';

  @override
  String get notFoundTitle => 'Kuatia ndoguejái';

  @override
  String get loadingCyberBible => 'Cyber Bible oñemyatyrõ...';

  @override
  String get couldNotOpenDatabase =>
      'Ndaikatúi Bible database oipe\'a. Japo jey.';

  @override
  String get homeTagline => 'Bible moñe\'ẽrã grátis ha open source app';

  @override
  String get readTheBible => 'Bible moñe\'ẽ';

  @override
  String get settingsTooltip => 'Muatirisawa';

  @override
  String get themeChoose => 'Puranga mba\'e';

  @override
  String get customThemes => 'Mba\'e moambue';

  @override
  String get customThemesSubtitle =>
      'Mba\'e rechuka rupi puranga sa\'y. \"Classic White\" ohechuka avei hesakã, pytũ ha sistema rekó.';

  @override
  String get setThemesLabel => 'MBA\'E MBARETE';

  @override
  String get deleteBookmarkDialog => 'Mba\'e rechuka mbogue?';

  @override
  String removeBookmarkMessage(Object details, Object reference) {
    return 'Mbogue \"$reference\"$details?\n\nNdaikatúi jey japo.';
  }

  @override
  String get couldNotLoadBookmarks =>
      'Ndaikatúi mba\'e rechuka oipe\'a. Japo jey.';

  @override
  String get bookmarkSavedMessage => 'Mba\'e rechuka oñongatu';

  @override
  String get couldNotSaveBookmark => 'Ndaikatúi mba\'e rechuka oñongatu.';

  @override
  String get noBookmarksMatchFilter =>
      'Ndaipóri mba\'e rechuka ko filtro rehegua.';

  @override
  String get clearFilter => 'Filder mbogue';

  @override
  String get traditionalOrderLabel => 'Mba\'e rekó yma';

  @override
  String get alphabeticalOrderLabel => 'Mba\'e apara';

  @override
  String get bookmarksTabLabel => 'Mba\'e rechuka';

  @override
  String get fullChapter => 'Capítulo tuicháva';

  @override
  String get addBookmark => 'Mba\'e rechuka moĩ';

  @override
  String get selectVerse => 'Versículo puranga';

  @override
  String get labelOptional => 'Téra (opcional)';

  @override
  String get notesOptional => 'Nota (opcional)';

  @override
  String get save => 'Ñongatu';

  @override
  String get goToVerse => 'Versículo peho';

  @override
  String verseTitle(Object verse) {
    return 'Versículo $verse';
  }

  @override
  String chapterTitle(Object chapter) {
    return 'Capítulo $chapter';
  }

  @override
  String get switchToFullChapter => 'Capítulo tuicháva rechuka moambue';

  @override
  String get bookmarkSheetCancel => 'Joko ha mba\'e rechuka pane oipe\'a';

  @override
  String get pickCustomAccent => 'Sa\'y puranga';

  @override
  String get apply => 'Jeporu';

  @override
  String get custom => 'Puranga';

  @override
  String get brightnessSystem => 'Sistema';

  @override
  String get brightnessLight => 'Hesakã';

  @override
  String get brightnessDark => 'Pytũ';

  @override
  String get selectBook => 'Kuatia puranga';

  @override
  String get bookmarkFilterAll => 'Opavave';

  @override
  String get bookmarkFilterUnlabeled => 'Ndaipóri téra';

  @override
  String get bookmarkSortRecent => 'Ko\'ágã ypy';

  @override
  String get bookmarkSortCanonical => 'Bible rekó';

  @override
  String get chapterRetry => 'Japo jey';

  @override
  String get fontSize => 'Kuatia tuicháva';

  @override
  String fontSizePixels(Object size) {
    return '$size px';
  }

  @override
  String get fontSizeSlider => 'Kuatia tuicháva moambue';

  @override
  String get fontSizeSliderHint => 'Sỹi 12 guive 28 peve moambue hag̃ua';

  @override
  String get fontPreview => '\"Ñepyrũháme Tupã yvága ha yvy ojapo.\" — Gen 1:1';

  @override
  String get showVerseNumbersSubtitle =>
      'Versículo número hechuka moñe\'ẽ pantalla rehe.';

  @override
  String get showSectionHeadingsSubtitle =>
      'Section ha Salmo rery hechuka jehaipyre mbytepe.';

  @override
  String get wordsOfChristSubtitle =>
      'Jesús ñe\'ẽ pytã rehe hechuka. Embogue sa\'y peteĩnte hag̃ua.';

  @override
  String get verseFormatTitle => 'Versículo rekó';

  @override
  String get verseFormatSubtitle =>
      'Eiporavo mba\'éichapa Escritura jehaipyre oñemoĩta.';

  @override
  String get paragraphMode => 'Párrafo';

  @override
  String get verseListMode => 'Versículo lista';

  @override
  String get paragraphModeTooltip => 'Párrafo rekó';

  @override
  String get verseListModeTooltip => 'Versículo lista rekó';

  @override
  String get paragraphModeDescription =>
      'Jehaipyre oho párrafo ñemboty rehe, Biblia oñemboguejávaicha.';

  @override
  String get verseListModeDescription =>
      'Káda Escritura párrafo oñepyrũ línea iñambuéva rehe, versículo aty ojekuaa hag̃ua.';

  @override
  String get deleteBookmarkTooltip => 'Mba\'e rechuka mbogue';

  @override
  String deleteBookmarkSemantics(Object reference) {
    return 'Mba\'e rechuka $reference mbogue';
  }

  @override
  String sortBookmarksTooltip(Object sortOrder) {
    return 'Mbohysýi: $sortOrder';
  }

  @override
  String get noBookmarksYet => 'Ndaipóri mba\'e rechuka gueteri.';

  @override
  String get noBookmarksYetHint =>
      'Moñe\'ẽ aja mba\'e rechuka icon japoko, tenda ñongatu hag̃ua.';

  @override
  String bookmarkReferenceNavigationError(Object reference) {
    return 'Ndaikatúi $reference peho.';
  }

  @override
  String themeCardSemantics(Object description, Object name, Object selected) {
    return 'Mba\'e $name$selected. $description';
  }

  @override
  String get selectedThemeSuffix => ', ko\'ágã purangá';

  @override
  String get customisableAccentDescription => 'Sa\'y moambuéva.';

  @override
  String get fixedPaletteDescription => 'Sa\'y imbarete.';

  @override
  String accentColourTitle(Object themeName) {
    return 'Sa\'y — $themeName';
  }

  @override
  String get brightnessMode => 'HESAKÃ REKÓ';

  @override
  String get lightMode => 'Hesakã rekó';

  @override
  String get followSystemMode => 'Sistema rekó rapykuéri';

  @override
  String get darkMode => 'Pytũ rekó';

  @override
  String get customColourPicker => 'Sa\'y puranga';

  @override
  String get customColourTooltip => 'Sa\'y puranga...';

  @override
  String get couldNotLoadBooks => 'Kuatia lista ndojepe\'ái. Japo jey.';

  @override
  String chapterLabel(Object chapter) {
    return 'Capítulo $chapter';
  }

  @override
  String get traditionalOrderBooks => 'Kuatia yma rekó rehe';

  @override
  String get alphabeticalOrderBooks => 'Kuatia apara rekó rehe';

  @override
  String get home => 'Óga';

  @override
  String get addBookmarkTooltip => 'Mba\'e rechuka moĩ';

  @override
  String get chooseBookChapter => 'Kuatia ha capítulo puranga';

  @override
  String get chooseVerse => 'Versículo puranga';

  @override
  String get bookChapterQuickNavigation => 'Kuatia ha capítulo pya\'e peho';

  @override
  String get verseQuickNavigation => 'Versículo pya\'e peho';

  @override
  String get backToBooks => 'Kuatia kuéra peho jey';

  @override
  String get selectBookTitle => 'Kuatia puranga';

  @override
  String selectChapterTitle(Object bookName) {
    return 'Capítulo puranga ($bookName)';
  }

  @override
  String chapterSelectionLabel(Object chapter) {
    return 'Capítulo $chapter';
  }

  @override
  String verseSelectionLabel(Object verse) {
    return 'Versículo $verse';
  }

  @override
  String fullChapterReference(Object bookName, Object chapter) {
    return 'Capítulo tuicháva: $bookName $chapter';
  }

  @override
  String get memorizeHint => 'Ñemomandu\'a';

  @override
  String get addNoteHint => 'Nota moĩ...';

  @override
  String get languageSearchHint => 'Nheenga reka';

  @override
  String get languageModuleInstalled => 'Oñemoĩ';

  @override
  String get languageModulePending => 'Máquina traducción oha\'arõ';

  @override
  String get languageNoMatches => 'Ndaipóri nheenga nde reka rehegua.';

  @override
  String get languageCatalogDescription =>
      'Nheenga oñemoĩva internet\'ỹre omba\'apo. Nheenga ambue máquina traducción módulo ramo oñemoĩta.';

  @override
  String get saveBookmarkSemantics => 'Mba\'e rechuka ñongatu';

  @override
  String get couldNotLoadChapter => 'Capítulo ndojepe\'ái. Japo jey.';

  @override
  String get couldNotLoadChapters => 'Capítulo kuéra ndojepe\'ái. Japo jey.';

  @override
  String verseWithText(Object text, Object verse) {
    return 'Versículo $verse: $text';
  }

  @override
  String accentSwatchSemantics(Object name, Object selected) {
    return 'Sa\'y $name$selected';
  }

  @override
  String get oldTestament => 'Testamento Antiguo';

  @override
  String get newTestament => 'Testamento Pyahu';

  @override
  String get deuterocanonApocrypha => 'Deuterocanon / Apócrifa';
}
