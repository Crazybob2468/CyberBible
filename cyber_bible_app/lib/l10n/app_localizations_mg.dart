// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Malagasy (`mg`).
class AppLocalizationsMg extends AppLocalizations {
  AppLocalizationsMg([String locale = 'mg']) : super(locale);

  @override
  String get settingsTitle => 'Fikirana';

  @override
  String get languageSection => 'Fiteny';

  @override
  String get useSystemLanguage => 'Ampiasao ny fitenin\'ny rafitra';

  @override
  String get useSystemLanguageSubtitle =>
      'Araho ny fitenin\'ny fitaovana ho fiteny fototra.';

  @override
  String get currentLanguage => 'Fiteny ampiasaina izao';

  @override
  String get appLanguage => 'Fitenin\'ny rindranasa';

  @override
  String get chooseLanguage => 'Misafidiana fiteny';

  @override
  String get theme => 'Lohahevitra';

  @override
  String get appearance => 'Endrika';

  @override
  String get textSection => 'Lahatsoratra';

  @override
  String get readingFormatSection => 'Fomba famakiana';

  @override
  String get displaySection => 'Fampisehoana';

  @override
  String get verseNumbers => 'Laharan\'ny andininy';

  @override
  String get sectionHeadings => 'Lohatenin\'ny fizarana';

  @override
  String get redLetterText => 'Lahatsoratra mena';

  @override
  String get selectABook => 'Misafidiana boky';

  @override
  String get traditionalOrder => 'Filaharana nentim-paharazana';

  @override
  String get alphabeticalOrder => 'Filaharana abidy';

  @override
  String get bookmarks => 'Mari-pejy';

  @override
  String get retry => 'Andramo indray';

  @override
  String get chooseTheme => 'Misafidiana lohahevitra';

  @override
  String get customisableThemes => 'Lohahevitra azo amboarina';

  @override
  String get customisableThemesSubtitle =>
      'Tsindrio ny karatra hisafidianana loko fanasongadinana. Manohana ny fomba Mazava, Maizina ary Rafitra koa ny \"Classic White\".';

  @override
  String get setThemes => 'LOHAHEVITRA RAITRA';

  @override
  String get setThemesSubtitle =>
      'Loko raikitra noforonina manokana. Tsy mila fanamboarana; tsindrio hampiharana.';

  @override
  String get deleteBookmarkQuestion => 'Fafana ve ny mari-pejy?';

  @override
  String get cancel => 'Aoka ihany';

  @override
  String get delete => 'Fafao';

  @override
  String get bookmarkSaved => 'Voatahiry ny mari-pejy';

  @override
  String get couldNotDeleteBookmark => 'Tsy azo nofafana ny mari-pejy.';

  @override
  String couldNotNavigate(Object reference) {
    return 'Tsy afaka nankany amin\'ny $reference.';
  }

  @override
  String get pageNotFound => 'Tsy hita ny pejy';

  @override
  String noRouteDefined(Object routeName) {
    return 'Tsy misy lalana voafaritra ho an\'ny \"$routeName\"';
  }

  @override
  String get english => 'Anglisy';

  @override
  String get spanish => 'Espaniola';

  @override
  String get systemDefault => 'Fiteny fototry ny rafitra';

  @override
  String get languageStatusEnglish => 'Fiteny anglisy no ampiasaina ho solony';

  @override
  String get languageStatusSystem => 'Fitenin\'ny rafitra no ampiasaina';

  @override
  String languageStatusSelected(Object languageName) {
    return 'Fiteny voafidy: $languageName';
  }

  @override
  String get themeLabel => 'Lohahevitra';

  @override
  String get notFoundTitle => 'Tsy hita ny pejy';

  @override
  String get loadingCyberBible => 'Mampiditra ny Baiboly Elektronika...';

  @override
  String get couldNotOpenDatabase =>
      'Tsy afaka nanokatra ny tahiry Baiboly. Andramo indray.';

  @override
  String get homeTagline =>
      'Rindranasa fianarana Baiboly maimaim-poana sady loharano misokatra';

  @override
  String get readTheBible => 'Vakio ny Baiboly';

  @override
  String get settingsTooltip => 'Fikirana';

  @override
  String get themeChoose => 'Misafidiana lohahevitra';

  @override
  String get customThemes => 'Lohahevitra azo amboarina';

  @override
  String get customThemesSubtitle =>
      'Tsindrio ny karatra hisafidianana loko fanasongadinana. Manohana ny fomba Mazava, Maizina ary Rafitra koa ny \"Classic White\".';

  @override
  String get setThemesLabel => 'LOHAHEVITRA RAITRA';

  @override
  String get deleteBookmarkDialog => 'Fafana ve ny mari-pejy?';

