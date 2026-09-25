// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Mongolian (`mn`).
class AppLocalizationsMn extends AppLocalizations {
  AppLocalizationsMn([String locale = 'mn']) : super(locale);

  @override
  String get settingsTitle => 'Тохиргоо';

  @override
  String get languageSection => 'Хэл';

  @override
  String get useSystemLanguage => 'Системийн хэлийг ашиглах';

  @override
  String get useSystemLanguageSubtitle =>
      'Төхөөрөмжийн хэлийг анхдагчаар тохируулна уу.';

  @override
  String get currentLanguage => 'Одоогийн хэл';

  @override
  String get appLanguage => 'Програмын хэл';

  @override
  String get chooseLanguage => 'Хэл сонгоно уу';

  @override
  String get theme => 'Сэдэв';

  @override
  String get appearance => 'Гадаад төрх';

  @override
  String get textSection => 'Текст';

  @override
  String get readingFormatSection => 'Унших формат';

  @override
  String get displaySection => 'Дэлгэц';

  @override
  String get verseNumbers => 'Шүлгийн тоо';

  @override
  String get sectionHeadings => 'Хэсгийн гарчиг';

  @override
  String get redLetterText => 'Улаан үсэгтэй текст';

  @override
  String get selectABook => 'Ном сонгоно уу';

  @override
  String get traditionalOrder => 'Уламжлалт дэг журам';

  @override
  String get alphabeticalOrder => 'Цагаан толгойн дараалал';

  @override
  String get bookmarks => 'Хавчуурга';

  @override
  String get retry => 'Дахин оролдоно уу';

  @override
  String get chooseTheme => 'Сэдвийг сонгоно уу';

  @override
  String get customisableThemes => 'Тохиромжтой загварууд';

  @override
  String get customisableThemesSubtitle =>
      'Өргөлтийн өнгө сонгохын тулд картыг товшино уу. \"Сонгодог цагаан\" нь мөн Гэрэл, Харанхуй, Системийн горимуудыг дэмждэг.';

  @override
  String get setThemes => 'СЭДВИЙГ ТОХИРУУЛАХ';

  @override
  String get setThemesSubtitle =>
      'Тогтмол, гараар хийсэн палитр. Өөрчлөх шаардлагагүй - хэрэглэхийн тулд товшино уу.';

  @override
  String get deleteBookmarkQuestion => 'Хавчуурга устгах уу?';

  @override
  String get cancel => 'Цуцлах';

  @override
  String get delete => 'Устгах';

  @override
  String get bookmarkSaved => 'Хавчуурга хадгалагдсан';

  @override
  String get couldNotDeleteBookmark => 'Хавчуурга устгаж чадсангүй.';

  @override
  String couldNotNavigate(Object reference) {
    return '$reference руу шилжиж чадсангүй.';
  }

  @override
  String get pageNotFound => 'Хуудас олдсонгүй';

  @override
  String noRouteDefined(Object routeName) {
    return '\"$routeName\"-д ямар ч маршрут тодорхойлогдоогүй';
  }

  @override
  String get english => 'Англи';

  @override
  String get spanish => 'Испани';

  @override
  String get systemDefault => 'Системийн өгөгдмөл';

  @override
  String get languageStatusEnglish => 'Англи хэлний нөөц идэвхтэй';

  @override
  String get languageStatusSystem => 'Системийн хэлийг ашиглах';

  @override
  String languageStatusSelected(Object languageName) {
    return 'Сонгосон хэл: $languageName';
  }

  @override
  String get themeLabel => 'Сэдэв';

  @override
  String get notFoundTitle => 'Хуудас олдсонгүй';

  @override
  String get loadingCyberBible => 'Кибер Библийг ачаалж байна...';

  @override
  String get couldNotOpenDatabase =>
      'Библийн мэдээллийн санг нээж чадсангүй. Дахин оролдоно уу.';

  @override
  String get homeTagline =>
      'Үнэгүй, нээлттэй эх сурвалжтай Библи судлах програм';

  @override
  String get readTheBible => 'Библийг унш';

  @override
  String get settingsTooltip => 'Тохиргоо';

  @override
  String get themeChoose => 'Сэдвийг сонгоно уу';

  @override
  String get customThemes => 'Тохиромжтой загварууд';

  @override
  String get customThemesSubtitle =>
      'Өргөлтийн өнгө сонгохын тулд картыг товшино уу. \"Сонгодог цагаан\" нь мөн Гэрэл, Харанхуй, Системийн горимуудыг дэмждэг.';

  @override
  String get setThemesLabel => 'СЭДВИЙГ ТОХИРУУЛАХ';

  @override
  String get deleteBookmarkDialog => 'Хавчуурга устгах уу?';

