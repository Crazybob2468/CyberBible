// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Uzbek (`uz`).
class AppLocalizationsUz extends AppLocalizations {
  AppLocalizationsUz([String locale = 'uz']) : super(locale);

  @override
  String get settingsTitle => 'Sozlamalar';

  @override
  String get languageSection => 'Til';

  @override
  String get useSystemLanguage => 'Tizim tilidan foydalaning';

  @override
  String get useSystemLanguageSubtitle =>
      'Qurilma tilini sukut bo\'yicha moslang.';

  @override
  String get currentLanguage => 'Joriy til';

  @override
  String get appLanguage => 'Ilova tili';

  @override
  String get chooseLanguage => 'Tilni tanlang';

  @override
  String get theme => 'Mavzu';

  @override
  String get appearance => 'Tashqi ko\'rinish';

  @override
  String get textSection => 'Matn';

  @override
  String get readingFormatSection => 'O\'qish formati';

  @override
  String get displaySection => 'Displey';

  @override
  String get verseNumbers => 'Oyat raqamlari';

  @override
  String get sectionHeadings => 'Bo\'lim sarlavhalari';

  @override
  String get redLetterText => 'Qizil harfli matn';

  @override
  String get selectABook => 'Kitob tanlang';

  @override
  String get traditionalOrder => 'An\'anaviy tartib';

  @override
  String get alphabeticalOrder => 'Alfavit tartibi';

  @override
  String get bookmarks => 'Xatcho\'plar';

  @override
  String get retry => 'Qayta urinish';

  @override
  String get chooseTheme => 'Mavzuni tanlang';

  @override
  String get customisableThemes => 'Moslashuvchan mavzular';

  @override
  String get customisableThemesSubtitle =>
      'Urgʻu rangini tanlash uchun kartaga teging. \"Klassik oq\" yorug\'lik, qorong\'u va tizim rejimlarini ham qo\'llab-quvvatlaydi.';

  @override
  String get setThemes => 'MAVZULARNI SOZLASH';

  @override
  String get setThemesSubtitle =>
      'Ruxsat etilgan, qo\'lda tayyorlangan palitralar. Moslashtirish shart emas — qoʻllash uchun bosing.';

  @override
  String get deleteBookmarkQuestion => 'Xatcho‘p o‘chirilsinmi?';

  @override
  String get cancel => 'Bekor qilish';

  @override
  String get delete => 'Oʻchirish';

  @override
  String get bookmarkSaved => 'Xatcho‘p saqlandi';

  @override
  String get couldNotDeleteBookmark => 'Xatcho‘pni o‘chirib bo‘lmadi.';

  @override
  String couldNotNavigate(Object reference) {
    return '$reference raqamiga oʻtib boʻlmadi.';
  }

  @override
  String get pageNotFound => 'Sahifa topilmadi';

  @override
  String noRouteDefined(Object routeName) {
    return '“$routeName” uchun hech qanday marshrut belgilanmagan';
  }

  @override
  String get english => 'Ingliz';

  @override
  String get spanish => 'ispan';

  @override
  String get systemDefault => 'Tizim standarti';

  @override
  String get languageStatusEnglish => 'Ingliz tilini qaytarish faol';

  @override
  String get languageStatusSystem => 'Tizim tilidan foydalanish';

  @override
  String languageStatusSelected(Object languageName) {
    return 'Tanlangan til: $languageName';
  }

  @override
  String get themeLabel => 'Mavzu';

  @override
  String get notFoundTitle => 'Sahifa topilmadi';

  @override
  String get loadingCyberBible => 'Kiber Injil yuklanmoqda...';

  @override
  String get couldNotOpenDatabase =>
      'Injil ma\'lumotlar bazasini ochib bo\'lmadi. Iltimos, qayta urinib koʻring.';

  @override
  String get homeTagline =>
      'Muqaddas Kitobni o\'rganish uchun bepul va ochiq manba ilovasi';

  @override
  String get readTheBible => 'Muqaddas Kitobni o\'qing';

  @override
  String get settingsTooltip => 'Sozlamalar';

  @override
  String get themeChoose => 'Mavzuni tanlang';

  @override
  String get customThemes => 'Moslashuvchan mavzular';

  @override
  String get customThemesSubtitle =>
      'Urgʻu rangini tanlash uchun kartaga teging. \"Klassik oq\" yorug\'lik, qorong\'u va tizim rejimlarini ham qo\'llab-quvvatlaydi.';

  @override
  String get setThemesLabel => 'MAVZULARNI SOZLASH';

  @override
  String get deleteBookmarkDialog => 'Xatcho‘p o‘chirilsinmi?';

