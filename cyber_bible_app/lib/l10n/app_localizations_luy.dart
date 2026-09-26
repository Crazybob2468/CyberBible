// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Luyia Oluluyia (`luy`).
class AppLocalizationsLuy extends AppLocalizations {
  AppLocalizationsLuy([String locale = 'luy']) : super(locale);

  @override
  String get settingsTitle => 'Ebibonele';

  @override
  String get languageSection => 'Olulimi';

  @override
  String get useSystemLanguage => 'Kolesya olulimi lwa sisitemu';

  @override
  String get useSystemLanguageSubtitle =>
      'Kolesya olulimi lwa kifaa mu njira ya bulijjo.';

  @override
  String get currentLanguage => 'Olulimi luliho';

  @override
  String get appLanguage => 'Olulimi lwa app';

  @override
  String get chooseLanguage => 'Londa olulimi';

  @override
  String get theme => 'Endolwa';

  @override
  String get appearance => 'Endolelo';

  @override
  String get textSection => 'Amabaluwa';

  @override
  String get readingFormatSection => 'Enkola yo kusoma';

  @override
  String get displaySection => 'Ebirikurangwa';

  @override
  String get verseNumbers => 'Enamba shia mivesi';

  @override
  String get sectionHeadings => 'Emitwe jia ebicehemu';

  @override
  String get redLetterText => 'Amabaluwa amakesi';

  @override
  String get selectABook => 'Londa ekitabu';

  @override
  String get traditionalOrder => 'Enjila ya bulijjo';

  @override
  String get alphabeticalOrder => 'Enjila ya alfabeti';

  @override
  String get bookmarks => 'Obulambe';

  @override
  String get retry => 'Linga kandi';

  @override
  String get chooseTheme => 'Londa endolwa';

  @override
  String get customisableThemes => 'Endolwa eshikholeshwa nga weyanzire';

  @override
  String get customisableThemesSubtitle =>
      'Kuba ku kaadi olonde langi ya kusikila. \"Omwikhole Omusafu\" kuli nende nkomo shia Munyali, Mwirima, nende Sisitemu.';

  @override
  String get setThemes => 'ENDOLWA SHIAKHALE';

  @override
  String get setThemesSubtitle =>
      'Endolwa eya langi shikholelwe. Sihenda kuhindusia; kuba kwonkha okole.';

  @override
  String get deleteBookmarkQuestion => 'Yihaho obulambe?';

  @override
  String get cancel => 'Leka';

  @override
  String get delete => 'Yiyaho';

  @override
  String get bookmarkSaved => 'Obulambe bubikha';

  @override
  String get couldNotDeleteBookmark => 'Sikhubolekha okhuyihaho obulambe.';

  @override
  String couldNotNavigate(Object reference) {
    return 'Sikhubolekha okhuingila hu $reference.';
  }

  @override
  String get pageNotFound => 'Olupapura lukhwolekhana ta';

  @override
  String noRouteDefined(Object routeName) {
    return 'Injira ya \"$routeName\" shibulile ta';
  }

  @override
  String get english => 'Olungereza';

  @override
  String get spanish => 'Oluhispania';

  @override
  String get systemDefault => 'Eya sisitemu';

  @override
  String get languageStatusEnglish => 'Olungereza lukholela mu khandi';

  @override
  String get languageStatusSystem => 'Kukolesya olulimi lwa sisitemu';

  @override
  String languageStatusSelected(Object languageName) {
    return 'Olulimi lwalondwa: $languageName';
  }

  @override
  String get themeLabel => 'Endolwa';

  @override
  String get notFoundTitle => 'Olupapura lukhwolekhana ta';

  @override
  String get loadingCyberBible => 'Kukambya Cyber Bible...';

  @override
  String get couldNotOpenDatabase =>
      'Sikhubolekha okhufungula ehifadhi ya Biblia. Linga kandi.';

  @override
  String get homeTagline => 'App ya kusoma Biblia, ya bwere n\'obwiyekhalile';

  @override
  String get readTheBible => 'Soma Biblia';

  @override
  String get settingsTooltip => 'Ebibonele';

  @override
  String get themeChoose => 'Londa endolwa';

  @override
  String get customThemes => 'Endolwa eshikholeshwa nga weyanzire';

  @override
  String get customThemesSubtitle =>
      'Kuba ku kaadi olonde langi ya kusikila. \"Omwikhole Omusafu\" kuli nende nkomo shia Munyali, Mwirima, nende Sisitemu.';

  @override
  String get setThemesLabel => 'ENDOLWA SHIAKHALE';

  @override
  String get deleteBookmarkDialog => 'Yihaho obulambe?';

