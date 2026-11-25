// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Turkmen (`tk`).
class AppLocalizationsTk extends AppLocalizations {
  AppLocalizationsTk([String locale = 'tk']) : super(locale);

  @override
  String get settingsTitle => 'Sazlamalar';

  @override
  String get languageSection => 'Dil';

  @override
  String get useSystemLanguage => 'Ulgam dilini ulan';

  @override
  String get useSystemLanguageSubtitle =>
      'Enjamyň dilini deslapky dil hökmünde ulan.';

  @override
  String get currentLanguage => 'Häzirki dil';

  @override
  String get appLanguage => 'Programma dili';

  @override
  String get chooseLanguage => 'Dil saýla';

  @override
  String get theme => 'Tema';

  @override
  String get appearance => 'Daş görnüş';

  @override
  String get textSection => 'Tekst';

  @override
  String get readingFormatSection => 'Okamak görnüşi';

  @override
  String get displaySection => 'Ekran';

  @override
  String get verseNumbers => 'Aýat belgileri';

  @override
  String get sectionHeadings => 'Bölüm atlary';

  @override
  String get redLetterText => 'Gyzyl ýazgy';

  @override
  String get selectABook => 'Kitap saýla';

  @override
  String get traditionalOrder => 'Adaty tertip';

  @override
  String get alphabeticalOrder => 'Elipbiý tertibi';

  @override
  String get bookmarks => 'Bellikler';

  @override
  String get retry => 'Gaýtadan synanyş';

  @override
  String get chooseTheme => 'Tema saýla';

  @override
  String get customisableThemes => 'Üýtgedip bolýan temalar';

  @override
  String get customisableThemesSubtitle =>
      'Aksent reňkini saýlamak üçin karta bas. \"Classic White\" Açyk, Garaňky we Ulgam görnüşlerini hem goldaýar.';

  @override
  String get setThemes => 'TAÝÝAR TEMALAR';

  @override
  String get setThemesSubtitle =>
      'Üns bilen taýýarlanan üýtgemeýän reňk toplumlary. Sazlamak gerek däl, ulanmak üçin bas.';

  @override
  String get deleteBookmarkQuestion => 'Belligi pozmalymy?';

  @override
  String get cancel => 'Goýbolsun';

  @override
  String get delete => 'Poz';

  @override
  String get bookmarkSaved => 'Bellik saklandy';

  @override
  String get couldNotDeleteBookmark => 'Belligi pozup bolmady.';

  @override
  String couldNotNavigate(Object reference) {
    return '$reference salgysyna geçip bolmady.';
  }

  @override
  String get pageNotFound => 'Sahypa tapylmady';

  @override
  String noRouteDefined(Object routeName) {
    return '\"$routeName\" üçin ýol kesgitlenmedi';
  }

  @override
  String get english => 'Iňlisçe';

  @override
  String get spanish => 'Ispança';

  @override
  String get systemDefault => 'Ulgamyň deslapky saýlawy';

  @override
  String get languageStatusEnglish =>
      'Ätiýaçlyk dil hökmünde iňlisçe ulanylýar';

  @override
  String get languageStatusSystem => 'Ulgamyň dili ulanylýar';

  @override
  String languageStatusSelected(Object languageName) {
    return 'Saýlanan dil: $languageName';
  }

  @override
  String get themeLabel => 'Tema';

  @override
  String get notFoundTitle => 'Sahypa tapylmady';

  @override
  String get loadingCyberBible => 'Cyber Bible ýüklenýär...';

  @override
  String get couldNotOpenDatabase =>
      'Mukaddes Kitap maglumatlar binýadyny açyp bolmady. Gaýtadan synanyş.';

  @override
  String get homeTagline =>
      'Mukaddes Kitaby öwrenmek üçin mugt we açyk çeşmeli programma';

  @override
  String get readTheBible => 'Mukaddes Kitaby oka';

  @override
  String get settingsTooltip => 'Sazlamalar';

  @override
  String get themeChoose => 'Tema saýla';

  @override
  String get customThemes => 'Üýtgedip bolýan temalar';

  @override
  String get customThemesSubtitle =>
      'Aksent reňkini saýlamak üçin karta bas. \"Classic White\" Açyk, Garaňky we Ulgam görnüşlerini hem goldaýar.';

  @override
  String get setThemesLabel => 'TAÝÝAR TEMALAR';

  @override
  String get deleteBookmarkDialog => 'Belligi pozmalymy?';

