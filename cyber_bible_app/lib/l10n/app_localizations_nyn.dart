// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Nyankole (`nyn`).
class AppLocalizationsNyn extends AppLocalizations {
  AppLocalizationsNyn([String locale = 'nyn']) : super(locale);

  @override
  String get settingsTitle => 'Eby\'okutegeka';

  @override
  String get languageSection => 'Orurimi';

  @override
  String get useSystemLanguage => 'Kozesa orurimi rwa sisitemu';

  @override
  String get useSystemLanguageSubtitle =>
      'Kozesa orurimi rw\'ekyoma nk\'orurimi orw\'obutandikiro.';

  @override
  String get currentLanguage => 'Orurimi oruriho';

  @override
  String get appLanguage => 'Orurimi rw\'app';

  @override
  String get chooseLanguage => 'Toorana orurimi';

  @override
  String get theme => 'Omuringo';

  @override
  String get appearance => 'Oku-reebeka';

  @override
  String get textSection => 'Ebigambo';

  @override
  String get readingFormatSection => 'Omuringo gw\'okusoma';

  @override
  String get displaySection => 'Kwereka';

  @override
  String get verseNumbers => 'Enamba z\'emyaka';

  @override
  String get sectionHeadings => 'Emitwe y\'ebicweka';

  @override
  String get redLetterText => 'Ebigambo ebitukura';

  @override
  String get selectABook => 'Toorana ekitabo';

  @override
  String get traditionalOrder => 'Entebeekanisa y\'obuhangwa';

  @override
  String get alphabeticalOrder => 'Entebeekanisa y\'ennukuta';

  @override
  String get bookmarks => 'Obubonero';

  @override
  String get retry => 'Gyezaho kandi';

  @override
  String get chooseTheme => 'Toorana omuringo';

  @override
  String get customisableThemes => 'Emiringo ey\'okuhindura';

  @override
  String get customisableThemesSubtitle =>
      'Koonaho ekarita kutorana langi. \"Classic White\" neetambura n\'emiringo y\'omushana, omwirima, na sisitemu.';

  @override
  String get setThemes => 'EMIRINGO ETATENGUUKA';

  @override
  String get setThemesSubtitle =>
      'Entebeekanisa za langi eziteetenguusibwa, ezakozirwe gye. Tihariho kuhindura; koonaho kuzitandikisa.';

  @override
  String get deleteBookmarkQuestion => 'Siba akabonero?';

  @override
  String get cancel => 'Hayo';

  @override
  String get delete => 'Siba';

  @override
  String get bookmarkSaved => 'Akabonero kahairwe';

  @override
  String get couldNotDeleteBookmark => 'Tindikubaasa kusiba akabonero.';

  @override
  String couldNotNavigate(Object reference) {
    return 'Tindikubaasa kugenda $reference.';
  }

  @override
  String get pageNotFound => 'Orupapura tirwabonirwe';

  @override
  String noRouteDefined(Object routeName) {
    return 'Tihariho muhanda ogwetebeekanisibwe ahabw\'\"$routeName\"';
  }

  @override
  String get english => 'Orungyereza';

  @override
  String get spanish => 'Orusipani';

  @override
  String get systemDefault => 'Eky\'omusingi kya sisitemu';

  @override
  String get languageStatusEnglish =>
      'Orungyereza nirukozesibwa nk\'orurimi rw\'okuhindura';

  @override
  String get languageStatusSystem => 'Orurimi rwa sisitemu nirukozesibwa';

  @override
  String languageStatusSelected(Object languageName) {
    return 'Orurimi orwatorainwe: $languageName';
  }

  @override
  String get themeLabel => 'Omuringo';

  @override
  String get notFoundTitle => 'Orupapura tirwabonirwe';

  @override
  String get loadingCyberBible => 'Cyber Bible neetwarwa...';

  @override
  String get couldNotOpenDatabase =>
      'Tindikubaasa kwingura omwanya gw\'ebitabo bya Baibuli. Gyezaho kandi.';

  @override
  String get homeTagline =>
      'App y\'okwega Baibuli ey\'obwerere kandi ey\'omusingi ogugurwirwe';

  @override
  String get readTheBible => 'Soma Baibuli';

  @override
  String get settingsTooltip => 'Eby\'okutegeka';

  @override
  String get themeChoose => 'Toorana omuringo';

  @override
  String get customThemes => 'Emiringo ey\'okuhindura';

  @override
  String get customThemesSubtitle =>
      'Koonaho ekarita kutorana langi. \"Classic White\" neetambura n\'emiringo y\'omushana, omwirima, na sisitemu.';

  @override
  String get setThemesLabel => 'EMIRINGO ETATENGUUKA';

