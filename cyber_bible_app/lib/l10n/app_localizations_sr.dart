// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Serbian (`sr`).
class AppLocalizationsSr extends AppLocalizations {
  AppLocalizationsSr([String locale = 'sr']) : super(locale);

  @override
  String get settingsTitle => 'Подешавања';

  @override
  String get languageSection => 'Језик';

  @override
  String get useSystemLanguage => 'Користите системски језик';

  @override
  String get useSystemLanguageSubtitle =>
      'Подразумевано подударање са језиком уређаја.';

  @override
  String get currentLanguage => 'Тренутни језик';

  @override
  String get appLanguage => 'Језик апликације';

  @override
  String get chooseLanguage => 'Изаберите језик';

  @override
  String get theme => 'Тема';

  @override
  String get appearance => 'Изглед';

  @override
  String get textSection => 'Текст';

  @override
  String get readingFormatSection => 'Формат читања';

  @override
  String get displaySection => 'Дисплаи';

  @override
  String get verseNumbers => 'Стихови бројеви';

  @override
  String get sectionHeadings => 'Наслови секција';

  @override
  String get redLetterText => 'Ред-Леттер Тект';

  @override
  String get selectABook => 'Изаберите књигу';

  @override
  String get traditionalOrder => 'Традиционални поредак';

  @override
  String get alphabeticalOrder => 'Абецедним редом';

  @override
  String get bookmarks => 'Боокмаркс';

  @override
  String get retry => 'Покушајте поново';

  @override
  String get chooseTheme => 'Изаберите тему';

  @override
  String get customisableThemes => 'Прилагодљиве теме';

  @override
  String get customisableThemesSubtitle =>
      'Додирните картицу да бисте изабрали боју акцента. „Цлассиц Вхите“ такође подржава светле, тамне и системске режиме.';

  @override
  String get setThemes => 'ПОСТАВИ ТЕМЕ';

  @override
  String get setThemesSubtitle =>
      'Фиксне, ручно рађене палете. Није потребно прилагођавање - само додирните да бисте применили.';

  @override
  String get deleteBookmarkQuestion => 'Избрисати обележивач?';

  @override
  String get cancel => 'Откажи';

  @override
  String get delete => 'Избриши';

  @override
  String get bookmarkSaved => 'Обележивач је сачуван';

  @override
  String get couldNotDeleteBookmark => 'Није могуће избрисати обележивач.';

  @override
  String couldNotNavigate(Object reference) {
    return 'Није могуће доћи до $reference.';
  }

  @override
  String get pageNotFound => 'Страница није пронађена';

  @override
  String noRouteDefined(Object routeName) {
    return 'Није дефинисана рута за „$routeName“';
  }

  @override
  String get english => 'енглески';

  @override
  String get spanish => 'Еспанол';

  @override
  String get systemDefault => 'Систем подразумевано';

  @override
  String get languageStatusEnglish => 'Енглески резервни активан';

  @override
  String get languageStatusSystem => 'Коришћење системског језика';

  @override
  String languageStatusSelected(Object languageName) {
    return 'Изабрани језик: $languageName';
  }

  @override
  String get themeLabel => 'Тема';

  @override
  String get notFoundTitle => 'Страница није пронађена';

  @override
  String get loadingCyberBible => 'Учитавање Сајбер Библије...';

  @override
  String get couldNotOpenDatabase =>
      'Није могуће отворити библијску базу података. Покушајте поново.';

  @override
  String get homeTagline =>
      'Бесплатна апликација за проучавање Библије отвореног кода';

  @override
  String get readTheBible => 'Читајте Библију';

  @override
  String get settingsTooltip => 'Подешавања';

  @override
  String get themeChoose => 'Изаберите тему';

  @override
  String get customThemes => 'Прилагодљиве теме';

  @override
  String get customThemesSubtitle =>
      'Додирните картицу да бисте изабрали боју акцента. „Цлассиц Вхите“ такође подржава светле, тамне и системске режиме.';

  @override
  String get setThemesLabel => 'ПОСТАВИ ТЕМЕ';

  @override
  String get deleteBookmarkDialog => 'Избрисати обележивач?';

