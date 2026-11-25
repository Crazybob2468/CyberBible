// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Yakut (`sah`).
class AppLocalizationsSah extends AppLocalizations {
  AppLocalizationsSah([String locale = 'sah']) : super(locale);

  @override
  String get settingsTitle => 'Туруоруулар';

  @override
  String get languageSection => 'Тыл';

  @override
  String get useSystemLanguage => 'Системаны тылын туһан';

  @override
  String get useSystemLanguageSubtitle =>
      'Тиһилии тылын сүрүн тыл курдук туһан.';

  @override
  String get currentLanguage => 'Билиҥҥи тыл';

  @override
  String get appLanguage => 'Приложение тыла';

  @override
  String get chooseLanguage => 'Тылы тал';

  @override
  String get theme => 'Көрүҥ';

  @override
  String get appearance => 'Көрүнүү';

  @override
  String get textSection => 'Тиэкис';

  @override
  String get readingFormatSection => 'Ырытыы формата';

  @override
  String get displaySection => 'Көрдөрүү';

  @override
  String get verseNumbers => 'Ыйытыы нүөмэрдэрэ';

  @override
  String get sectionHeadings => 'Бөлөх ааттара';

  @override
  String get redLetterText => 'Кыһыл тиэкис';

  @override
  String get selectABook => 'Кинигэни тал';

  @override
  String get traditionalOrder => 'Үгэскэ дылы эрээт';

  @override
  String get alphabeticalOrder => 'Ааҕыы эрээтэ';

  @override
  String get bookmarks => 'Бэлиэлэр';

  @override
  String get retry => 'Хатылаа';

  @override
  String get chooseTheme => 'Көрүҥү тал';

  @override
  String get customisableThemes => 'Туруоруохха сөп көрүҥнэр';

  @override
  String get customisableThemesSubtitle =>
      'Түһүмэх өҥүн таларыҥ иннинэ карточканы баттаа. \"Classic White\" сырдык, хараҥа уонна система режимнарын сөптөөһөр.';

  @override
  String get setThemes => 'ӨҤҮ ӨҤӨРБӨТ КӨРҮҤНЭР';

  @override
  String get setThemesSubtitle =>
      'Сатаан оҥоһуллубут, өҥөҥө турар палитралар. Туруоруохха наадата суох; туһанарыҥ иннинэ баттаа.';

  @override
  String get deleteBookmarkQuestion => 'Бэлиэни сотуоххун дуо?';

  @override
  String get cancel => 'Тоҕот';

  @override
  String get delete => 'Сот';

  @override
  String get bookmarkSaved => 'Бэлиэ бигэргэтиллибит';

  @override
  String get couldNotDeleteBookmark => 'Бэлиэни сотуу сатаммата.';

  @override
  String couldNotNavigate(Object reference) {
    return '$reference диэки баруу сатаммата.';
  }

  @override
  String get pageNotFound => 'Сирэй көстүбэтэ';

  @override
  String noRouteDefined(Object routeName) {
    return '\"$routeName\" диэн суол туруоруллубатаҕа';
  }

  @override
  String get english => 'Ааҥыллы тыла';

  @override
  String get spanish => 'Испан тыла';

  @override
  String get systemDefault => 'Система сүрүн туруоруутэ';

  @override
  String get languageStatusEnglish =>
      'Ааҥыллы тыла солбуйар тыл курдук туһаныллар';

  @override
  String get languageStatusSystem => 'Системаны тыла туһаныллар';

  @override
  String languageStatusSelected(Object languageName) {
    return 'Талыллыбыт тыл: $languageName';
  }

  @override
  String get themeLabel => 'Көрүҥ';

  @override
  String get notFoundTitle => 'Сирэй көстүбэтэ';

  @override
  String get loadingCyberBible => 'Cyber Bible хачайданар...';

  @override
  String get couldNotOpenDatabase =>
      'Библия базыһын арыйар сатаммата. Хатылаа.';

  @override
  String get homeTagline => 'Библияны үөрэтэр босхо, аһаҕас кодтаах приложение';

  @override
  String get readTheBible => 'Библияны ааҕы';

  @override
  String get settingsTooltip => 'Туруоруулар';

  @override
  String get themeChoose => 'Көрүҥү тал';

  @override
  String get customThemes => 'Туруоруохха сөп көрүҥнэр';

  @override
  String get customThemesSubtitle =>
      'Түһүмэх өҥүн таларыҥ иннинэ карточканы баттаа. \"Classic White\" сырдык, хараҥа уонна система режимнарын сөптөөһөр.';

  @override
  String get setThemesLabel => 'ӨҤҮ ӨҤӨРБӨТ КӨРҮҤНЭР';