  @override
  String removeBookmarkMessage(Object details, Object reference) {
    return '\"$reference\"$details-г устгах уу?\n\nҮүнийг буцаах боломжгүй.';
  }

  @override
  String get couldNotLoadBookmarks =>
      'Хавчуурга ачаалж чадсангүй. Дахин оролдоно уу.';

  @override
  String get bookmarkSavedMessage => 'Хавчуурга хадгалагдсан';

  @override
  String get couldNotSaveBookmark => 'Хавчуурга хадгалж чадсангүй.';

  @override
  String get noBookmarksMatchFilter =>
      'Энэ шүүлтүүрт тохирох хавчуурга байхгүй байна.';

  @override
  String get clearFilter => 'Шүүлтүүрийг цэвэрлэх';

  @override
  String get traditionalOrderLabel => 'Уламжлалт дэг журам';

  @override
  String get alphabeticalOrderLabel => 'Цагаан толгойн дараалал';

  @override
  String get bookmarksTabLabel => 'Хавчуурга';

  @override
  String get fullChapter => 'Бүтэн бүлэг';

  @override
  String get addBookmark => 'Хавчуурга нэмэх';

  @override
  String get selectVerse => 'Шүлгийг сонгоно уу';

  @override
  String get labelOptional => 'Шошго (заавал биш)';

  @override
  String get notesOptional => 'Тэмдэглэл (заавал биш)';

  @override
  String get save => 'Хадгалах';

  @override
  String get goToVerse => 'Шүлэг рүү оч';

  @override
  String verseTitle(Object verse) {
    return 'Шүлэг $verse';
  }

  @override
  String chapterTitle(Object chapter) {
    return 'Бүлэг $chapter';
  }

  @override
  String get switchToFullChapter => 'Бүтэн бүлгийн хавчуурга руу шилжих';

  @override
  String get bookmarkSheetCancel => 'Цуцлах, хавчуургын хуудсыг хаах';

  @override
  String get pickCustomAccent => 'Тусгай өргөлтийг сонгоно уу';

  @override
  String get apply => 'Өргөдөл гаргах';

  @override
  String get custom => 'Захиалгат';

  @override
  String get brightnessSystem => 'Систем';

  @override
  String get brightnessLight => 'Гэрэл';

  @override
  String get brightnessDark => 'Харанхуй';

  @override
  String get selectBook => 'Ном сонгоно уу';

  @override
  String get bookmarkFilterAll => 'Бүгд';

  @override
  String get bookmarkFilterUnlabeled => 'Шошгогүй';

  @override
  String get bookmarkSortRecent => 'Хамгийн түрүүнд саяхан';

  @override
  String get bookmarkSortCanonical => 'Каноник дараалал';

  @override
  String get chapterRetry => 'Дахин оролдоно уу';

  @override
  String get fontSize => 'Фонтын хэмжээ';

  @override
  String fontSizePixels(Object size) {
    return '$size px';
  }

  @override
  String get fontSizeSlider => 'Фонтын хэмжээтэй гулсагч';

  @override
  String get fontSizeSliderHint =>
      '12-оос 28 хүртэл тохируулахын тулд шударна уу';

  @override
  String get fontPreview =>
      '\"Эхэндээ Бурхан тэнгэр, газрыг бүтээсэн.\" -Эхлэл 1:1';

  @override
  String get showVerseNumbersSubtitle =>
      'Унших дэлгэц дээр шүлгийн дугаарын үсгийг харуул.';

  @override
  String get showSectionHeadingsSubtitle =>
      'Хэсэг болон Дууллын гарчгийг хэсгүүдийн хооронд харуул.';

  @override
  String get wordsOfChristSubtitle =>
      'Есүсийн үгсийг улаанаар харуул. Нэг текстийн өнгөний хувьд идэвхгүй болгох.';

  @override
  String get verseFormatTitle => 'Шүлгийн формат';

  @override
  String get verseFormatSubtitle => 'Судрын бичвэр хэрхэн бичигдсэнийг сонго.';

  @override
  String get paragraphMode => 'Догол мөр';

  @override
  String get verseListMode => 'Шүлгийн жагсаалт';

  @override
  String get paragraphModeTooltip => 'Догол мөрийн горим';

  @override
  String get verseListModeTooltip => 'Шүлгийн жагсаалтын горим';

  @override
  String get paragraphModeDescription =>
      'Текст нь хэвлэмэл Библи шиг догол мөртэй тасралтгүй урсдаг.';

  @override
  String get verseListModeDescription =>
      'Судрын догол мөр бүр өөрийн гэсэн мөрөнд эхэлдэг бөгөөд энэ нь шүлгийн бүлгийг танихад хялбар болгодог.';

  @override
  String get deleteBookmarkTooltip => 'Хавчуурга устгах';

