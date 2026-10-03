// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Sena (`seh`).
class AppLocalizationsSeh extends AppLocalizations {
  AppLocalizationsSeh([String locale = 'seh']) : super(locale);

  @override
  String get settingsTitle => 'Makonzedwe';

  @override
  String get languageSection => 'Limi';

  @override
  String get useSystemLanguage => 'Phatisira limi ya sisitemu';

  @override
  String get useSystemLanguageSubtitle =>
      'Phatisira limi ya chipangizo ninga limi yakuyamba.';

  @override
  String get currentLanguage => 'Limi yapano';

  @override
  String get appLanguage => 'Limi ya app';

  @override
  String get chooseLanguage => 'Sankhula limi';

  @override
  String get theme => 'Maonekedwe';

  @override
  String get appearance => 'Maonekedwe';

  @override
  String get textSection => 'Mawu';

  @override
  String get readingFormatSection => 'Makonzedwe akuleri';

  @override
  String get displaySection => 'Onesa';

  @override
  String get verseNumbers => 'Nambala za mavesi';

  @override
  String get sectionHeadings => 'Mitu ya zigawo';

  @override
  String get redLetterText => 'Mawu ofiyira';

  @override
  String get selectABook => 'Sankhula buku';

  @override
  String get traditionalOrder => 'Mndandanda wachikhalidwe';

  @override
  String get alphabeticalOrder => 'Mndandanda wa zilembo';

  @override
  String get bookmarks => 'Zizindikiro';

  @override
  String get retry => 'Yesanso';

  @override
  String get chooseTheme => 'Sankhula maonekedwe';

  @override
  String get customisableThemes => 'Maonekedwe osinthika';

  @override
  String get customisableThemesSubtitle =>
      'Dinani pa khadi kuti musankhe mtundu. \"Classic White\" imathandizanso mawonekedwe a Kuwala, Mdima ndi Sisitemu.';

  @override
  String get setThemes => 'MAONEKEDWE OSASINTHA';

  @override
  String get setThemesSubtitle =>
      'Mitundu yokhazikika yokonzedwa bwino. Palibe chosinthira; dinani kuti mugwiritse ntchito.';

  @override
  String get deleteBookmarkQuestion => 'Chotsani chizindikiro?';

  @override
  String get cancel => 'Letsani';

  @override
  String get delete => 'Chotsani';

  @override
  String get bookmarkSaved => 'Chizindikiro chasungidwa';

  @override
  String get couldNotDeleteBookmark => 'Chizindikiro sichinathe kuchotsedwa.';

  @override
  String couldNotNavigate(Object reference) {
    return 'Sizinatheke kupita ku $reference.';
  }

  @override
  String get pageNotFound => 'Tsamba silinapezeke';

  @override
  String noRouteDefined(Object routeName) {
    return 'Palibe njira yofotokozedwa ya \"$routeName\"';
  }

  @override
  String get english => 'Chingerezi';

  @override
  String get spanish => 'Chisipanishi';

  @override
  String get systemDefault => 'Zokhazikika za sisitemu';

  @override
  String get languageStatusEnglish =>
      'Chingerezi chikugwiritsidwa ntchito ngati chinenero chosinthira';

  @override
  String get languageStatusSystem => 'Limi ya sisitemu ikugwiritsidwa ntchito';

  @override
  String languageStatusSelected(Object languageName) {
    return 'Limi losankhidwa: $languageName';
  }

  @override
  String get themeLabel => 'Maonekedwe';

  @override
  String get notFoundTitle => 'Tsamba silinapezeke';

  @override
  String get loadingCyberBible => 'Cyber Bible ikukwezedwa...';

  @override
  String get couldNotOpenDatabase =>
      'Nawonso achichepere a Baibulo sanatseguke. Yesanso.';

  @override
  String get homeTagline =>
      'Pulogalamu yaulere yophunzirira Baibulo yokhala ndi gwero lotseguka';

  @override
  String get readTheBible => 'Werenga Baibulo';

  @override
  String get settingsTooltip => 'Makonzedwe';

  @override
  String get themeChoose => 'Sankhula maonekedwe';

  @override
  String get customThemes => 'Maonekedwe osinthika';

  @override
  String get customThemesSubtitle =>
      'Dinani pa khadi kuti musankhe mtundu. \"Classic White\" imathandizanso mawonekedwe a Kuwala, Mdima ndi Sisitemu.';

  @override
  String get setThemesLabel => 'MAONEKEDWE OSASINTHA';

  @override
  String get deleteBookmarkDialog => 'Chotsani chizindikiro?';

