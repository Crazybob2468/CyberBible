// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Ukrainian (`uk`).
class AppLocalizationsUk extends AppLocalizations {
  AppLocalizationsUk([String locale = 'uk']) : super(locale);

  @override
  String get settingsTitle => 'Налаштування';

  @override
  String get languageSection => 'Мова';

  @override
  String get useSystemLanguage => 'Використовувати системну мову';

  @override
  String get useSystemLanguageSubtitle =>
      'За замовчуванням використовувати мову пристрою.';

  @override
  String get currentLanguage => 'Поточна мова';

  @override
  String get appLanguage => 'Мова програми';

  @override
  String get chooseLanguage => 'Виберіть мову';

  @override
  String get theme => 'Тема';

  @override
  String get appearance => 'Вигляд';

  @override
  String get textSection => 'Текст';

  @override
  String get readingFormatSection => 'Формат читання';

  @override
  String get displaySection => 'Відображення';

  @override
  String get verseNumbers => 'Номери віршів';

  @override
  String get sectionHeadings => 'Заголовки розділів';

  @override
  String get redLetterText => 'Червоний текст';

  @override
  String get selectABook => 'Виберіть книгу';

  @override
  String get traditionalOrder => 'Традиційний порядок';

  @override
  String get alphabeticalOrder => 'Алфавітний порядок';

  @override
  String get bookmarks => 'Закладки';

  @override
  String get retry => 'Повторити';

  @override
  String get chooseTheme => 'Виберіть тему';

  @override
  String get customisableThemes => 'Теми з налаштуванням';

  @override
  String get customisableThemesSubtitle =>
      'Торкніться картки, щоб вибрати колір акценту. «Classic White» також підтримує світлий, темний режим і режим системи.';

  @override
  String get setThemes => 'НАЛАШТУВАННЯ ТЕМ';

  @override
  String get setThemesSubtitle =>
      'Фіксовані палітри, створені вручну. Налаштування не потрібне — просто торкніться, щоб застосувати.';

  @override
  String get deleteBookmarkQuestion => 'Видалити закладку?';

  @override
  String get cancel => 'Скасувати';

  @override
  String get delete => 'Видалити';

  @override
  String get bookmarkSaved => 'Закладку збережено';

  @override
  String get couldNotDeleteBookmark => 'Не вдалося видалити закладку.';

  @override
  String couldNotNavigate(Object reference) {
    return 'Не вдалося перейти до $reference.';
  }

  @override
  String get pageNotFound => 'Сторінку не знайдено';

  @override
  String noRouteDefined(Object routeName) {
    return 'Маршрут для «$routeName» не визначено';
  }

  @override
  String get english => 'Англійська';

  @override
  String get spanish => 'Español';

  @override
  String get systemDefault => 'За замовчуванням системи';

  @override
  String get languageStatusEnglish => 'Активна резервна англійська мова';

  @override
  String get languageStatusSystem => 'Використовується мова системи';

  @override
  String languageStatusSelected(Object languageName) {
    return 'Вибрана мова: $languageName';
  }

  @override
  String get themeLabel => 'Тема';

  @override
  String get notFoundTitle => 'Сторінку не знайдено';

  @override
  String get loadingCyberBible => 'Завантаження Cyber Bible…';

  @override
  String get couldNotOpenDatabase =>
      'Не вдалося відкрити базу даних Біблії. Спробуйте ще раз.';

  @override
  String get homeTagline =>
      'Безкоштовний застосунок із відкритим кодом для вивчення Біблії';

  @override
  String get readTheBible => 'Читати Біблію';

  @override
  String get settingsTooltip => 'Налаштування';

  @override
  String get themeChoose => 'Виберіть тему';

  @override
  String get customThemes => 'Теми з налаштуванням';

  @override
  String get customThemesSubtitle =>
      'Торкніться картки, щоб вибрати колір акценту. «Classic White» також підтримує світлий, темний режим і режим системи.';

  @override
  String get setThemesLabel => 'НАЛАШТУВАННЯ ТЕМ';

  @override
  String get deleteBookmarkDialog => 'Видалити закладку?';

  @override
  String removeBookmarkMessage(Object details, Object reference) {
    return 'Видалити «$reference»$details?\n\nЦю дію неможливо скасувати.';
  }

