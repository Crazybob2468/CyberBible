// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Bulgarian (`bg`).
class AppLocalizationsBg extends AppLocalizations {
  AppLocalizationsBg([String locale = 'bg']) : super(locale);

  @override
  String get settingsTitle => 'Настройки';

  @override
  String get languageSection => 'език';

  @override
  String get useSystemLanguage => 'Използвайте системния език';

  @override
  String get useSystemLanguageSubtitle =>
      'Съвпадение на езика на устройството по подразбиране.';

  @override
  String get currentLanguage => 'Текущ език';

  @override
  String get appLanguage => 'Език на приложението';

  @override
  String get chooseLanguage => 'Изберете език';

  @override
  String get theme => 'Тема';

  @override
  String get appearance => 'Външен вид';

  @override
  String get textSection => 'Текст';

  @override
  String get readingFormatSection => 'Формат за четене';

  @override
  String get displaySection => 'Дисплей';

  @override
  String get verseNumbers => 'Числа на стихове';

  @override
  String get sectionHeadings => 'Заглавия на раздели';

  @override
  String get redLetterText => 'Текст с червени букви';

  @override
  String get selectABook => 'Изберете книга';

  @override
  String get traditionalOrder => 'Традиционен ред';

  @override
  String get alphabeticalOrder => 'Азбучен ред';

  @override
  String get bookmarks => 'Отметки';

  @override
  String get retry => 'Опитайте отново';

  @override
  String get chooseTheme => 'Изберете Тема';

  @override
  String get customisableThemes => 'Персонализируеми теми';

  @override
  String get customisableThemesSubtitle =>
      'Докоснете карта, за да изберете цвят на акцента. \"Classic White\" също така поддържа светли, тъмни и системни режими.';

  @override
  String get setThemes => 'ЗАДАДЕТЕ ТЕМИ';

  @override
  String get setThemesSubtitle =>
      'Фиксирани, ръчно изработени палети. Не е необходимо персонализиране — просто докоснете, за да приложите.';

  @override
  String get deleteBookmarkQuestion => 'Изтриване на отметката?';

  @override
  String get cancel => 'Отказ';

  @override
  String get delete => 'Изтриване';

  @override
  String get bookmarkSaved => 'Отметката е запазена';

  @override
  String get couldNotDeleteBookmark => 'Отметката не можа да бъде изтрита.';

  @override
  String couldNotNavigate(Object reference) {
    return 'Не можах да навигирам до $reference.';
  }

  @override
  String get pageNotFound => 'Страницата не е намерена';

  @override
  String noRouteDefined(Object routeName) {
    return 'Няма дефиниран маршрут за \"$routeName\"';
  }

  @override
  String get english => 'английски';

  @override
  String get spanish => 'Español';

  @override
  String get systemDefault => 'Система по подразбиране';

  @override
  String get languageStatusEnglish => 'Английски резервен активен';

  @override
  String get languageStatusSystem => 'Използване на системния език';

  @override
  String languageStatusSelected(Object languageName) {
    return 'Избран език: $languageName';
  }

  @override
  String get themeLabel => 'Тема';

  @override
  String get notFoundTitle => 'Страницата не е намерена';

  @override
  String get loadingCyberBible => 'Кибер Библията се зарежда...';

  @override
  String get couldNotOpenDatabase =>
      'Не може да се отвори библейската база данни. Моля, опитайте отново.';

  @override
  String get homeTagline =>
      'Безплатно приложение за изучаване на Библията с отворен код';

  @override
  String get readTheBible => 'Прочетете Библията';

  @override
  String get settingsTooltip => 'Настройки';

  @override
  String get themeChoose => 'Изберете Тема';

  @override
  String get customThemes => 'Персонализируеми теми';

  @override
  String get customThemesSubtitle =>
      'Докоснете карта, за да изберете цвят на акцента. \"Classic White\" също така поддържа светли, тъмни и системни режими.';

  @override
  String get setThemesLabel => 'ЗАДАДЕТЕ ТЕМИ';

