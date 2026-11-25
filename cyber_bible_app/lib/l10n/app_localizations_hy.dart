// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Armenian (`hy`).
class AppLocalizationsHy extends AppLocalizations {
  AppLocalizationsHy([String locale = 'hy']) : super(locale);

  @override
  String get settingsTitle => 'Կարգավորումներ';

  @override
  String get languageSection => 'Լեզու';

  @override
  String get useSystemLanguage => 'Օգտագործեք համակարգի լեզուն';

  @override
  String get useSystemLanguageSubtitle =>
      'Լռելյայն համապատասխանեցրեք սարքի լեզվին:';

  @override
  String get currentLanguage => 'Ընթացիկ լեզուն';

  @override
  String get appLanguage => 'Հավելվածի լեզուն';

  @override
  String get chooseLanguage => 'Ընտրեք լեզուն';

  @override
  String get theme => 'Թեմա';

  @override
  String get appearance => 'Արտաքին տեսք';

  @override
  String get textSection => 'Տեքստ';

  @override
  String get readingFormatSection => 'Ընթերցանության ձևաչափ';

  @override
  String get displaySection => 'Ցուցադրել';

  @override
  String get verseNumbers => 'Հատածի համարներ';

  @override
  String get sectionHeadings => 'Բաժինների վերնագրեր';

  @override
  String get redLetterText => 'Կարմիր տառի տեքստ';

  @override
  String get selectABook => 'Ընտրեք գիրք';

  @override
  String get traditionalOrder => 'Ավանդական պատվեր';

  @override
  String get alphabeticalOrder => 'Այբբենական կարգով';

  @override
  String get bookmarks => 'Էջանիշեր';

  @override
  String get retry => 'Կրկին փորձեք';

  @override
  String get chooseTheme => 'Ընտրեք թեմա';

  @override
  String get customisableThemes => 'Անհատականացվող թեմաներ';

  @override
  String get customisableThemesSubtitle =>
      'Հպեք քարտին՝ շեշտադրման գույն ընտրելու համար: «Classic White»-ն աջակցում է նաև Light, Dark և System ռեժիմները:';

  @override
  String get setThemes => 'ՍԱՀՄԱՆԵԼ ԹԵՄԱՆԵՐ';

  @override
  String get setThemesSubtitle =>
      'Ֆիքսված, ձեռքով պատրաստված գունապնակներ։ Անհատականացման կարիք չկա. պարզապես հպեք՝ կիրառելու համար:';

  @override
  String get deleteBookmarkQuestion => 'Ջնջե՞լ էջանիշը';

  @override
  String get cancel => 'Չեղարկել';

  @override
  String get delete => 'Ջնջել';

  @override
  String get bookmarkSaved => 'Էջանիշը պահված է';

  @override
  String get couldNotDeleteBookmark => 'Չհաջողվեց ջնջել էջանիշը:';

  @override
  String couldNotNavigate(Object reference) {
    return 'Չհաջողվեց նավարկել դեպի $reference:';
  }

  @override
  String get pageNotFound => 'Էջը չի գտնվել';

  @override
  String noRouteDefined(Object routeName) {
    return '«$routeName»-ի համար երթուղի սահմանված չէ';
  }

  @override
  String get english => 'Անգլերեն';

  @override
  String get spanish => 'Իսպանիայի';

  @override
  String get systemDefault => 'Համակարգի լռելյայն';

  @override
  String get languageStatusEnglish => 'Անգլերեն հետընտրական ակտիվ';

  @override
  String get languageStatusSystem => 'Օգտագործելով համակարգի լեզուն';

  @override
  String languageStatusSelected(Object languageName) {
    return 'Ընտրված լեզուն՝ $languageName';
  }

  @override
  String get themeLabel => 'Թեմա';

  @override
  String get notFoundTitle => 'Էջը չի գտնվել';

  @override
  String get loadingCyberBible => 'Կիբեր Աստվածաշունչը բեռնվում է...';

  @override
  String get couldNotOpenDatabase =>
      'Չհաջողվեց բացել Աստվածաշնչի տվյալների բազան: Խնդրում ենք կրկին փորձել:';

  @override
  String get homeTagline =>
      'Աստվածաշնչի ուսումնասիրության անվճար և բաց կոդով հավելված';

  @override
  String get readTheBible => 'Կարդացեք Աստվածաշունչը';

  @override
  String get settingsTooltip => 'Կարգավորումներ';

  @override
  String get themeChoose => 'Ընտրեք թեմա';

  @override
  String get customThemes => 'Անհատականացվող թեմաներ';

  @override
  String get customThemesSubtitle =>
      'Հպեք քարտին՝ շեշտադրման գույն ընտրելու համար: «Classic White»-ն աջակցում է նաև Light, Dark և System ռեժիմները:';

  @override
  String get setThemesLabel => 'ՍԱՀՄԱՆԵԼ ԹԵՄԱՆԵՐ';

