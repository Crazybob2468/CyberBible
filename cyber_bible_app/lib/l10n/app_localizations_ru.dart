// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Russian (`ru`).
class AppLocalizationsRu extends AppLocalizations {
  AppLocalizationsRu([String locale = 'ru']) : super(locale);

  @override
  String get settingsTitle => 'Настройки';

  @override
  String get languageSection => 'Язык';

  @override
  String get useSystemLanguage => 'Использовать язык системы';

  @override
  String get useSystemLanguageSubtitle =>
      'По умолчанию использовать язык устройства.';

  @override
  String get currentLanguage => 'Текущий язык';

  @override
  String get appLanguage => 'Язык приложения';

  @override
  String get chooseLanguage => 'Выбрать язык';

  @override
  String get theme => 'Тема';

  @override
  String get appearance => 'Внешний вид';

  @override
  String get textSection => 'Текст';

  @override
  String get readingFormatSection => 'Формат чтения';

  @override
  String get displaySection => 'Отображение';

  @override
  String get verseNumbers => 'Номера стихов';

  @override
  String get sectionHeadings => 'Заголовки разделов';

  @override
  String get redLetterText => 'Красный текст';

  @override
  String get selectABook => 'Выбрать книгу';

  @override
  String get traditionalOrder => 'Традиционный порядок';

  @override
  String get alphabeticalOrder => 'Алфавитный порядок';

  @override
  String get bookmarks => 'Закладки';

  @override
  String get retry => 'Повторить';

  @override
  String get chooseTheme => 'Выбрать тему';

  @override
  String get customisableThemes => 'Настраиваемые темы';

  @override
  String get customisableThemesSubtitle =>
      'Нажмите карточку, чтобы выбрать акцентный цвет. Classic White также поддерживает светлый, тёмный и системный режимы.';

  @override
  String get setThemes => 'ГОТОВЫЕ ТЕМЫ';

  @override
  String get setThemesSubtitle =>
      'Фиксированные палитры ручной работы. Настройка не нужна — просто нажмите, чтобы применить.';

  @override
  String get deleteBookmarkQuestion => 'Удалить закладку?';

  @override
  String get cancel => 'Отмена';

  @override
  String get delete => 'Удалить';

  @override
  String get bookmarkSaved => 'Закладка сохранена';

  @override
  String get couldNotDeleteBookmark => 'Не удалось удалить закладку.';

  @override
  String couldNotNavigate(Object reference) {
    return 'Не удалось перейти к $reference.';
  }

  @override
  String get pageNotFound => 'Страница не найдена';

  @override
  String noRouteDefined(Object routeName) {
    return 'Для \"$routeName\" маршрут не определён';
  }

  @override
  String get english => 'Английский';

  @override
  String get spanish => 'Испанский';

  @override
  String get systemDefault => 'Системный по умолчанию';

  @override
  String get languageStatusEnglish => 'Используется английский резервный язык';

  @override
  String get languageStatusSystem => 'Используется язык системы';

  @override
  String languageStatusSelected(Object languageName) {
    return 'Выбранный язык: $languageName';
  }

  @override
  String get themeLabel => 'Тема';

  @override
  String get notFoundTitle => 'Страница не найдена';

  @override
  String get loadingCyberBible => 'Загрузка Cyber Bible...';

  @override
  String get couldNotOpenDatabase =>
      'Не удалось открыть базу данных Библии. Повторите попытку.';

  @override
  String get homeTagline =>
      'Бесплатное приложение с открытым исходным кодом для изучения Библии';

  @override
  String get readTheBible => 'Читать Библию';

  @override
  String get settingsTooltip => 'Настройки';

  @override
  String get themeChoose => 'Выбрать тему';

  @override
  String get customThemes => 'Настраиваемые темы';

  @override
  String get customThemesSubtitle =>
      'Нажмите карточку, чтобы выбрать акцентный цвет. Classic White также поддерживает светлый, тёмный и системный режимы.';

  @override
  String get setThemesLabel => 'ГОТОВЫЕ ТЕМЫ';

  @override
  String get deleteBookmarkDialog => 'Удалить закладку?';

