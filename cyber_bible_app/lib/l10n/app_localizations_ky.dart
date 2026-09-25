// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Kirghiz Kyrgyz (`ky`).
class AppLocalizationsKy extends AppLocalizations {
  AppLocalizationsKy([String locale = 'ky']) : super(locale);

  @override
  String get settingsTitle => 'Жөндөөлөр';

  @override
  String get languageSection => 'Тил';

  @override
  String get useSystemLanguage => 'Тутум тилин колдонуу';

  @override
  String get useSystemLanguageSubtitle =>
      'Түзмөктүн тилин демейки боюнча колдонуңуз.';

  @override
  String get currentLanguage => 'Учурдагы тил';

  @override
  String get appLanguage => 'Колдонмо тили';

  @override
  String get chooseLanguage => 'Тилди тандаңыз';

  @override
  String get theme => 'Тема';

  @override
  String get appearance => 'Көрүнүш';

  @override
  String get textSection => 'Текст';

  @override
  String get readingFormatSection => 'Окуу форматы';

  @override
  String get displaySection => 'Көрсөтүү';

  @override
  String get verseNumbers => 'Аят номерлери';

  @override
  String get sectionHeadings => 'Бөлүм аталыштары';

  @override
  String get redLetterText => 'Кызыл тамгадагы текст';

  @override
  String get selectABook => 'Китепти тандаңыз';

  @override
  String get traditionalOrder => 'Салттуу тартип';

  @override
  String get alphabeticalOrder => 'Алфавиттик тартип';

  @override
  String get bookmarks => 'Кыстармалар';

  @override
  String get retry => 'Кайра аракет кылыңыз';

  @override
  String get chooseTheme => 'Теманы тандаңыз';

  @override
  String get customisableThemes => 'Ыңгайлаштырылуучу темалар';

  @override
  String get customisableThemesSubtitle =>
      'Басым түсүн тандоо үчүн картаны басыңыз. \"Classic White\" жарык, караңгы жана тутум режимдерин да колдойт.';

  @override
  String get setThemes => 'ТЕМАЛАРДЫ ОРНОТУУ';

  @override
  String get setThemesSubtitle =>
      'Туруктуу, кол менен жасалган түстөр палитрасы. Ыңгайлаштыруунун кереги жок — колдонуу үчүн басыңыз.';

  @override
  String get deleteBookmarkQuestion => 'Кыстарманы өчүрөсүзбү?';

  @override
  String get cancel => 'Жокко чыгаруу';

  @override
  String get delete => 'Өчүрүү';

  @override
  String get bookmarkSaved => 'Кыстарма сакталды';

  @override
  String get couldNotDeleteBookmark => 'Кыстарманы өчүрүү мүмкүн болгон жок.';

  @override
  String couldNotNavigate(Object reference) {
    return '$reference дарегине өтүү мүмкүн болгон жок.';
  }

  @override
  String get pageNotFound => 'Барак табылган жок';

  @override
  String noRouteDefined(Object routeName) {
    return '\"$routeName\" үчүн багыт аныкталган эмес';
  }

  @override
  String get english => 'Англисче';

  @override
  String get spanish => 'Испанча';

  @override
  String get systemDefault => 'Тутум демейкиси';

  @override
  String get languageStatusEnglish => 'Англисче кошумча тил жигердүү';

  @override
  String get languageStatusSystem => 'Тутум тили колдонулууда';

  @override
  String languageStatusSelected(Object languageName) {
    return 'Тандалган тил: $languageName';
  }

  @override
  String get themeLabel => 'Тема';

  @override
  String get notFoundTitle => 'Барак табылган жок';

  @override
  String get loadingCyberBible => 'Cyber Bible жүктөлүүдө...';

  @override
  String get couldNotOpenDatabase =>
      'Ыйык Китептин маалымат базасын ачуу мүмкүн болгон жок. Кайра аракет кылыңыз.';

  @override
  String get homeTagline =>
      'Акысыз жана ачык булактуу Ыйык Китепти изилдөө колдонмосу';

  @override
  String get readTheBible => 'Ыйык Китепти окуу';

  @override
  String get settingsTooltip => 'Жөндөөлөр';

  @override
  String get themeChoose => 'Теманы тандаңыз';

  @override
  String get customThemes => 'Ыңгайлаштырылуучу темалар';

  @override
  String get customThemesSubtitle =>
      'Басым түсүн тандоо үчүн картаны басыңыз. \"Classic White\" жарык, караңгы жана тутум режимдерин да колдойт.';

  @override
  String get setThemesLabel => 'ТЕМАЛАРДЫ ОРНОТУУ';

  @override
  String get deleteBookmarkDialog => 'Кыстарманы өчүрөсүзбү?';

