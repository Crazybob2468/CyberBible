// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Manx (`gv`).
class AppLocalizationsGv extends AppLocalizations {
  AppLocalizationsGv([String locale = 'gv']) : super(locale);

  @override
  String get settingsTitle => 'Soieyn';

  @override
  String get languageSection => 'Çhengey';

  @override
  String get useSystemLanguage => 'Jean ymmyd jeh çhengey y chorys';

  @override
  String get useSystemLanguageSubtitle =>
      'Coardail rish çhengey yn ghrayt dy cadjin.';

  @override
  String get currentLanguage => 'Çhengey t\'ayn nish';

  @override
  String get appLanguage => 'Çhengey yn app';

  @override
  String get chooseLanguage => 'Reih çhengey';

  @override
  String get theme => 'Theme';

  @override
  String get appearance => 'Cummey';

  @override
  String get textSection => 'Teisht';

  @override
  String get readingFormatSection => 'Cummey lhaih';

  @override
  String get displaySection => 'Taishbyney';

  @override
  String get verseNumbers => 'Nymbraghyn rann';

  @override
  String get sectionHeadings => 'Kione-rammyn';

  @override
  String get redLetterText => 'Teisht jiarg';

  @override
  String get selectABook => 'Reih lioar';

  @override
  String get traditionalOrder => 'Oardagh tradishoonagh';

  @override
  String get alphabeticalOrder => 'Oardagh abbyrdagh';

  @override
  String get bookmarks => 'Commarkyn-lioar';

  @override
  String get retry => 'Jeeagh reesht';

  @override
  String get chooseTheme => 'Reih theme';

  @override
  String get customisableThemes => 'Themean cooishtee';

  @override
  String get customisableThemesSubtitle =>
      'Bwoail er kaart dy reih daah bree. Ta \"Classic White\" cur cooney da modyn Sollys, Dorragh as Cooish myrgeddin.';

  @override
  String get setThemes => 'SOIE THEMEAN';

  @override
  String get setThemesSubtitle =>
      'Paleidyn faggys, jeant lesh laue. Cha nel feme er cooishtey - bwoail dy chur er.';

  @override
  String get deleteBookmarkQuestion => 'Scryss y commark-lioar?';

  @override
  String get cancel => 'Cur ass';

  @override
  String get delete => 'Scryss';

  @override
  String get bookmarkSaved => 'Commark-lioar sauailt';

  @override
  String get couldNotDeleteBookmark =>
      'Cha voddagh y commark-lioar y v\' er ny scryss.';

  @override
  String couldNotNavigate(Object reference) {
    return 'Cha voddagh goll gys $reference.';
  }

  @override
  String get pageNotFound => 'Duillag cha nel ry-akin';

  @override
  String noRouteDefined(Object routeName) {
    return 'Cha nel raad currit magh son \"$routeName\"';
  }

  @override
  String get english => 'Baarle';

  @override
  String get spanish => 'Spaainish';

  @override
  String get systemDefault => 'Roie-raih yn chorys';

  @override
  String get languageStatusEnglish => 'Cooilleeney Baarle bio';

  @override
  String get languageStatusSystem => 'Jannoo ymmyd jeh çhengey yn chorys';

  @override
  String languageStatusSelected(Object languageName) {
    return 'Çhengey reihit: $languageName';
  }

  @override
  String get themeLabel => 'Theme';

  @override
  String get notFoundTitle => 'Duillag cha nel ry-akin';

  @override
  String get loadingCyberBible => 'Cyber Bible goll er lhaih...';

  @override
  String get couldNotOpenDatabase =>
      'Cha voddagh bun-datanys yn Vible y v\' foshlit. Jeeagh reesht.';

  @override
  String get homeTagline => 'App saor as foshlit son studey yn Vible';

  @override
  String get readTheBible => 'Lhaih yn Vible';

  @override
  String get settingsTooltip => 'Soieyn';

  @override
  String get themeChoose => 'Reih theme';

  @override
  String get customThemes => 'Themean cooishtee';

  @override
  String get customThemesSubtitle =>
      'Bwoail er kaart dy reih daah bree. Ta \"Classic White\" cur cooney da modyn Sollys, Dorragh as Cooish myrgeddin.';

  @override
  String get setThemesLabel => 'SOIE THEMEAN';

  @override
  String get deleteBookmarkDialog => 'Scryss y commark-lioar?';

