// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Chiga (`cgg`).
class AppLocalizationsCgg extends AppLocalizations {
  AppLocalizationsCgg([String locale = 'cgg']) : super(locale);

  @override
  String get settingsTitle => 'Okutebekanisa';

  @override
  String get languageSection => 'Orurimi';

  @override
  String get useSystemLanguage => 'Kozesa orurimi rw\'enkora';

  @override
  String get useSystemLanguageSubtitle =>
      'Hikanisa orurimi rw’ekikwato nk’oku kiri.';

  @override
  String get currentLanguage => 'Orurimi oruriho hati';

  @override
  String get appLanguage => 'Orurimi rwa app';

  @override
  String get chooseLanguage => 'Toorana orurimi';

  @override
  String get theme => 'Omutwe';

  @override
  String get appearance => 'Endebeka';

  @override
  String get textSection => 'Ekihandiiko';

  @override
  String get readingFormatSection => 'Enkora y\'okushoma';

  @override
  String get displaySection => 'Yoreka';

  @override
  String get verseNumbers => 'Enamba z\'orunyiriri';

  @override
  String get sectionHeadings => 'Emitwe y\'ebicweka';

  @override
  String get redLetterText => 'Ekihandiiko ky\'enyuguta erikutukura';

  @override
  String get selectABook => 'Toorana ekitabo';

  @override
  String get traditionalOrder => 'Okuragiira kw\'obuhangwa';

  @override
  String get alphabeticalOrder => 'Okukuratana kwa alfabeti';

  @override
  String get bookmarks => 'Obubonero';

  @override
  String get retry => 'Garuka ogyezeho';

  @override
  String get chooseTheme => 'Toorana omutwe';

  @override
  String get customisableThemes => 'Emitwe erikubaasa kuhindurwa';

  @override
  String get customisableThemesSubtitle =>
      'Kwata aha kaadi kutoorana erangi y’okutaho orurimi. \"Classic White\" nayo neeshagika emiringo y\'Omushana, Omwirima n\'Enkora.';

  @override
  String get setThemes => 'TEEKANAHO EMITWE';

  @override
  String get setThemesSubtitle =>
      'Paleti ezitaine mpinduka, ezikozirwe omu ngaro. Tihariho kuhindura oku orikwenda — kwata aha kugikozesa.';

  @override
  String get deleteBookmarkQuestion => 'Ihaho akabonero?';

  @override
  String get cancel => 'Sazamu';

  @override
  String get delete => 'Ihazamu';

  @override
  String get bookmarkSaved => 'Akabonero kaabiikwa';

  @override
  String get couldNotDeleteBookmark =>
      'Tikirikubaasa kwihaho akamanyiso k\'ekitabo.';

  @override
  String couldNotNavigate(Object reference) {
    return 'Tikirikubaasa kuza ahari $reference.';
  }

  @override
  String get pageNotFound => 'Orupapura Tirushangirwe';

  @override
  String noRouteDefined(Object routeName) {
    return 'Tihariho muhanda ogushobooroirwe ahabwa \"$routeName\"';
  }

  @override
  String get english => 'Orungyereza';

  @override
  String get spanish => 'Orusipaniya';

  @override
  String get systemDefault => 'Enkora y\'okubanza';

  @override
  String get languageStatusEnglish => 'Orungyereza ruriho';

  @override
  String get languageStatusSystem => 'Okukozesa orurimi rw\'enkora';

  @override
  String languageStatusSelected(Object languageName) {
    return 'Orurimi orutoorainwe: $languageName';
  }

  @override
  String get themeLabel => 'Omutwe';

  @override
  String get notFoundTitle => 'Orupapura Tirushangirwe';

  @override
  String get loadingCyberBible => 'Okutaho Baibuli y\'omutimbagano...';

  @override
  String get couldNotOpenDatabase =>
      'Tibarikubaasa kwigura ekibiina kya Baibuli. Hakyiri ogyezeho ogundi murundi.';

  @override
  String get homeTagline =>
      'App ey’okwegyesa abantu Baibuli eya busha kandi ey’okwiguraho';

  @override
  String get readTheBible => 'Shoma Baibuli';

  @override
  String get settingsTooltip => 'Okutebekanisa';

  @override
  String get themeChoose => 'Toorana omutwe';

  @override
  String get customThemes => 'Emitwe erikubaasa kuhindurwa';

  @override
  String get customThemesSubtitle =>
      'Kwata aha kaadi kutoorana erangi y’okutaho orurimi. \"Classic White\" nayo neeshagika emiringo y\'Omushana, Omwirima n\'Enkora.';

  @override
  String get setThemesLabel => 'TEEKANAHO EMITWE';

  @override
  String get deleteBookmarkDialog => 'Ihaho akabonero?';

  @override
  String removeBookmarkMessage(Object details, Object reference) {
    return 'Remove \"$reference\"$details?\n\nThis cannot be undone.\n\nEki tikirikubaasa kugarurwaho.';
  }