  @override
  String removeBookmarkMessage(Object details, Object reference) {
    return 'Esorina ve ny \"$reference\"$details?\n\nTsy azo averina izany.';
  }

  @override
  String get couldNotLoadBookmarks =>
      'Tsy afaka nampiditra ny mari-pejy. Andramo indray.';

  @override
  String get bookmarkSavedMessage => 'Voatahiry ny mari-pejy';

  @override
  String get couldNotSaveBookmark => 'Tsy afaka nitahiry ny mari-pejy.';

  @override
  String get noBookmarksMatchFilter =>
      'Tsy misy mari-pejy mifanaraka amin\'ity sivana ity.';

  @override
  String get clearFilter => 'Esory ny sivana';

  @override
  String get traditionalOrderLabel => 'Filaharana nentim-paharazana';

  @override
  String get alphabeticalOrderLabel => 'Filaharana abidy';

  @override
  String get bookmarksTabLabel => 'Mari-pejy';

  @override
  String get fullChapter => 'Toko iray manontolo';

  @override
  String get addBookmark => 'Asio mari-pejy';

  @override
  String get selectVerse => 'Misafidiana andininy';

  @override
  String get labelOptional => 'Marika (tsy voatery)';

  @override
  String get notesOptional => 'Fanamarihana (tsy voatery)';

  @override
  String get save => 'Tehirizo';

  @override
  String get goToVerse => 'Mankanesa amin\'ny andininy';

  @override
  String verseTitle(Object verse) {
    return 'Andininy $verse';
  }

  @override
  String chapterTitle(Object chapter) {
    return 'Toko $chapter';
  }

  @override
  String get switchToFullChapter => 'Ovay ho mari-pejy toko iray manontolo';

  @override
  String get bookmarkSheetCancel => 'Aoka ihany, akatona ny takelaka mari-pejy';

  @override
  String get pickCustomAccent => 'Misafidiana loko fanasongadinana manokana';

  @override
  String get apply => 'Ampiharo';

  @override
  String get custom => 'Manokana';

  @override
  String get brightnessSystem => 'Rafitra';

  @override
  String get brightnessLight => 'Mazava';

  @override
  String get brightnessDark => 'Maizina';

  @override
  String get selectBook => 'Misafidiana boky';

  @override
  String get bookmarkFilterAll => 'Rehetra';

  @override
  String get bookmarkFilterUnlabeled => 'Tsy misy marika';

  @override
  String get bookmarkSortRecent => 'Ny vaovao indrindra aloha';

  @override
  String get bookmarkSortCanonical => 'Filaharana ara-baiboly';

  @override
  String get chapterRetry => 'Andramo indray';

  @override
  String get fontSize => 'Haben\'ny endri-tsoratra';

  @override
  String fontSizePixels(Object size) {
    return '$size px';
  }

  @override
  String get fontSizeSlider => 'Fanaraha-maso ny haben\'ny endri-tsoratra';

  @override
  String get fontSizeSliderHint =>
      'Afindrao hanovana ny habeny eo anelanelan\'ny 12 sy 28';

  @override
  String get fontPreview =>
      '\"Tamin\'ny voalohany Andriamanitra nahary ny lanitra sy ny tany.\" — Gen 1:1';

  @override
  String get showVerseNumbersSubtitle =>
      'Asehoy eo amin\'ny efijery famakiana ny laharan\'ny andininy.';

  @override
  String get showSectionHeadingsSubtitle =>
      'Asehoy eo anelanelan\'ny andalan-teny ny lohatenin\'ny fizarana sy ny Salamo.';

  @override
  String get wordsOfChristSubtitle =>
      'Asehoy amin\'ny mena ny tenin\'i Jesosy. Vonoy raha loko iray ihany no tianao.';

  @override
  String get verseFormatTitle => 'Fomba fandaminana andininy';

  @override
  String get verseFormatSubtitle =>
      'Safidio ny fandaminana ny lahatsoratry ny Soratra Masina.';

  @override
  String get paragraphMode => 'Fehintsoratra';

  @override
  String get verseListMode => 'Lisitr\'andininy';

  @override
  String get paragraphModeTooltip => 'Fomba fehintsoratra';

  @override
  String get verseListModeTooltip => 'Fomba lisitr\'andininy';

  @override
  String get paragraphModeDescription =>
      'Mikoriana mitohy ao anaty fehintsoratra mihemotra ny lahatsoratra, toy ny Baiboly vita pirinty.';

  @override
  String get verseListModeDescription =>
      'Manomboka amin\'ny andalana manokana ny fehintsoratra tsirairay, ka mora hita ny vondron\'andininy.';