  @override
  String removeBookmarkMessage(Object details, Object reference) {
    return '\"$reference\"$details өчүрүлсүнбү?\n\nМуну кайра кайтаруу мүмкүн эмес.';
  }

  @override
  String get couldNotLoadBookmarks =>
      'Кыстармаларды жүктөө мүмкүн болгон жок. Кайра аракет кылыңыз.';

  @override
  String get bookmarkSavedMessage => 'Кыстарма сакталды';

  @override
  String get couldNotSaveBookmark => 'Кыстарманы сактоо мүмкүн болгон жок.';

  @override
  String get noBookmarksMatchFilter =>
      'Бул чыпкага туура келген кыстармалар жок.';

  @override
  String get clearFilter => 'Чыпканы тазалоо';

  @override
  String get traditionalOrderLabel => 'Салттуу тартип';

  @override
  String get alphabeticalOrderLabel => 'Алфавиттик тартип';

  @override
  String get bookmarksTabLabel => 'Кыстармалар';

  @override
  String get fullChapter => 'Толук бөлүм';

  @override
  String get addBookmark => 'Кыстарма кошуу';

  @override
  String get selectVerse => 'Аятты тандаңыз';

  @override
  String get labelOptional => 'Энбелги (милдеттүү эмес)';

  @override
  String get notesOptional => 'Эскертмелер (милдеттүү эмес)';

  @override
  String get save => 'Сактоо';

  @override
  String get goToVerse => 'Аятка өтүү';

  @override
  String verseTitle(Object verse) {
    return 'Аят $verse';
  }

  @override
  String chapterTitle(Object chapter) {
    return 'Бөлүм $chapter';
  }

  @override
  String get switchToFullChapter => 'Толук бөлүм кыстармасына өтүү';

  @override
  String get bookmarkSheetCancel => 'Жокко чыгарып, кыстармалар барагын жабуу';

  @override
  String get pickCustomAccent => 'Ыңгайлаштырылган басым түсүн тандаңыз';

  @override
  String get apply => 'Колдонуу';

  @override
  String get custom => 'Ыңгайлаштырылган';

  @override
  String get brightnessSystem => 'Тутум';

  @override
  String get brightnessLight => 'Жарык';

  @override
  String get brightnessDark => 'Караңгы';

  @override
  String get selectBook => 'Китепти тандаңыз';

  @override
  String get bookmarkFilterAll => 'Баары';

  @override
  String get bookmarkFilterUnlabeled => 'Энбелгисиз';

  @override
  String get bookmarkSortRecent => 'Алгач акыркылары';

  @override
  String get bookmarkSortCanonical => 'Канондук тартип';

  @override
  String get chapterRetry => 'Кайра аракет кылыңыз';

  @override
  String get fontSize => 'Арип өлчөмү';

  @override
  String fontSizePixels(Object size) {
    return '$size px';
  }

  @override
  String get fontSizeSlider => 'Арип өлчөмүнүн сыдыргычы';

  @override
  String get fontSizeSliderHint => '12ден 28ге чейин тууралоо үчүн сүрүңүз';

  @override
  String get fontPreview =>
      '\"Башында Кудай асман менен жерди жараткан.\" — Башталыш 1:1';

  @override
  String get showVerseNumbersSubtitle =>
      'Окуу экранында аят номерлеринин жогорку индекстерин көрсөтүңүз.';

  @override
  String get showSectionHeadingsSubtitle =>
      'Үзүндүлөрдүн ортосунда бөлүм жана Забур аталыштарын көрсөтүңүз.';

  @override
  String get wordsOfChristSubtitle =>
      'Ыйсанын сөздөрүн кызыл түс менен көрсөтүңүз. Бир текст түсү үчүн өчүрүңүз.';

  @override
  String get verseFormatTitle => 'Аят форматы';

  @override
  String get verseFormatSubtitle =>
      'Ыйык Жазма тексти кандай жайгашарын тандаңыз.';

  @override
  String get paragraphMode => 'Абзац';

  @override
  String get verseListMode => 'Аяттар тизмеси';

  @override
  String get paragraphModeTooltip => 'Абзац режими';

  @override
  String get verseListModeTooltip => 'Аяттар тизмеси режими';

  @override
  String get paragraphModeDescription =>
      'Текст басылган Ыйык Китептегидей чегинтилген абзацтар менен үзгүлтүксүз агат.';

  @override
  String get verseListModeDescription =>
      'Ар бир Ыйык Жазма абзацы өзүнчө саптан башталат, ошондуктан аят топторун оңой байкоого болот.';

  @override
  String get deleteBookmarkTooltip => 'Кыстарманы өчүрүү';