  @override
  String removeBookmarkMessage(Object details, Object reference) {
    return '\"$reference\"$details olib tashlansinmi?\n\nBuni ortga qaytarib bo‘lmaydi.';
  }

  @override
  String get couldNotLoadBookmarks =>
      'Xatcho‘plarni yuklab bo‘lmadi. Iltimos, qayta urinib koʻring.';

  @override
  String get bookmarkSavedMessage => 'Xatcho‘p saqlandi';

  @override
  String get couldNotSaveBookmark => 'Xatcho‘p saqlanmadi.';

  @override
  String get noBookmarksMatchFilter =>
      'Ushbu filtrga mos keladigan xatcho‘plar yo‘q.';

  @override
  String get clearFilter => 'Filtrni tozalash';

  @override
  String get traditionalOrderLabel => 'An\'anaviy tartib';

  @override
  String get alphabeticalOrderLabel => 'Alfavit tartibi';

  @override
  String get bookmarksTabLabel => 'Xatcho\'plar';

  @override
  String get fullChapter => 'To\'liq bo\'lim';

  @override
  String get addBookmark => 'Xatcho‘p qo‘shish';

  @override
  String get selectVerse => 'Verse-ni tanlang';

  @override
  String get labelOptional => 'Yorliq (ixtiyoriy)';

  @override
  String get notesOptional => 'Eslatmalar (ixtiyoriy)';

  @override
  String get save => 'Saqlash';

  @override
  String get goToVerse => 'Verse-ga o\'ting';

  @override
  String verseTitle(Object verse) {
    return '$verse oyat';
  }

  @override
  String chapterTitle(Object chapter) {
    return '$chapter-bob';
  }

  @override
  String get switchToFullChapter => 'Toʻliq bob xatchoʻpiga oʻtish';

  @override
  String get bookmarkSheetCancel => 'Bekor qilish, xatcho‘p varag‘ini yoping';

  @override
  String get pickCustomAccent => 'Maxsus aksanni tanlang';

  @override
  String get apply => 'Murojaat qiling';

  @override
  String get custom => 'Maxsus';

  @override
  String get brightnessSystem => 'Tizim';

  @override
  String get brightnessLight => 'Nur';

  @override
  String get brightnessDark => 'Qorong\'i';

  @override
  String get selectBook => 'Kitob tanlang';

  @override
  String get bookmarkFilterAll => 'Hammasi';

  @override
  String get bookmarkFilterUnlabeled => 'Yorliqsiz';

  @override
  String get bookmarkSortRecent => 'Yaqinda birinchi';

  @override
  String get bookmarkSortCanonical => 'Kanonik tartib';

  @override
  String get chapterRetry => 'Qayta urinish';

  @override
  String get fontSize => 'Shrift hajmi';

  @override
  String fontSizePixels(Object size) {
    return '$size px';
  }

  @override
  String get fontSizeSlider => 'Shrift o\'lchami slayderi';

  @override
  String get fontSizeSliderHint => '12 dan 28 gacha sozlash uchun suring';

  @override
  String get fontPreview =>
      '\"Dastlab Xudo osmonlar va erni yaratdi.\" - Ibtido 1:1';

  @override
  String get showVerseNumbersSubtitle =>
      'O\'qish ekranida misralar sonini ko\'rsating.';

  @override
  String get showSectionHeadingsSubtitle =>
      'Parchalar orasidagi bo\'lim va Zabur sarlavhalarini ko\'rsating.';

  @override
  String get wordsOfChristSubtitle =>
      'Isoning so\'zlarini qizil rangda ko\'rsating. Bitta matn rangi uchun o\'chirib qo\'ying.';

  @override
  String get verseFormatTitle => 'Oyat formati';

  @override
  String get verseFormatSubtitle =>
      'Muqaddas oyat matni qanday joylashtirilganini tanlang.';

  @override
  String get paragraphMode => 'Paragraf';

  @override
  String get verseListMode => 'She\'rlar ro\'yxati';

  @override
  String get paragraphModeTooltip => 'Paragraf rejimi';

  @override
  String get verseListModeTooltip => 'Oyatlar ro\'yxati rejimi';

  @override
  String get paragraphModeDescription =>
      'Matn bosma Injil kabi chekintirilgan paragraflar bilan uzluksiz oqadi.';

  @override
  String get verseListModeDescription =>
      'Muqaddas oyatlarning har bir paragrafi o\'z satridan boshlanadi, bu oyat guruhlarini aniqlashni osonlashtiradi.';

  @override
  String get deleteBookmarkTooltip => 'Xatcho‘pni o‘chirish';

