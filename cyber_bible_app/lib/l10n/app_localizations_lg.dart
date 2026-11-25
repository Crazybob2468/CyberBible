// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Ganda Luganda (`lg`).
class AppLocalizationsLg extends AppLocalizations {
  AppLocalizationsLg([String locale = 'lg']) : super(locale);

  @override
  String get settingsTitle => 'Enteekateeka';

  @override
  String get languageSection => 'Olulimi';

  @override
  String get useSystemLanguage => 'Kozesa olulimi lw\'enkola';

  @override
  String get useSystemLanguageSubtitle =>
      'Kwataganya olulimi lw\'ekyuma mu ngeri ey\'enkalakkalira.';

  @override
  String get currentLanguage => 'Olulimi oluliwo';

  @override
  String get appLanguage => 'Olulimi lw\'app';

  @override
  String get chooseLanguage => 'Londa olulimi';

  @override
  String get theme => 'Omutwe';

  @override
  String get appearance => 'Endabika';

  @override
  String get textSection => 'Ebiwandiiko';

  @override
  String get readingFormatSection => 'Engeri y\'okusoma';

  @override
  String get displaySection => 'Laga';

  @override
  String get verseNumbers => 'Nnamba z\'ennyiriri';

  @override
  String get sectionHeadings => 'Emitwe gy\'ebitundu';

  @override
  String get redLetterText => 'Ebiwandiiko ebimyufu';

  @override
  String get selectABook => 'Londa ekitabo';

  @override
  String get traditionalOrder => 'Enteekateeka ey\'ennono';

  @override
  String get alphabeticalOrder => 'Enteekateeka ey\'ennukuta';

  @override
  String get bookmarks => 'Obubonero bw\'okusoma';

  @override
  String get retry => 'Ddamu ogeze';

  @override
  String get chooseTheme => 'Londa omutwe';

  @override
  String get customisableThemes => 'Emitwe egy\'okukyusa';

  @override
  String get customisableThemesSubtitle =>
      'Kwatako kaadi okulonda langi y\'okwongera. \"Classic White\" era ewagira emisono gya Kitangaala, Kizikiza n\'Enkola.';

  @override
  String get setThemes => 'EMITWE EGITEEKEDDWA';

  @override
  String get setThemesSubtitle =>
      'Paleti ezitakyuka ezikoleddwa n\'obwegendereza. Tewali kyetaagisa kukyusa - kwatako okubikozesa.';

  @override
  String get deleteBookmarkQuestion => 'Gyawo akabonero k\'okusoma?';

  @override
  String get cancel => 'Sazaamu';

  @override
  String get delete => 'Gyawo';

  @override
  String get bookmarkSaved => 'Akabonero k\'okusoma katerekeddwa';

  @override
  String get couldNotDeleteBookmark =>
      'Tekisobose okuggyawo akabonero k\'okusoma.';

  @override
  String couldNotNavigate(Object reference) {
    return 'Tekisobose okugenda ku $reference.';
  }

  @override
  String get pageNotFound => 'Omuko tegusangiddwa';

  @override
  String noRouteDefined(Object routeName) {
    return 'Tewali kkubo litegekeddwa ku \"$routeName\"';
  }

  @override
  String get english => 'Lungereza';

  @override
  String get spanish => 'Lusipeyini';

  @override
  String get systemDefault => 'Enkola ey\'enkalakkalira';

  @override
  String get languageStatusEnglish => 'Okudda ku Lungereza kukola';

  @override
  String get languageStatusSystem => 'Kikozesa olulimi lw\'enkola';

  @override
  String languageStatusSelected(Object languageName) {
    return 'Olulimi olulondeddwa: $languageName';
  }

  @override
  String get themeLabel => 'Omutwe';

  @override
  String get notFoundTitle => 'Omuko tegusangiddwa';

  @override
  String get loadingCyberBible => 'Cyber Bible etikka...';

  @override
  String get couldNotOpenDatabase =>
      'Tekisobose okubikkula tterekero lya Bayibuli. Mwogerezeemu.';

  @override
  String get homeTagline =>
      'App ya kusoma Bayibuli ey\'obwereere era ey\'ensibuko enzigule';

  @override
  String get readTheBible => 'Soma Bayibuli';

  @override
  String get settingsTooltip => 'Enteekateeka';

  @override
  String get themeChoose => 'Londa omutwe';

  @override
  String get customThemes => 'Emitwe egy\'okukyusa';

  @override
  String get customThemesSubtitle =>
      'Kwatako kaadi okulonda langi y\'okwongera. \"Classic White\" era ewagira emisono gya Kitangaala, Kizikiza n\'Enkola.';

  @override
  String get setThemesLabel => 'EMITWE EGITEEKEDDWA';

  @override
  String get deleteBookmarkDialog => 'Gyawo akabonero k\'okusoma?';