  @override
  String get deleteBookmarkDialog => 'Ջնջե՞լ էջանիշը';

  @override
  String removeBookmarkMessage(Object details, Object reference) {
    return 'Հեռացնե՞լ «$reference»$details:\n\nՍա հնարավոր չէ հետարկել:';
  }

  @override
  String get couldNotLoadBookmarks =>
      'Չհաջողվեց բեռնել էջանիշները: Խնդրում ենք կրկին փորձել:';

  @override
  String get bookmarkSavedMessage => 'Էջանիշը պահված է';

  @override
  String get couldNotSaveBookmark => 'Չհաջողվեց պահել էջանիշը:';

  @override
  String get noBookmarksMatchFilter =>
      'Ոչ մի էջանիշ չի համապատասխանում այս ֆիլտրին:';

  @override
  String get clearFilter => 'Մաքրել ֆիլտրը';

  @override
  String get traditionalOrderLabel => 'Ավանդական պատվեր';

  @override
  String get alphabeticalOrderLabel => 'Այբբենական կարգով';

  @override
  String get bookmarksTabLabel => 'Էջանիշեր';

  @override
  String get fullChapter => 'Ամբողջական գլուխ';

  @override
  String get addBookmark => 'Ավելացնել էջանիշ';

  @override
  String get selectVerse => 'Ընտրեք հատված';

  @override
  String get labelOptional => 'Պիտակը (ըստ ցանկության)';

  @override
  String get notesOptional => 'Նշումներ (ըստ ցանկության)';

  @override
  String get save => 'Պահպանել';

  @override
  String get goToVerse => 'Գնացեք հատված';

  @override
  String verseTitle(Object verse) {
    return 'Հատված $verse';
  }

  @override
  String chapterTitle(Object chapter) {
    return 'Գլուխ $chapter';
  }

  @override
  String get switchToFullChapter => 'Անցնել ամբողջական գլխի էջանիշին';

  @override
  String get bookmarkSheetCancel => 'Չեղարկել, փակել էջանիշների թերթիկը';

  @override
  String get pickCustomAccent => 'Ընտրեք հատուկ շեշտադրություն';

  @override
  String get apply => 'Դիմել';

  @override
  String get custom => 'Պատվերով';

  @override
  String get brightnessSystem => 'Համակարգ';

  @override
  String get brightnessLight => 'Լույս';

  @override
  String get brightnessDark => 'Մութ';

  @override
  String get selectBook => 'Ընտրեք գիրք';

  @override
  String get bookmarkFilterAll => 'Բոլորը';

  @override
  String get bookmarkFilterUnlabeled => 'Չպիտակավորված';

  @override
  String get bookmarkSortRecent => 'Վերջին առաջինը';

  @override
  String get bookmarkSortCanonical => 'Կանոնական կարգ';

  @override
  String get chapterRetry => 'Կրկին փորձեք';

  @override
  String get fontSize => 'Տառատեսակի չափը';

  @override
  String fontSizePixels(Object size) {
    return '$size px';
  }

  @override
  String get fontSizeSlider => 'Տառատեսակի չափի սահիչ';

  @override
  String get fontSizeSliderHint => 'Սահեցրեք՝ 12-ից 28-ը հարմարեցնելու համար';

  @override
  String get fontPreview =>
      '«Սկզբում Աստված ստեղծեց երկինքն ու երկիրը»։ — Ծննդոց 1։1';

  @override
  String get showVerseNumbersSubtitle =>
      'Ընթերցանության էկրանին ցույց տվեք համարների վերնագրերը:';

  @override
  String get showSectionHeadingsSubtitle =>
      'Ցույց տալ հատվածի և Սաղմոսի վերնագրերը հատվածների միջև:';

  @override
  String get wordsOfChristSubtitle =>
      'Ցույց տվեք Հիսուսի խոսքերը կարմիրով: Անջատել մեկ տեքստի գույնի համար:';

  @override
  String get verseFormatTitle => 'Հատվածի ձևաչափ';

  @override
  String get verseFormatSubtitle =>
      'Ընտրեք, թե ինչպես է դրված սուրբ գրության տեքստը:';

  @override
  String get paragraphMode => 'Պարբերություն';

  @override
  String get verseListMode => 'Հատվածների ցանկ';

  @override
  String get paragraphModeTooltip => 'Պարբերության ռեժիմ';

  @override
  String get verseListModeTooltip => 'Հատվածների ցուցակի ռեժիմ';

  @override
  String get paragraphModeDescription =>
      'Տեքստը շարունակաբար հոսում է կտրված պարբերություններով, ինչպես տպագիր Աստվածաշունչը:';

  @override
  String get verseListModeDescription =>
      'Սուրբ գրությունների յուրաքանչյուր պարբերություն սկսվում է իր տողով, ինչը հեշտացնում է հատվածների խմբերը:';

  @override
  String get deleteBookmarkTooltip => 'Ջնջել էջանիշը';