  @override
  String deleteBookmarkSemantics(Object reference) {
    return '$reference xatcho\'pni o\'chirish';
  }

  @override
  String sortBookmarksTooltip(Object sortOrder) {
    return 'Saralash: $sortOrder';
  }

  @override
  String get noBookmarksYet => 'Hali xatcho‘plar yo‘q.';

  @override
  String get noBookmarksYetHint =>
      'Manzilni saqlash uchun oʻqish paytida xatchoʻp belgisiga teging.';

  @override
  String bookmarkReferenceNavigationError(Object reference) {
    return '$reference raqamiga oʻtib boʻlmadi.';
  }

  @override
  String themeCardSemantics(Object description, Object name, Object selected) {
    return '$name tema$selected. $description';
  }

  @override
  String get selectedThemeSuffix => ', hozirda tanlangan';

  @override
  String get customisableAccentDescription => 'Moslashuvchan aksent rangi.';

  @override
  String get fixedPaletteDescription => 'Ruxsat etilgan palitrasi.';

  @override
  String accentColourTitle(Object themeName) {
    return 'Urg\'u rangi — $themeName';
  }

  @override
  String get brightnessMode => 'YORQINLIK REJIMI';

  @override
  String get lightMode => 'Nur rejimi';

  @override
  String get followSystemMode => 'Tizim rejimiga rioya qiling';

  @override
  String get darkMode => 'Qorong\'i rejim';

  @override
  String get customColourPicker => 'Maxsus rang tanlash';

  @override
  String get customColourTooltip => 'Maxsus rang…';

  @override
  String get couldNotLoadBooks =>
      'Kitoblar roʻyxatini yuklab boʻlmadi. Iltimos, qayta urinib koʻring.';

  @override
  String chapterLabel(Object chapter) {
    return '$chapter-bob';
  }

  @override
  String get traditionalOrderBooks => 'An\'anaviy buyurtma kitoblar';

  @override
  String get alphabeticalOrderBooks => 'Alifbo tartibida kitoblar';

  @override
  String get home => 'Uy';

  @override
  String get addBookmarkTooltip => 'Xatcho‘p qo‘shing';

  @override
  String get chooseBookChapter => 'Kitob va bo\'limni tanlang';

  @override
  String get chooseVerse => 'Matnni tanlang';

  @override
  String get bookChapterQuickNavigation =>
      'Kitob va bo\'limda tezkor navigatsiya';

  @override
  String get verseQuickNavigation => 'Tezkor navigatsiya';

  @override
  String get backToBooks => 'Kitoblarga qaytish';

  @override
  String get selectBookTitle => 'Kitobni tanlang';

  @override
  String selectChapterTitle(Object bookName) {
    return 'Bobni tanlang ($bookName)';
  }

  @override
  String chapterSelectionLabel(Object chapter) {
    return '$chapter-bob';
  }

  @override
  String verseSelectionLabel(Object verse) {
    return '$verse oyat';
  }

  @override
  String fullChapterReference(Object bookName, Object chapter) {
    return 'To\'liq bo\'lim: $bookName $chapter';
  }

  @override
  String get memorizeHint => 'Yodlab oling';

  @override
  String get addNoteHint => 'Eslatma qo\'shing...';

  @override
  String get languageSearchHint => 'Tillarni qidirish';

  @override
  String get languageModuleInstalled => 'Oʻrnatilgan';

  @override
  String get languageModulePending => 'Mashina tarjimasi kutilmoqda';

  @override
  String get languageNoMatches => 'Qidiruvingizga mos tillar topilmadi.';

  @override
  String get languageCatalogDescription =>
      'Oʻrnatilgan tillar oflayn rejimda ishlaydi. Boshqa tillar mashina orqali tarjima qilingan modullar sifatida qo\'shiladi.';

  @override
  String get saveBookmarkSemantics => 'Xatcho‘pni saqlang';

  @override
  String get couldNotLoadChapter =>
      'Bo\'limni yuklab bo\'lmadi. Iltimos, qayta urinib koʻring.';

  @override
  String get couldNotLoadChapters =>
      'Bo\'limlarni yuklab bo\'lmadi. Iltimos, qayta urinib koʻring.';

  @override
  String verseWithText(Object text, Object verse) {
    return 'Oyat $verse: $text';
  }

  @override
  String accentSwatchSemantics(Object name, Object selected) {
    return '$name aksent rangi$selected';
  }

  @override
  String get oldTestament => 'Eski Ahd';

  @override
  String get newTestament => 'Yangi Ahd';

  @override
  String get deuterocanonApocrypha => 'Deuterokanon / Apokrif';
}