  @override
  String get deleteBookmarkDialog => 'Бэлиэни сотуоххун дуо?';

  @override
  String removeBookmarkMessage(Object details, Object reference) {
    return '\"$reference\"$details сотуоххун дуо?\n\nБу дьайыыны төннөрөр сатаммат.';
  }

  @override
  String get couldNotLoadBookmarks =>
      'Бэлиэлэри хачайдааһын сатаммата. Хатылаа.';

  @override
  String get bookmarkSavedMessage => 'Бэлиэ бигэргэтиллибит';

  @override
  String get couldNotSaveBookmark => 'Бэлиэни бигэргэтэр сатаммата.';

  @override
  String get noBookmarksMatchFilter => 'Бу фильтргэ сөп түбэһэр бэлиэ суох.';

  @override
  String get clearFilter => 'Фильтри ыраастаа';

  @override
  String get traditionalOrderLabel => 'Үгэскэ дылы эрээт';

  @override
  String get alphabeticalOrderLabel => 'Ааҕыы эрээтэ';

  @override
  String get bookmarksTabLabel => 'Бэлиэлэр';

  @override
  String get fullChapter => 'Бүтүн тарааһын';

  @override
  String get addBookmark => 'Бэлиэ эб';

  @override
  String get selectVerse => 'Ыйытыыны тал';

  @override
  String get labelOptional => 'Бэлиэ (наада суох)';

  @override
  String get notesOptional => 'Бэлиэлэр (наада суох)';

  @override
  String get save => 'Бигэргэт';

  @override
  String get goToVerse => 'Ыйытыыга бар';

  @override
  String verseTitle(Object verse) {
    return 'Ыйытыы $verse';
  }

  @override
  String chapterTitle(Object chapter) {
    return 'Тарааһын $chapter';
  }

  @override
  String get switchToFullChapter => 'Бүтүн тарааһынай бэлиэҕэ уларыт';

  @override
  String get bookmarkSheetCancel => 'Тоҕот уонна бэлиэ хаппааһын сап';

  @override
  String get pickCustomAccent => 'Бэйэҥ өҥүн тал';

  @override
  String get apply => 'Туһан';

  @override
  String get custom => 'Бэйэҥ';

  @override
  String get brightnessSystem => 'Система';

  @override
  String get brightnessLight => 'Сырдык';

  @override
  String get brightnessDark => 'Хараҥа';

  @override
  String get selectBook => 'Кинигэни тал';

  @override
  String get bookmarkFilterAll => 'Барыта';

  @override
  String get bookmarkFilterUnlabeled => 'Аата суох';

  @override
  String get bookmarkSortRecent => 'Саҥа бэлиэ бастаан';

  @override
  String get bookmarkSortCanonical => 'Канон эрээтэ';

  @override
  String get chapterRetry => 'Хатылаа';

  @override
  String get fontSize => 'Суругуҥ кээмэйэ';

  @override
  String fontSizePixels(Object size) {
    return '$size px';
  }

  @override
  String get fontSizeSlider => 'Суругуҥ кээмэйин туруорар';

  @override
  String get fontSizeSliderHint => '12-тэн 28-гэ диэри уларытарга ыйыт';

  @override
  String get fontPreview =>
      '\"Сүрүннээххэ Тэҥэри хаан уонна сир оҥорбута.\" — Бүтүү 1:1';

  @override
  String get showVerseNumbersSubtitle =>
      'Ырытыы экраныгар ыйытыы нүөмэрдэрин көрдөр.';

  @override
  String get showSectionHeadingsSubtitle =>
      'Бөлөх уонна псалом ааттарын текст арааһын көрдөр.';

  @override
  String get wordsOfChristSubtitle =>
      'Иисус тылларын кыһылынан көрдөр. Биир өҥүн туһанарыҥ иннинэ араар.';

  @override
  String get verseFormatTitle => 'Ыйытыы формата';

  @override
  String get verseFormatSubtitle => 'Сурук тиэкиһин оҥорон туруоруурун тал.';

  @override
  String get paragraphMode => 'Абзац';

  @override
  String get verseListMode => 'Ыйытыы тиһигэ';

  @override
  String get paragraphModeTooltip => 'Абзац режима';

  @override
  String get verseListModeTooltip => 'Ыйытыы тиһигин режима';

  @override
  String get paragraphModeDescription =>
      'Тиэкис бастакы Библияҕа суруллубут курдук абзацтарынан тустуур.';

  @override
  String get verseListModeDescription =>
      'Сурук абзаца тус-туспа линейкаҕа саҕаланар, ыйытыы бөлөхтөрүн көрөр сатаммат.';

  @override
  String get deleteBookmarkTooltip => 'Бэлиэни сот';

