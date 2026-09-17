// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Georgian (`ka`).
class AppLocalizationsKa extends AppLocalizations {
  AppLocalizationsKa([String locale = 'ka']) : super(locale);

  @override
  String get settingsTitle => '[\"პარამეტრები\"]';

  @override
  String get languageSection => '[\"ენა\"]';

  @override
  String get useSystemLanguage => '[\"გამოიყენეთ სისტემის ენა\"]';

  @override
  String get useSystemLanguageSubtitle =>
      '[\"ემთხვევა მოწყობილობის ენას ნაგულისხმევად.\"]';

  @override
  String get currentLanguage => '[\"აქტუალური ენა\"]';

  @override
  String get appLanguage => '[\"აპლიკაციის ენა\"]';

  @override
  String get chooseLanguage => '[\"აირჩიეთ ენა\"]';

  @override
  String get theme => '[\"თემა\"]';

  @override
  String get appearance => '[\"გარეგნობა\"]';

  @override
  String get textSection => '[\"ტექსტი\"]';

  @override
  String get readingFormatSection => '[\"კითხვის ფორმატი\"]';

  @override
  String get displaySection => '[\"ჩვენება\"]';

  @override
  String get verseNumbers => '[\"ლექსის ნომრები\"]';

  @override
  String get sectionHeadings => '[\"განყოფილების სათაურები\"]';

  @override
  String get redLetterText => '[\"წითელი ასო ტექსტი\"]';

  @override
  String get selectABook => '[\"აირჩიეთ წიგნი\"]';

  @override
  String get traditionalOrder => '[\"ტრადიციული შეკვეთა\"]';

  @override
  String get alphabeticalOrder => '[\"ანბანური თანმიმდევრობა\"]';

  @override
  String get bookmarks => '[\"სანიშნეები\"]';

  @override
  String get retry => '[\"ხელახლა სცადეთ\"]';

  @override
  String get chooseTheme => '[\"აირჩიეთ თემა\"]';

  @override
  String get customisableThemes => '[\"დააკონფიგურიროთ თემები\"]';

  @override
  String get customisableThemesSubtitle =>
      '[\"შეეხეთ ბარათს აქცენტის ფერის ასარჩევად. \\\"კლასიკური თეთრი\\\" ასევე მხარს უჭერს სინათლის, მუქი და სისტემის რეჟიმებს.\"]';

  @override
  String get setThemes => '[\"თემების დაყენება\"]';

  @override
  String get setThemesSubtitle =>
      '[\"ფიქსირებული, ხელნაკეთი პალიტრები. არ არის საჭირო პერსონალიზაცია - უბრალოდ შეეხეთ გამოსაყენებლად.\"]';

  @override
  String get deleteBookmarkQuestion => '[\"წაშალოთ სანიშნე?\"]';

  @override
  String get cancel => '[\"გაუქმება\"]';

  @override
  String get delete => '[\"წაშლა\"]';

  @override
  String get bookmarkSaved => '[\"სანიშნე შენახულია\"]';

  @override
  String get couldNotDeleteBookmark => '[\"სანიშნის წაშლა ვერ მოხერხდა.\"]';

  @override
  String couldNotNavigate(Object reference) {
    return '[\"$reference-ზე ნავიგაცია ვერ მოხერხდა.\"]';
  }

  @override
  String get pageNotFound => '[\"გვერდი არ მოიძებნა\"]';

  @override
  String noRouteDefined(Object routeName) {
    return '[\"მარშრუტი არ არის განსაზღვრული „$routeName“-სთვის\"]';
  }

  @override
  String get english => '[\"ინგლისური\"]';

  @override
  String get spanish => '[\"ესპანოლი\"]';

  @override
  String get systemDefault => '[\"სისტემის ნაგულისხმევი\"]';

  @override
  String get languageStatusEnglish => '[\"ინგლისური სარეზერვო აქტიურია\"]';

  @override
  String get languageStatusSystem => '[\"სისტემის ენის გამოყენება\"]';

  @override
  String languageStatusSelected(Object languageName) {
    return '[\"არჩეული ენა: $languageName\"]';
  }

  @override
  String get themeLabel => '[\"თემა\"]';