  @override
  String get deleteBookmarkDialog => 'Изтриване на отметката?';

  @override
  String removeBookmarkMessage(Object details, Object reference) {
    return 'Премахнете \"$reference\"$details?\n\nТова не може да бъде отменено.';
  }

  @override
  String get couldNotLoadBookmarks =>
      'Отметките не можаха да се заредят. Моля, опитайте отново.';

  @override
  String get bookmarkSavedMessage => 'Отметката е запазена';

  @override
  String get couldNotSaveBookmark => 'Отметката не можа да бъде запазена.';

  @override
  String get noBookmarksMatchFilter =>
      'Няма отметки, които отговарят на този филтър.';

  @override
  String get clearFilter => 'Изчистване на филтъра';

  @override
  String get traditionalOrderLabel => 'Традиционен ред';

  @override
  String get alphabeticalOrderLabel => 'Азбучен ред';

  @override
  String get bookmarksTabLabel => 'Отметки';

  @override
  String get fullChapter => 'Пълна глава';

  @override
  String get addBookmark => 'Добавяне на отметка';

  @override
  String get selectVerse => 'Изберете Стих';

  @override
  String get labelOptional => 'Етикет (по избор)';

  @override
  String get notesOptional => 'Бележки (по избор)';

  @override
  String get save => 'Запазване';

  @override
  String get goToVerse => 'Отидете на Стих';

  @override
  String verseTitle(Object verse) {
    return 'Стих $verse';
  }

  @override
  String chapterTitle(Object chapter) {
    return 'Глава $chapter';
  }

  @override
  String get switchToFullChapter => 'Превключване към отметка за цяла глава';

  @override
  String get bookmarkSheetCancel => 'Отказ, затваряне на листа с отметки';

  @override
  String get pickCustomAccent => 'Изберете персонализиран акцент';

  @override
  String get apply => 'Кандидатствайте';

  @override
  String get custom => 'По поръчка';

  @override
  String get brightnessSystem => 'система';

  @override
  String get brightnessLight => 'светлина';

  @override
  String get brightnessDark => 'Тъмно';

  @override
  String get selectBook => 'Изберете книга';

  @override
  String get bookmarkFilterAll => 'Всички';

  @override
  String get bookmarkFilterUnlabeled => 'Без етикет';

  @override
  String get bookmarkSortRecent => 'Първо последните';

  @override
  String get bookmarkSortCanonical => 'Каноничен ред';

  @override
  String get chapterRetry => 'Опитайте отново';

  @override
  String get fontSize => 'Размер на шрифта';

  @override
  String fontSizePixels(Object size) {
    return '$size px';
  }

  @override
  String get fontSizeSlider => 'Плъзгач за размер на шрифта';

  @override
  String get fontSizeSliderHint => 'Плъзнете, за да регулирате от 12 до 28';

  @override
  String get fontPreview =>
      '\"В началото Бог създаде небето и земята.\" — Битие 1:1';

  @override
  String get showVerseNumbersSubtitle =>
      'Показване на горните индекси на номерата на стихове в екрана за четене.';

  @override
  String get showSectionHeadingsSubtitle =>
      'Показвайте заглавия на раздели и псалми между пасажите.';

  @override
  String get wordsOfChristSubtitle =>
      'Покажете думите на Исус в червено. Деактивирайте за един цвят на текста.';

  @override
  String get verseFormatTitle => 'Формат на стих';

  @override
  String get verseFormatSubtitle =>
      'Изберете как да бъде оформен текстът от писанията.';

  @override
  String get paragraphMode => 'Параграф';

  @override
  String get verseListMode => 'Списък със стихове';

  @override
  String get paragraphModeTooltip => 'Режим на абзац';

  @override
  String get verseListModeTooltip => 'Режим на списък със стихове';

  @override
  String get paragraphModeDescription =>
      'Текстът тече непрекъснато с абзаци с отстъп, като отпечатана Библия.';

  @override
  String get verseListModeDescription =>
      'Всеки абзац от писанията започва на отделен ред, което прави групите стихове лесни за откриване.';

