// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Nyanja Chewa Chichewa (`ny`).
class AppLocalizationsNy extends AppLocalizations {
  AppLocalizationsNy([String locale = 'ny']) : super(locale);

  @override
  String get settingsTitle => 'Zokonda';

  @override
  String get languageSection => 'Chiyankhulo';

  @override
  String get useSystemLanguage => 'Gwiritsani ntchito chilankhulo chadongosolo';

  @override
  String get useSystemLanguageSubtitle =>
      'Fananizani chilankhulo cha chipangizocho mwachisawawa.';

  @override
  String get currentLanguage => 'Chilankhulo chapano';

  @override
  String get appLanguage => 'Chilankhulo cha pulogalamu';

  @override
  String get chooseLanguage => 'Sankhani chinenero';

  @override
  String get theme => 'Mutu';

  @override
  String get appearance => 'Maonekedwe';

  @override
  String get textSection => 'Mawu';

  @override
  String get readingFormatSection => 'Kuwerenga Format';

  @override
  String get displaySection => 'Onetsani';

  @override
  String get verseNumbers => 'Vesi Numeri';

  @override
  String get sectionHeadings => 'Mitu Yachigawo';

  @override
  String get redLetterText => 'Malembo Ofiira';

  @override
  String get selectABook => 'Sankhani Bukhu';

  @override
  String get traditionalOrder => 'Dongosolo lachikhalidwe';

  @override
  String get alphabeticalOrder => 'Dongosolo la zilembo';

  @override
  String get bookmarks => 'Zosungira';

  @override
  String get retry => 'Yesaninso';

  @override
  String get chooseTheme => 'Sankhani Mutu';

  @override
  String get customisableThemes => 'Customizable Mitu';

  @override
  String get customisableThemesSubtitle =>
      'Dinani khadi kuti musankhe mtundu wa mawu. \"Classic White\" imathandiziranso Kuwala, Mdima ndi Mitundu Yadongosolo.';

  @override
  String get setThemes => 'KHALANI MITUNDU';

  @override
  String get setThemesSubtitle =>
      'Mapaleti okhazikika, opangidwa ndi manja. Palibe makonda ofunikira - ingodinani kuti mugwiritse ntchito.';

  @override
  String get deleteBookmarkQuestion => 'Chotsani bookmark?';

  @override
  String get cancel => 'Letsani';

  @override
  String get delete => 'Chotsani';

  @override
  String get bookmarkSaved => 'Bookmark yasungidwa';

  @override
  String get couldNotDeleteBookmark => 'Sizinathe kuchotsa zosungira.';

  @override
  String couldNotNavigate(Object reference) {
    return 'Sitinathe kupita ku $reference.';
  }

  @override
  String get pageNotFound => 'Tsamba silinapezeke';

  @override
  String noRouteDefined(Object routeName) {
    return 'Palibe njira yodziwika ya \"$routeName\"';
  }

  @override
  String get english => 'Chingerezi';

  @override
  String get spanish => 'Español';

  @override
  String get systemDefault => 'Kusakhazikika kwadongosolo';

  @override
  String get languageStatusEnglish =>
      'Kubwerera kwa Chingerezi kumagwira ntchito';

  @override
  String get languageStatusSystem =>
      'Kugwiritsa ntchito chilankhulo cha system';

  @override
  String languageStatusSelected(Object languageName) {
    return 'Chiyankhulo chosankhidwa: $languageName';
  }

  @override
  String get themeLabel => 'Mutu';

  @override
  String get notFoundTitle => 'Tsamba silinapezeke';

  @override
  String get loadingCyberBible => 'Kutsegula Cyber ​​Bible...';

  @override
  String get couldNotOpenDatabase =>
      'Sitinathe kutsegula nkhokwe ya Baibulo. Chonde yesaninso.';

  @override
  String get homeTagline =>
      'Pulogalamu yophunzirira Baibulo yaulere komanso yotsegula';

  @override
  String get readTheBible => 'Werengani Baibulo';

  @override
  String get settingsTooltip => 'Zokonda';

  @override
  String get themeChoose => 'Sankhani Mutu';

  @override
  String get customThemes => 'Customizable Mitu';

  @override
  String get customThemesSubtitle =>
      'Dinani khadi kuti musankhe mtundu wa mawu. \"Classic White\" imathandiziranso Kuwala, Mdima ndi Mitundu Yadongosolo.';

  @override
  String get setThemesLabel => 'KHALANI MITUNDU';