  @override
  String removeBookmarkMessage(Object details, Object reference) {
    return 'Уклонити \"$reference\"$details?\n\nОво се не може поништити.';
  }

  @override
  String get couldNotLoadBookmarks =>
      'Није могуће учитати обележиваче. Покушајте поново.';

  @override
  String get bookmarkSavedMessage => 'Обележивач је сачуван';

  @override
  String get couldNotSaveBookmark => 'Није могуће сачувати обележивач.';

  @override
  String get noBookmarksMatchFilter =>
      'Ниједан обележивач не одговара овом филтеру.';

  @override
  String get clearFilter => 'Обриши филтер';

  @override
  String get traditionalOrderLabel => 'Традиционални поредак';

  @override
  String get alphabeticalOrderLabel => 'Абецедним редом';

  @override
  String get bookmarksTabLabel => 'Боокмаркс';

  @override
  String get fullChapter => 'Цело поглавље';

  @override
  String get addBookmark => 'Додај обележивач';

  @override
  String get selectVerse => 'Изаберите Стих';

  @override
  String get labelOptional => 'Ознака (опционо)';

  @override
  String get notesOptional => 'Белешке (опционо)';

  @override
  String get save => 'Сачувај';

  @override
  String get goToVerse => 'Иди на Стих';

  @override
  String verseTitle(Object verse) {
    return 'Стих $verse';
  }

  @override
  String chapterTitle(Object chapter) {
    return 'Поглавље $chapter';
  }

  @override
  String get switchToFullChapter => 'Пребаците се на обележивач целог поглавља';

  @override
  String get bookmarkSheetCancel => 'Откажи, затвори лист са обележивачима';

  @override
  String get pickCustomAccent => 'Изаберите прилагођени акценат';

  @override
  String get apply => 'Пријавите се';

  @override
  String get custom => 'Цустом';

  @override
  String get brightnessSystem => 'Систем';

  @override
  String get brightnessLight => 'Светлост';

  @override
  String get brightnessDark => 'Дарк';

  @override
  String get selectBook => 'Изаберите књигу';

  @override
  String get bookmarkFilterAll => 'Све';

  @override
  String get bookmarkFilterUnlabeled => 'Унлабелед';

  @override
  String get bookmarkSortRecent => 'Недавно прво';

  @override
  String get bookmarkSortCanonical => 'Канонски поредак';

  @override
  String get chapterRetry => 'Покушајте поново';

  @override
  String get fontSize => 'Величина фонта';

  @override
  String fontSizePixels(Object size) {
    return '$size пк';
  }

  @override
  String get fontSizeSlider => 'Клизач величине фонта';

  @override
  String get fontSizeSliderHint => 'Превуците да бисте подесили од 12 до 28';

  @override
  String get fontPreview =>
      '„У почетку створи Бог небо и земљу“. — Постање 1:1';

  @override
  String get showVerseNumbersSubtitle =>
      'На екрану за читање прикажите надредове бројева стиха.';

  @override
  String get showSectionHeadingsSubtitle =>
      'Прикажи наслове одељака и псалама између пасуса.';

  @override
  String get wordsOfChristSubtitle =>
      'Покажите Исусове речи црвеном бојом. Онемогући за једну боју текста.';

  @override
  String get verseFormatTitle => 'Формат стиха';

  @override
  String get verseFormatSubtitle =>
      'Одаберите како је постављен текст Светих писама.';

  @override
  String get paragraphMode => 'Параграф';

  @override
  String get verseListMode => 'Листа стихова';

  @override
  String get paragraphModeTooltip => 'Режим пасуса';

  @override
  String get verseListModeTooltip => 'Режим листе стихова';

  @override
  String get paragraphModeDescription =>
      'Текст тече непрекидно са увученим параграфима, попут штампане Библије.';

  @override
  String get verseListModeDescription =>
      'Сваки одломак из Светих писама почиње својом линијом, чинећи групе стихова лаким за уочавање.';

  @override
  String get deleteBookmarkTooltip => 'Обриши обележивач';

