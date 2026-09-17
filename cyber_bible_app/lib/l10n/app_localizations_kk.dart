// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Kazakh (`kk`).
class AppLocalizationsKk extends AppLocalizations {
  AppLocalizationsKk([String locale = 'kk']) : super(locale);

  @override
  String get settingsTitle => '[\"Параметрлер\"]';

  @override
  String get languageSection => '[\"Тіл\"]';

  @override
  String get useSystemLanguage => '[\"Жүйе тілін пайдаланыңыз\"]';

  @override
  String get useSystemLanguageSubtitle =>
      '[\"Құрылғы тілін әдепкі бойынша сәйкестендіріңіз.\"]';

  @override
  String get currentLanguage => '[\"Ағымдағы тіл\"]';

  @override
  String get appLanguage => '[\"Қолданба тілі\"]';

  @override
  String get chooseLanguage => '[\"Тілді таңдаңыз\"]';

  @override
  String get theme => '[\"Тақырып\"]';

  @override
  String get appearance => '[\"Сыртқы түрі\"]';

  @override
  String get textSection => '[\"Мәтін\"]';

  @override
  String get readingFormatSection => '[\"Оқу пішімі\"]';

  @override
  String get displaySection => '[\"Дисплей\"]';

  @override
  String get verseNumbers => '[\"Өлең сандары\"]';

  @override
  String get sectionHeadings => '[\"Бөлім тақырыптары\"]';

  @override
  String get redLetterText => '[\"Қызыл әріпті мәтін\"]';

  @override
  String get selectABook => '[\"Кітапты таңдаңыз\"]';

  @override
  String get traditionalOrder => '[\"Дәстүрлі тәртіп\"]';

  @override
  String get alphabeticalOrder => '[\"Алфавиттік тәртіп\"]';

  @override
  String get bookmarks => '[\"Бетбелгілер\"]';

  @override
  String get retry => '[\"Қайталап көріңіз\"]';

  @override
  String get chooseTheme => '[\"Тақырыпты таңдаңыз\"]';

  @override
  String get customisableThemes => '[\"Теңшелетін тақырыптар\"]';

  @override
  String get customisableThemesSubtitle =>
      '[\"Акцент түсін таңдау үшін картаны түртіңіз. «Классикалық ақ» сонымен қатар Ашық, Қараңғы және Жүйе режимдерін қолдайды.\"]';

  @override
  String get setThemes => '[\"ТАҚЫРЫПТАРДЫ ОРНАТУ\"]';

  @override
  String get setThemesSubtitle =>
      '[\"Бекітілген, қолдан жасалған палитралар. Баптау қажет емес — қолдану үшін түртіңіз.\"]';

  @override
  String get deleteBookmarkQuestion => '[\"Бетбелгіні жою керек пе?\"]';

  @override
  String get cancel => '[\"Болдырмау\"]';

  @override
  String get delete => '[\"Жою\"]';

  @override
  String get bookmarkSaved => '[\"Бетбелгі сақталды\"]';

  @override
  String get couldNotDeleteBookmark => '[\"Бетбелгіні жою мүмкін болмады.\"]';

  @override
  String couldNotNavigate(Object reference) {
    return '[\"$reference шарлау мүмкін болмады.\"]';
  }

  @override
  String get pageNotFound => '[\"Бет табылмады\"]';

  @override
  String noRouteDefined(Object routeName) {
    return '[\"\\\"$routeName\\\" үшін маршрут анықталмаған\"]';
  }

  @override
  String get english => '[\"Ағылшын\"]';

  @override
  String get spanish => '[\"испан\"]';

  @override
  String get systemDefault => '[\"Жүйе әдепкі\"]';

  @override
  String get languageStatusEnglish =>
      '[\"Ағылшынша қалпына келтіру белсенді\"]';

  @override
  String get languageStatusSystem => '[\"Жүйе тілін пайдалану\"]';

  @override
  String languageStatusSelected(Object languageName) {
    return '[\"Таңдалған тіл: $languageName\"]';
  }