  @override
  String get couldNotLoadBookmarks =>
      'Tikirikubaasa kutaho obubonero bw\'ebitabo. Hakyiri ogyezeho ogundi murundi.';

  @override
  String get bookmarkSavedMessage => 'Akabonero kaabiikwa';

  @override
  String get couldNotSaveBookmark => 'Tikirikubaasa kubiika akabonero.';

  @override
  String get noBookmarksMatchFilter =>
      'Tihariho obubonero oburikushushana n\'ekicweka eki.';

  @override
  String get clearFilter => 'Yihaho ekicencura';

  @override
  String get traditionalOrderLabel => 'Okuragiira kw\'obuhangwa';

  @override
  String get alphabeticalOrderLabel => 'Okukuratana kwa alfabeti';

  @override
  String get bookmarksTabLabel => 'Obubonero';

  @override
  String get fullChapter => 'Eshuura yoona';

  @override
  String get addBookmark => 'Yongyeraho akabonero';

  @override
  String get selectVerse => 'Toorana Orunyiriri';

  @override
  String get labelOptional => 'Akabonero (eky\'okutooranamu)';

  @override
  String get notesOptional => 'Ebihandiiko (eky\'okutooranamu)';

  @override
  String get save => 'Biika';

  @override
  String get goToVerse => 'Za aha Runyiriri 3 .';

  @override
  String verseTitle(Object verse) {
    return 'Orunyiriri $verse';
  }

  @override
  String chapterTitle(Object chapter) {
    return 'Eshuura $chapter';
  }

  @override
  String get switchToFullChapter => 'Hindukira aha akamanyiso k\'eshuura yoona';

  @override
  String get bookmarkSheetCancel => 'Sazamu, okingye akamanyiso k\'orupapura';

  @override
  String get pickCustomAccent => 'Toorana enyuguta y\'omutaano';

  @override
  String get apply => 'Shaba';

  @override
  String get custom => 'Omugyenzo';

  @override
  String get brightnessSystem => 'Enkora';

  @override
  String get brightnessLight => 'Omushana';

  @override
  String get brightnessDark => 'Omwirima';

  @override
  String get selectBook => 'Toorana ekitabo';

  @override
  String get bookmarkFilterAll => 'Byona';

  @override
  String get bookmarkFilterUnlabeled => 'Tihariho kamanyiso';

  @override
  String get bookmarkSortRecent => 'Okubanza';

  @override
  String get bookmarkSortCanonical => 'Okuratana kw\'ebiragiro';

  @override
  String get chapterRetry => 'Garuka ogyezeho';

  @override
  String get fontSize => 'Obuhango bwa fonti';

  @override
  String fontSizePixels(Object size) {
    return '$size px';
  }

  @override
  String get fontSizeSlider => 'Obuhango bwa fonti';

  @override
  String get fontSizeSliderHint =>
      'Swipe kuhindura kuruga ahari 12 kuhika ahari 28';

  @override
  String get fontPreview =>
      '\"Omu kutandika Ruhanga akahanga eiguru n\'ensi.\" — Kut 1:15 .';

  @override
  String get showVerseNumbersSubtitle =>
      'Yoreka ebihandiiko ebiri aha mutwe gw’enamba y’orunyiriri aha rupapura rw’okushoma.';

  @override
  String get showSectionHeadingsSubtitle =>
      'Yoreka emitwe y’ebicweka n’eya Zaaburi ahagati y’ebicweka.';

  @override
  String get wordsOfChristSubtitle =>
      'Yoreka ebigambo bya Yesu ebirikwiragura. Remesa ahabw\'erangi emwe y\'ebihandiiko.';

  @override
  String get verseFormatTitle => 'Enkora y\'orunyiriri';

  @override
  String get verseFormatSubtitle =>
      'Toorana oku ebyahandiikirwe bitebeekanisiibwe.';

  @override
  String get paragraphMode => 'Akacweka';

  @override
  String get verseListMode => 'Orukarara rw\'enyuguta';

  @override
  String get paragraphModeTooltip => 'Omuringo gw\'akacweka';

  @override
  String get verseListModeTooltip => 'Omuringo gw\'orunyiriri rw\'orunyiriri';

  @override
  String get paragraphModeDescription =>
      'Ebihandiiko nibiguma nibisheesheka birimu obucweka oburimu obucweka, nk’oku Baibuli ehandiikirwe.';

  @override
  String get verseListModeDescription =>
      'Buri kacweka k’ekyahandiikirwe nikatandikira aha murongooti gwako, ekirikureetera guruupu z’enyuguta kworoba kureeba.';

  @override
  String get deleteBookmarkTooltip => 'Yihaho akabonero';

  @override
  String deleteBookmarkSemantics(Object reference) {
    return 'Ihaho akabonero $reference';
  }

  @override
  String sortBookmarksTooltip(Object sortOrder) {
    return 'Shoroora: $sortOrder';
  }

  @override
  String get noBookmarksYet => 'Tihariho obubonero bw\'ebitabo.';

  @override
  String get noBookmarksYetHint =>
      'Kwata aha kishushani ky’akabonero waaba nooshoma kubaasa kubiika omwanya.';