  @override
  String get notFoundTitle => '[\"გვერდი არ მოიძებნა\"]';

  @override
  String get loadingCyberBible => '[\"იტვირთება კიბერ ბიბლია...\"]';

  @override
  String get couldNotOpenDatabase =>
      '[\"ბიბლიის მონაცემთა ბაზის გახსნა ვერ მოხერხდა. გთხოვთ, სცადოთ ხელახლა.\"]';

  @override
  String get homeTagline =>
      '[\"უფასო და ღია კოდის ბიბლიის შესწავლის აპლიკაცია\"]';

  @override
  String get readTheBible => '[\"წაიკითხეთ ბიბლია\"]';

  @override
  String get settingsTooltip => '[\"პარამეტრები\"]';

  @override
  String get themeChoose => '[\"აირჩიეთ თემა\"]';

  @override
  String get customThemes => '[\"დააკონფიგურიროთ თემები\"]';

  @override
  String get customThemesSubtitle =>
      '[\"შეეხეთ ბარათს აქცენტის ფერის ასარჩევად. \\\"კლასიკური თეთრი\\\" ასევე მხარს უჭერს სინათლის, მუქი და სისტემის რეჟიმებს.\"]';

  @override
  String get setThemesLabel => '[\"თემების დაყენება\"]';

  @override
  String get deleteBookmarkDialog => '[\"წაშალოთ სანიშნე?\"]';

  @override
  String removeBookmarkMessage(Object details, Object reference) {
    return '[\"წაშალოთ \\\"$reference\\\"$details?\\n\\nამის გაუქმება შეუძლებელია.\"]';
  }

  @override
  String get couldNotLoadBookmarks =>
      '[\"სანიშნეების ჩატვირთვა ვერ მოხერხდა. გთხოვთ, სცადოთ ხელახლა.\"]';

  @override
  String get bookmarkSavedMessage => '[\"სანიშნე შენახულია\"]';

  @override
  String get couldNotSaveBookmark => '[\"სანიშნის შენახვა ვერ მოხერხდა.\"]';

  @override
  String get noBookmarksMatchFilter =>
      '[\"არცერთი სანიშნე არ შეესაბამება ამ ფილტრს.\"]';

  @override
  String get clearFilter => '[\"ფილტრის გასუფთავება\"]';

  @override
  String get traditionalOrderLabel => '[\"ტრადიციული შეკვეთა\"]';

  @override
  String get alphabeticalOrderLabel => '[\"ანბანური თანმიმდევრობა\"]';

  @override
  String get bookmarksTabLabel => '[\"სანიშნეები\"]';

  @override
  String get fullChapter => '[\"სრული თავი\"]';

  @override
  String get addBookmark => '[\"დაამატეთ სანიშნე\"]';

  @override
  String get selectVerse => '[\"აირჩიეთ ლექსი\"]';

  @override
  String get labelOptional => '[\"ლეიბლი (სურვილისამებრ)\"]';

  @override
  String get notesOptional => '[\"შენიშვნები (სურვილისამებრ)\"]';

  @override
  String get save => '[\"შენახვა\"]';

  @override
  String get goToVerse => '[\"გადადით ლექსზე\"]';

  @override
  String verseTitle(Object verse) {
    return '[\"ლექსი $verse\"]';
  }

  @override
  String chapterTitle(Object chapter) {
    return '[\"თავი $chapter\"]';
  }

  @override
  String get switchToFullChapter => '[\"სრული თავის სანიშნეზე გადართვა\"]';

  @override
  String get bookmarkSheetCancel =>
      '[\"გააუქმეთ, დახურეთ სანიშნეების ფურცელი\"]';

  @override
  String get pickCustomAccent => '[\"აირჩიეთ მორგებული აქცენტი\"]';

  @override
  String get apply => '[\"მიმართეთ\"]';

  @override
  String get custom => '[\"საბაჟო\"]';

  @override
  String get brightnessSystem => '[\"სისტემა\"]';

  @override
  String get brightnessLight => '[\"სინათლე\"]';

  @override
  String get brightnessDark => '[\"ბნელი\"]';

  @override
  String get selectBook => '[\"აირჩიეთ წიგნი\"]';