  @override
  String get deleteBookmarkDialog => 'Chotsani bookmark?';

  @override
  String removeBookmarkMessage(Object details, Object reference) {
    return 'Chotsani \"$reference\"$details?\n\nIzi sizingasinthidwe.';
  }

  @override
  String get couldNotLoadBookmarks =>
      'Sitinathe kutsitsa zikwangwani. Chonde yesaninso.';

  @override
  String get bookmarkSavedMessage => 'Bookmark yasungidwa';

  @override
  String get couldNotSaveBookmark => 'Sizinathe kusunga chizindikiro.';

  @override
  String get noBookmarksMatchFilter =>
      'Palibe zosungira zofananira ndi fyulutayi.';

  @override
  String get clearFilter => 'Chotsani fyuluta';

  @override
  String get traditionalOrderLabel => 'Dongosolo lachikhalidwe';

  @override
  String get alphabeticalOrderLabel => 'Dongosolo la zilembo';

  @override
  String get bookmarksTabLabel => 'Zosungira';

  @override
  String get fullChapter => 'Mutu wonse';

  @override
  String get addBookmark => 'Onjezani Bookmark';

  @override
  String get selectVerse => 'Sankhani Vesi';

  @override
  String get labelOptional => 'Label (posankha)';

  @override
  String get notesOptional => 'Zolemba (posankha)';

  @override
  String get save => 'Sungani';

  @override
  String get goToVerse => 'Pitani ku Vesi';

  @override
  String verseTitle(Object verse) {
    return 'Ndime $verse';
  }

  @override
  String chapterTitle(Object chapter) {
    return 'Mutu $chapter';
  }

  @override
  String get switchToFullChapter => 'Sinthani ku bookmark yathunthu';

  @override
  String get bookmarkSheetCancel => 'Letsani, tsekani pepala lamabuku';

  @override
  String get pickCustomAccent => 'Sankhani kamvekedwe kamakonda';

  @override
  String get apply => 'Ikani';

  @override
  String get custom => 'Mwambo';

  @override
  String get brightnessSystem => 'Dongosolo';

  @override
  String get brightnessLight => 'Kuwala';

  @override
  String get brightnessDark => 'Chakuda';

  @override
  String get selectBook => 'Sankhani Bukhu';

  @override
  String get bookmarkFilterAll => 'Zonse';

  @override
  String get bookmarkFilterUnlabeled => 'Zopanda zilembo';

  @override
  String get bookmarkSortRecent => 'Posachedwapa choyamba';

  @override
  String get bookmarkSortCanonical => 'Dongosolo la Canonical';

  @override
  String get chapterRetry => 'Yesaninso';

  @override
  String get fontSize => 'Kukula Kwa Font';

  @override
  String fontSizePixels(Object size) {
    return '$size px';
  }

  @override
  String get fontSizeSlider => 'Font size slider';

  @override
  String get fontSizeSliderHint =>
      'Yendetsani chala kuti musinthe kuchokera 12 mpaka 28';

  @override
  String get fontPreview =>
      '\"Pachiyambi Mulungu adalenga kumwamba ndi dziko lapansi.\" — Genesis 1:1';

  @override
  String get showVerseNumbersSubtitle =>
      'Onetsani zolemba zazikulu za nambala ya vesi pazithunzi zowerengera.';

  @override
  String get showSectionHeadingsSubtitle =>
      'Onetsani mitu yachigawo ndi Masalimo pakati pa ndime.';

  @override
  String get wordsOfChristSubtitle =>
      'Onetsani mau a Yesu mu zofiira. Zimitsani mtundu wa mawu amodzi.';

  @override
  String get verseFormatTitle => 'Maonekedwe a Vesi';

  @override
  String get verseFormatSubtitle => 'Sankhani mmene lemba lilili.';

  @override
  String get paragraphMode => 'Ndime';

  @override
  String get verseListMode => 'Ndime mndandanda';

  @override
  String get paragraphModeTooltip => 'Ndime mode';

  @override
  String get verseListModeTooltip => 'Ndime-mndandanda mode';

  @override
  String get paragraphModeDescription =>
      'Mawu amayenda mosalekeza ndi ndime zopindika, monga Baibulo losindikizidwa.';

  @override
  String get verseListModeDescription =>
      'Ndime iliyonse ya lemba imayamba pamzere wake, kupangitsa kuti mavesi azitha kuwazindikira mosavuta.';

  @override
  String get deleteBookmarkTooltip => 'Chotsani bookmark';