  @override
  String get themeLabel => '[\"Тақырып\"]';

  @override
  String get notFoundTitle => '[\"Бет табылмады\"]';

  @override
  String get loadingCyberBible => '[\"Cyber ​​Bible жүктелуде...\"]';

  @override
  String get couldNotOpenDatabase =>
      '[\"Киелі кітап дерекқорын ашу мүмкін болмады. Қайталап көріңіз.\"]';

  @override
  String get homeTagline =>
      '[\"Тегін және ашық бастапқы коды Киелі кітапты зерттеу қолданбасы\"]';

  @override
  String get readTheBible => '[\"Киелі кітапты оқы\"]';

  @override
  String get settingsTooltip => '[\"Параметрлер\"]';

  @override
  String get themeChoose => '[\"Тақырыпты таңдаңыз\"]';

  @override
  String get customThemes => '[\"Теңшелетін тақырыптар\"]';

  @override
  String get customThemesSubtitle =>
      '[\"Акцент түсін таңдау үшін картаны түртіңіз. «Классикалық ақ» сонымен қатар Ашық, Қараңғы және Жүйе режимдерін қолдайды.\"]';

  @override
  String get setThemesLabel => '[\"ТАҚЫРЫПТАРДЫ ОРНАТУ\"]';

  @override
  String get deleteBookmarkDialog => '[\"Бетбелгіні жою керек пе?\"]';

  @override
  String removeBookmarkMessage(Object details, Object reference) {
    return '[\"\\\"$reference\\\"$details жойылсын ба?\\n\\nБұл әрекетті қайтару мүмкін емес.\"]';
  }

  @override
  String get couldNotLoadBookmarks =>
      '[\"Бетбелгілерді жүктеу мүмкін болмады. Қайталап көріңіз.\"]';

  @override
  String get bookmarkSavedMessage => '[\"Бетбелгі сақталды\"]';

  @override
  String get couldNotSaveBookmark => '[\"Бетбелгіні сақтау мүмкін болмады.\"]';

  @override
  String get noBookmarksMatchFilter =>
      '[\"Бұл сүзгіге ешбір бетбелгі сәйкес келмейді.\"]';

  @override
  String get clearFilter => '[\"Сүзгіні тазалау\"]';

  @override
  String get traditionalOrderLabel => '[\"Дәстүрлі тәртіп\"]';

  @override
  String get alphabeticalOrderLabel => '[\"Алфавиттік тәртіп\"]';

  @override
  String get bookmarksTabLabel => '[\"Бетбелгілер\"]';

  @override
  String get fullChapter => '[\"Толық тарау\"]';

  @override
  String get addBookmark => '[\"Бетбелгі қосу\"]';

  @override
  String get selectVerse => '[\"Өлеңді таңдаңыз\"]';

  @override
  String get labelOptional => '[\"Белгі (міндетті емес)\"]';

  @override
  String get notesOptional => '[\"Ескертпелер (міндетті емес)\"]';

  @override
  String get save => '[\"Сақтау\"]';

  @override
  String get goToVerse => '[\"Өлеңге өтіңіз\"]';

  @override
  String verseTitle(Object verse) {
    return '[\"$verse өлеңі\"]';
  }

  @override
  String chapterTitle(Object chapter) {
    return '[\"$chapter тарауы\"]';
  }

  @override
  String get switchToFullChapter => '[\"Толық тарау бетбелгісіне ауысу\"]';

  @override
  String get bookmarkSheetCancel => '[\"Бас тарту, бетбелгі парағын жабу\"]';

  @override
  String get pickCustomAccent => '[\"Арнаулы екпінді таңдаңыз\"]';

  @override
  String get apply => '[\"Қолдану\"]';

  @override
  String get custom => '[\"Арнаулы\"]';

  @override
  String get brightnessSystem => '[\"Жүйе\"]';

  @override
  String get brightnessLight => '[\"Жарық\"]';

