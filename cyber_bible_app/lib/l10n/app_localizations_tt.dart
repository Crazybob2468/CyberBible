// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Tatar (`tt`).
class AppLocalizationsTt extends AppLocalizations {
  AppLocalizationsTt([String locale = 'tt']) : super(locale);

  @override
  String get settingsTitle => 'Көйләүләр';

  @override
  String get languageSection => 'Тел';

  @override
  String get useSystemLanguage => 'Система телен куллану';

  @override
  String get useSystemLanguageSubtitle =>
      'Җайланма телен төп тел итеп куллану.';

  @override
  String get currentLanguage => 'Хәзерге тел';

  @override
  String get appLanguage => 'Кушымта теле';

  @override
  String get chooseLanguage => 'Тел сайлау';

  @override
  String get theme => 'Тема';

  @override
  String get appearance => 'Тышкы күренеш';

  @override
  String get textSection => 'Текст';

  @override
  String get readingFormatSection => 'Уку форматы';

  @override
  String get displaySection => 'Күрсәтү';

  @override
  String get verseNumbers => 'Аять саннары';

  @override
  String get sectionHeadings => 'Бүлек исемнәре';

  @override
  String get redLetterText => 'Кызыл текст';

  @override
  String get selectABook => 'Китап сайлау';

  @override
  String get traditionalOrder => 'Традицион тәртип';

  @override
  String get alphabeticalOrder => 'Әлифба тәртибе';

  @override
  String get bookmarks => 'Кыстыргычлар';

  @override
  String get retry => 'Кабатлау';

  @override
  String get chooseTheme => 'Тема сайлау';

  @override
  String get customisableThemes => 'Үзгәртелә торган темалар';

  @override
  String get customisableThemesSubtitle =>
      'Аксент төсен сайлау өчен карточкага басыгыз. \"Classic White\" шулай ук Ачык, Караңгы һәм Система режимнарын хуплый.';

  @override
  String get setThemes => 'ӘЗЕР ТЕМАЛАР';

  @override
  String get setThemesSubtitle =>
      'Игътибар белән ясалган тотрыклы төсләр җыелмасы. Үзгәртү кирәкми; куллану өчен басыгыз.';

  @override
  String get deleteBookmarkQuestion => 'Кыстыргычны бетерергәме?';

  @override
  String get cancel => 'Баш тарту';

  @override
  String get delete => 'Бетерү';

  @override
  String get bookmarkSaved => 'Кыстыргыч сакланды';

  @override
  String get couldNotDeleteBookmark => 'Кыстыргычны бетереп булмады.';

  @override
  String couldNotNavigate(Object reference) {
    return '$reference адресына күчеп булмады.';
  }

  @override
  String get pageNotFound => 'Бит табылмады';

  @override
  String noRouteDefined(Object routeName) {
    return '\"$routeName\" өчен юнәлеш билгеләнмәгән';
  }

  @override
  String get english => 'Инглизчә';

  @override
  String get spanish => 'Испанча';

  @override
  String get systemDefault => 'Системаның төп көйләнеше';

  @override
  String get languageStatusEnglish =>
      'Резерв тел буларак инглиз теле кулланыла';

  @override
  String get languageStatusSystem => 'Система теле кулланыла';

  @override
  String languageStatusSelected(Object languageName) {
    return 'Сайланган тел: $languageName';
  }

  @override
  String get themeLabel => 'Тема';

  @override
  String get notFoundTitle => 'Бит табылмады';

  @override
  String get loadingCyberBible => 'Cyber Bible йөкләнә...';

  @override
  String get couldNotOpenDatabase =>
      'Изге Китап мәгълүмат базасын ачып булмады. Кабатлап карагыз.';

  @override
  String get homeTagline =>
      'Изге Китапны өйрәнү өчен бушлай һәм ачык чыганаклы кушымта';

  @override
  String get readTheBible => 'Изге Китапны уку';

  @override
  String get settingsTooltip => 'Көйләүләр';

  @override
  String get themeChoose => 'Тема сайлау';

  @override
  String get customThemes => 'Үзгәртелә торган темалар';

  @override
  String get customThemesSubtitle =>
      'Аксент төсен сайлау өчен карточкага басыгыз. \"Classic White\" шулай ук Ачык, Караңгы һәм Система режимнарын хуплый.';

  @override
  String get setThemesLabel => 'ӘЗЕР ТЕМАЛАР';

  @override
  String get deleteBookmarkDialog => 'Кыстыргычны бетерергәме?';

