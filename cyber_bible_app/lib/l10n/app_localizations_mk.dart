// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Macedonian (`mk`).
class AppLocalizationsMk extends AppLocalizations {
  AppLocalizationsMk([String locale = 'mk']) : super(locale);

  @override
  String get settingsTitle => 'Поставки';

  @override
  String get languageSection => 'Јазик';

  @override
  String get useSystemLanguage => 'Користете системски јазик';

  @override
  String get useSystemLanguageSubtitle =>
      'Стандардно усогласете го јазикот на уредот.';

  @override
  String get currentLanguage => 'Тековен јазик';

  @override
  String get appLanguage => 'Јазик на апликацијата';

  @override
  String get chooseLanguage => 'Изберете јазик';

  @override
  String get theme => 'Тема';

  @override
  String get appearance => 'Изглед';

  @override
  String get textSection => 'Текст';

  @override
  String get readingFormatSection => 'Формат за читање';

  @override
  String get displaySection => 'Приказ';

  @override
  String get verseNumbers => 'Броеви на стихови';

  @override
  String get sectionHeadings => 'Наслови на секции';

  @override
  String get redLetterText => 'Текст со црвена буква';

  @override
  String get selectABook => 'Изберете книга';

  @override
  String get traditionalOrder => 'Традиционален ред';

  @override
  String get alphabeticalOrder => 'Азбучен ред';

  @override
  String get bookmarks => 'Обележувачи';

  @override
  String get retry => 'Обидете се повторно';

  @override
  String get chooseTheme => 'Изберете тема';

  @override
  String get customisableThemes => 'Приспособливи теми';

  @override
  String get customisableThemesSubtitle =>
      'Допрете картичка за да изберете боја на акцент. „Класично бело“ поддржува и светли, темни и системски режими.';

  @override
  String get setThemes => 'ПОСТАВЕТЕ ТЕМИ';

  @override
  String get setThemesSubtitle =>
      'Поправени, рачно изработени палети. Не е потребно прилагодување - само допрете за да аплицирате.';

  @override
  String get deleteBookmarkQuestion => 'Да се ​​избрише обележувачот?';

  @override
  String get cancel => 'Откажи';

  @override
  String get delete => 'Избриши';

  @override
  String get bookmarkSaved => 'Обележувачот е зачуван';

  @override
  String get couldNotDeleteBookmark => 'Не може да се избрише обележувачот.';

  @override
  String couldNotNavigate(Object reference) {
    return 'Не може да се движите до $reference.';
  }

  @override
  String get pageNotFound => 'Страницата не е пронајдена';

  @override
  String noRouteDefined(Object routeName) {
    return 'Нема дефинирана рута за „$routeName“';
  }

  @override
  String get english => 'Англиски јазик';

  @override
  String get spanish => 'Еспањол';

  @override
  String get systemDefault => 'Стандардно на системот';

  @override
  String get languageStatusEnglish => 'Активен е резервниот англиски јазик';

  @override
  String get languageStatusSystem => 'Користење на системски јазик';

  @override
  String languageStatusSelected(Object languageName) {
    return 'Избран јазик: $languageName';
  }

  @override
  String get themeLabel => 'Тема';

  @override
  String get notFoundTitle => 'Страницата не е пронајдена';

  @override
  String get loadingCyberBible => 'Се вчитува Сајбер Библијата...';

  @override
  String get couldNotOpenDatabase =>
      'Не може да се отвори библиската база на податоци. Ве молиме обидете се повторно.';

  @override
  String get homeTagline =>
      'Бесплатна и отворена апликација за проучување на Библијата';

  @override
  String get readTheBible => 'Прочитајте ја Библијата';

  @override
  String get settingsTooltip => 'Поставки';

  @override
  String get themeChoose => 'Изберете тема';

  @override
  String get customThemes => 'Приспособливи теми';

  @override
  String get customThemesSubtitle =>
      'Допрете картичка за да изберете боја на акцент. „Класично бело“ поддржува и светли, темни и системски режими.';

  @override
  String get setThemesLabel => 'ПОСТАВЕТЕ ТЕМИ';

  @override
  String get deleteBookmarkDialog => 'Да се ​​избрише обележувачот?';