  @override
  String deleteBookmarkSemantics(Object reference) {
    return '$reference кыстармасын өчүрүү';
  }

  @override
  String sortBookmarksTooltip(Object sortOrder) {
    return 'Иреттөө: $sortOrder';
  }

  @override
  String get noBookmarksYet => 'Азырынча кыстармалар жок.';

  @override
  String get noBookmarksYetHint =>
      'Окуп жатканда жайгашкан жерди сактоо үчүн кыстарма сүрөтчөсүн басыңыз.';

  @override
  String bookmarkReferenceNavigationError(Object reference) {
    return '$reference дарегине өтүү мүмкүн болгон жок.';
  }

  @override
  String themeCardSemantics(Object description, Object name, Object selected) {
    return '$name темасы$selected. $description';
  }

  @override
  String get selectedThemeSuffix => ', учурда тандалган';

  @override
  String get customisableAccentDescription => 'Ыңгайлаштырылуучу басым түсү.';

  @override
  String get fixedPaletteDescription => 'Туруктуу түстөр палитрасы.';

  @override
  String accentColourTitle(Object themeName) {
    return 'Басым түсү — $themeName';
  }

  @override
  String get brightnessMode => 'ЖАРЫКТЫК РЕЖИМИ';

  @override
  String get lightMode => 'Жарык режим';

  @override
  String get followSystemMode => 'Тутум режимин ээрчүү';

  @override
  String get darkMode => 'Караңгы режим';

  @override
  String get customColourPicker => 'Ыңгайлаштырылган түс тандагыч';

  @override
  String get customColourTooltip => 'Ыңгайлаштырылган түс…';

  @override
  String get couldNotLoadBooks =>
      'Китептер тизмесин жүктөө мүмкүн болгон жок. Кайра аракет кылыңыз.';

  @override
  String chapterLabel(Object chapter) {
    return 'Бөлүм $chapter';
  }

  @override
  String get traditionalOrderBooks => 'Салттуу тартиптеги китептер';

  @override
  String get alphabeticalOrderBooks => 'Алфавиттик тартиптеги китептер';

  @override
  String get home => 'Башкы бет';

  @override
  String get addBookmarkTooltip => 'Кыстарма кошуу';

  @override
  String get chooseBookChapter => 'Китеп менен бөлүмдү тандаңыз';

  @override
  String get chooseVerse => 'Аятты тандаңыз';

  @override
  String get bookChapterQuickNavigation => 'Китеп жана бөлүм боюнча ыкчам өтүү';

  @override
  String get verseQuickNavigation => 'Аят боюнча ыкчам өтүү';

  @override
  String get backToBooks => 'Китептерге кайтуу';

  @override
  String get selectBookTitle => 'Китепти тандаңыз';

  @override
  String selectChapterTitle(Object bookName) {
    return 'Бөлүмдү тандаңыз ($bookName)';
  }

  @override
  String chapterSelectionLabel(Object chapter) {
    return 'Бөлүм $chapter';
  }

  @override
  String verseSelectionLabel(Object verse) {
    return 'Аят $verse';
  }

  @override
  String fullChapterReference(Object bookName, Object chapter) {
    return 'Толук бөлүм: $bookName $chapter';
  }

  @override
  String get memorizeHint => 'Жаттоо';

  @override
  String get addNoteHint => 'Эскертме кошуу...';

  @override
  String get languageSearchHint => 'Тилдерди издөө';

  @override
  String get languageModuleInstalled => 'Орнотулган';

  @override
  String get languageModulePending => 'Машиналык котормо күтүлүүдө';

  @override
  String get languageNoMatches => 'Издөөңүзгө туура келген тилдер жок.';

  @override
  String get languageCatalogDescription =>
      'Орнотулган деп белгиленген тилдер офлайн иштейт. Башка тилдер машиналык которулган модулдар катары кошулат.';

  @override
  String get saveBookmarkSemantics => 'Кыстарманы сактоо';

  @override
  String get couldNotLoadChapter =>
      'Бөлүмдү жүктөө мүмкүн болгон жок. Кайра аракет кылыңыз.';

  @override
  String get couldNotLoadChapters =>
      'Бөлүмдөрдү жүктөө мүмкүн болгон жок. Кайра аракет кылыңыз.';

  @override
  String verseWithText(Object text, Object verse) {
    return 'Аят $verse: $text';
  }

  @override
  String accentSwatchSemantics(Object name, Object selected) {
    return '$name басым түсү$selected';
  }

  @override
  String get oldTestament => 'Эски Келишим';

  @override
  String get newTestament => 'Жаңы Келишим';

  @override
  String get deuterocanonApocrypha => 'Дейтероканон / Апокриф';
}