  @override
  String get deleteBookmarkTooltip => 'Изтриване на отметка';

  @override
  String deleteBookmarkSemantics(Object reference) {
    return 'Изтриване на отметка $reference';
  }

  @override
  String sortBookmarksTooltip(Object sortOrder) {
    return 'Сортиране: $sortOrder';
  }

  @override
  String get noBookmarksYet => 'Все още няма отметки.';

  @override
  String get noBookmarksYetHint =>
      'Докоснете иконата на отметка, докато четете, за да запазите местоположение.';

  @override
  String bookmarkReferenceNavigationError(Object reference) {
    return 'Не можах да навигирам до $reference.';
  }

  @override
  String themeCardSemantics(Object description, Object name, Object selected) {
    return '$name тема$selected. $description';
  }

  @override
  String get selectedThemeSuffix => ', избрано в момента';

  @override
  String get customisableAccentDescription =>
      'Цвят на акцента с възможност за персонализиране.';

  @override
  String get fixedPaletteDescription => 'Фиксирана палитра.';

  @override
  String accentColourTitle(Object themeName) {
    return 'Цвят на акцента — $themeName';
  }

  @override
  String get brightnessMode => 'РЕЖИМ НА ЯРКОСТ';

  @override
  String get lightMode => 'Лек режим';

  @override
  String get followSystemMode => 'Следвайте системния режим';

  @override
  String get darkMode => 'Тъмен режим';

  @override
  String get customColourPicker => 'Персонализиран избор на цвят';

  @override
  String get customColourTooltip => 'Персонализиран цвят…';

  @override
  String get couldNotLoadBooks =>
      'Списъкът с книги не можа да се зареди. Моля, опитайте отново.';

  @override
  String chapterLabel(Object chapter) {
    return 'Глава $chapter';
  }

  @override
  String get traditionalOrderBooks => 'Традиционни книги за поръчки';

  @override
  String get alphabeticalOrderBooks => 'Книги по азбучен ред';

  @override
  String get home => 'Начало';

  @override
  String get addBookmarkTooltip => 'Добавете отметка';

  @override
  String get chooseBookChapter => 'Изберете книга и глава';

  @override
  String get chooseVerse => 'Изберете стих';

  @override
  String get bookChapterQuickNavigation => 'Бърза навигация по книги и глави';

  @override
  String get verseQuickNavigation => 'Стих бърза навигация';

  @override
  String get backToBooks => 'Обратно към книгите';

  @override
  String get selectBookTitle => 'Изберете Книга';

  @override
  String selectChapterTitle(Object bookName) {
    return 'Изберете глава ($bookName)';
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
    return 'Пълна глава: $bookName $chapter';
  }

  @override
  String get memorizeHint => 'Запомнете';

  @override
  String get addNoteHint => 'Добавете бележка...';

  @override
  String get languageSearchHint => 'Търсене на езици';

  @override
  String get languageModuleInstalled => 'Инсталиран';

  @override
  String get languageModulePending => 'Предстои машинен превод';

  @override
  String get languageNoMatches => 'Няма езици, отговарящи на вашето търсене.';

  @override
  String get languageCatalogDescription =>
      'Езиците, маркирани като инсталирани, работят офлайн. Други езици ще бъдат добавени като модули с машинен превод.';

  @override
  String get saveBookmarkSemantics => 'Запазване на отметка';

  @override
  String get couldNotLoadChapter =>
      'Главата не можа да се зареди. Моля, опитайте отново.';

  @override
  String get couldNotLoadChapters =>
      'Неуспешно зареждане на глави. Моля, опитайте отново.';

  @override
  String verseWithText(Object text, Object verse) {
    return 'Стих $verse: $text';
  }

  @override
  String accentSwatchSemantics(Object name, Object selected) {
    return '$name цвят на акцента $selected';
  }

  @override
  String get oldTestament => 'Стария завет';

  @override
  String get newTestament => 'Нов завет';

  @override
  String get deuterocanonApocrypha => 'Второканон / апокриф';
}