  @override
  String removeBookmarkMessage(Object details, Object reference) {
    return 'Да се ​​отстрани „$reference“$details?\n\nОва не може да се врати.';
  }

  @override
  String get couldNotLoadBookmarks =>
      'Не може да се вчитаат обележувачите. Ве молиме обидете се повторно.';

  @override
  String get bookmarkSavedMessage => 'Обележувачот е зачуван';

  @override
  String get couldNotSaveBookmark => 'Не може да се зачува обележувачот.';

  @override
  String get noBookmarksMatchFilter =>
      'Нема обележувачи кои одговараат на овој филтер.';

  @override
  String get clearFilter => 'Исчистете го филтерот';

  @override
  String get traditionalOrderLabel => 'Традиционален ред';

  @override
  String get alphabeticalOrderLabel => 'Азбучен ред';

  @override
  String get bookmarksTabLabel => 'Обележувачи';

  @override
  String get fullChapter => 'Целосно поглавје';

  @override
  String get addBookmark => 'Додадете обележувач';

  @override
  String get selectVerse => 'Изберете стих';

  @override
  String get labelOptional => 'Етикета (изборно)';

  @override
  String get notesOptional => 'Забелешки (изборно)';

  @override
  String get save => 'Зачувај';

  @override
  String get goToVerse => 'Оди во Стих';

  @override
  String verseTitle(Object verse) {
    return 'Стих $verse';
  }

  @override
  String chapterTitle(Object chapter) {
    return 'Поглавје $chapter';
  }

  @override
  String get switchToFullChapter =>
      'Префрлете се на обележувач на целото поглавје';

  @override
  String get bookmarkSheetCancel =>
      'Откажете, затворете го листот со обележувачи';

  @override
  String get pickCustomAccent => 'Изберете прилагоден акцент';

  @override
  String get apply => 'Пријавете се';

  @override
  String get custom => 'Прилагодено';

  @override
  String get brightnessSystem => 'Систем';

  @override
  String get brightnessLight => 'Светлина';

  @override
  String get brightnessDark => 'Темно';

  @override
  String get selectBook => 'Изберете книга';

  @override
  String get bookmarkFilterAll => 'Сите';

  @override
  String get bookmarkFilterUnlabeled => 'Неозначено';

  @override
  String get bookmarkSortRecent => 'Прво неодамна';

  @override
  String get bookmarkSortCanonical => 'Канонски поредок';

  @override
  String get chapterRetry => 'Обидете се повторно';

  @override
  String get fontSize => 'Големина на фонтот';

  @override
  String fontSizePixels(Object size) {
    return '$size px';
  }

  @override
  String get fontSizeSlider => 'Лизгач за големината на фонтот';

  @override
  String get fontSizeSliderHint => 'Повлечете за да приспособите од 12 до 28';

  @override
  String get fontPreview =>
      '„Во почетокот Бог ги создаде небото и земјата“. — 1. Мојсеева 1:1';

  @override
  String get showVerseNumbersSubtitle =>
      'Прикажи ги надредените броеви на стиховите на екранот за читање.';

  @override
  String get showSectionHeadingsSubtitle =>
      'Прикажи ги насловите на делот и псалмите помеѓу пасуси.';

  @override
  String get wordsOfChristSubtitle =>
      'Покажете ги зборовите на Исус со црвено. Оневозможи за една боја на текст.';

  @override
  String get verseFormatTitle => 'Формат на стихови';

  @override
  String get verseFormatSubtitle =>
      'Изберете како е поставен текстот на Светото писмо.';

  @override
  String get paragraphMode => 'Став';

  @override
  String get verseListMode => 'Список на стихови';

  @override
  String get paragraphModeTooltip => 'Режим на пасус';

  @override
  String get verseListModeTooltip => 'Режим на список со стихови';

  @override
  String get paragraphModeDescription =>
      'Текстот постојано тече со вовлечени параграфи, како печатена Библија.';

  @override
  String get verseListModeDescription =>
      'Секој пасус од библискиот стих започнува на свој ред, со што е лесно да се забележат групите на стихови.';

  @override
  String get deleteBookmarkTooltip => 'Избришете обележувач';