  @override
  String deleteBookmarkSemantics(Object reference) {
    return 'Обриши обележивач $reference';
  }

  @override
  String sortBookmarksTooltip(Object sortOrder) {
    return 'Сортирај: $sortOrder';
  }

  @override
  String get noBookmarksYet => 'Још нема обележивача.';

  @override
  String get noBookmarksYetHint =>
      'Додирните икону обележивача док читате да бисте сачували локацију.';

  @override
  String bookmarkReferenceNavigationError(Object reference) {
    return 'Није могуће доћи до $reference.';
  }

  @override
  String themeCardSemantics(Object description, Object name, Object selected) {
    return '$name тхеме$selected. $description';
  }

  @override
  String get selectedThemeSuffix => ', тренутно изабрано';

  @override
  String get customisableAccentDescription => 'Прилагодљива акцентна боја.';

  @override
  String get fixedPaletteDescription => 'Фиксна палета.';

  @override
  String accentColourTitle(Object themeName) {
    return 'Боја акцента — $themeName';
  }

  @override
  String get brightnessMode => 'БРИГХТНЕСС МОДЕ';

  @override
  String get lightMode => 'Светлосни режим';

  @override
  String get followSystemMode => 'Пратите системски режим';

  @override
  String get darkMode => 'Тамни режим';

  @override
  String get customColourPicker => 'Прилагођени бирач боја';

  @override
  String get customColourTooltip => 'Прилагођена боја…';

  @override
  String get couldNotLoadBooks =>
      'Није могуће учитати листу књига. Покушајте поново.';

  @override
  String chapterLabel(Object chapter) {
    return 'Поглавље $chapter';
  }

  @override
  String get traditionalOrderBooks => 'Традиционалне књиге налога';

  @override
  String get alphabeticalOrderBooks => 'Књиге по азбучном реду';

  @override
  String get home => 'Хоме';

  @override
  String get addBookmarkTooltip => 'Додај обележивач';

  @override
  String get chooseBookChapter => 'Изаберите књигу и поглавље';

  @override
  String get chooseVerse => 'Изаберите стих';

  @override
  String get bookChapterQuickNavigation =>
      'Брза навигација кроз књиге и поглавља';

  @override
  String get verseQuickNavigation => 'Брза навигација у стиху';

  @override
  String get backToBooks => 'Назад на књиге';

  @override
  String get selectBookTitle => 'Изаберите Боок';

  @override
  String selectChapterTitle(Object bookName) {
    return 'Изабери поглавље ($bookName)';
  }

  @override
  String chapterSelectionLabel(Object chapter) {
    return 'Поглавље $chapter';
  }

  @override
  String verseSelectionLabel(Object verse) {
    return 'Стих $verse';
  }

  @override
  String fullChapterReference(Object bookName, Object chapter) {
    return 'Цело поглавље: $bookName $chapter';
  }

  @override
  String get memorizeHint => 'Запамтите';

  @override
  String get addNoteHint => 'Додајте напомену...';

  @override
  String get languageSearchHint => 'Претражи језике';

  @override
  String get languageModuleInstalled => 'Инсталиран';

  @override
  String get languageModulePending => 'Машински превод је на чекању';

  @override
  String get languageNoMatches => 'Ниједан језик не одговара вашој претрази.';

  @override
  String get languageCatalogDescription =>
      'Језици означени као инсталирани раде ван мреже. Остали језици ће бити додати као машински преведени модули.';

  @override
  String get saveBookmarkSemantics => 'Сачувај обележивач';

  @override
  String get couldNotLoadChapter =>
      'Није могуће учитати поглавље. Покушајте поново.';

  @override
  String get couldNotLoadChapters =>
      'Није могуће учитати поглавља. Покушајте поново.';

  @override
  String verseWithText(Object text, Object verse) {
    return 'Стих $verse: $text';
  }

  @override
  String accentSwatchSemantics(Object name, Object selected) {
    return '$name наглашена боја$selected';
  }

  @override
  String get oldTestament => 'Стари завет';

  @override
  String get newTestament => 'Нови завет';

  @override
  String get deuterocanonApocrypha => 'Деутероканон / Апокрифи';
}
