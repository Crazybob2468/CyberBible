// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Chechen (`ce`).
class AppLocalizationsCe extends AppLocalizations {
  AppLocalizationsCe([String locale = 'ce']) : super(locale);

  @override
  String get settingsTitle => 'Настройкаш';

  @override
  String get languageSection => 'Мотт';

  @override
  String get useSystemLanguage => 'Системан маттах пайдаэцар .';

  @override
  String get useSystemLanguageSubtitle =>
      'ГӀирсан мотт нийса нисбе стандартан кепара.';

  @override
  String get currentLanguage => 'ХӀинцалера мотт .';

  @override
  String get appLanguage => 'Апп мотт';

  @override
  String get chooseLanguage => 'Мотт харжа .';

  @override
  String get theme => 'Тема';

  @override
  String get appearance => 'Куц-кеп';

  @override
  String get textSection => 'Текст';

  @override
  String get readingFormatSection => 'Ешаран формат';

  @override
  String get displaySection => 'Дисплей';

  @override
  String get verseNumbers => 'Байтийн терахьаш .';

  @override
  String get sectionHeadings => 'Дакъойн кортош .';

  @override
  String get redLetterText => 'ЦӀен элпашца язйина текст';

  @override
  String get selectABook => 'Книга схьахаржа .';

  @override
  String get traditionalOrder => 'Ламастан низам .';

  @override
  String get alphabeticalOrder => 'Алфавитан рогӀалла';

  @override
  String get bookmarks => 'Закладкаш';

  @override
  String get retry => 'Юха хьажа';

  @override
  String get chooseTheme => 'Тема харжа .';

  @override
  String get customisableThemes => 'Персонализаци ян йиш йолу теманаш';

  @override
  String get customisableThemesSubtitle =>
      'Карточка тӀе хьажа, акцентан бос харжа. \"Классикан кӀайн\" иштта гӀо до Серлонан, Боданан, Системан режимашна.';

  @override
  String get setThemes => 'ТЕМАШ ХӀОТТО .';

  @override
  String get setThemesSubtitle =>
      'Цхьанаметта лаьтташ, куьйга йина палитраш. Цхьа а персонализаци ца оьшу — лело хьажа бен.';

  @override
  String get deleteBookmarkQuestion => 'Закладка дӀаяккха?';

  @override
  String get cancel => 'Юхаяккха';

  @override
  String get delete => 'ДӀаяккха';

  @override
  String get bookmarkSaved => 'Закладка ларйина';

  @override
  String get couldNotDeleteBookmark => 'Закладка дӀаяккха аьтто ца баьлла.';

  @override
  String couldNotNavigate(Object reference) {
    return '$reference тӀе кхача аьтто ца баьлла.';
  }

  @override
  String get pageNotFound => 'АгӀо ца карийна';

  @override
  String noRouteDefined(Object routeName) {
    return '\"$routeName\" -на цхьа а маршрут билгалъяьккхина яц.';
  }

  @override
  String get english => 'Нохчийн';

  @override
  String get spanish => 'Испанол';

  @override
  String get systemDefault => 'Системан стандарт';

  @override
  String get languageStatusEnglish => 'Ингалсан маттахь fallback жигара';

  @override
  String get languageStatusSystem => 'Системни маттах пайдаэцар .';

  @override
  String languageStatusSelected(Object languageName) {
    return 'Хаьржина мотт: $languageName.';
  }

  @override
  String get themeLabel => 'Тема';

  @override
  String get notFoundTitle => 'АгӀо ца карийна';

  @override
  String get loadingCyberBible => 'Загрузка Кибер Библи...';

  @override
  String get couldNotOpenDatabase =>
      'Библин база схьаелла аьтто ца баьлла. Юха хьажахьара ахь.';

  @override
  String get homeTagline =>
      'Маьхза а, йиллина а хьостан Библи Ӏаморан программа .';

  @override
  String get readTheBible => 'Библи еша .';

  @override
  String get settingsTooltip => 'Настройкаш';

  @override
  String get themeChoose => 'Тема харжа .';

  @override
  String get customThemes => 'Персонализаци ян йиш йолу теманаш';

  @override
  String get customThemesSubtitle =>
      'Карточка тӀе хьажа, акцентан бос харжа. \"Классикан кӀайн\" иштта гӀо до Серлонан, Боданан, Системан режимашна.';

  @override
  String get setThemesLabel => 'ТЕМАШ ХӀОТТО .';

  @override
  String get deleteBookmarkDialog => 'Закладка дӀаяккха?';