  @override
  String removeBookmarkMessage(Object details, Object reference) {
    return 'Gyawo \"$reference\"$details?\n\nKino tekisobola kuzzibwawo.';
  }

  @override
  String get couldNotLoadBookmarks =>
      'Tekisobose kutikka bubonero bwa kusoma. Mwogerezeemu.';

  @override
  String get bookmarkSavedMessage => 'Akabonero k\'okusoma katerekeddwa';

  @override
  String get couldNotSaveBookmark =>
      'Tekisobose kutereka akabonero k\'okusoma.';

  @override
  String get noBookmarksMatchFilter =>
      'Tewali bubonero bwa kusoma bukwatagana n\'ekisengejja kino.';

  @override
  String get clearFilter => 'Jjawo ekisengejja';

  @override
  String get traditionalOrderLabel => 'Enteekateeka ey\'ennono';

  @override
  String get alphabeticalOrderLabel => 'Enteekateeka ey\'ennukuta';

  @override
  String get bookmarksTabLabel => 'Obubonero bw\'okusoma';

  @override
  String get fullChapter => 'Essuula yonna';

  @override
  String get addBookmark => 'Gatta akabonero k\'okusoma';

  @override
  String get selectVerse => 'Londa olunyiriri';

  @override
  String get labelOptional => 'Akabonero (si kya buwaze)';

  @override
  String get notesOptional => 'Ebiwandiiko (si bya buwaze)';

  @override
  String get save => 'Tereka';

  @override
  String get goToVerse => 'Genda ku lunyiriri';

  @override
  String verseTitle(Object verse) {
    return 'Olunyiriri $verse';
  }

  @override
  String chapterTitle(Object chapter) {
    return 'Essuula $chapter';
  }

  @override
  String get switchToFullChapter => 'Kyusa okudda ku kabonero k\'essuula yonna';

  @override
  String get bookmarkSheetCancel => 'Sazaamu, ggalawo lupapula lwa bubonero';

  @override
  String get pickCustomAccent => 'Londa langi ey\'okwongera';

  @override
  String get apply => 'Kozesa';

  @override
  String get custom => 'Ya bulijjo';

  @override
  String get brightnessSystem => 'Enkola';

  @override
  String get brightnessLight => 'Kitangaala';

  @override
  String get brightnessDark => 'Kizikiza';

  @override
  String get selectBook => 'Londa ekitabo';

  @override
  String get bookmarkFilterAll => 'Byonna';

  @override
  String get bookmarkFilterUnlabeled => 'Tebirina kabonero';

  @override
  String get bookmarkSortRecent => 'Ebipya bisooke';

  @override
  String get bookmarkSortCanonical => 'Enteekateeka ey\'ekkanisa';

  @override
  String get chapterRetry => 'Ddamu ogeze';

  @override
  String get fontSize => 'Obunene bw\'ennukuta';

  @override
  String fontSizePixels(Object size) {
    return '$size px';
  }

  @override
  String get fontSizeSlider => 'Ekiyiringisiza obunene bw\'ennukuta';

  @override
  String get fontSizeSliderHint =>
      'Sikambula okukyusa okuva ku 12 okutuuka ku 28';

  @override
  String get fontPreview =>
      '\"Ku lubereberye Katonda yatonda eggulu n\'ensi.\" — Olubereberye 1:1';

  @override
  String get showVerseNumbersSubtitle =>
      'Laga ennamba ez\'oku ntikko ez\'ennyiriri ku muko gw\'okusoma.';

  @override
  String get showSectionHeadingsSubtitle =>
      'Laga emitwe gy\'ebitundu n\'emitwe gya Zabbuli wakati mu biwandiiko.';

  @override
  String get wordsOfChristSubtitle =>
      'Laga ebigambo bya Yesu mu myufu. Ggyako ku langi emu ey\'ebiwandiiko.';

  @override
  String get verseFormatTitle => 'Engeri y\'olunyiriri';

  @override
  String get verseFormatSubtitle =>
      'Londa engeri ebiwandiiko by\'ebyawandiikibwa gye bitegekeddwamu.';

  @override
  String get paragraphMode => 'Akasaale';

  @override
  String get verseListMode => 'Olukalala lw\'ennyiriri';

  @override
  String get paragraphModeTooltip => 'Engeri y\'akasaale';

  @override
  String get verseListModeTooltip => 'Engeri y\'olukalala lw\'ennyiriri';

  @override
  String get paragraphModeDescription =>
      'Ebiwandiiko bigenda mu maaso n\'obusaale obuyingiziddwa munda, nga Bayibuli ekubiddwa.';

  @override
  String get verseListModeDescription =>
      'Buli kasaale k\'ebyawandiikibwa katandika ku layini yaako, ekifuula amatsinda g\'ennyiriri okwanguyirwa okulabika.';

  @override
  String get deleteBookmarkTooltip => 'Gyawo akabonero k\'okusoma';