  @override
  String get couldNotLoadBookmarks =>
      'Не вдалося завантажити закладки. Спробуйте ще раз.';

  @override
  String get bookmarkSavedMessage => 'Закладку збережено';

  @override
  String get couldNotSaveBookmark => 'Не вдалося зберегти закладку.';

  @override
  String get noBookmarksMatchFilter =>
      'Жодна закладка не відповідає цьому фільтру.';

  @override
  String get clearFilter => 'Очистити фільтр';

  @override
  String get traditionalOrderLabel => 'Традиційний порядок';

  @override
  String get alphabeticalOrderLabel => 'Алфавітний порядок';

  @override
  String get bookmarksTabLabel => 'Закладки';

  @override
  String get fullChapter => 'Увесь розділ';

  @override
  String get addBookmark => 'Додати закладку';

  @override
  String get selectVerse => 'Виберіть вірш';

  @override
  String get labelOptional => 'Мітка (необов’язково)';

  @override
  String get notesOptional => 'Нотатки (необов’язково)';

  @override
  String get save => 'Зберегти';

  @override
  String get goToVerse => 'Перейти до вірша';

  @override
  String verseTitle(Object verse) {
    return 'Вірш $verse';
  }

  @override
  String chapterTitle(Object chapter) {
    return 'Розділ $chapter';
  }

  @override
  String get switchToFullChapter => 'Перейти до закладки на весь розділ';

  @override
  String get bookmarkSheetCancel => 'Скасувати й закрити панель закладок';

  @override
  String get pickCustomAccent => 'Вибрати власний колір акценту';

  @override
  String get apply => 'Застосувати';

  @override
  String get custom => 'Власний';

  @override
  String get brightnessSystem => 'Системний';

  @override
  String get brightnessLight => 'Світла';

  @override
  String get brightnessDark => 'Темна';

  @override
  String get selectBook => 'Виберіть книгу';

  @override
  String get bookmarkFilterAll => 'Усі';

  @override
  String get bookmarkFilterUnlabeled => 'Без мітки';

  @override
  String get bookmarkSortRecent => 'Спочатку найновіші';

  @override
  String get bookmarkSortCanonical => 'Канонічний порядок';

  @override
  String get chapterRetry => 'Повторити';

  @override
  String get fontSize => 'Розмір шрифту';

  @override
  String fontSizePixels(Object size) {
    return '$size пікс.';
  }

  @override
  String get fontSizeSlider => 'Повзунок розміру шрифту';

  @override
  String get fontSizeSliderHint => 'Проведіть, щоб змінити розмір від 12 до 28';

  @override
  String get fontPreview =>
      '«На початку Бог створив небо та землю». — Бут. 1:1';

  @override
  String get showVerseNumbersSubtitle =>
      'Показувати надрядкові номери віршів на екрані читання.';

  @override
  String get showSectionHeadingsSubtitle =>
      'Показувати заголовки розділів і псалмів між уривками.';

  @override
  String get wordsOfChristSubtitle =>
      'Показувати слова Ісуса червоним. Вимкніть, щоб використовувати один колір тексту.';

  @override
  String get verseFormatTitle => 'Формат віршів';

  @override
  String get verseFormatSubtitle =>
      'Виберіть спосіб відображення біблійного тексту.';

  @override
  String get paragraphMode => 'Абзац';

  @override
  String get verseListMode => 'Список віршів';

  @override
  String get paragraphModeTooltip => 'Режим абзаців';

  @override
  String get verseListModeTooltip => 'Режим списку віршів';

  @override
  String get paragraphModeDescription =>
      'Текст іде безперервно з абзацами з відступом, як у друкованій Біблії.';

  @override
  String get verseListModeDescription =>
      'Кожен біблійний абзац починається з нового рядка, щоб групи віршів було легше розрізняти.';

  @override
  String get deleteBookmarkTooltip => 'Видалити закладку';

  @override
  String deleteBookmarkSemantics(Object reference) {
    return 'Видалити закладку $reference';
  }

  @override
  String sortBookmarksTooltip(Object sortOrder) {
    return 'Сортування: $sortOrder';
  }

  @override
  String get noBookmarksYet => 'Закладок ще немає.';

  @override
  String get noBookmarksYetHint =>
      'Під час читання торкніться значка закладки, щоб зберегти місце.';