  @override
  String removeBookmarkMessage(Object details, Object reference) {
    return '\"$reference\"$details бетерелсенме?\n\nБу гамәлне кире кайтарып булмый.';
  }

  @override
  String get couldNotLoadBookmarks =>
      'Кыстыргычларны йөкләп булмады. Кабатлап карагыз.';

  @override
  String get bookmarkSavedMessage => 'Кыстыргыч сакланды';

  @override
  String get couldNotSaveBookmark => 'Кыстыргычны саклап булмады.';

  @override
  String get noBookmarksMatchFilter => 'Бу фильтрга туры килгән кыстыргыч юк.';

  @override
  String get clearFilter => 'Фильтрны чистарту';

  @override
  String get traditionalOrderLabel => 'Традицион тәртип';

  @override
  String get alphabeticalOrderLabel => 'Әлифба тәртибе';

  @override
  String get bookmarksTabLabel => 'Кыстыргычлар';

  @override
  String get fullChapter => 'Тулы бүлек';

  @override
  String get addBookmark => 'Кыстыргыч өстәү';

  @override
  String get selectVerse => 'Аять сайлау';

  @override
  String get labelOptional => 'Билге (мәҗбүри түгел)';

  @override
  String get notesOptional => 'Искәрмәләр (мәҗбүри түгел)';

  @override
  String get save => 'Саклау';

  @override
  String get goToVerse => 'Аятькә күчү';

  @override
  String verseTitle(Object verse) {
    return 'Аять $verse';
  }

  @override
  String chapterTitle(Object chapter) {
    return 'Бүлек $chapter';
  }

  @override
  String get switchToFullChapter => 'Тулы бүлек кыстыргычына күчү';

  @override
  String get bookmarkSheetCancel => 'Баш тарту һәм кыстыргыч тәрәзәсен ябу';

  @override
  String get pickCustomAccent => 'Үзегезнең аксент төсен сайлау';

  @override
  String get apply => 'Куллану';

  @override
  String get custom => 'Үзгәртелгән';

  @override
  String get brightnessSystem => 'Система';

  @override
  String get brightnessLight => 'Ачык';

  @override
  String get brightnessDark => 'Караңгы';

  @override
  String get selectBook => 'Китап сайлау';

  @override
  String get bookmarkFilterAll => 'Барысы';

  @override
  String get bookmarkFilterUnlabeled => 'Билгесез';

  @override
  String get bookmarkSortRecent => 'Башта яңалары';

  @override
  String get bookmarkSortCanonical => 'Каноник тәртип';

  @override
  String get chapterRetry => 'Кабатлау';

  @override
  String get fontSize => 'Шрифт зурлыгы';

  @override
  String fontSizePixels(Object size) {
    return '$size px';
  }

  @override
  String get fontSizeSlider => 'Шрифт зурлыгын көйләү';

  @override
  String get fontSizeSliderHint => '12дән 28гә кадәр көйләү өчен күчерегез';

  @override
  String get fontPreview =>
      '\"Иң башта Алла күкне һәм җирне барлыкка китерде.\" — Ярат. 1:1';

  @override
  String get showVerseNumbersSubtitle => 'Уку экранында аять саннарын күрсәтү.';

  @override
  String get showSectionHeadingsSubtitle =>
      'Өзекләр арасында бүлек һәм Мәдхия исемнәрен күрсәтү.';

  @override
  String get wordsOfChristSubtitle =>
      'Гайсә сүзләрен кызыл төстә күрсәтү. Бер генә текст төсе кирәк булса, сүндерегез.';

  @override
  String get verseFormatTitle => 'Аять форматы';

  @override
  String get verseFormatSubtitle =>
      'Изге Язма текстын урнаштыру ысулын сайлагыз.';

  @override
  String get paragraphMode => 'Абзац';

  @override
  String get verseListMode => 'Аятьләр исемлеге';

  @override
  String get paragraphModeTooltip => 'Абзац режимы';

  @override
  String get verseListModeTooltip => 'Аятьләр исемлеге режимы';

  @override
  String get paragraphModeDescription =>
      'Текст басма Изге Китаптагы кебек чигенешле абзацларда өзлексез бара.';

  @override
  String get verseListModeDescription =>
      'Изге Язманың һәр абзацы аерым юлдан башлана, аять төркемнәрен күрү җиңел.';

  @override
  String get deleteBookmarkTooltip => 'Кыстыргычны бетерү';