  @override
  String deleteBookmarkSemantics(Object reference) {
    return 'Избришете го обележувачот $reference';
  }

  @override
  String sortBookmarksTooltip(Object sortOrder) {
    return 'Подреди: $sortOrder';
  }

  @override
  String get noBookmarksYet => 'Сè уште нема обележувачи.';

  @override
  String get noBookmarksYetHint =>
      'Допрете ја иконата за обележувачи додека читате за да зачувате локација.';

  @override
  String bookmarkReferenceNavigationError(Object reference) {
    return 'Не може да се движите до $reference.';
  }

  @override
  String themeCardSemantics(Object description, Object name, Object selected) {
    return '$name тема$selected. $description';
  }

  @override
  String get selectedThemeSuffix => ', моментално избрано';

  @override
  String get customisableAccentDescription => 'Приспособлива боја на акцент.';

  @override
  String get fixedPaletteDescription => 'Фиксна палета.';

  @override
  String accentColourTitle(Object themeName) {
    return 'Боја на акцент — $themeName';
  }

  @override
  String get brightnessMode => 'РЕЖИМ НА Осветленост';

  @override
  String get lightMode => 'Светлосен режим';

  @override
  String get followSystemMode => 'Следете го системскиот режим';

  @override
  String get darkMode => 'Темен режим';

  @override
  String get customColourPicker => 'Прилагодено избирач на бои';

  @override
  String get customColourTooltip => 'Прилагодена боја…';

  @override
  String get couldNotLoadBooks =>
      'Не може да се вчита списокот со книги. Ве молиме обидете се повторно.';

  @override
  String chapterLabel(Object chapter) {
    return 'Поглавје $chapter';
  }

  @override
  String get traditionalOrderBooks => 'Традиционални книги за нарачки';

  @override
  String get alphabeticalOrderBooks => 'Книги по азбучен редослед';

  @override
  String get home => 'Дома';

  @override
  String get addBookmarkTooltip => 'Додадете обележувач';

  @override
  String get chooseBookChapter => 'Изберете книга и поглавје';

  @override
  String get chooseVerse => 'Изберете стих';

  @override
  String get bookChapterQuickNavigation =>
      'Брза навигација со книги и поглавја';

  @override
  String get verseQuickNavigation => 'Стих брза навигација';

  @override
  String get backToBooks => 'Назад кон книгите';

  @override
  String get selectBookTitle => 'Изберете Книга';

  @override
  String selectChapterTitle(Object bookName) {
    return 'Изберете поглавје ($bookName)';
  }

  @override
  String chapterSelectionLabel(Object chapter) {
    return 'Поглавје $chapter';
  }

  @override
  String verseSelectionLabel(Object verse) {
    return 'Стих $verse';
  }

  @override
  String fullChapterReference(Object bookName, Object chapter) {
    return 'Целосно поглавје: $bookName $chapter';
  }

  @override
  String get memorizeHint => 'Запомни';

  @override
  String get addNoteHint => 'Додадете белешка...';

  @override
  String get languageSearchHint => 'Јазици за пребарување';

  @override
  String get languageModuleInstalled => 'Инсталиран';

  @override
  String get languageModulePending => 'Се чека машински превод';

  @override
  String get languageNoMatches =>
      'Нема јазици кои одговараат на вашето пребарување.';

  @override
  String get languageCatalogDescription =>
      'Јазиците означени како инсталирани работат офлајн. Други јазици ќе бидат додадени како машински преведени модули.';

  @override
  String get saveBookmarkSemantics => 'Зачувај обележувач';

  @override
  String get couldNotLoadChapter =>
      'Не може да се вчита поглавјето. Ве молиме обидете се повторно.';

  @override
  String get couldNotLoadChapters =>
      'Не може да се вчитаат поглавјата. Ве молиме обидете се повторно.';

  @override
  String verseWithText(Object text, Object verse) {
    return 'Стих $verse: $text';
  }

  @override
  String accentSwatchSemantics(Object name, Object selected) {
    return '$name акцентна боја$selected';
  }

  @override
  String get oldTestament => 'Стариот завет';

  @override
  String get newTestament => 'Новиот Завет';

  @override
  String get deuterocanonApocrypha => 'Деутероканон / Апокрифи';
}