  @override
  String removeBookmarkMessage(Object details, Object reference) {
    return '\"$reference\"$details aýrylsynmy?\n\nBu hereketi yzyna gaýtaryp bolmaz.';
  }

  @override
  String get couldNotLoadBookmarks =>
      'Bellikleri ýükläp bolmady. Gaýtadan synanyş.';

  @override
  String get bookmarkSavedMessage => 'Bellik saklandy';

  @override
  String get couldNotSaveBookmark => 'Belligi saklap bolmady.';

  @override
  String get noBookmarksMatchFilter => 'Bu süzgüje gabat gelýän bellik ýok.';

  @override
  String get clearFilter => 'Süzgüji aýyr';

  @override
  String get traditionalOrderLabel => 'Adaty tertip';

  @override
  String get alphabeticalOrderLabel => 'Elipbiý tertibi';

  @override
  String get bookmarksTabLabel => 'Bellikler';

  @override
  String get fullChapter => 'Doly bap';

  @override
  String get addBookmark => 'Bellik goş';

  @override
  String get selectVerse => 'Aýat saýla';

  @override
  String get labelOptional => 'Bellik ady (hökmany däl)';

  @override
  String get notesOptional => 'Bellikler (hökmany däl)';

  @override
  String get save => 'Sakla';

  @override
  String get goToVerse => 'Aýata geç';

  @override
  String verseTitle(Object verse) {
    return 'Aýat $verse';
  }

  @override
  String chapterTitle(Object chapter) {
    return 'Bap $chapter';
  }

  @override
  String get switchToFullChapter => 'Doly bap belligine geçir';

  @override
  String get bookmarkSheetCancel => 'Goýbolsun et we bellikler panelini ýap';

  @override
  String get pickCustomAccent => 'Aýratyn aksent reňkini saýla';

  @override
  String get apply => 'Ulany';

  @override
  String get custom => 'Aýratyn';

  @override
  String get brightnessSystem => 'Ulgam';

  @override
  String get brightnessLight => 'Açyk';

  @override
  String get brightnessDark => 'Garaňky';

  @override
  String get selectBook => 'Kitap saýla';

  @override
  String get bookmarkFilterAll => 'Hemmesi';

  @override
  String get bookmarkFilterUnlabeled => 'Ady ýok';

  @override
  String get bookmarkSortRecent => 'Ilki täzeleri';

  @override
  String get bookmarkSortCanonical => 'Kanuny tertip';

  @override
  String get chapterRetry => 'Gaýtadan synanyş';

  @override
  String get fontSize => 'Şrift ölçegi';

  @override
  String fontSizePixels(Object size) {
    return '$size px';
  }

  @override
  String get fontSizeSlider => 'Şrift ölçegini sazlaýjy';

  @override
  String get fontSizeSliderHint =>
      '12 bilen 28 aralygynda sazlamak üçin süýşür';

  @override
  String get fontPreview =>
      '\"Ilkibaşda Hudaý gögi we ýeri ýaratdy.\" — Gelip çykyş 1:1';

  @override
  String get showVerseNumbersSubtitle =>
      'Okamak ekranynda aýat belgilerini görkez.';

  @override
  String get showSectionHeadingsSubtitle =>
      'Bölüm we Zebur atlaryny parçalaryň arasynda görkez.';

  @override
  String get wordsOfChristSubtitle =>
      'Isanyň sözlerini gyzyl görkez. Diňe bir tekst reňkini ulanmak üçin öçür.';

  @override
  String get verseFormatTitle => 'Aýatlaryň görnüşi';

  @override
  String get verseFormatSubtitle =>
      'Mukaddes Kitabyň tekstiniň ýerleşişini saýla.';

  @override
  String get paragraphMode => 'Abzas';

  @override
  String get verseListMode => 'Aýat sanawy';

  @override
  String get paragraphModeTooltip => 'Abzas görnüşi';

  @override
  String get verseListModeTooltip => 'Aýat sanawy görnüşi';

  @override
  String get paragraphModeDescription =>
      'Tekst çap edilen Mukaddes Kitapdaky ýaly yza süýşürilen abzaslarda yzygiderli akýar.';

  @override
  String get verseListModeDescription =>
      'Mukaddes Kitabyň her abzasy aýratyn setirde başlanýar, şonuň üçin aýat toparlaryny görmek aňsat.';