  @override
  String removeBookmarkMessage(Object details, Object reference) {
    return 'Yihaho \"$reference\"$details?\n\nKano shikhabolekha okhukholwa kandi.';
  }

  @override
  String get couldNotLoadBookmarks =>
      'Sikhubolekha okhukambya obulambe. Linga kandi.';

  @override
  String get bookmarkSavedMessage => 'Obulambe bubikha';

  @override
  String get couldNotSaveBookmark => 'Sikhubolekha okhubikha obulambe.';

  @override
  String get noBookmarksMatchFilter =>
      'Obulambe buli no bukhwanana ne fyita eno ta.';

  @override
  String get clearFilter => 'Yihaho fyita';

  @override
  String get traditionalOrderLabel => 'Enjila ya bulijjo';

  @override
  String get alphabeticalOrderLabel => 'Enjila ya alfabeti';

  @override
  String get bookmarksTabLabel => 'Obulambe';

  @override
  String get fullChapter => 'Eshina shiosi';

  @override
  String get addBookmark => 'Ongerakho obulambe';

  @override
  String get selectVerse => 'Londa omvesi';

  @override
  String get labelOptional => 'Endaga (shisimalile)';

  @override
  String get notesOptional => 'Obukhuubirizi (shisimalile)';

  @override
  String get save => 'Lama';

  @override
  String get goToVerse => 'Ingila hu mvesi';

  @override
  String verseTitle(Object verse) {
    return 'Omvesi $verse';
  }

  @override
  String chapterTitle(Object chapter) {
    return 'Eshina $chapter';
  }

  @override
  String get switchToFullChapter =>
      'Hindusia okhuba obulambe bwa eshina shiosi';

  @override
  String get bookmarkSheetCancel => 'Leka, funa olupapura lw\'obulambe';

  @override
  String get pickCustomAccent => 'Londa langi yo kusikila';

  @override
  String get apply => 'Kolesya';

  @override
  String get custom => 'Eyo wenyene';

  @override
  String get brightnessSystem => 'Sisitemu';

  @override
  String get brightnessLight => 'Munyali';

  @override
  String get brightnessDark => 'Mwirima';

  @override
  String get selectBook => 'Londa ekitabu';

  @override
  String get bookmarkFilterAll => 'Byosi';

  @override
  String get bookmarkFilterUnlabeled => 'Bibilaho endaga';

  @override
  String get bookmarkSortRecent => 'Ebishie okhubikha khubanza';

  @override
  String get bookmarkSortCanonical => 'Enjila ya Biblia';

  @override
  String get chapterRetry => 'Linga eshina kandi';

  @override
  String get fontSize => 'Obukhongo bw\'inyuguta';

  @override
  String fontSizePixels(Object size) {
    return '$size px';
  }

  @override
  String get fontSizeSlider => 'Kihindusia obukhongo bw\'inyuguta';

  @override
  String get fontSizeSliderHint => 'Susania okhuhindusia okuva 12 okhuya 28';

  @override
  String get fontPreview =>
      '\"Mu mwanzo, Nyasaye yaluma igulu nende eshialo.\" - Mwanzo 1:1';

  @override
  String get showVerseNumbersSubtitle =>
      'Langisia enamba shia mivesi mu lupapura lwa kusoma.';

  @override
  String get showSectionHeadingsSubtitle =>
      'Langisia emitwe jia ebicehemu nende shia Zaburi hakari wa amabaluwa.';

  @override
  String get wordsOfChristSubtitle =>
      'Langisia amanyiriri ka Yesu mu kakesi. Yifunye okhuba nende langi limwe lya amabaluwa.';

  @override
  String get verseFormatTitle => 'Enkola ya mivesi';

  @override
  String get verseFormatSubtitle =>
      'Londa engeri amabaluwa ga Maandiko gakhaboolekhana.';

  @override
  String get paragraphMode => 'Paragrafu';

  @override
  String get verseListMode => 'Olunyolo lwa mivesi';

  @override
  String get paragraphModeTooltip => 'Enkola ya paragrafu';

  @override
  String get verseListModeTooltip => 'Enkola ya lunyolo lwa mivesi';

  @override
  String get paragraphModeDescription =>
      'Amabaluwa gakendana mu paragrafu shia bulijjo, nga Biblia ya mu lupapura.';

  @override
  String get verseListModeDescription =>
      'Buli paragrafu ya Maandiko itangira hu lunyalo lwayo, khubonela ebikundi bya mivesi bubwangu.';

  @override
  String get deleteBookmarkTooltip => 'Yihaho obulambe';

