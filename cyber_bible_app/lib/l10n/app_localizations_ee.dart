// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Ewe (`ee`).
class AppLocalizationsEe extends AppLocalizations {
  AppLocalizationsEe([String locale = 'ee']) : super(locale);

  @override
  String get settingsTitle => 'Ðoɖowo';

  @override
  String get languageSection => 'Gbegbᴐgblᴐ';

  @override
  String get useSystemLanguage => 'Zã ɖoɖowɔɖi ƒe gbegbɔgblɔ';

  @override
  String get useSystemLanguageSubtitle =>
      'Tsɔ mɔ̃a ƒe gbe sɔ kple wo nɔewo le gɔmedzedzea me.';

  @override
  String get currentLanguage => 'Gbe si wodona fifia';

  @override
  String get appLanguage => 'App gbegbɔgblɔ';

  @override
  String get chooseLanguage => 'Tia gbegbɔgblɔ';

  @override
  String get theme => 'Nyati';

  @override
  String get appearance => 'Dzedzeme';

  @override
  String get textSection => 'Nuŋɔɖi';

  @override
  String get readingFormatSection => 'Nuxexlẽ ƒe Nɔnɔme';

  @override
  String get displaySection => 'Ɖeɖe fia';

  @override
  String get verseNumbers => 'Kpukpui Xexlẽdzesiwo';

  @override
  String get sectionHeadings => 'Akpa ƒe Tanyawo';

  @override
  String get redLetterText => 'Ŋɔŋlɔdzesi Dzĩ ƒe Nuŋɔŋlɔ';

  @override
  String get selectABook => 'Tia Agbalẽ aɖe';

  @override
  String get traditionalOrder => 'Dekɔnu ƒe ɖoɖo';

  @override
  String get alphabeticalOrder => 'Alfabeta ƒe ɖoɖo';

  @override
  String get bookmarks => 'Dzesiwo ƒe dzesiwo';

  @override
  String get retry => 'Gadze agbagba ake';

  @override
  String get chooseTheme => 'Tia Tanya';

  @override
  String get customisableThemes => 'Tanya Siwo Woate Ŋu Atrɔ Asi Le';

  @override
  String get customisableThemesSubtitle =>
      'Zi kaɖi aɖe dzi be nàtia gbeɖiɖi ƒe amadede. \"Classic White\" hã doa alɔ Kekeli, Viviti kple System nɔnɔmewo.';

  @override
  String get setThemes => 'ÐO TANYAWO ÐO';

  @override
  String get setThemesSubtitle =>
      'Palette siwo woɖo ɖi, siwo wotsɔ asi wɔe. Mehiã be nàtrɔ asi le eŋu o — zi edzi ko be nàwɔ dɔ.';

  @override
  String get deleteBookmarkQuestion => 'Tutu dzesidenua ɖaa?';

  @override
  String get cancel => 'Te fli ɖe eme';

  @override
  String get delete => 'Ɖe ɖa';

  @override
  String get bookmarkSaved => 'Wodzra agbalẽdzraɖoƒe ɖo';

  @override
  String get couldNotDeleteBookmark => 'Mete ŋu tutu bookmark o.';

  @override
  String couldNotNavigate(Object reference) {
    return 'Mete ŋu yi $reference o.';
  }

  @override
  String get pageNotFound => 'Axa si Womekpɔ O';

  @override
  String noRouteDefined(Object routeName) {
    return 'Womeɖe mɔ aɖeke na \"$routeName\" o.';
  }

  @override
  String get english => 'iŋlisi';

  @override
  String get spanish => 'Español';

  @override
  String get systemDefault => 'System ƒe gɔmedzedze';

  @override
  String get languageStatusEnglish => 'Eŋlisigbe me fallback active';

  @override
  String get languageStatusSystem => 'System language zazã';

  @override
  String languageStatusSelected(Object languageName) {
    return 'Gbe si nètia: $languageName';
  }

  @override
  String get themeLabel => 'Nyati';

  @override
  String get notFoundTitle => 'Axa si Womekpɔ O';

  @override
  String get loadingCyberBible => 'Loading Cyber ​​Biblia ƒe agbalẽ...';