  @override
  String deleteBookmarkSemantics(Object reference) {
    return 'Chotsani bookmark $reference';
  }

  @override
  String sortBookmarksTooltip(Object sortOrder) {
    return 'Mtundu: $sortOrder';
  }

  @override
  String get noBookmarksYet => 'Palibe zosungira panobe.';

  @override
  String get noBookmarksYetHint =>
      'Dinani chizindikiro cha bookmark mukuwerenga kuti musunge malo.';

  @override
  String bookmarkReferenceNavigationError(Object reference) {
    return 'Sitinathe kupita ku $reference.';
  }

  @override
  String themeCardSemantics(Object description, Object name, Object selected) {
    return '$name theme$selected. $description';
  }

  @override
  String get selectedThemeSuffix => ', zosankhidwa pano';

  @override
  String get customisableAccentDescription =>
      'Customizable katchulidwe mtundu.';

  @override
  String get fixedPaletteDescription => 'Phale lokhazikika.';

  @override
  String accentColourTitle(Object themeName) {
    return 'Mtundu wa Mawu - $themeName';
  }

  @override
  String get brightnessMode => 'WOWIRITSA NTCHITO';

  @override
  String get lightMode => 'Kuwala mode';

  @override
  String get followSystemMode => 'Tsatirani dongosolo mode';

  @override
  String get darkMode => 'Mdima wakuda';

  @override
  String get customColourPicker => 'Chosankha mtundu wamakonda';

  @override
  String get customColourTooltip => 'Mtundu wamakonda…';

  @override
  String get couldNotLoadBooks =>
      'Sizinathe kutsegula mndandanda wa mabuku. Chonde yesaninso.';

  @override
  String chapterLabel(Object chapter) {
    return 'Mutu $chapter';
  }

  @override
  String get traditionalOrderBooks => 'Mabuku oda zachikhalidwe';

  @override
  String get alphabeticalOrderBooks => 'Mabuku otengera zilembo';

  @override
  String get home => 'Kunyumba';

  @override
  String get addBookmarkTooltip => 'Onjezani chizindikiro';

  @override
  String get chooseBookChapter => 'Sankhani buku ndi mutu';

  @override
  String get chooseVerse => 'Sankhani ndime';

  @override
  String get bookChapterQuickNavigation => 'Buku ndi mutu navigation mwachangu';

  @override
  String get verseQuickNavigation => 'Kuyenda mwachangu kwa vesi';

  @override
  String get backToBooks => 'Bwererani ku mabuku';

  @override
  String get selectBookTitle => 'Sankhani Bukhu';

  @override
  String selectChapterTitle(Object bookName) {
    return 'Sankhani Mutu ($bookName)';
  }

  @override
  String chapterSelectionLabel(Object chapter) {
    return 'Mutu $chapter';
  }

  @override
  String verseSelectionLabel(Object verse) {
    return 'Ndime $verse';
  }

  @override
  String fullChapterReference(Object bookName, Object chapter) {
    return 'Mutu wonse: $bookName $chapter';
  }

  @override
  String get memorizeHint => 'Lowezani';

  @override
  String get addNoteHint => 'Onjezani cholemba...';

  @override
  String get languageSearchHint => 'Sakani zilankhulo';

  @override
  String get languageModuleInstalled => 'Adayika';

  @override
  String get languageModulePending => 'Kutanthauzira kwamakina kukuyembekezera';

  @override
  String get languageNoMatches =>
      'Palibe zilankhulo zomwe zikufanana ndi zomwe mwasaka.';

  @override
  String get languageCatalogDescription =>
      'Zilankhulo zolembedwa kuti zayikidwa pa intaneti. Zinenero zina zidzawonjezedwa ngati ma module omasulira ndi makina.';

  @override
  String get saveBookmarkSemantics => 'Sungani bookmark';

  @override
  String get couldNotLoadChapter =>
      'Sizinathe kutsegula mutuwo. Chonde yesaninso.';

  @override
  String get couldNotLoadChapters =>
      'Sizinathe kutsegula mitu. Chonde yesaninso.';

  @override
  String verseWithText(Object text, Object verse) {
    return 'Vesi $verse: $text';
  }

  @override
  String accentSwatchSemantics(Object name, Object selected) {
    return '$name kamvekedwe kamtundu$selected';
  }

  @override
  String get oldTestament => 'Chipangano Chakale';

  @override
  String get newTestament => 'Chipangano Chatsopano';

  @override
  String get deuterocanonApocrypha => 'Deuterocanon / Apocrypha';
}