  @override
  String deleteBookmarkSemantics(Object reference) {
    return '$reference хавчуурга устгах';
  }

  @override
  String sortBookmarksTooltip(Object sortOrder) {
    return 'Ангилах: $sortOrder';
  }

  @override
  String get noBookmarksYet => 'Одоогоор хавчуурга алга.';

  @override
  String get noBookmarksYetHint =>
      'Уншиж байхдаа хавчуургын дүрс дээр товшоод байршлаа хадгална уу.';

  @override
  String bookmarkReferenceNavigationError(Object reference) {
    return '$reference руу шилжиж чадсангүй.';
  }

  @override
  String themeCardSemantics(Object description, Object name, Object selected) {
    return '$name сэдэв$selected. $description';
  }

  @override
  String get selectedThemeSuffix => ', одоогоор сонгогдсон';

  @override
  String get customisableAccentDescription =>
      'Тохируулах боломжтой өргөлтийн өнгө.';

  @override
  String get fixedPaletteDescription => 'Тогтмол палитр.';

  @override
  String accentColourTitle(Object themeName) {
    return 'Өргөлтийн өнгө — $themeName';
  }

  @override
  String get brightnessMode => 'ГЭРЭЛТИЙН РЕЖ';

  @override
  String get lightMode => 'Гэрэл горим';

  @override
  String get followSystemMode => 'Системийн горимыг дагах';

  @override
  String get darkMode => 'Харанхуй горим';

  @override
  String get customColourPicker => 'Захиалгат өнгө сонгогч';

  @override
  String get customColourTooltip => 'Захиалгат өнгө…';

  @override
  String get couldNotLoadBooks =>
      'Номын жагсаалтыг ачаалж чадсангүй. Дахин оролдоно уу.';

  @override
  String chapterLabel(Object chapter) {
    return 'Бүлэг $chapter';
  }

  @override
  String get traditionalOrderBooks => 'Уламжлалт захиалгын номууд';

  @override
  String get alphabeticalOrderBooks => 'Цагаан толгойн дарааллын ном';

  @override
  String get home => 'Гэр';

  @override
  String get addBookmarkTooltip => 'Хавчуурга нэмэх';

  @override
  String get chooseBookChapter => 'Ном, бүлгийг сонгоно уу';

  @override
  String get chooseVerse => 'Шүлгийг сонго';

  @override
  String get bookChapterQuickNavigation => 'Ном, бүлгийг хурдан удирдах';

  @override
  String get verseQuickNavigation => 'Шүлгийн хурдан навигаци';

  @override
  String get backToBooks => 'Ном руу буцах';

  @override
  String get selectBookTitle => 'Номыг сонгоно уу';

  @override
  String selectChapterTitle(Object bookName) {
    return 'Бүлэг сонгох ($bookName)';
  }

  @override
  String chapterSelectionLabel(Object chapter) {
    return 'Бүлэг $chapter';
  }

  @override
  String verseSelectionLabel(Object verse) {
    return 'Шүлэг $verse';
  }

  @override
  String fullChapterReference(Object bookName, Object chapter) {
    return 'Бүтэн бүлэг: $bookName $chapter';
  }

  @override
  String get memorizeHint => 'Цээжлэх';

  @override
  String get addNoteHint => 'Тэмдэглэл нэмэх...';

  @override
  String get languageSearchHint => 'Хэл хайх';

  @override
  String get languageModuleInstalled => 'Суулгасан';

  @override
  String get languageModulePending => 'Машины орчуулга хүлээгдэж байна';

  @override
  String get languageNoMatches => 'Таны хайлтад тохирох хэл олдсонгүй.';

  @override
  String get languageCatalogDescription =>
      'Суулгасан гэж тэмдэглэсэн хэлүүд офлайнаар ажилладаг. Бусад хэлийг машинаар орчуулсан модуль болгон нэмнэ.';

  @override
  String get saveBookmarkSemantics => 'Хавчуурга хадгалах';

  @override
  String get couldNotLoadChapter =>
      'Бүлгийг ачаалж чадсангүй. Дахин оролдоно уу.';

  @override
  String get couldNotLoadChapters =>
      'Бүлгүүдийг ачаалж чадсангүй. Дахин оролдоно уу.';

  @override
  String verseWithText(Object text, Object verse) {
    return 'Шүлэг $verse: $text';
  }

  @override
  String accentSwatchSemantics(Object name, Object selected) {
    return '$name өргөлтийн өнгө$selected';
  }

  @override
  String get oldTestament => 'Хуучин гэрээ';

  @override
  String get newTestament => 'Шинэ Гэрээ';

  @override
  String get deuterocanonApocrypha => 'Дейтероканон / Апокриф';
}