  @override
  String removeBookmarkMessage(Object details, Object reference) {
    return 'Gow ersooyl \"$reference\"$details?\n\nCha nod shoh ve currit back.';
  }

  @override
  String get couldNotLoadBookmarks =>
      'Cha voddagh commarkyn-lioar y v\' lhaih. Jeeagh reesht.';

  @override
  String get bookmarkSavedMessage => 'Commark-lioar sauailt';

  @override
  String get couldNotSaveBookmark =>
      'Cha voddagh y commark-lioar y v\' sauailt.';

  @override
  String get noBookmarksMatchFilter =>
      'Cha nel commarkyn-lioar coardail rish yn scree.';

  @override
  String get clearFilter => 'Glen y scree';

  @override
  String get traditionalOrderLabel => 'Oardagh tradishoonagh';

  @override
  String get alphabeticalOrderLabel => 'Oardagh abbyrdagh';

  @override
  String get bookmarksTabLabel => 'Commarkyn-lioar';

  @override
  String get fullChapter => 'Cabdil slane';

  @override
  String get addBookmark => 'Cur commark-lioar rish';

  @override
  String get selectVerse => 'Reih rann';

  @override
  String get labelOptional => 'Ennym (reihagh)';

  @override
  String get notesOptional => 'Noteyn (reihagh)';

  @override
  String get save => 'Sauail';

  @override
  String get goToVerse => 'Goll gys rann';

  @override
  String verseTitle(Object verse) {
    return 'Rann $verse';
  }

  @override
  String chapterTitle(Object chapter) {
    return 'Cabdil $chapter';
  }

  @override
  String get switchToFullChapter => 'Caghlaa dys commark-lioar cabdil slane';

  @override
  String get bookmarkSheetCancel =>
      'Cur ass, dooney duillag ny commarkyn-lioar';

  @override
  String get pickCustomAccent => 'Reih bree cooishtee';

  @override
  String get apply => 'Cur er';

  @override
  String get custom => 'Cooishtee';

  @override
  String get brightnessSystem => 'Corys';

  @override
  String get brightnessLight => 'Sollys';

  @override
  String get brightnessDark => 'Dorragh';

  @override
  String get selectBook => 'Reih lioar';

  @override
  String get bookmarkFilterAll => 'Olloo';

  @override
  String get bookmarkFilterUnlabeled => 'Gun ennym';

  @override
  String get bookmarkSortRecent => 'S\'noa hoshiaght';

  @override
  String get bookmarkSortCanonical => 'Oardagh canonagh';

  @override
  String get chapterRetry => 'Jeeagh reesht';

  @override
  String get fontSize => 'Mooad lettir';

  @override
  String fontSizePixels(Object size) {
    return '$size px';
  }

  @override
  String get fontSizeSlider => 'Sleamhnagh mooad lettir';

  @override
  String get fontSizeSliderHint => 'Sooill dy chooishtey veih 12 gys 28';

  @override
  String get fontPreview =>
      '\"Ayn y toshiaght ren Jee croo ny niaughyn as y thalloo.\" - Gen 1:1';

  @override
  String get showVerseNumbersSubtitle =>
      'Taishbyney nymbraghyn rann erscreeuyn er y skeen lhaih.';

  @override
  String get showSectionHeadingsSubtitle =>
      'Taishbyney kione-rammyn as Salmyn eddyr rannyn.';

  @override
  String get wordsOfChristSubtitle =>
      'Taishbyney goan Yeesey ayns jiarg. Cur ass son un daah teisht.';

  @override
  String get verseFormatTitle => 'Cummey rann';

  @override
  String get verseFormatSubtitle => 'Reih kys ta teisht yn Scriptyr soit magh.';

  @override
  String get paragraphMode => 'Paragraff';

  @override
  String get verseListMode => 'Rolley rann';

  @override
  String get paragraphModeTooltip => 'Mod paragraff';

  @override
  String get verseListModeTooltip => 'Mod rolley rann';

  @override
  String get paragraphModeDescription =>
      'Ta\'n teisht goll er dy kinjagh lesh paragraffyn ginshte, myr Vible cloubuit.';

  @override
  String get verseListModeDescription =>
      'Ta dagh paragraff Scriptyr goaill toshiaght er y line echey hene, dy vel kooxyn rann ry-akin dy aashagh.';

  @override
  String get deleteBookmarkTooltip => 'Scryss commark-lioar';

  @override
  String deleteBookmarkSemantics(Object reference) {
    return 'Scryss commark-lioar $reference';
  }