  @override
  String removeBookmarkMessage(Object details, Object reference) {
    return 'Chotsani \"$reference\"$details?\n\nIzi sizingabwezeretsedwe.';
  }

  @override
  String get couldNotLoadBookmarks => 'Zizindikiro sizinakwezedwe. Yesanso.';

  @override
  String get bookmarkSavedMessage => 'Chizindikiro chasungidwa';

  @override
  String get couldNotSaveBookmark => 'Chizindikiro sichinasungidwe.';

  @override
  String get noBookmarksMatchFilter =>
      'Palibe chizindikiro chogwirizana ndi fyuluta iyi.';

  @override
  String get clearFilter => 'Chotsani fyuluta';

  @override
  String get traditionalOrderLabel => 'Mndandanda wachikhalidwe';

  @override
  String get alphabeticalOrderLabel => 'Mndandanda wa zilembo';

  @override
  String get bookmarksTabLabel => 'Zizindikiro';

  @override
  String get fullChapter => 'Mutu wonse';

  @override
  String get addBookmark => 'Onjezani chizindikiro';

  @override
  String get selectVerse => 'Sankhula vesi';

  @override
  String get labelOptional => 'Dzina (sikofunika)';

  @override
  String get notesOptional => 'Zolemba (sikofunika)';

  @override
  String get save => 'Sunga';

  @override
  String get goToVerse => 'Pitani ku vesi';

  @override
  String verseTitle(Object verse) {
    return 'Vesi $verse';
  }

  @override
  String chapterTitle(Object chapter) {
    return 'Mutu $chapter';
  }

  @override
  String get switchToFullChapter => 'Sinthani ku chizindikiro cha mutu wonse';

  @override
  String get bookmarkSheetCancel => 'Letsani ndikutseka tsamba la zizindikiro';

  @override
  String get pickCustomAccent => 'Sankhula mtundu wapadera';

  @override
  String get apply => 'Gwiritsani ntchito';

  @override
  String get custom => 'Wapadera';

  @override
  String get brightnessSystem => 'Sisitemu';

  @override
  String get brightnessLight => 'Kuwala';

  @override
  String get brightnessDark => 'Mdima';

  @override
  String get selectBook => 'Sankhula buku';

  @override
  String get bookmarkFilterAll => 'Zonse';

  @override
  String get bookmarkFilterUnlabeled => 'Zopanda dzina';

  @override
  String get bookmarkSortRecent => 'Zatsopano poyamba';

  @override
  String get bookmarkSortCanonical => 'Mndandanda wa mabuku a m\'Baibulo';

  @override
  String get chapterRetry => 'Yesanso';

  @override
  String get fontSize => 'Kukula kwa zilembo';

  @override
  String fontSizePixels(Object size) {
    return '$size px';
  }

  @override
  String get fontSizeSlider => 'Chosinthira kukula kwa zilembo';

  @override
  String get fontSizeSliderHint =>
      'Sungani kuti musinthe kuchokera pa 12 kufika pa 28';

  @override
  String get fontPreview =>
      '\"Pachiyambi Mulungu analenga kumwamba ndi dziko lapansi.\" — Gen 1:1';

  @override
  String get showVerseNumbersSubtitle =>
      'Onetsani manambala a mavesi pa sikirini yowerengera.';

  @override
  String get showSectionHeadingsSubtitle =>
      'Onetsani mitu ya zigawo ndi Masalimo pakati pa ndime.';

  @override
  String get wordsOfChristSubtitle =>
      'Onetsani mawu a Yesu ofiyira. Zimitsani kuti mugwiritse ntchito mtundu umodzi wa mawu.';

  @override
  String get verseFormatTitle => 'Makonzedwe a mavesi';

  @override
  String get verseFormatSubtitle =>
      'Sankhani mmene mawu a Malemba adzaonekere.';

  @override
  String get paragraphMode => 'Ndime';

  @override
  String get verseListMode => 'Mndandanda wa mavesi';

  @override
  String get paragraphModeTooltip => 'Maonekedwe a ndime';

  @override
  String get verseListModeTooltip => 'Maonekedwe a mndandanda wa mavesi';

  @override
  String get paragraphModeDescription =>
      'Mawu akuyenda mosalekeza m\'ndime zolowera mkati, monga m\'Baibulo losindikizidwa.';

  @override
  String get verseListModeDescription =>
      'Ndime iliyonse ya Malemba imayambira pamzere wake kuti magulu a mavesi aoneke mosavuta.';