  @override
  String deleteBookmarkSemantics(Object reference) {
    return 'Ջնջել $reference էջանիշը';
  }

  @override
  String sortBookmarksTooltip(Object sortOrder) {
    return 'Տեսակավորում՝ $sortOrder';
  }

  @override
  String get noBookmarksYet => 'Դեռևս էջանիշեր չկան:';

  @override
  String get noBookmarksYetHint =>
      'Հպեք էջանիշի պատկերակին՝ կարդալիս՝ տեղադրությունը պահպանելու համար:';

  @override
  String bookmarkReferenceNavigationError(Object reference) {
    return 'Չհաջողվեց նավարկել դեպի $reference:';
  }

  @override
  String themeCardSemantics(Object description, Object name, Object selected) {
    return '$name թեմա$selected: $description';
  }

  @override
  String get selectedThemeSuffix => ', ներկայումս ընտրված է';

  @override
  String get customisableAccentDescription => 'Կարգավորելի ընդգծված գույն:';

  @override
  String get fixedPaletteDescription => 'Ֆիքսված գունապնակ:';

  @override
  String accentColourTitle(Object themeName) {
    return 'Շեշտադրման գույն — $themeName';
  }

  @override
  String get brightnessMode => 'ՊԱՅՍՏՈՒԹՅԱՆ ՌԵԺԻՄ';

  @override
  String get lightMode => 'Լույսի ռեժիմ';

  @override
  String get followSystemMode => 'Հետևեք համակարգի ռեժիմին';

  @override
  String get darkMode => 'Մութ ռեժիմ';

  @override
  String get customColourPicker => 'Պատվերով գույնի ընտրիչ';

  @override
  String get customColourTooltip => 'Հատուկ գույն…';

  @override
  String get couldNotLoadBooks =>
      'Չհաջողվեց բեռնել գրքերի ցանկը: Խնդրում ենք կրկին փորձել:';

  @override
  String chapterLabel(Object chapter) {
    return 'Գլուխ $chapter';
  }

  @override
  String get traditionalOrderBooks => 'Ավանդական պատվերի գրքեր';

  @override
  String get alphabeticalOrderBooks => 'Այբբենական կարգի գրքեր';

  @override
  String get home => 'Տուն';

  @override
  String get addBookmarkTooltip => 'Ավելացնել էջանիշ';

  @override
  String get chooseBookChapter => 'Ընտրեք գիրք և գլուխ';

  @override
  String get chooseVerse => 'Ընտրեք հատված';

  @override
  String get bookChapterQuickNavigation =>
      'Գրքի և գլուխների արագ նավարկություն';

  @override
  String get verseQuickNavigation => 'Հատվածի արագ նավարկություն';

  @override
  String get backToBooks => 'Վերադարձ դեպի գրքեր';

  @override
  String get selectBookTitle => 'Ընտրեք Գիրք';

  @override
  String selectChapterTitle(Object bookName) {
    return 'Ընտրեք գլուխը ($bookName)';
  }

  @override
  String chapterSelectionLabel(Object chapter) {
    return 'Գլուխ $chapter';
  }

  @override
  String verseSelectionLabel(Object verse) {
    return 'Հատված $verse';
  }

  @override
  String fullChapterReference(Object bookName, Object chapter) {
    return 'Ամբողջ գլուխը՝ $bookName $chapter';
  }

  @override
  String get memorizeHint => 'Անգիր անել';

  @override
  String get addNoteHint => 'Ավելացնել նշում...';

  @override
  String get languageSearchHint => 'Լեզուների որոնում';

  @override
  String get languageModuleInstalled => 'Տեղադրված է';

  @override
  String get languageModulePending => 'Մեքենայի թարգմանությունը սպասվում է';

  @override
  String get languageNoMatches =>
      'Ոչ մի լեզու չի համապատասխանում ձեր որոնմանը:';

  @override
  String get languageCatalogDescription =>
      'Լեզուները, որոնք նշված են որպես տեղադրված, աշխատում են անցանց: Այլ լեզուներ կավելացվեն որպես մեքենայական թարգմանված մոդուլներ:';

  @override
  String get saveBookmarkSemantics => 'Պահպանել էջանիշը';

  @override
  String get couldNotLoadChapter =>
      'Չհաջողվեց բեռնել գլուխը: Խնդրում ենք կրկին փորձել:';

  @override
  String get couldNotLoadChapters =>
      'Չհաջողվեց բեռնել գլուխները: Խնդրում ենք կրկին փորձել:';

  @override
  String verseWithText(Object text, Object verse) {
    return 'Հատված $verse: $text';
  }

  @override
  String accentSwatchSemantics(Object name, Object selected) {
    return '$name շեշտադրման գույն$selected';
  }

  @override
  String get oldTestament => 'Հին Կտակարան';

  @override
  String get newTestament => 'Նոր Կտակարան';

  @override
  String get deuterocanonApocrypha => 'Deuterocanon / Apocrypha';
}