  @override
  String get brightnessDark => '[\"Қараңғы\"]';

  @override
  String get selectBook => '[\"Кітапты таңдаңыз\"]';

  @override
  String get bookmarkFilterAll => '[\"Барлығы\"]';

  @override
  String get bookmarkFilterUnlabeled => '[\"Белгісіз\"]';

  @override
  String get bookmarkSortRecent => '[\"Жақында бірінші\"]';

  @override
  String get bookmarkSortCanonical => '[\"Канондық тәртіп\"]';

  @override
  String get chapterRetry => '[\"Қайталап көріңіз\"]';

  @override
  String get fontSize => '[\"Қаріп өлшемі\"]';

  @override
  String fontSizePixels(Object size) {
    return '[\"$size px\"]';
  }

  @override
  String get fontSizeSlider => '[\"Қаріп өлшемі сырғытпасы\"]';

  @override
  String get fontSizeSliderHint =>
      '[\"12-ден 28-ге дейін реттеу үшін сырғытыңыз\"]';

  @override
  String get fontPreview =>
      '[\"«Алғашында Құдай көк пен жерді жаратты». — Жаратылыс 1:1\"]';

  @override
  String get showVerseNumbersSubtitle =>
      '[\"Оқу экранында өлең нөмірлерінің үстіңгі сызбаларын көрсетіңіз.\"]';

  @override
  String get showSectionHeadingsSubtitle =>
      '[\"Үзінділер арасында бөлім мен Забур тақырыптарын көрсетіңіз.\"]';

  @override
  String get wordsOfChristSubtitle =>
      '[\"Исаның сөздерін қызыл түспен көрсет. Жалғыз мәтін түсі үшін өшіріңіз.\"]';

  @override
  String get verseFormatTitle => '[\"Өлең пішімі\"]';

  @override
  String get verseFormatSubtitle =>
      '[\"Жазба мәтіні қалай орналасатынын таңдаңыз.\"]';

  @override
  String get paragraphMode => '[\"Параграф\"]';

  @override
  String get verseListMode => '[\"Өлең тізімі\"]';

  @override
  String get paragraphModeTooltip => '[\"Абзац режимі\"]';

  @override
  String get verseListModeTooltip => '[\"Өлең тізімі режимі\"]';

  @override
  String get paragraphModeDescription =>
      '[\"Мәтін басып шығарылған Киелі кітап сияқты абзацтармен үздіксіз ағып тұрады.\"]';

  @override
  String get verseListModeDescription =>
      '[\"Жазбаның әрбір абзацы өз жолынан басталады, бұл өлең топтарын оңай анықтауға мүмкіндік береді.\"]';

  @override
  String get deleteBookmarkTooltip => '[\"Бетбелгіні жою\"]';

  @override
  String deleteBookmarkSemantics(Object reference) {
    return '[\"$reference бетбелгісін жою\"]';
  }

  @override
  String sortBookmarksTooltip(Object sortOrder) {
    return '[\"Сұрыптау: $sortOrder\"]';
  }

  @override
  String get noBookmarksYet => '[\"Әлі бетбелгілер жоқ.\"]';

  @override
  String get noBookmarksYetHint =>
      '[\"Орынды сақтау үшін оқу кезінде бетбелгі белгішесін түртіңіз.\"]';

  @override
  String bookmarkReferenceNavigationError(Object reference) {
    return '[\"$reference шарлау мүмкін болмады.\"]';
  }

  @override
  String themeCardSemantics(Object description, Object name, Object selected) {
    return '[\"$name тақырыбы$selected. $description\"]';
  }

  @override
  String get selectedThemeSuffix => '[\", қазір таңдалған\"]';

  @override
  String get customisableAccentDescription => '[\"Реттелетін екпін түсі.\"]';

  @override
  String get fixedPaletteDescription => '[\"Бекітілген палитра.\"]';

  @override
  String accentColourTitle(Object themeName) {
    return '[\"Акцент түсі — $themeName\"]';
  }