  @override
  String deleteBookmarkSemantics(Object reference) {
    return 'Gyawo akabonero k\'okusoma $reference';
  }

  @override
  String sortBookmarksTooltip(Object sortOrder) {
    return 'Sengeka: $sortOrder';
  }

  @override
  String get noBookmarksYet => 'Tewali bubonero bwa kusoma n\'okutuusa kati.';

  @override
  String get noBookmarksYetHint =>
      'Kwatako akabonero k\'okusoma ng\'osoma okutereka ekifo.';

  @override
  String bookmarkReferenceNavigationError(Object reference) {
    return 'Tekisobose okugenda ku $reference.';
  }

  @override
  String themeCardSemantics(Object description, Object name, Object selected) {
    return 'Omutwe $name$selected. $description';
  }

  @override
  String get selectedThemeSuffix => ', gwe gulondeddwa kaakano';

  @override
  String get customisableAccentDescription =>
      'Langi ey\'okwongera esobola okukyusibwa.';

  @override
  String get fixedPaletteDescription => 'Paleti etakyuka.';

  @override
  String accentColourTitle(Object themeName) {
    return 'Langi ey\'okwongera — $themeName';
  }

  @override
  String get brightnessMode => 'ENGERI Y\'OKUTANGAALA';

  @override
  String get lightMode => 'Engeri ey\'ekitangaala';

  @override
  String get followSystemMode => 'Goberera ngeri ya nkola';

  @override
  String get darkMode => 'Engeri ey\'ekizikiza';

  @override
  String get customColourPicker => 'Ekilonda langi ey\'okukyusa';

  @override
  String get customColourTooltip => 'Langi ey\'okukyusa...';

  @override
  String get couldNotLoadBooks =>
      'Tekisobose kutikka olukalala lw\'ebitabo. Mwogerezeemu.';

  @override
  String chapterLabel(Object chapter) {
    return 'Essuula $chapter';
  }

  @override
  String get traditionalOrderBooks => 'Ebitabo eby\'enteekateeka ey\'ennono';

  @override
  String get alphabeticalOrderBooks => 'Ebitabo eby\'enteekateeka ey\'ennukuta';

  @override
  String get home => 'Awaka';

  @override
  String get addBookmarkTooltip => 'Gatta akabonero k\'okusoma';

  @override
  String get chooseBookChapter => 'Londa ekitabo n\'essuula';

  @override
  String get chooseVerse => 'Londa olunyiriri';

  @override
  String get bookChapterQuickNavigation =>
      'Okulambika okwangu okwa kitabo n\'essuula';

  @override
  String get verseQuickNavigation => 'Okulambika okwangu okw\'olunyiriri';

  @override
  String get backToBooks => 'Ddayo ku bitabo';

  @override
  String get selectBookTitle => 'Londa ekitabo';

  @override
  String selectChapterTitle(Object bookName) {
    return 'Londa essuula ($bookName)';
  }

  @override
  String chapterSelectionLabel(Object chapter) {
    return 'Essuula $chapter';
  }

  @override
  String verseSelectionLabel(Object verse) {
    return 'Olunyiriri $verse';
  }

  @override
  String fullChapterReference(Object bookName, Object chapter) {
    return 'Essuula yonna: $bookName $chapter';
  }

  @override
  String get memorizeHint => 'Kwata mu mutwe';

  @override
  String get addNoteHint => 'Gatta ekiwandiiko...';

  @override
  String get languageSearchHint => 'Noonya ennimi';

  @override
  String get languageModuleInstalled => 'Kiteekeddwamu';

  @override
  String get languageModulePending => 'Okuvvuunula kwa kyuma kulindiriddwa';

  @override
  String get languageNoMatches => 'Tewali nnimi zikwatagana n\'okunoonya kwo.';

  @override
  String get languageCatalogDescription =>
      'Ennimi eziragiddwa nti ziteekeddwamu zikola awatali mutimbagano. Ennimi endala zijja kugattibwako nga modulo ezivvuunuddwa ekyuma.';

  @override
  String get saveBookmarkSemantics => 'Tereka akabonero k\'okusoma';

  @override
  String get couldNotLoadChapter => 'Tekisobose kutikka essuula. Mwogerezeemu.';

  @override
  String get couldNotLoadChapters => 'Tekisobose kutikka ssuula. Mwogerezeemu.';

  @override
  String verseWithText(Object text, Object verse) {
    return 'Olunyiriri $verse: $text';
  }

  @override
  String accentSwatchSemantics(Object name, Object selected) {
    return 'Langi ey\'okwongera $name$selected';
  }

  @override
  String get oldTestament => 'Endagaano Enkadde';

  @override
  String get newTestament => 'Endagaano Empya';

  @override
  String get deuterocanonApocrypha => 'Deuterocanon / Apocrypha';
}