  @override
  String removeBookmarkMessage(Object details, Object reference) {
    return 'Удалить \"$reference\"$details?\n\nЭто действие нельзя отменить.';
  }

  @override
  String get couldNotLoadBookmarks =>
      'Не удалось загрузить закладки. Повторите попытку.';

  @override
  String get bookmarkSavedMessage => 'Закладка сохранена';

  @override
  String get couldNotSaveBookmark => 'Не удалось сохранить закладку.';

  @override
  String get noBookmarksMatchFilter => 'Нет закладок, соответствующих фильтру.';

  @override
  String get clearFilter => 'Очистить фильтр';

  @override
  String get traditionalOrderLabel => 'Традиционный порядок';

  @override
  String get alphabeticalOrderLabel => 'Алфавитный порядок';

  @override
  String get bookmarksTabLabel => 'Закладки';

  @override
  String get fullChapter => 'Вся глава';

  @override
  String get addBookmark => 'Добавить закладку';

  @override
  String get selectVerse => 'Выбрать стих';

  @override
  String get labelOptional => 'Метка (необязательно)';

  @override
  String get notesOptional => 'Заметки (необязательно)';

  @override
  String get save => 'Сохранить';

  @override
  String get goToVerse => 'Перейти к стиху';

  @override
  String verseTitle(Object verse) {
    return 'Стих $verse';
  }

  @override
  String chapterTitle(Object chapter) {
    return 'Глава $chapter';
  }

  @override
  String get switchToFullChapter => 'Переключить на закладку всей главы';

  @override
  String get bookmarkSheetCancel => 'Отмена, закрыть панель закладки';

  @override
  String get pickCustomAccent => 'Выбрать свой акцентный цвет';

  @override
  String get apply => 'Применить';

  @override
  String get custom => 'Пользовательский';

  @override
  String get brightnessSystem => 'Система';

  @override
  String get brightnessLight => 'Светлый';

  @override
  String get brightnessDark => 'Тёмный';

  @override
  String get selectBook => 'Выбрать книгу';

  @override
  String get bookmarkFilterAll => 'Все';

  @override
  String get bookmarkFilterUnlabeled => 'Без метки';

  @override
  String get bookmarkSortRecent => 'Сначала новые';

  @override
  String get bookmarkSortCanonical => 'Канонический порядок';

  @override
  String get chapterRetry => 'Повторить';

  @override
  String get fontSize => 'Размер шрифта';

  @override
  String fontSizePixels(Object size) {
    return '$size пикс.';
  }

  @override
  String get fontSizeSlider => 'Ползунок размера шрифта';

  @override
  String get fontSizeSliderHint =>
      'Проведите, чтобы выбрать значение от 12 до 28';

  @override
  String get fontPreview =>
      '\"В начале сотворил Бог небо и землю.\" — Быт. 1:1';

  @override
  String get showVerseNumbersSubtitle =>
      'Показывать верхние индексы номеров стихов на экране чтения.';

  @override
  String get showSectionHeadingsSubtitle =>
      'Показывать заголовки разделов и псалмов между отрывками.';

  @override
  String get wordsOfChristSubtitle =>
      'Показывать слова Иисуса красным. Отключите, чтобы использовать один цвет текста.';

  @override
  String get verseFormatTitle => 'Формат стиха';

  @override
  String get verseFormatSubtitle => 'Выберите расположение текста Писания.';

  @override
  String get paragraphMode => 'Абзац';

  @override
  String get verseListMode => 'Список стихов';

  @override
  String get paragraphModeTooltip => 'Абзацный режим';

  @override
  String get verseListModeTooltip => 'Режим списка стихов';

  @override
  String get paragraphModeDescription =>
      'Текст непрерывно идёт в абзацах с отступом, как в печатной Библии.';

  @override
  String get verseListModeDescription =>
      'Каждый абзац Писания начинается с новой строки, поэтому группы стихов легко заметить.';

  @override
  String get deleteBookmarkTooltip => 'Удалить закладку';

  @override
  String deleteBookmarkSemantics(Object reference) {
    return 'Удалить закладку $reference';
  }