  @override
  String get brightnessMode => '[\"ЖАРҚЫНДЫҚ РЕЖИМІ\"]';

  @override
  String get lightMode => '[\"Жарық режимі\"]';

  @override
  String get followSystemMode => '[\"Жүйе режимін орындаңыз\"]';

  @override
  String get darkMode => '[\"Қараңғы режим\"]';

  @override
  String get customColourPicker => '[\"Таңдамалы түс таңдау құралы\"]';

  @override
  String get customColourTooltip => '[\"Арнаулы түс…\"]';

  @override
  String get couldNotLoadBooks =>
      '[\"Кітаптар тізімін жүктеу мүмкін болмады. Қайталап көріңіз.\"]';

  @override
  String chapterLabel(Object chapter) {
    return '[\"$chapter тарауы\"]';
  }

  @override
  String get traditionalOrderBooks => '[\"Дәстүрлі тапсырыс кітаптары\"]';

  @override
  String get alphabeticalOrderBooks => '[\"Алфавиттік ретті кітаптар\"]';

  @override
  String get home => '[\"Үй\"]';

  @override
  String get addBookmarkTooltip => '[\"Бетбелгі қосу\"]';

  @override
  String get chooseBookChapter => '[\"Кітап пен тарауды таңдаңыз\"]';

  @override
  String get chooseVerse => '[\"Өлеңді таңдаңыз\"]';

  @override
  String get bookChapterQuickNavigation =>
      '[\"Кітап пен тарауларды жылдам шарлау\"]';

  @override
  String get verseQuickNavigation => '[\"Өлеңді жылдам шарлау\"]';

  @override
  String get backToBooks => '[\"Кітаптарға оралу\"]';

  @override
  String get selectBookTitle => '[\"Кітапты таңдаңыз\"]';

  @override
  String selectChapterTitle(Object bookName) {
    return '[\"($bookName) тарауды таңдау\"]';
  }

  @override
  String chapterSelectionLabel(Object chapter) {
    return '[\"$chapter тарауы\"]';
  }

  @override
  String verseSelectionLabel(Object verse) {
    return '[\"$verse өлеңі\"]';
  }

  @override
  String fullChapterReference(Object bookName, Object chapter) {
    return '[\"Толық тарау: $bookName $chapter\"]';
  }

  @override
  String get memorizeHint => '[\"Есте сақтау\"]';

  @override
  String get addNoteHint => '[\"Жазба қосу...\"]';

  @override
  String get languageSearchHint => '[\"Тілдерді іздеу\"]';

  @override
  String get languageModuleInstalled => '[\"Орнатылған\"]';

  @override
  String get languageModulePending => '[\"Машиналық аударма күтілуде\"]';

  @override
  String get languageNoMatches =>
      '[\"Іздеуіңізге ешбір тіл сәйкес келмейді.\"]';

  @override
  String get languageCatalogDescription =>
      '[\"Орнатылған деп белгіленген тілдер желіден тыс жұмыс істейді. Басқа тілдер машина арқылы аударылатын модульдер ретінде қосылады.\"]';

  @override
  String get saveBookmarkSemantics => '[\"Бетбелгіні сақтау\"]';

  @override
  String get couldNotLoadChapter => '[\"Тарау жүктелмеді. Қайталап көріңіз.\"]';

  @override
  String get couldNotLoadChapters =>
      '[\"Бөлімдерді жүктеу мүмкін болмады. Қайталап көріңіз.\"]';

  @override
  String verseWithText(Object text, Object verse) {
    return '[\"$verse өлеңі: $text\"]';
  }

  @override
  String accentSwatchSemantics(Object name, Object selected) {
    return '[\"$name екпін түсі$selected\"]';
  }

  @override
  String get oldTestament => '[\"Ескі өсиет\"]';

  @override
  String get newTestament => '[\"Жаңа өсиет\"]';

  @override
  String get deuterocanonApocrypha => '[\"Дейтероканон / Апокрифа\"]';
}