  @override
  String get couldNotOpenDatabase =>
      'Mete ŋu ʋu Biblia ƒe nyatakakadzraɖoƒea o. Taflatse gadze agbagba ake.';

  @override
  String get homeTagline =>
      'Biblia-nusɔsrɔ̃ ƒe dɔwɔnu si woate ŋu azã femaxee eye woate ŋu azãe faa';

  @override
  String get readTheBible => 'Xlẽ Biblia';

  @override
  String get settingsTooltip => 'Ðoɖowo';

  @override
  String get themeChoose => 'Tia Tanya';

  @override
  String get customThemes => 'Tanya Siwo Woate Ŋu Atrɔ Asi Le';

  @override
  String get customThemesSubtitle =>
      'Zi kaɖi aɖe dzi be nàtia gbeɖiɖi ƒe amadede. \"Classic White\" hã doa alɔ Kekeli, Viviti kple System nɔnɔmewo.';

  @override
  String get setThemesLabel => 'ÐO TANYAWO ÐO';

  @override
  String get deleteBookmarkDialog => 'Tutu dzesidenua ɖaa?';

  @override
  String removeBookmarkMessage(Object details, Object reference) {
    return 'Ðe \"$reference\"$details ɖaa?\n\nWomate ŋu atrɔ esia o.';
  }

  @override
  String get couldNotLoadBookmarks =>
      'Mete ŋu tsɔ agbalẽdzesiwo de eme o. Taflatse gadze agbagba ake.';

  @override
  String get bookmarkSavedMessage => 'Wodzra agbalẽdzraɖoƒe ɖo';

  @override
  String get couldNotSaveBookmark => 'Mete ŋu dzra bookmark ɖo o.';

  @override
  String get noBookmarksMatchFilter => 'Dzesi aɖeke mesɔ kple filter sia o.';

  @override
  String get clearFilter => 'Klɔ filter la me';

  @override
  String get traditionalOrderLabel => 'Dekɔnu ƒe ɖoɖo';

  @override
  String get alphabeticalOrderLabel => 'Alfabeta ƒe ɖoɖo';

  @override
  String get bookmarksTabLabel => 'Dzesiwo ƒe dzesiwo';

  @override
  String get fullChapter => 'Ta bliboa';

  @override
  String get addBookmark => 'Tsɔ Bookmark kpee';

  @override
  String get selectVerse => 'Tia Kpukpui';

  @override
  String get labelOptional => 'Label (ne èdi be yeawɔe) .';

  @override
  String get notesOptional => 'De dzesii (ne èdi) .';

  @override
  String get save => 'Dzrae ɖo';

  @override
  String get goToVerse => 'Yi Kpukpui 1 lia dzi';

  @override
  String verseTitle(Object verse) {
    return 'Kpukpui $verse';
  }

  @override
  String chapterTitle(Object chapter) {
    return 'Ta CBVTEƑE ƑE NUÐEÐEŊUTI0TOKEN $chapter';
  }

  @override
  String get switchToFullChapter => 'Trɔ ɖe ta bliboa ƒe dzesidenu ŋu';

  @override
  String get bookmarkSheetCancel => 'Te fli ɖe eme, tu dzesidegbalẽvia';

  @override
  String get pickCustomAccent => 'Tia gbeɖiɖi si nèzãna ɖe ɖoɖo nu';

  @override
  String get apply => 'Tsᴐe wᴐ dᴐ';

  @override
  String get custom => 'Dekᴐnu';

  @override
  String get brightnessSystem => 'Mɔnu';

  @override
  String get brightnessLight => 'Kekeli';

  @override
  String get brightnessDark => 'Nyrɔ';

  @override
  String get selectBook => 'Tia Agbalẽ aɖe';

  @override
  String get bookmarkFilterAll => 'Katã';

  @override
  String get bookmarkFilterUnlabeled => 'Womeŋlɔ ŋkɔ ɖe edzi o';

  @override
  String get bookmarkSortRecent => 'Nyitsɔ laa ƒe gbãtɔ';

  @override
  String get bookmarkSortCanonical => 'Ðoɖo si wowɔ ɖe se nu';