  @override
  String bookmarkReferenceNavigationError(Object reference) {
    return 'Tikirikubaasa kuza ahari $reference.';
  }

  @override
  String themeCardSemantics(Object description, Object name, Object selected) {
    return '$name theme$selected. $description';
  }

  @override
  String get selectedThemeSuffix => ', obwahati etoorainwe';

  @override
  String get customisableAccentDescription =>
      'Erangi y’okuhurikiza erikubaasa kuhindurwa.';

  @override
  String get fixedPaletteDescription => 'Paleti egumire.';

  @override
  String accentColourTitle(Object themeName) {
    return 'Erangi y’enyuguta — $themeName';
  }

  @override
  String get brightnessMode => 'OMURINGO GW\'OMURENGYE';

  @override
  String get lightMode => 'Omuringo gw\'omushana';

  @override
  String get followSystemMode => 'Kuratirira enkora';

  @override
  String get darkMode => 'Omuringo gw\'omwirima';

  @override
  String get customColourPicker => 'Omutoorani w\'erangi';

  @override
  String get customColourTooltip => 'Erangi y\'omutaano...';

  @override
  String get couldNotLoadBooks =>
      'Tikirikubaasa kutaho orunyiriri rw\'ebitabo. Hakyiri ogyezeho ogundi murundi.';

  @override
  String chapterLabel(Object chapter) {
    return 'Eshuura $chapter';
  }

  @override
  String get traditionalOrderBooks => 'Ebitabo by\'okuragiira eby\'obuhangwa';

  @override
  String get alphabeticalOrderBooks => 'Ebitabo ebirikukuratana omu nyuguta';

  @override
  String get home => 'Eka';

  @override
  String get addBookmarkTooltip => 'Yongyeraho akabonero';

  @override
  String get chooseBookChapter => 'Toorana ekitabo n’eshuura 1 .';

  @override
  String get chooseVerse => 'Toorana omushororongo';

  @override
  String get bookChapterQuickNavigation =>
      'Okugyendera omu kitabo n’eshuura omu bwangu';

  @override
  String get verseQuickNavigation => 'Orunyiriri rwa juba okuraba';

  @override
  String get backToBooks => 'Garuka omu bitabo';

  @override
  String get selectBookTitle => 'Toorana ekitabo';

  @override
  String selectChapterTitle(Object bookName) {
    return 'Toorana Eshuura ($bookName)';
  }

  @override
  String chapterSelectionLabel(Object chapter) {
    return 'Eshuura $chapter';
  }

  @override
  String verseSelectionLabel(Object verse) {
    return 'Orunyiriri $verse';
  }

  @override
  String fullChapterReference(Object bookName, Object chapter) {
    return 'Eshuura yoona: $bookName $chapter';
  }

  @override
  String get memorizeHint => 'Kwata omu mutwe';

  @override
  String get addNoteHint => 'Yongyeraho akahandiiko...';

  @override
  String get languageSearchHint => 'Ronda endimi';

  @override
  String get languageModuleInstalled => 'Kiteirweho';

  @override
  String get languageModulePending =>
      'Okuvunuura kw\'ebyoma kuriyo nikutegyerezibwa';

  @override
  String get languageNoMatches =>
      'Tihariho ndimi ezirikushushana n\'ebi orikuronda.';

  @override
  String get languageCatalogDescription =>
      'Endimi eziteirweho akamanyiso nk’eziteirweho nizikora aha Intaneeti. Endimi ezindi niziija kwongyerwamu nk’ebicweka ebirikuvunuurwa eby’ebyoma.';

  @override
  String get saveBookmarkSemantics => 'Biika akabonero';

  @override
  String get couldNotLoadChapter =>
      'Tikirikubaasa kutaho eshuura. Hakyiri ogyezeho ogundi murundi.';

  @override
  String get couldNotLoadChapters =>
      'Tikirikubaasa kutaho eshuura. Hakyiri ogyezeho ogundi murundi.';

  @override
  String verseWithText(Object text, Object verse) {
    return 'Verse $verse: $text';
  }

  @override
  String accentSwatchSemantics(Object name, Object selected) {
    return '$name erangi y\'okuhandiika$selected';
  }

  @override
  String get oldTestament => 'Endagano enkuru';

  @override
  String get newTestament => 'Endagaano ensya';

  @override
  String get deuterocanonApocrypha =>
      'Eky’Ebiragiro / Ekihandiiko ky’Ebiragiro';

  @override
  String footnoteTitle(Object caller) {
    return 'Footnote $caller';
  }

  @override
  String get closeFootnote => 'Close footnote';

  @override
  String couldNotOpenFootnote(Object reference) {
    return 'Could not open footnote $reference.';
  }

  @override
  String get chapterFootnotesTitle => 'Footnotes';

  @override
  String openScriptureReference(Object reference) {
    return 'Open $reference';
  }

  @override
  String get couldNotLoadFootnotes =>
      'Could not load footnotes. Please try again.';
}