  @override
  String get bookmarkFilterAll => '[\"ყველა\"]';

  @override
  String get bookmarkFilterUnlabeled => '[\"არალეიბლირებული\"]';

  @override
  String get bookmarkSortRecent => '[\"ჯერ ბოლო\"]';

  @override
  String get bookmarkSortCanonical => '[\"კანონიკური წესრიგი\"]';

  @override
  String get chapterRetry => '[\"ხელახლა სცადეთ\"]';

  @override
  String get fontSize => '[\"შრიფტის ზომა\"]';

  @override
  String fontSizePixels(Object size) {
    return '[\"$size px\"]';
  }

  @override
  String get fontSizeSlider => '[\"შრიფტის ზომის სლაიდერი\"]';

  @override
  String get fontSizeSliderHint =>
      '[\"გადაფურცლეთ 12-დან 28-მდე დასარეგულირებლად\"]';

  @override
  String get fontPreview =>
      '[\"„თავიდან ღმერთმა შექმნა ცა და დედამიწა“. — დაბადება 1:1\"]';

  @override
  String get showVerseNumbersSubtitle =>
      '[\"კითხვის ეკრანზე აჩვენეთ ლექსის ნომრის ზედამხედველობა.\"]';

  @override
  String get showSectionHeadingsSubtitle =>
      '[\"აჩვენეთ განყოფილება და ფსალმუნის სათაურები მონაკვეთებს შორის.\"]';

  @override
  String get wordsOfChristSubtitle =>
      '[\"აჩვენე იესოს სიტყვები წითლად. გამორთეთ ერთი ტექსტის ფერი.\"]';

  @override
  String get verseFormatTitle => '[\"ლექსის ფორმატი\"]';

  @override
  String get verseFormatSubtitle =>
      '[\"აირჩიეთ, როგორ არის ჩამოყალიბებული წმინდა წერილის ტექსტი.\"]';

  @override
  String get paragraphMode => '[\"პარაგრაფი\"]';

  @override
  String get verseListMode => '[\"ლექსების სია\"]';

  @override
  String get paragraphModeTooltip => '[\"პარაგრაფის რეჟიმი\"]';

  @override
  String get verseListModeTooltip => '[\"ლექსების სიის რეჟიმი\"]';

  @override
  String get paragraphModeDescription =>
      '[\"ტექსტი განუწყვეტლივ მიედინება ჩაჭრილი აბზაცებით, როგორც დაბეჭდილი ბიბლია.\"]';

  @override
  String get verseListModeDescription =>
      '[\"წმინდა წერილის თითოეული აბზაცი იწყება საკუთარი სტრიქონიდან, რაც აადვილებს ლექსების ჯგუფებს.\"]';

  @override
  String get deleteBookmarkTooltip => '[\"წაშალეთ სანიშნე\"]';

  @override
  String deleteBookmarkSemantics(Object reference) {
    return '[\"წაშალეთ სანიშნე $reference\"]';
  }

  @override
  String sortBookmarksTooltip(Object sortOrder) {
    return '[\"დალაგება: $sortOrder\"]';
  }

  @override
  String get noBookmarksYet => '[\"სანიშნეები ჯერ არ არის.\"]';

  @override
  String get noBookmarksYetHint =>
      '[\"მდებარეობის შესანახად შეეხეთ სანიშნეს ხატულას კითხვისას.\"]';

  @override
  String bookmarkReferenceNavigationError(Object reference) {
    return '[\"$reference-ზე ნავიგაცია ვერ მოხერხდა.\"]';
  }

  @override
  String themeCardSemantics(Object description, Object name, Object selected) {
    return '[\"$name თემა$selected. $description\"]';
  }

  @override
  String get selectedThemeSuffix => '[\", ამჟამად არჩეულია\"]';

  @override
  String get customisableAccentDescription =>
      '[\"რეგულირებადი აქცენტის ფერი.\"]';

  @override
  String get fixedPaletteDescription => '[\"ფიქსირებული პალიტრა.\"]';

  @override
  String accentColourTitle(Object themeName) {
    return '[\"აქცენტის ფერი — $themeName\"]';
  }

  @override
  String get brightnessMode => '[\"სიკაშკაშის რეჟიმი\"]';