  @override
  String removeBookmarkMessage(Object details, Object reference) {
    return 'ДӀаяккха \"$reference\"$details?\n\nИза юхадерзо йиш яц.';
  }

  @override
  String get couldNotLoadBookmarks =>
      'Закладкаш чуяха аьтто ца баьлла. Юха хьажахьара ахь.';

  @override
  String get bookmarkSavedMessage => 'Закладка ларйина';

  @override
  String get couldNotSaveBookmark => 'Закладка ларъян аьтто ца баьлла.';

  @override
  String get noBookmarksMatchFilter =>
      'Цхьа а закладка яц оцу фильтраца йогӀуш.';

  @override
  String get clearFilter => 'ЦӀена фильтр .';

  @override
  String get traditionalOrderLabel => 'Ламастан низам .';

  @override
  String get alphabeticalOrderLabel => 'Алфавитан рогӀалла';

  @override
  String get bookmarksTabLabel => 'Закладкаш';

  @override
  String get fullChapter => 'Дуьззина дакъа .';

  @override
  String get addBookmark => 'Закладка тӀетоха';

  @override
  String get selectVerse => 'Стих схьахаржа .';

  @override
  String get labelOptional => 'Ярлык (лаамехь)';

  @override
  String get notesOptional => 'Билгалдаккхар (лаамехь)';

  @override
  String get save => 'КӀелхьардаккха';

  @override
  String get goToVerse => '1-чу стиха тӀе гӀо.';

  @override
  String verseTitle(Object verse) {
    return 'Стих $verse.';
  }

  @override
  String chapterTitle(Object chapter) {
    return 'Глава $chapter .';
  }

  @override
  String get switchToFullChapter => 'Дуьззина дакъа закладка тӀе дӀадерзаде .';

  @override
  String get bookmarkSheetCancel => 'ДӀаяккха, дӀакъовла закладка лист';

  @override
  String get pickCustomAccent => 'Хьалха хьайн акцент харжа .';

  @override
  String get apply => 'Заявка е';

  @override
  String get custom => 'Ӏадат';

  @override
  String get brightnessSystem => 'Система';

  @override
  String get brightnessLight => 'Серло';

  @override
  String get brightnessDark => 'Бода';

  @override
  String get selectBook => 'Книга схьахаржа .';

  @override
  String get bookmarkFilterAll => 'Дерриге а';

  @override
  String get bookmarkFilterUnlabeled => 'Ярлык йоцуш';

  @override
  String get bookmarkSortRecent => 'ТӀаьхьарчу хенахь хьалхара';

  @override
  String get bookmarkSortCanonical => 'Каноникан низам';

  @override
  String get chapterRetry => 'Юха хьажа';

  @override
  String get fontSize => 'Шрифтан барам';

  @override
  String fontSizePixels(Object size) {
    return '$size пикс';
  }

  @override
  String get fontSizeSlider => 'Шрифтан барам ползунок';

  @override
  String get fontSizeSliderHint => '12-28 кхаччалц нисдан хьажа хьажа';

  @override
  String get fontPreview =>
      '«Юьхьанца Дала кхоьллина стигалш а, латта а». — Бытие 1:1.';

  @override
  String get showVerseNumbersSubtitle =>
      'Ешаран экран тӀехь стихан терахьийн лакхара хьаьркаш гайтар.';

  @override
  String get showSectionHeadingsSubtitle =>
      'Дакъошна юкъахь дакъойн а, Забуран а кортош гайта.';

  @override
  String get wordsOfChristSubtitle =>
      'Ӏийсан дешнаш цӀечу басахь гайта. Цхьана текстан басарца дӀаяккха.';

  @override
  String get verseFormatTitle => 'Стихан кеп';

  @override
  String get verseFormatSubtitle =>
      'Деза Йозанийн текст муха дӀахӀоттийна ю хьажа.';

  @override
  String get paragraphMode => '2-гӀа абзац.';

  @override
  String get verseListMode => 'Байтийн тептар .';

  @override
  String get paragraphModeTooltip => 'Абзац режим';

  @override
  String get verseListModeTooltip => 'Стих-тептаран режим';

  @override
  String get paragraphModeDescription =>
      'Текст хаддаза дӀайоьду, зорбане яьккхина Библи санна, юкъадаьхна абзацаш а йолуш.';

  @override
  String get verseListModeDescription =>
      'ХӀора абзац шен могӀанца дӀайолало, стихийн тобанаш атта гучуяха.';

  @override
  String get deleteBookmarkTooltip => 'Закладка дӀаяккха';