  @override
  String deleteBookmarkSemantics(Object reference) {
    return '$reference бэлиэтин сот';
  }

  @override
  String sortBookmarksTooltip(Object sortOrder) {
    return 'Эрээт: $sortOrder';
  }

  @override
  String get noBookmarksYet => 'Бэлиэ эмиэ суох.';

  @override
  String get noBookmarksYetHint =>
      'Ааҕар кэмҥэ бэлиэ иконын баттаа, сирэйи бигэргэтэргэ.';

  @override
  String bookmarkReferenceNavigationError(Object reference) {
    return '$reference диэки баруу сатаммата.';
  }

  @override
  String themeCardSemantics(Object description, Object name, Object selected) {
    return '$name көрүҥ$selected. $description';
  }

  @override
  String get selectedThemeSuffix => ', билигин талыллыбыт';

  @override
  String get customisableAccentDescription => 'Туруоруохха сөп акцент өҥө.';

  @override
  String get fixedPaletteDescription => 'Өҥө уларыйбат палитра.';

  @override
  String accentColourTitle(Object themeName) {
    return 'Акцент өҥө — $themeName';
  }

  @override
  String get brightnessMode => 'СЫРДЫК РЕЖИМА';

  @override
  String get lightMode => 'Сырдык режима';

  @override
  String get followSystemMode => 'Система режимин тут';

  @override
  String get darkMode => 'Хараҥа режима';

  @override
  String get customColourPicker => 'Бэйэҥ өҥүн тал';

  @override
  String get customColourTooltip => 'Бэйэҥ өҥ...';

  @override
  String get couldNotLoadBooks =>
      'Кинигэ тиһигин хачайдааһын сатаммата. Хатылаа.';

  @override
  String chapterLabel(Object chapter) {
    return 'Тарааһын $chapter';
  }

  @override
  String get traditionalOrderBooks => 'Кинигэлэр үгэскэ дылы эрээтинэн';

  @override
  String get alphabeticalOrderBooks => 'Кинигэлэр ааҕыы эрээтинэн';

  @override
  String get home => 'Дьиэ';

  @override
  String get addBookmarkTooltip => 'Бэлиэ эб';

  @override
  String get chooseBookChapter => 'Кинигэ уонна тарааһыны тал';

  @override
  String get chooseVerse => 'Ыйытыыны тал';

  @override
  String get bookChapterQuickNavigation =>
      'Кинигэҕэ уонна тарааһыҥҥа түргэнник бар';

  @override
  String get verseQuickNavigation => 'Ыйытыыга түргэнник бар';

  @override
  String get backToBooks => 'Кинигэлэргэ төннөр';

  @override
  String get selectBookTitle => 'Кинигэни тал';

  @override
  String selectChapterTitle(Object bookName) {
    return 'Тарааһыны тал ($bookName)';
  }

  @override
  String chapterSelectionLabel(Object chapter) {
    return 'Тарааһын $chapter';
  }

  @override
  String verseSelectionLabel(Object verse) {
    return 'Ыйытыы $verse';
  }

  @override
  String fullChapterReference(Object bookName, Object chapter) {
    return 'Бүтүн тарааһын: $bookName $chapter';
  }

  @override
  String get memorizeHint => 'Аһаҕас санааҕа';

  @override
  String get addNoteHint => 'Бэлиэ эб...';

  @override
  String get languageSearchHint => 'Тыллары көрдѳр';

  @override
  String get languageModuleInstalled => 'Туруоруллубут';

  @override
  String get languageModulePending => 'Машина куһару кэтэһэр';

  @override
  String get languageNoMatches => 'Көрдүүр тылыҥҥа сөп түбэһэр суох.';

  @override
  String get languageCatalogDescription =>
      'Туруоруллубут тыллар интернетэ суох үлэлиир. Атыттар машина куһару модулунан эбилинэллэр.';

  @override
  String get saveBookmarkSemantics => 'Бэлиэни бигэргэт';

  @override
  String get couldNotLoadChapter => 'Тарааһыны хачайдааһын сатаммата. Хатылаа.';

  @override
  String get couldNotLoadChapters =>
      'Тарааһыннары хачайдааһын сатаммата. Хатылаа.';

  @override
  String verseWithText(Object text, Object verse) {
    return 'Ыйытыы $verse: $text';
  }

  @override
  String accentSwatchSemantics(Object name, Object selected) {
    return '$name акцент өҥө$selected';
  }

  @override
  String get oldTestament => 'Эргэ киллэһи';

  @override
  String get newTestament => 'Саҥа киллэһи';

  @override
  String get deuterocanonApocrypha => 'Дейтероканон / Апокриф';
}