  @override
  String sortBookmarksTooltip(Object sortOrder) {
    return 'Сортировка: $sortOrder';
  }

  @override
  String get noBookmarksYet => 'Закладок пока нет.';

  @override
  String get noBookmarksYetHint =>
      'Нажмите значок закладки во время чтения, чтобы сохранить место.';

  @override
  String bookmarkReferenceNavigationError(Object reference) {
    return 'Не удалось перейти к $reference.';
  }

  @override
  String themeCardSemantics(Object description, Object name, Object selected) {
    return 'Тема $name$selected. $description';
  }

  @override
  String get selectedThemeSuffix => ', выбрана сейчас';

  @override
  String get customisableAccentDescription => 'Настраиваемый акцентный цвет.';

  @override
  String get fixedPaletteDescription => 'Фиксированная палитра.';

  @override
  String accentColourTitle(Object themeName) {
    return 'Акцентный цвет — $themeName';
  }

  @override
  String get brightnessMode => 'РЕЖИМ ЯРКОСТИ';

  @override
  String get lightMode => 'Светлый режим';

  @override
  String get followSystemMode => 'Следовать системному режиму';

  @override
  String get darkMode => 'Тёмный режим';

  @override
  String get customColourPicker => 'Выбор пользовательского цвета';

  @override
  String get customColourTooltip => 'Пользовательский цвет...';

  @override
  String get couldNotLoadBooks =>
      'Не удалось загрузить список книг. Повторите попытку.';

  @override
  String chapterLabel(Object chapter) {
    return 'Глава $chapter';
  }

  @override
  String get traditionalOrderBooks => 'Книги в традиционном порядке';

  @override
  String get alphabeticalOrderBooks => 'Книги в алфавитном порядке';

  @override
  String get home => 'Главная';

  @override
  String get addBookmarkTooltip => 'Добавить закладку';

  @override
  String get chooseBookChapter => 'Выбрать книгу и главу';

  @override
  String get chooseVerse => 'Выбрать стих';

  @override
  String get bookChapterQuickNavigation => 'Быстрая навигация по книге и главе';

  @override
  String get verseQuickNavigation => 'Быстрая навигация по стихам';

  @override
  String get backToBooks => 'Вернуться к книгам';

  @override
  String get selectBookTitle => 'Выбрать книгу';

  @override
  String selectChapterTitle(Object bookName) {
    return 'Выбрать главу ($bookName)';
  }

  @override
  String chapterSelectionLabel(Object chapter) {
    return 'Глава $chapter';
  }

  @override
  String verseSelectionLabel(Object verse) {
    return 'Стих $verse';
  }

  @override
  String fullChapterReference(Object bookName, Object chapter) {
    return 'Вся глава: $bookName $chapter';
  }

  @override
  String get memorizeHint => 'Запомнить';

  @override
  String get addNoteHint => 'Добавить заметку...';

  @override
  String get languageSearchHint => 'Поиск языков';

  @override
  String get languageModuleInstalled => 'Установлено';

  @override
  String get languageModulePending => 'Ожидается машинный перевод';

  @override
  String get languageNoMatches => 'Языки, соответствующие поиску, не найдены.';

  @override
  String get languageCatalogDescription =>
      'Установленные языки работают офлайн. Остальные будут добавлены как модули машинного перевода.';

  @override
  String get saveBookmarkSemantics => 'Сохранить закладку';

  @override
  String get couldNotLoadChapter =>
      'Не удалось загрузить главу. Повторите попытку.';

  @override
  String get couldNotLoadChapters =>
      'Не удалось загрузить главы. Повторите попытку.';

  @override
  String verseWithText(Object text, Object verse) {
    return 'Стих $verse: $text';
  }

  @override
  String accentSwatchSemantics(Object name, Object selected) {
    return 'Акцентный цвет $name$selected';
  }

  @override
  String get oldTestament => 'Ветхий Завет';

  @override
  String get newTestament => 'Новый Завет';

  @override
  String get deuterocanonApocrypha => 'Второканонические книги / апокрифы';
}