  @override
  String get deleteBookmarkTooltip => 'Chotsani chizindikiro';

  @override
  String deleteBookmarkSemantics(Object reference) {
    return 'Chotsani chizindikiro $reference';
  }

  @override
  String sortBookmarksTooltip(Object sortOrder) {
    return 'Konzani: $sortOrder';
  }

  @override
  String get noBookmarksYet => 'Palibe zizindikiro panobe.';

  @override
  String get noBookmarksYetHint =>
      'Dinani chizindikiro powerenga kuti musunge malo.';

  @override
  String bookmarkReferenceNavigationError(Object reference) {
    return 'Sizinatheke kupita ku $reference.';
  }

  @override
  String themeCardSemantics(Object description, Object name, Object selected) {
    return 'Maonekedwe $name$selected. $description';
  }

  @override
  String get selectedThemeSuffix => ', lasankhidwa tsopano';

  @override
  String get customisableAccentDescription => 'Mtundu wosinthika.';

  @override
  String get fixedPaletteDescription => 'Mitundu yokhazikika.';

  @override
  String accentColourTitle(Object themeName) {
    return 'Mtundu — $themeName';
  }

  @override
  String get brightnessMode => 'MAONEKEDWE A KUWALA';

  @override
  String get lightMode => 'Maonekedwe a kuwala';

  @override
  String get followSystemMode => 'Tsatirani maonekedwe a sisitemu';

  @override
  String get darkMode => 'Maonekedwe a mdima';

  @override
  String get customColourPicker => 'Chosankhira mtundu wapadera';

  @override
  String get customColourTooltip => 'Mtundu wapadera...';

  @override
  String get couldNotLoadBooks => 'Mndandanda wa mabuku sunakwezedwe. Yesanso.';

  @override
  String chapterLabel(Object chapter) {
    return 'Mutu $chapter';
  }

  @override
  String get traditionalOrderBooks => 'Mabuku motsatira chikhalidwe';

  @override
  String get alphabeticalOrderBooks => 'Mabuku motsatira zilembo';

  @override
  String get home => 'Kunyumba';

  @override
  String get addBookmarkTooltip => 'Onjezani chizindikiro';

  @override
  String get chooseBookChapter => 'Sankhula buku ndi mutu';

  @override
  String get chooseVerse => 'Sankhula vesi';

  @override
  String get bookChapterQuickNavigation => 'Pitani mofulumira ku buku ndi mutu';

  @override
  String get verseQuickNavigation => 'Pitani mofulumira ku vesi';

  @override
  String get backToBooks => 'Bwererani ku mabuku';

  @override
  String get selectBookTitle => 'Sankhula buku';

  @override
  String selectChapterTitle(Object bookName) {
    return 'Sankhula mutu ($bookName)';
  }

  @override
  String chapterSelectionLabel(Object chapter) {
    return 'Mutu $chapter';
  }

  @override
  String verseSelectionLabel(Object verse) {
    return 'Vesi $verse';
  }

  @override
  String fullChapterReference(Object bookName, Object chapter) {
    return 'Mutu wonse: $bookName $chapter';
  }

  @override
  String get memorizeHint => 'Sungani pamtima';

  @override
  String get addNoteHint => 'Onjezani cholemba...';

  @override
  String get languageSearchHint => 'Sakani zinenero';

  @override
  String get languageModuleInstalled => 'Yayikidwa';

  @override
  String get languageModulePending => 'Kumasulira kwa makina kukuyembekezera';

  @override
  String get languageNoMatches =>
      'Palibe chinenero chogwirizana ndi kusaka kwanu.';

  @override
  String get languageCatalogDescription =>
      'Zinenero zoyikidwa zimagwira ntchito popanda intaneti. Zinenero zina zidzawonjezedwa ngati matanthauzidwe a makina.';

  @override
  String get saveBookmarkSemantics => 'Sungani chizindikiro';

  @override
  String get couldNotLoadChapter => 'Mutu sunakwezedwe. Yesanso.';

  @override
  String get couldNotLoadChapters => 'Mitu sinakwezedwe. Yesanso.';

  @override
  String verseWithText(Object text, Object verse) {
    return 'Vesi $verse: $text';
  }

  @override
  String accentSwatchSemantics(Object name, Object selected) {
    return 'Mtundu $name$selected';
  }

  @override
  String get oldTestament => 'Chipangano Chakale';

  @override
  String get newTestament => 'Chipangano Chatsopano';

  @override
  String get deuterocanonApocrypha => 'Deuterokanoni / Apokirifa';
}