  @override
  String get lightMode => '[\"სინათლის რეჟიმი\"]';

  @override
  String get followSystemMode => '[\"დაიცავით სისტემის რეჟიმი\"]';

  @override
  String get darkMode => '[\"მუქი რეჟიმი\"]';

  @override
  String get customColourPicker => '[\"მორგებული ფერის ამომრჩევი\"]';

  @override
  String get customColourTooltip => '[\"მორგებული ფერი…\"]';

  @override
  String get couldNotLoadBooks =>
      '[\"წიგნების სიის ჩატვირთვა ვერ მოხერხდა. გთხოვთ, სცადოთ ხელახლა.\"]';

  @override
  String chapterLabel(Object chapter) {
    return '[\"თავი $chapter\"]';
  }

  @override
  String get traditionalOrderBooks => '[\"ტრადიციული შეკვეთების წიგნები\"]';

  @override
  String get alphabeticalOrderBooks => '[\"ანბანური შეკვეთის წიგნები\"]';

  @override
  String get home => '[\"მთავარი\"]';

  @override
  String get addBookmarkTooltip => '[\"დაამატეთ სანიშნე\"]';

  @override
  String get chooseBookChapter => '[\"აირჩიეთ წიგნი და თავი\"]';

  @override
  String get chooseVerse => '[\"აირჩიეთ ლექსი\"]';

  @override
  String get bookChapterQuickNavigation =>
      '[\"წიგნისა და თავების სწრაფი ნავიგაცია\"]';

  @override
  String get verseQuickNavigation => '[\"ლექსის სწრაფი ნავიგაცია\"]';

  @override
  String get backToBooks => '[\"დაუბრუნდით წიგნებს\"]';

  @override
  String get selectBookTitle => '[\"აირჩიეთ წიგნი\"]';

  @override
  String selectChapterTitle(Object bookName) {
    return '[\"აირჩიეთ თავი ($bookName)\"]';
  }

  @override
  String chapterSelectionLabel(Object chapter) {
    return '[\"თავი $chapter\"]';
  }

  @override
  String verseSelectionLabel(Object verse) {
    return '[\"ლექსი $verse\"]';
  }

  @override
  String fullChapterReference(Object bookName, Object chapter) {
    return '[\"სრული თავი: $bookName $chapter\"]';
  }

  @override
  String get memorizeHint => '[\"დაიმახსოვრე\"]';

  @override
  String get addNoteHint => '[\"დაამატეთ შენიშვნა...\"]';

  @override
  String get languageSearchHint => '[\"ენების ძიება\"]';

  @override
  String get languageModuleInstalled => '[\"დაყენებულია\"]';

  @override
  String get languageModulePending => '[\"ავტომატური თარგმანი მოლოდინშია\"]';

  @override
  String get languageNoMatches =>
      '[\"არცერთი ენა არ შეესაბამება თქვენს ძიებას.\"]';

  @override
  String get languageCatalogDescription =>
      '[\"დაინსტალირებულად მონიშნული ენები მუშაობს ხაზგარეშე. სხვა ენები დაემატება მანქანით თარგმნილ მოდულებს.\"]';

  @override
  String get saveBookmarkSemantics => '[\"სანიშნეის შენახვა\"]';

  @override
  String get couldNotLoadChapter =>
      '[\"თავი ვერ ჩაიტვირთა. გთხოვთ, სცადოთ ხელახლა.\"]';

  @override
  String get couldNotLoadChapters =>
      '[\"თავების ჩატვირთვა ვერ მოხერხდა. გთხოვთ, სცადოთ ხელახლა.\"]';

  @override
  String verseWithText(Object text, Object verse) {
    return '[\"ლექსი $verse: $text\"]';
  }

  @override
  String accentSwatchSemantics(Object name, Object selected) {
    return '[\"$name აქცენტის ფერი$selected\"]';
  }

  @override
  String get oldTestament => '[\"ძველი აღთქმა\"]';

  @override
  String get newTestament => '[\"ახალი აღთქმა\"]';

  @override
  String get deuterocanonApocrypha => '[\"დეიტეროკანონი / აპოკრიფა\"]';
}