  @override
  String sortBookmarksTooltip(Object sortOrder) {
    return 'Rheynn: $sortOrder';
  }

  @override
  String get noBookmarksYet => 'Gun commarkyn-lioar foast.';

  @override
  String get noBookmarksYetHint =>
      'Bwoail er yn jalloo commark-lioar tra t\'ou lhaih dy sauail boayl.';

  @override
  String bookmarkReferenceNavigationError(Object reference) {
    return 'Cha voddagh goll gys $reference.';
  }

  @override
  String themeCardSemantics(Object description, Object name, Object selected) {
    return 'Theme $name$selected. $description';
  }

  @override
  String get selectedThemeSuffix => ', reihit nish';

  @override
  String get customisableAccentDescription => 'Daah bree cooishtee.';

  @override
  String get fixedPaletteDescription => 'Paleid faggys.';

  @override
  String accentColourTitle(Object themeName) {
    return 'Daah bree - $themeName';
  }

  @override
  String get brightnessMode => 'MOD SOLLYS';

  @override
  String get lightMode => 'Mod sollys';

  @override
  String get followSystemMode => 'Eiyr mod y chorys';

  @override
  String get darkMode => 'Mod dorragh';

  @override
  String get customColourPicker => 'Reihder daah cooishtee';

  @override
  String get customColourTooltip => 'Daah cooishtee…';

  @override
  String get couldNotLoadBooks =>
      'Cha voddagh rolley ny lioaryn y v\' lhaih. Jeeagh reesht.';

  @override
  String chapterLabel(Object chapter) {
    return 'Cabdil $chapter';
  }

  @override
  String get traditionalOrderBooks => 'Lioaryn ayns oardagh tradishoonagh';

  @override
  String get alphabeticalOrderBooks => 'Lioaryn ayns oardagh abbyrdagh';

  @override
  String get home => 'Balley';

  @override
  String get addBookmarkTooltip => 'Cur commark-lioar rish';

  @override
  String get chooseBookChapter => 'Reih lioar as cabdil';

  @override
  String get chooseVerse => 'Reih rann';

  @override
  String get bookChapterQuickNavigation =>
      'Goll s\'tappee trooid lioar as cabdil';

  @override
  String get verseQuickNavigation => 'Goll s\'tappee trooid rann';

  @override
  String get backToBooks => 'Erash gys lioaryn';

  @override
  String get selectBookTitle => 'Reih lioar';

  @override
  String selectChapterTitle(Object bookName) {
    return 'Reih cabdil ($bookName)';
  }

  @override
  String chapterSelectionLabel(Object chapter) {
    return 'Cabdil $chapter';
  }

  @override
  String verseSelectionLabel(Object verse) {
    return 'Rann $verse';
  }

  @override
  String fullChapterReference(Object bookName, Object chapter) {
    return 'Cabdil slane: $bookName $chapter';
  }

  @override
  String get memorizeHint => 'Foghlam er cooinaghtyn';

  @override
  String get addNoteHint => 'Cur notey rish...';

  @override
  String get languageSearchHint => 'Ronsaghey çhengaghyn';

  @override
  String get languageModuleInstalled => 'Soit stiagh';

  @override
  String get languageModulePending => 'Çhyndaa máyneagh faggys';

  @override
  String get languageNoMatches =>
      'Cha nel çhengey coardail rish dty ronsaghey.';

  @override
  String get languageCatalogDescription =>
      'Ta çhengaghyn taishbyney myr soit stiagh gobbraghey gyn eddyr-voggyl. Bee çhengaghyn elley currit rish myr modlyn çhyndaait lesh máyne.';

  @override
  String get saveBookmarkSemantics => 'Sauail commark-lioar';

  @override
  String get couldNotLoadChapter =>
      'Cha voddagh y cabdil y v\' lhaih. Jeeagh reesht.';

  @override
  String get couldNotLoadChapters =>
      'Cha voddagh cabdilyn y v\' lhaih. Jeeagh reesht.';

  @override
  String verseWithText(Object text, Object verse) {
    return 'Rann $verse: $text';
  }

  @override
  String accentSwatchSemantics(Object name, Object selected) {
    return 'Daah bree $name$selected';
  }

  @override
  String get oldTestament => 'Shenn Chonaant';

  @override
  String get newTestament => 'Conaant Noa';

  @override
  String get deuterocanonApocrypha => 'Deuterocanon / Apocrypha';
}