  @override
  String get chapterRetry => 'Gadze agbagba ake';

  @override
  String get fontSize => 'Font ƒe Agbɔsɔsɔme';

  @override
  String fontSizePixels(Object size) {
    return 'CBVTEƑE ƑE NUÐEÐEŊUTI0TOKEN px $size';
  }

  @override
  String get fontSizeSlider => 'Font ƒe lolome ƒe slider';

  @override
  String get fontSizeSliderHint =>
      'Tsɔ asi ƒoe be nàtrɔ asi le eŋu tso 12 va ɖo 28';

  @override
  String get fontPreview =>
      '\"Le gɔmedzedzea me la, Mawu wɔ dziƒo kple anyigba.\" — 1Mo 1:1';

  @override
  String get showVerseNumbersSubtitle =>
      'Fia kpukpui ƒe xexlẽdzesi siwo le etame le nuxexlẽ ƒe akpaa dzi.';

  @override
  String get showSectionHeadingsSubtitle =>
      'Fia akpa kple Psalmo ƒe tanyawo le kpukpuiawo dome.';

  @override
  String get wordsOfChristSubtitle =>
      'Fia Yesu ƒe nyawo le amadede dzĩ me. Trɔ asi le eŋu na nuŋɔŋlɔ ƒe amadede ɖeka.';

  @override
  String get verseFormatTitle => 'Kpukpui ƒe Nɔnɔme';

  @override
  String get verseFormatSubtitle => 'Tia alesi woɖo mawunyakpukpuia me nyawoe.';

  @override
  String get paragraphMode => 'Memamã';

  @override
  String get verseListMode => 'Kpukpuiwo ƒe xexlẽdzesiwo';

  @override
  String get paragraphModeTooltip => 'Memamã ƒe nɔnɔme';

  @override
  String get verseListModeTooltip => 'Kpukpui-ŋlɔɖi ƒe nɔnɔme';

  @override
  String get paragraphModeDescription =>
      'Nuŋɔŋlɔa sina atraɖii kple memama siwo wotsɔ de eme, abe Biblia si wota ene.';

  @override
  String get verseListModeDescription =>
      'Mawunyakpukpui ƒe memama ɖesiaɖe dze egɔme tso eya ŋutɔ ƒe fli dzi, si wɔe be kpukpuiwo ƒe ƒuƒoƒowo kpɔkpɔ le bɔbɔe.';

  @override
  String get deleteBookmarkTooltip => 'Tsɔ dzesidenu tutu ɖa';

  @override
  String deleteBookmarkSemantics(Object reference) {
    return 'Tsɔ dzesi si nye $reference ɖa';
  }

  @override
  String sortBookmarksTooltip(Object sortOrder) {
    return 'Ƒomedodo: $sortOrder';
  }

  @override
  String get noBookmarksYet => 'Dzeside aɖeke meli haɖe o.';

  @override
  String get noBookmarksYetHint =>
      'Zi dzesidenu ƒe dzesi dzi esime nèle nu xlẽm be nàdzra teƒe aɖe ɖo.';

  @override
  String bookmarkReferenceNavigationError(Object reference) {
    return 'Mete ŋu yi $reference o.';
  }

  @override
  String themeCardSemantics(Object description, Object name, Object selected) {
    return '$name tanyaCBVTEƑEDODODODODODODODODODO.TOKEN. CBVTEƑE ƑE NUÐEÐEŊUTI2TOKEN $selected $description';
  }

  @override
  String get selectedThemeSuffix => ', si wotia fifia';

  @override
  String get customisableAccentDescription =>
      'Gbeɖiɖi ƒe amadede si woate ŋu atrɔ asi le.';

  @override
  String get fixedPaletteDescription => 'Woɖɔ palette ɖo.';

  @override
  String accentColourTitle(Object themeName) {
    return 'Gbeɖiɖi ƒe Amadede — $themeName';
  }

  @override
  String get brightnessMode => 'KEKLE ƑE NUÐEÐEŊUTI';

  @override
  String get lightMode => 'Kekeli ƒe nɔnɔme';

  @override
  String get followSystemMode => 'Dze ɖoɖo ƒe nɔnɔme yome';