  @override
  String get deleteBookmarkTooltip => 'Fafao ny mari-pejy';

  @override
  String deleteBookmarkSemantics(Object reference) {
    return 'Fafao ny mari-pejy $reference';
  }

  @override
  String sortBookmarksTooltip(Object sortOrder) {
    return 'Fandaminana: $sortOrder';
  }

  @override
  String get noBookmarksYet => 'Mbola tsy misy mari-pejy.';

  @override
  String get noBookmarksYetHint =>
      'Tsindrio ny kisary mari-pejy eo am-pamakiana mba hitahirizana toerana.';

  @override
  String bookmarkReferenceNavigationError(Object reference) {
    return 'Tsy afaka nankany amin\'ny $reference.';
  }

  @override
  String themeCardSemantics(Object description, Object name, Object selected) {
    return 'Lohahevitra $name$selected. $description';
  }

  @override
  String get selectedThemeSuffix => ', voafidy izao';

  @override
  String get customisableAccentDescription =>
      'Loko fanasongadinana azo amboarina.';

  @override
  String get fixedPaletteDescription => 'Loko raikitra.';

  @override
  String accentColourTitle(Object themeName) {
    return 'Loko fanasongadinana — $themeName';
  }

  @override
  String get brightnessMode => 'FOMBA FAHAZAVANA';

  @override
  String get lightMode => 'Fomba mazava';

  @override
  String get followSystemMode => 'Araho ny fomba ampiasain\'ny rafitra';

  @override
  String get darkMode => 'Fomba maizina';

  @override
  String get customColourPicker => 'Mpifidy loko manokana';

  @override
  String get customColourTooltip => 'Loko manokana...';

  @override
  String get couldNotLoadBooks =>
      'Tsy afaka nampiditra ny lisitry ny boky. Andramo indray.';

  @override
  String chapterLabel(Object chapter) {
    return 'Toko $chapter';
  }

  @override
  String get traditionalOrderBooks =>
      'Boky araka ny filaharana nentim-paharazana';

  @override
  String get alphabeticalOrderBooks => 'Boky araka ny filaharana abidy';

  @override
  String get home => 'Fandraisana';

  @override
  String get addBookmarkTooltip => 'Asio mari-pejy';

  @override
  String get chooseBookChapter => 'Misafidiana boky sy toko';

  @override
  String get chooseVerse => 'Misafidiana andininy';

  @override
  String get bookChapterQuickNavigation =>
      'Fandehanana haingana amin\'ny boky sy toko';

  @override
  String get verseQuickNavigation => 'Fandehanana haingana amin\'ny andininy';

  @override
  String get backToBooks => 'Hiverina amin\'ny boky';

  @override
  String get selectBookTitle => 'Misafidiana boky';

  @override
  String selectChapterTitle(Object bookName) {
    return 'Misafidiana toko ($bookName)';
  }

  @override
  String chapterSelectionLabel(Object chapter) {
    return 'Toko $chapter';
  }

  @override
  String verseSelectionLabel(Object verse) {
    return 'Andininy $verse';
  }

  @override
  String fullChapterReference(Object bookName, Object chapter) {
    return 'Toko manontolo: $bookName $chapter';
  }

  @override
  String get memorizeHint => 'Ataovy tsianjery';

  @override
  String get addNoteHint => 'Manampia fanamarihana...';

  @override
  String get languageSearchHint => 'Mitadiava fiteny';

  @override
  String get languageModuleInstalled => 'Efa napetraka';

  @override
  String get languageModulePending => 'Miandry fandikan-teny mandeha ho azy';

  @override
  String get languageNoMatches =>
      'Tsy misy fiteny mifanaraka amin\'ny fikarohanao.';

  @override
  String get languageCatalogDescription =>
      'Miasa tsy misy aterineto ny fiteny napetraka. Hampiana ho môdily voadika ho azy ny fiteny hafa.';

  @override
  String get saveBookmarkSemantics => 'Tehirizo ny mari-pejy';

  @override
  String get couldNotLoadChapter =>
      'Tsy afaka nampiditra ny toko. Andramo indray.';

  @override
  String get couldNotLoadChapters =>
      'Tsy afaka nampiditra ny toko. Andramo indray.';

  @override
  String verseWithText(Object text, Object verse) {
    return 'Andininy $verse: $text';
  }

  @override
  String accentSwatchSemantics(Object name, Object selected) {
    return 'Loko fanasongadinana $name$selected';
  }

  @override
  String get oldTestament => 'Testamenta Taloha';

  @override
  String get newTestament => 'Testamenta Vaovao';

  @override
  String get deuterocanonApocrypha => 'Deoterokanona / Apokrifa';
}