  @override
  String deleteBookmarkSemantics(Object reference) {
    return 'Yihaho obulambe $reference';
  }

  @override
  String sortBookmarksTooltip(Object sortOrder) {
    return 'Panga: $sortOrder';
  }

  @override
  String get noBookmarksYet => 'Khubulaho obulambe kharuno.';

  @override
  String get noBookmarksYetHint =>
      'Kuba ku kabonekho kebulambe ni osoma okhubikha ahali.';

  @override
  String bookmarkReferenceNavigationError(Object reference) {
    return 'Sikhubolekha okhuingila hu $reference.';
  }

  @override
  String themeCardSemantics(Object description, Object name, Object selected) {
    return 'Endolwa ya $name$selected. $description';
  }

  @override
  String get selectedThemeSuffix => ', niyo yalondwa kharuno';

  @override
  String get customisableAccentDescription =>
      'Langi ya kusikila yihindusiwanga.';

  @override
  String get fixedPaletteDescription => 'Mikhandilo ja langi jikhale.';

  @override
  String accentColourTitle(Object themeName) {
    return 'Langi ya kusikila - $themeName';
  }

  @override
  String get brightnessMode => 'ENKOLA YA MUNYALI';

  @override
  String get lightMode => 'Enkola ya munyali';

  @override
  String get followSystemMode => 'Landira enkola ya sisitemu';

  @override
  String get darkMode => 'Enkola ya mwirima';

  @override
  String get customColourPicker => 'Kilondelo kya langi yo wenyene';

  @override
  String get customColourTooltip => 'Langi yo wenyene...';

  @override
  String get couldNotLoadBooks =>
      'Sikhubolekha okhukambya olunyolo lwa bitabu. Linga kandi.';

  @override
  String chapterLabel(Object chapter) {
    return 'Eshina $chapter';
  }

  @override
  String get traditionalOrderBooks => 'Bitabu mu njila ya bulijjo';

  @override
  String get alphabeticalOrderBooks => 'Bitabu mu njila ya alfabeti';

  @override
  String get home => 'Ewaka';

  @override
  String get addBookmarkTooltip => 'Ongerakho obulambe';

  @override
  String get chooseBookChapter => 'Londa ekitabu nende eshina';

  @override
  String get chooseVerse => 'Londa omvesi';

  @override
  String get bookChapterQuickNavigation =>
      'Khuingila bwangu mu kitabu nende eshina';

  @override
  String get verseQuickNavigation => 'Khuingila bwangu mu mvesi';

  @override
  String get backToBooks => 'Suba hu bitabu';

  @override
  String get selectBookTitle => 'Londa ekitabu';

  @override
  String selectChapterTitle(Object bookName) {
    return 'Londa eshina ($bookName)';
  }

  @override
  String chapterSelectionLabel(Object chapter) {
    return 'Eshina $chapter';
  }

  @override
  String verseSelectionLabel(Object verse) {
    return 'Omvesi $verse';
  }

  @override
  String fullChapterReference(Object bookName, Object chapter) {
    return 'Eshina shiosi: $bookName $chapter';
  }

  @override
  String get memorizeHint => 'Kwata hu mutwe';

  @override
  String get addNoteHint => 'Ongerakho ekhuubiririsi...';

  @override
  String get languageSearchHint => 'Nonya endimi';

  @override
  String get languageModuleInstalled => 'Yabikhiwa';

  @override
  String get languageModulePending => 'Okhuvulusia kwa mashini khukalindilwa';

  @override
  String get languageNoMatches =>
      'Khubulaho endimi shikhwanana no kunonya khwo.';

  @override
  String get languageCatalogDescription =>
      'Endimi shialambikhwa nga shibikhiwe shikhola bulala bilaho interneti. Endimi shindi shikhongerwa nga modul shia kuvulusia kwa mashini.';

  @override
  String get saveBookmarkSemantics => 'Bikha obulambe';

  @override
  String get couldNotLoadChapter =>
      'Sikhubolekha okhukambya eshina. Linga kandi.';

  @override
  String get couldNotLoadChapters =>
      'Sikhubolekha okhukambya ameshina. Linga kandi.';

  @override
  String verseWithText(Object text, Object verse) {
    return 'Omvesi $verse: $text';
  }

  @override
  String accentSwatchSemantics(Object name, Object selected) {
    return 'Langi ya kusikila ya $name$selected';
  }

  @override
  String get oldTestament => 'Endagano Enzaka';

  @override
  String get newTestament => 'Endagano Empia';

  @override
  String get deuterocanonApocrypha => 'Deuterokanoni / Apokirifa';
}