  @override
  String deleteBookmarkSemantics(Object reference) {
    return 'ДӀаяккха закладка $reference.';
  }

  @override
  String sortBookmarksTooltip(Object sortOrder) {
    return 'Сорт: $sortOrder';
  }

  @override
  String get noBookmarksYet => 'Цкъачунна закладкаш яц.';

  @override
  String get noBookmarksYetHint =>
      'Ешачу хенахь закладкин значок тӀе хьажа, меттиг ларъян.';

  @override
  String bookmarkReferenceNavigationError(Object reference) {
    return '$reference тӀе кхача аьтто ца баьлла.';
  }

  @override
  String themeCardSemantics(Object description, Object name, Object selected) {
    return '$name тема$selected. $description.';
  }

  @override
  String get selectedThemeSuffix => ', карарчу хенахь хаьржина .';

  @override
  String get customisableAccentDescription =>
      'Настройка еш йолу акцентан басар.';

  @override
  String get fixedPaletteDescription => 'Цхьанаметта дӀахӀоттийна палитра.';

  @override
  String accentColourTitle(Object themeName) {
    return 'Акцентан басахь — $themeName';
  }

  @override
  String get brightnessMode => 'СЕРЛОНАН РЕЖИМ';

  @override
  String get lightMode => 'Серлонан режим';

  @override
  String get followSystemMode => 'Системан режим лелае .';

  @override
  String get darkMode => 'Бодане режим';

  @override
  String get customColourPicker => 'Къовсамехь басарш къастор';

  @override
  String get customColourTooltip => 'Къовсам бос...';

  @override
  String get couldNotLoadBooks =>
      'Книгийн тептар чудаккха аьтто ца баьлла. Юха хьажахьара ахь.';

  @override
  String chapterLabel(Object chapter) {
    return 'Глава $chapter .';
  }

  @override
  String get traditionalOrderBooks => 'Ламастан омран тептарш .';

  @override
  String get alphabeticalOrderBooks => 'Алфавитан рогӀалла тептарш .';

  @override
  String get home => 'ЦӀа';

  @override
  String get addBookmarkTooltip => 'Закладка тӀетоха';

  @override
  String get chooseBookChapter => 'Книга а, дакъа а харжа .';

  @override
  String get chooseVerse => 'Байт талла .';

  @override
  String get bookChapterQuickNavigation => 'Книга а, глава а сиха лелар .';

  @override
  String get verseQuickNavigation => 'Стих сиха лелар .';

  @override
  String get backToBooks => 'Юха а книгашна тӀе .';

  @override
  String get selectBookTitle => 'Книга хьажа .';

  @override
  String selectChapterTitle(Object bookName) {
    return 'Глава хьажа ($bookName)';
  }

  @override
  String chapterSelectionLabel(Object chapter) {
    return 'Глава $chapter .';
  }

  @override
  String verseSelectionLabel(Object verse) {
    return 'Стих $verse.';
  }

  @override
  String fullChapterReference(Object bookName, Object chapter) {
    return 'Дуьззина дакъа: $bookName $chapter';
  }

  @override
  String get memorizeHint => 'Дагахь Ӏамо';

  @override
  String get addNoteHint => 'Цхьа билгалдаккхар тӀетоха...';

  @override
  String get languageSearchHint => 'Меттанаш леха .';

  @override
  String get languageModuleInstalled => 'ДӀахӀоттийна';

  @override
  String get languageModulePending => 'Машинан гочдар дан дагахь ду';

  @override
  String get languageNoMatches => 'Цхьа а мотт ца догӀу хьан лехамашца.';

  @override
  String get languageCatalogDescription =>
      'ХӀоттийна аьлла билгалдаьхна меттанаш офлайнехь болх беш ду. Кхин а меттанаш тӀетоьхна хир ду машенца гочйина модулаш санна.';

  @override
  String get saveBookmarkSemantics => 'Закладка ларъе';

  @override
  String get couldNotLoadChapter =>
      'Глава загрузить ян аьтто ца баьлла. Юха хьажахьара ахь.';

  @override
  String get couldNotLoadChapters =>
      'Главаш чуяха аьтто ца баьлла. Юха хьажахьара ахь.';

  @override
  String verseWithText(Object text, Object verse) {
    return 'Стих $verse: $text.';
  }

  @override
  String accentSwatchSemantics(Object name, Object selected) {
    return '$name акцентан басар$selected';
  }

  @override
  String get oldTestament => 'Шира барт';

  @override
  String get newTestament => 'Керла барт';

  @override
  String get deuterocanonApocrypha => 'Второканон / Апокрифаш .';
}