  @override
  String get deleteBookmarkDialog => 'Siba akabonero?';

  @override
  String removeBookmarkMessage(Object details, Object reference) {
    return 'Oihireho \"$reference\"$details?\n\nEki tikirikubaasa kugarurwa.';
  }

  @override
  String get couldNotLoadBookmarks =>
      'Tindikubaasa kutwara obubonero. Gyezaho kandi.';

  @override
  String get bookmarkSavedMessage => 'Akabonero kahairwe';

  @override
  String get couldNotSaveBookmark => 'Tindikubaasa kuha akabonero.';

  @override
  String get noBookmarksMatchFilter =>
      'Tihariho kabonero akarikuhika aha kuzaarura oku.';

  @override
  String get clearFilter => 'Siba okuzaarura';

  @override
  String get traditionalOrderLabel => 'Entebeekanisa y\'obuhangwa';

  @override
  String get alphabeticalOrderLabel => 'Entebeekanisa y\'ennukuta';

  @override
  String get bookmarksTabLabel => 'Obubonero';

  @override
  String get fullChapter => 'Esura yoona';

  @override
  String get addBookmark => 'Yongera akabonero';

  @override
  String get selectVerse => 'Toorana omwaka';

  @override
  String get labelOptional => 'Akateekateeko (tikikyetengyesa)';

  @override
  String get notesOptional => 'Eby\'okwijuka (tikibyetengyesa)';

  @override
  String get save => 'Ha';

  @override
  String get goToVerse => 'Genda aha mwaka';

  @override
  String verseTitle(Object verse) {
    return 'Omwaka $verse';
  }

  @override
  String chapterTitle(Object chapter) {
    return 'Esura $chapter';
  }

  @override
  String get switchToFullChapter => 'Hindura aha kabonero k\'esura yoona';

  @override
  String get bookmarkSheetCancel =>
      'Hayo kandi yegarire ekipande ky\'obubonero';

  @override
  String get pickCustomAccent => 'Toorana langi ey\'okuhindura';

  @override
  String get apply => 'Kozesa';

  @override
  String get custom => 'Eyetorainwe';

  @override
  String get brightnessSystem => 'Sisitemu';

  @override
  String get brightnessLight => 'Omushana';

  @override
  String get brightnessDark => 'Omwirima';

  @override
  String get selectBook => 'Toorana ekitabo';

  @override
  String get bookmarkFilterAll => 'Byona';

  @override
  String get bookmarkFilterUnlabeled => 'Tihariho akateekateeko';

  @override
  String get bookmarkSortRecent => 'Ebihyaka kubanza';

  @override
  String get bookmarkSortCanonical => 'Entebeekanisa y\'ebitabo';

  @override
  String get chapterRetry => 'Gyezaho kandi';

  @override
  String get fontSize => 'Obuhango bw\'ennukuta';

  @override
  String fontSizePixels(Object size) {
    return '$size px';
  }

  @override
  String get fontSizeSlider => 'Ekicweka ky\'obuhango bw\'ennukuta';

  @override
  String get fontSizeSliderHint => 'Sindikira kuhindura kuruga 12 kuhika 28';

  @override
  String get fontPreview =>
      '\"Omu kubanza Ruhanga akahanga iguru n\'ensi.\" — Kut 1:1';

  @override
  String get showVerseNumbersSubtitle =>
      'Yoreka enamba z\'emyaka aha rupapura rw\'okusoma.';

  @override
  String get showSectionHeadingsSubtitle =>
      'Yoreka emitwe y\'ebicweka na za Zaburi ahagati y\'ebicweka.';

  @override
  String get wordsOfChristSubtitle =>
      'Yoreka ebigambo bya Yesu n\'orangi rutukura. Zimya kurora langi emwe y\'ebigambo.';

  @override
  String get verseFormatTitle => 'Entebeekanisa y\'omwaka';

  @override
  String get verseFormatSubtitle =>
      'Toorana oku ebigambo by\'Ebyahandiikirwe birikuteebekanisa.';

  @override
  String get paragraphMode => 'Ekitundu';

  @override
  String get verseListMode => 'Orutonde rw\'emyaka';

  @override
  String get paragraphModeTooltip => 'Omuringo gw\'ekitundu';

  @override
  String get verseListModeTooltip => 'Omuringo gw\'orutonde rw\'emyaka';

  @override
  String get paragraphModeDescription =>
      'Ebigambo nibitebeekanisibwa omu bicweka ebiriho, nk\'omu Baibuli eyaacapwa.';

  @override
  String get verseListModeDescription =>
      'Buri kitundu ky\'Ebyahandiikirwe nikitandikira aha murongo gwakyo, kugira ngu emigwi y\'emyaka ereebeke gye.';