  @override
  String bookmarkReferenceNavigationError(Object reference) {
    return 'Не вдалося перейти до $reference.';
  }

  @override
  String themeCardSemantics(Object description, Object name, Object selected) {
    return 'Тема $name$selected. $description';
  }

  @override
  String get selectedThemeSuffix => ', наразі вибрано';

  @override
  String get customisableAccentDescription =>
      'Колір акценту можна налаштувати.';

  @override
  String get fixedPaletteDescription => 'Фіксована палітра.';

  @override
  String accentColourTitle(Object themeName) {
    return 'Колір акценту — $themeName';
  }

  @override
  String get brightnessMode => 'РЕЖИМ ЯСКРАВОСТІ';

  @override
  String get lightMode => 'Світлий режим';

  @override
  String get followSystemMode => 'Як у системі';

  @override
  String get darkMode => 'Темний режим';

  @override
  String get customColourPicker => 'Вибір власного кольору';

  @override
  String get customColourTooltip => 'Власний колір…';

  @override
  String get couldNotLoadBooks =>
      'Не вдалося завантажити список книг. Спробуйте ще раз.';

  @override
  String chapterLabel(Object chapter) {
    return 'Розділ $chapter';
  }

  @override
  String get traditionalOrderBooks => 'Книги в традиційному порядку';

  @override
  String get alphabeticalOrderBooks => 'Книги в алфавітному порядку';

  @override
  String get home => 'Головна';

  @override
  String get addBookmarkTooltip => 'Додати закладку';

  @override
  String get chooseBookChapter => 'Виберіть книгу та розділ';

  @override
  String get chooseVerse => 'Виберіть вірш';

  @override
  String get bookChapterQuickNavigation =>
      'Швидка навігація до книги й розділу';

  @override
  String get verseQuickNavigation => 'Швидка навігація до вірша';

  @override
  String get backToBooks => 'Назад до книг';

  @override
  String get selectBookTitle => 'Вибрати книгу';

  @override
  String selectChapterTitle(Object bookName) {
    return 'Вибрати розділ ($bookName)';
  }

  @override
  String chapterSelectionLabel(Object chapter) {
    return 'Розділ $chapter';
  }

  @override
  String verseSelectionLabel(Object verse) {
    return 'Вірш $verse';
  }

  @override
  String fullChapterReference(Object bookName, Object chapter) {
    return 'Увесь розділ: $bookName $chapter';
  }

  @override
  String get memorizeHint => 'Запам’ятати';

  @override
  String get addNoteHint => 'Додати нотатку...';

  @override
  String get languageSearchHint => 'Пошук мов';

  @override
  String get languageModuleInstalled => 'Встановлено';

  @override
  String get languageModulePending => 'Очікується машинний переклад';

  @override
  String get languageNoMatches => 'За вашим запитом мов не знайдено.';

  @override
  String get languageCatalogDescription =>
      'Встановлені мови працюють офлайн. Інші мови згодом буде додано як модулі машинного перекладу.';

  @override
  String get saveBookmarkSemantics => 'Зберегти закладку';

  @override
  String get couldNotLoadChapter =>
      'Не вдалося завантажити розділ. Спробуйте ще раз.';

  @override
  String get couldNotLoadChapters =>
      'Не вдалося завантажити розділи. Спробуйте ще раз.';

  @override
  String verseWithText(Object text, Object verse) {
    return 'Вірш $verse: $text';
  }

  @override
  String accentSwatchSemantics(Object name, Object selected) {
    return 'Зразок кольору акценту $name$selected';
  }

  @override
  String get oldTestament => 'Старий Завіт';

  @override
  String get newTestament => 'Новий Завіт';

  @override
  String get deuterocanonApocrypha => 'Другоканонічні / Апокрифи';

  @override
  String footnoteTitle(Object caller) {
    return 'Виноска $caller';
  }

  @override
  String get closeFootnote => 'Закрити виноску';

  @override
  String couldNotOpenFootnote(Object reference) {
    return 'Не вдалося відкрити виноску $reference.';
  }

  @override
  String get chapterFootnotesTitle => 'Виноски';

  @override
  String openScriptureReference(Object reference) {
    return 'Відкрити $reference';
  }

  @override
  String get couldNotLoadFootnotes =>
      'Не вдалося завантажити виноски. Спробуйте ще раз.';
}