  @override
  String deleteBookmarkSemantics(Object reference) {
    return '$reference кыстыргычын бетерү';
  }

  @override
  String sortBookmarksTooltip(Object sortOrder) {
    return 'Сортлау: $sortOrder';
  }

  @override
  String get noBookmarksYet => 'Әлегә кыстыргычлар юк.';

  @override
  String get noBookmarksYetHint =>
      'Укыганда урынны саклау өчен кыстыргыч билгесенә басыгыз.';

  @override
  String bookmarkReferenceNavigationError(Object reference) {
    return '$reference адресына күчеп булмады.';
  }

  @override
  String themeCardSemantics(Object description, Object name, Object selected) {
    return '$name темасы$selected. $description';
  }

  @override
  String get selectedThemeSuffix => ', хәзер сайланган';

  @override
  String get customisableAccentDescription => 'Үзгәртелә торган аксент төсе.';

  @override
  String get fixedPaletteDescription => 'Тотрыклы төсләр җыелмасы.';

  @override
  String accentColourTitle(Object themeName) {
    return 'Аксент төсе — $themeName';
  }

  @override
  String get brightnessMode => 'ЯКТЫЛЫК РЕЖИМЫ';

  @override
  String get lightMode => 'Ачык режим';

  @override
  String get followSystemMode => 'Система режимына иярү';

  @override
  String get darkMode => 'Караңгы режим';

  @override
  String get customColourPicker => 'Үз төсегезне сайлау';

  @override
  String get customColourTooltip => 'Үз төсе...';

  @override
  String get couldNotLoadBooks =>
      'Китаплар исемлеген йөкләп булмады. Кабатлап карагыз.';

  @override
  String chapterLabel(Object chapter) {
    return 'Бүлек $chapter';
  }

  @override
  String get traditionalOrderBooks => 'Традицион тәртиптәге китаплар';

  @override
  String get alphabeticalOrderBooks => 'Әлифба тәртибендәге китаплар';

  @override
  String get home => 'Баш бит';

  @override
  String get addBookmarkTooltip => 'Кыстыргыч өстәү';

  @override
  String get chooseBookChapter => 'Китап һәм бүлек сайлау';

  @override
  String get chooseVerse => 'Аять сайлау';

  @override
  String get bookChapterQuickNavigation => 'Китапка һәм бүлеккә тиз күчү';

  @override
  String get verseQuickNavigation => 'Аятькә тиз күчү';

  @override
  String get backToBooks => 'Китапларга кайту';

  @override
  String get selectBookTitle => 'Китап сайлау';

  @override
  String selectChapterTitle(Object bookName) {
    return 'Бүлек сайлау ($bookName)';
  }

  @override
  String chapterSelectionLabel(Object chapter) {
    return 'Бүлек $chapter';
  }

  @override
  String verseSelectionLabel(Object verse) {
    return 'Аять $verse';
  }

  @override
  String fullChapterReference(Object bookName, Object chapter) {
    return 'Тулы бүлек: $bookName $chapter';
  }

  @override
  String get memorizeHint => 'Ятлау';

  @override
  String get addNoteHint => 'Искәрмә өстәү...';

  @override
  String get languageSearchHint => 'Телләрне эзләү';

  @override
  String get languageModuleInstalled => 'Урнаштырылган';

  @override
  String get languageModulePending => 'Машина тәрҗемәсен көтә';

  @override
  String get languageNoMatches => 'Эзләвегезгә туры килгән тел юк.';

  @override
  String get languageCatalogDescription =>
      'Урнаштырылган телләр интернетсыз эшли. Башка телләр машина тәрҗемәсе модульләре буларак өстәләчәк.';

  @override
  String get saveBookmarkSemantics => 'Кыстыргычны саклау';

  @override
  String get couldNotLoadChapter => 'Бүлекне йөкләп булмады. Кабатлап карагыз.';

  @override
  String get couldNotLoadChapters =>
      'Бүлекләрне йөкләп булмады. Кабатлап карагыз.';

  @override
  String verseWithText(Object text, Object verse) {
    return 'Аять $verse: $text';
  }

  @override
  String accentSwatchSemantics(Object name, Object selected) {
    return '$name аксент төсе$selected';
  }

  @override
  String get oldTestament => 'Иске Васыять';

  @override
  String get newTestament => 'Яңа Васыять';

  @override
  String get deuterocanonApocrypha => 'Дейтероканон / Апокриф';
}