  @override
  String get deleteBookmarkTooltip => 'Siba akabonero';

  @override
  String deleteBookmarkSemantics(Object reference) {
    return 'Siba akabonero $reference';
  }

  @override
  String sortBookmarksTooltip(Object sortOrder) {
    return 'Teebekanisa: $sortOrder';
  }

  @override
  String get noBookmarksYet => 'Tihariho kabonero kaabaireho.';

  @override
  String get noBookmarksYetHint =>
      'Koonaho ekishushani ky\'akabonero omu kusoma kuha ekifo.';

  @override
  String bookmarkReferenceNavigationError(Object reference) {
    return 'Tindikubaasa kugenda $reference.';
  }

  @override
  String themeCardSemantics(Object description, Object name, Object selected) {
    return 'Omuringo $name$selected. $description';
  }

  @override
  String get selectedThemeSuffix => ', gwatorainwe hati';

  @override
  String get customisableAccentDescription => 'Langi ey\'okuhindura.';

  @override
  String get fixedPaletteDescription =>
      'Entebeekanisa ya langi etatenguusibwa.';

  @override
  String accentColourTitle(Object themeName) {
    return 'Langi — $themeName';
  }

  @override
  String get brightnessMode => 'OMURINGO GW\'OMUSHANA';

  @override
  String get lightMode => 'Omuringo gw\'omushana';

  @override
  String get followSystemMode => 'Kuratira omuringo gwa sisitemu';

  @override
  String get darkMode => 'Omuringo gw\'omwirima';

  @override
  String get customColourPicker => 'Omutooranirizi wa langi ey\'okuhindura';

  @override
  String get customColourTooltip => 'Langi ey\'okuhindura...';

  @override
  String get couldNotLoadBooks =>
      'Tindikubaasa kutwara orutonde rw\'ebitabo. Gyezaho kandi.';

  @override
  String chapterLabel(Object chapter) {
    return 'Esura $chapter';
  }

  @override
  String get traditionalOrderBooks => 'Ebitabo omu ntebeekanisa y\'obuhangwa';

  @override
  String get alphabeticalOrderBooks => 'Ebitabo omu ntebeekanisa y\'ennukuta';

  @override
  String get home => 'Eka';

  @override
  String get addBookmarkTooltip => 'Yongera akabonero';

  @override
  String get chooseBookChapter => 'Toorana ekitabo n\'esura';

  @override
  String get chooseVerse => 'Toorana omwaka';

  @override
  String get bookChapterQuickNavigation => 'Genda juba aha kitabo n\'esura';

  @override
  String get verseQuickNavigation => 'Genda juba aha mwaka';

  @override
  String get backToBooks => 'Garuka aha bitabo';

  @override
  String get selectBookTitle => 'Toorana ekitabo';

  @override
  String selectChapterTitle(Object bookName) {
    return 'Toorana esura ($bookName)';
  }

  @override
  String chapterSelectionLabel(Object chapter) {
    return 'Esura $chapter';
  }

  @override
  String verseSelectionLabel(Object verse) {
    return 'Omwaka $verse';
  }

  @override
  String fullChapterReference(Object bookName, Object chapter) {
    return 'Esura yoona: $bookName $chapter';
  }

  @override
  String get memorizeHint => 'Yijuke';

  @override
  String get addNoteHint => 'Yongera eby\'okwijuka...';

  @override
  String get languageSearchHint => 'Zaarura endimi';

  @override
  String get languageModuleInstalled => 'Eteirweho';

  @override
  String get languageModulePending => 'Okuhindura kw\'ekyoma nikuteegerera';

  @override
  String get languageNoMatches =>
      'Tihariho rurimi orurikuhika aha kuzaarura kwawe.';

  @override
  String get languageCatalogDescription =>
      'Endimi eziteirweho nizikora hatariho yintaneeti. Endimi ezindi nizongerwaho nk\'ebicweka ebyahindwirwe ekyoma.';

  @override
  String get saveBookmarkSemantics => 'Ha akabonero';

  @override
  String get couldNotLoadChapter =>
      'Tindikubaasa kutwara esura. Gyezaho kandi.';

  @override
  String get couldNotLoadChapters =>
      'Tindikubaasa kutwara esura. Gyezaho kandi.';

  @override
  String verseWithText(Object text, Object verse) {
    return 'Omwaka $verse: $text';
  }

  @override
  String accentSwatchSemantics(Object name, Object selected) {
    return 'Langi $name$selected';
  }

  @override
  String get oldTestament => 'Endagaano enkuru';

  @override
  String get newTestament => 'Endagaano ensya';

  @override
  String get deuterocanonApocrypha => 'Deuterokanon / Apokirifa';
}