  @override
  String get darkMode => 'Viviti ƒe nɔnɔme';

  @override
  String get customColourPicker => 'Amadede tiatiawɔla si wowɔ ɖe ɖoɖo nu';

  @override
  String get customColourTooltip => 'Amadede si wowɔ ɖe ɖoɖo nu...';

  @override
  String get couldNotLoadBooks =>
      'Mete ŋu tsɔ agbalẽawo ƒe xexlẽdzesiwo de eme o. Taflatse gadze agbagba ake.';

  @override
  String chapterLabel(Object chapter) {
    return 'Ta CBVTEƑE ƑE NUÐEÐEŊUTI0TOKEN $chapter';
  }

  @override
  String get traditionalOrderBooks => 'Dekɔnu nudɔdɔ gbalẽwo';

  @override
  String get alphabeticalOrderBooks => 'Alfabeta ƒe ɖoɖo gbalẽwo';

  @override
  String get home => 'Aƒeme';

  @override
  String get addBookmarkTooltip => 'Tsɔ agbalẽ ƒe dzesi kpee';

  @override
  String get chooseBookChapter => 'Tia agbalẽ kple ta';

  @override
  String get chooseVerse => 'Tia kpukpui';

  @override
  String get bookChapterQuickNavigation => 'Agbalẽ kple ta ƒe mɔzɔzɔ kabakaba';

  @override
  String get verseQuickNavigation => 'Kpukpui ƒe mɔzɔzɔ kabakaba';

  @override
  String get backToBooks => 'Trɔ yi agbalẽwo gbɔ';

  @override
  String get selectBookTitle => 'Tia Agbalẽ';

  @override
  String selectChapterTitle(Object bookName) {
    return 'Tia Ta ($bookName) .';
  }

  @override
  String chapterSelectionLabel(Object chapter) {
    return 'Ta CBVTEƑE ƑE NUÐEÐEŊUTI0TOKEN $chapter';
  }

  @override
  String verseSelectionLabel(Object verse) {
    return 'Kpukpui $verse';
  }

  @override
  String fullChapterReference(Object bookName, Object chapter) {
    return 'Ta bliboa: $bookName CBVTEƑEDODODODODODODODODODODODO $chapter';
  }

  @override
  String get memorizeHint => 'Lé nyawo ɖe tame';

  @override
  String get addNoteHint => 'Tsɔ nuŋlɔɖi aɖe kpee...';

  @override
  String get languageSearchHint => 'Di gbegbɔgblɔwo';

  @override
  String get languageModuleInstalled => 'Wodae ɖe mɔ̃a dzi';

  @override
  String get languageModulePending => 'Mɔ̃ dzi gbegɔmeɖeɖe le lalam';

  @override
  String get languageNoMatches => 'Gbe aɖeke mesɔ kple wò didi o.';

  @override
  String get languageCatalogDescription =>
      'Gbegbɔgblɔ siwo wode dzesii be wodae ɖe kɔmpiuta dzi la wɔa dɔ le Internet dzi. Woatsɔ gbe bubuwo akpe ɖe eŋu abe modules siwo gɔme woɖe to mɔ̃ dzi ene.';

  @override
  String get saveBookmarkSemantics => 'Dzra agbalẽ ƒe dzesi ɖo';

  @override
  String get couldNotLoadChapter =>
      'Mete ŋu tsɔ ta la de agba me o. Taflatse gadze agbagba ake.';

  @override
  String get couldNotLoadChapters =>
      'Mete ŋu tsɔ tawo de agba me o. Taflatse gadze agbagba ake.';

  @override
  String verseWithText(Object text, Object verse) {
    return 'Kpukpui $verse: CBVTEƑEDODODODODODODODODO $text';
  }

  @override
  String accentSwatchSemantics(Object name, Object selected) {
    return '$name gbeɖiɖi ƒe amadedeCBVTEƑEDODODODODODODODODO.TOKEN $selected';
  }

  @override
  String get oldTestament => 'Nubabla Xoxoa';

  @override
  String get newTestament => 'Nubabla Yeyea';

  @override
  String get deuterocanonApocrypha => '5 Mose / Apokrifa';
}