  @override
  String get deleteBookmarkTooltip => 'Belligi poz';

  @override
  String deleteBookmarkSemantics(Object reference) {
    return '$reference belligini poz';
  }

  @override
  String sortBookmarksTooltip(Object sortOrder) {
    return 'Tertiple: $sortOrder';
  }

  @override
  String get noBookmarksYet => 'Entäk bellik ýok.';

  @override
  String get noBookmarksYetHint =>
      'Ýeri saklamak üçin okaýan wagtyň bellik nyşanyna bas.';

  @override
  String bookmarkReferenceNavigationError(Object reference) {
    return '$reference salgysyna geçip bolmady.';
  }

  @override
  String themeCardSemantics(Object description, Object name, Object selected) {
    return '$name temasy$selected. $description';
  }

  @override
  String get selectedThemeSuffix => ', häzir saýlanan';

  @override
  String get customisableAccentDescription => 'Üýtgedip bolýan aksent reňki.';

  @override
  String get fixedPaletteDescription => 'Üýtgemeýän reňk toplumy.';

  @override
  String accentColourTitle(Object themeName) {
    return 'Aksent reňki — $themeName';
  }

  @override
  String get brightnessMode => 'ÝAGTYLYK GÖRNÜŞI';

  @override
  String get lightMode => 'Açyk görnüş';

  @override
  String get followSystemMode => 'Ulgamyň görnüşine eýer';

  @override
  String get darkMode => 'Garaňky görnüş';

  @override
  String get customColourPicker => 'Aýratyn reňk saýlaýjy';

  @override
  String get customColourTooltip => 'Aýratyn reňk...';

  @override
  String get couldNotLoadBooks =>
      'Kitaplaryň sanawyny ýükläp bolmady. Gaýtadan synanyş.';

  @override
  String chapterLabel(Object chapter) {
    return 'Bap $chapter';
  }

  @override
  String get traditionalOrderBooks => 'Adaty tertipdäki kitaplar';

  @override
  String get alphabeticalOrderBooks => 'Elipbiý tertibindäki kitaplar';

  @override
  String get home => 'Baş sahypa';

  @override
  String get addBookmarkTooltip => 'Bellik goş';

  @override
  String get chooseBookChapter => 'Kitap we bap saýla';

  @override
  String get chooseVerse => 'Aýat saýla';

  @override
  String get bookChapterQuickNavigation => 'Kitaba we baba çalt geçiş';

  @override
  String get verseQuickNavigation => 'Aýata çalt geçiş';

  @override
  String get backToBooks => 'Kitaplara dolan';

  @override
  String get selectBookTitle => 'Kitap saýla';

  @override
  String selectChapterTitle(Object bookName) {
    return 'Bap saýla ($bookName)';
  }

  @override
  String chapterSelectionLabel(Object chapter) {
    return 'Bap $chapter';
  }

  @override
  String verseSelectionLabel(Object verse) {
    return 'Aýat $verse';
  }

  @override
  String fullChapterReference(Object bookName, Object chapter) {
    return 'Doly bap: $bookName $chapter';
  }

  @override
  String get memorizeHint => 'Ýat tut';

  @override
  String get addNoteHint => 'Bellik goş...';

  @override
  String get languageSearchHint => 'Dilleri gözle';

  @override
  String get languageModuleInstalled => 'Gurnalan';

  @override
  String get languageModulePending => 'Maşyn terjimesine garaşylýar';

  @override
  String get languageNoMatches => 'Gözlegiňe laýyk dil ýok.';

  @override
  String get languageCatalogDescription =>
      'Gurnalan diller internetsiz işleýär. Beýleki diller maşyn terjimesi hökmünde goşular.';

  @override
  String get saveBookmarkSemantics => 'Belligi sakla';

  @override
  String get couldNotLoadChapter => 'Baby ýükläp bolmady. Gaýtadan synanyş.';

  @override
  String get couldNotLoadChapters =>
      'Baplary ýükläp bolmady. Gaýtadan synanyş.';

  @override
  String verseWithText(Object text, Object verse) {
    return 'Aýat $verse: $text';
  }

  @override
  String accentSwatchSemantics(Object name, Object selected) {
    return '$name aksent reňki$selected';
  }

  @override
  String get oldTestament => 'Köne Äht';

  @override
  String get newTestament => 'Täze Äht';

  @override
  String get deuterocanonApocrypha => 'Deýterokanon / Apokrif';
}
