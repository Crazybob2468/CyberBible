// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Morisyen (`mfe`).
class AppLocalizationsMfe extends AppLocalizations {
  AppLocalizationsMfe([String locale = 'mfe']) : super(locale);

  @override
  String get settingsTitle => 'Paramet';

  @override
  String get languageSection => 'Lang';

  @override
  String get useSystemLanguage => 'Servi lang sistem';

  @override
  String get useSystemLanguageSubtitle =>
      'Servi lang telefonn kouma lang par defo.';

  @override
  String get currentLanguage => 'Lang aktyel';

  @override
  String get appLanguage => 'Lang aplikasyon';

  @override
  String get chooseLanguage => 'Swazir enn lang';

  @override
  String get theme => 'Tem';

  @override
  String get appearance => 'Laparans';

  @override
  String get textSection => 'Tekst';

  @override
  String get readingFormatSection => 'Form lekter';

  @override
  String get displaySection => 'Lafisaz';

  @override
  String get verseNumbers => 'Nimer verse';

  @override
  String get sectionHeadings => 'Tit seksion';

  @override
  String get redLetterText => 'Tekst an rouz';

  @override
  String get selectABook => 'Swazir enn liv';

  @override
  String get traditionalOrder => 'Lord tradisionel';

  @override
  String get alphabeticalOrder => 'Lord alfabetik';

  @override
  String get bookmarks => 'Signet';

  @override
  String get retry => 'Esey ankor';

  @override
  String get chooseTheme => 'Swazir enn tem';

  @override
  String get customisableThemes => 'Tem ki kapav adapte';

  @override
  String get customisableThemesSubtitle =>
      'Tap lor enn kart pou swazir enn kouler aksan. \"Classic White\" osi soutenir bann mod kler, nwar ek sistem.';

  @override
  String get setThemes => 'TEM FIX';

  @override
  String get setThemesSubtitle =>
      'Bann palet kouler fix ki’nn fer avek swin. Pena nanye pou adapte; tap pou aplik li.';

  @override
  String get deleteBookmarkQuestion => 'Efas signet?';

  @override
  String get cancel => 'Anile';

  @override
  String get delete => 'Efas';

  @override
  String get bookmarkSaved => 'Signet anrezistre';

  @override
  String get couldNotDeleteBookmark => 'Pa’nn kapav efas signet.';

  @override
  String couldNotNavigate(Object reference) {
    return 'Pa’nn kapav al lor $reference.';
  }

  @override
  String get pageNotFound => 'Pa’nn trouv paz-la';

  @override
  String noRouteDefined(Object routeName) {
    return 'Pena sime defini pou \"$routeName\"';
  }

  @override
  String get english => 'Angle';

  @override
  String get spanish => 'Espagnol';

  @override
  String get systemDefault => 'Defo sistem';

  @override
  String get languageStatusEnglish => 'Pe servi angle kouma lang sekour';

  @override
  String get languageStatusSystem => 'Pe servi lang sistem';

  @override
  String languageStatusSelected(Object languageName) {
    return 'Lang ki’nn swazir: $languageName';
  }

  @override
  String get themeLabel => 'Tem';

  @override
  String get notFoundTitle => 'Pa’nn trouv paz-la';

  @override
  String get loadingCyberBible => 'Pe sarz Labib Sibèr...';

  @override
  String get couldNotOpenDatabase =>
      'Pa’nn kapav ouver bazdone Labib. Esey ankor.';

  @override
  String get homeTagline => 'Enn aplikasion letid Labib gratwi ek so kod ouver';

  @override
  String get readTheBible => 'Lir Labib';

  @override
  String get settingsTooltip => 'Paramet';

  @override
  String get themeChoose => 'Swazir enn tem';

  @override
  String get customThemes => 'Tem ki kapav adapte';

  @override
  String get customThemesSubtitle =>
      'Tap lor enn kart pou swazir enn kouler aksan. \"Classic White\" osi soutenir bann mod kler, nwar ek sistem.';

  @override
  String get setThemesLabel => 'TEM FIX';

  @override
  String get deleteBookmarkDialog => 'Efas signet?';

  @override
  String removeBookmarkMessage(Object details, Object reference) {
    return 'Retir \"$reference\"$details?\n\nPa pou kapav defeir sa aksion-la.';
  }

  @override
  String get couldNotLoadBookmarks =>
      'Pa’nn kapav sarz bann signet. Esey ankor.';

  @override
  String get bookmarkSavedMessage => 'Signet anrezistre';

  @override
  String get couldNotSaveBookmark => 'Pa’nn kapav anrezistr signet.';

  @override
  String get noBookmarksMatchFilter =>
      'Pena signet ki koresponn ar sa filt-la.';

  @override
  String get clearFilter => 'Efase filt-la';

  @override
  String get traditionalOrderLabel => 'Lord tradisionel';

  @override
  String get alphabeticalOrderLabel => 'Lord alfabetik';

  @override
  String get bookmarksTabLabel => 'Signet';

  @override
  String get fullChapter => 'Sapitr konplet';

  @override
  String get addBookmark => 'Azout signet';

  @override
  String get selectVerse => 'Swazir enn verse';

  @override
  String get labelOptional => 'Etiket (opsionel)';

  @override
  String get notesOptional => 'Not (opsionel)';

  @override
  String get save => 'Anrezistre';

  @override
  String get goToVerse => 'Al lor verse';

  @override
  String verseTitle(Object verse) {
    return 'Verse $verse';
  }

  @override
  String chapterTitle(Object chapter) {
    return 'Sapitr $chapter';
  }

  @override
  String get switchToFullChapter => 'Sanz pou signet sapitr konplet';

  @override
  String get bookmarkSheetCancel => 'Anile ek ferm panie signet';

  @override
  String get pickCustomAccent => 'Swazir kouler aksan personel';

  @override
  String get apply => 'Aplik';

  @override
  String get custom => 'Personel';

  @override
  String get brightnessSystem => 'Sistem';

  @override
  String get brightnessLight => 'Kler';

  @override
  String get brightnessDark => 'Nwar';

  @override
  String get selectBook => 'Swazir enn liv';

  @override
  String get bookmarkFilterAll => 'Tou';

  @override
  String get bookmarkFilterUnlabeled => 'San etiket';

  @override
  String get bookmarkSortRecent => 'Dernie avan';

  @override
  String get bookmarkSortCanonical => 'Lord kanonik';

  @override
  String get chapterRetry => 'Esey ankor';

  @override
  String get fontSize => 'Groser lekritir';

  @override
  String fontSizePixels(Object size) {
    return '$size px';
  }

  @override
  String get fontSizeSlider => 'Regl groser lekritir';

  @override
  String get fontSizeSliderHint => 'Glis pou adapte depi 12 ziska 28';

  @override
  String get fontPreview =>
      '\"O koumansman Bondie ti kree lesiel ek later.\" — Zen 1:1';

  @override
  String get showVerseNumbersSubtitle =>
      'Montre nimero verse lor lekran lektir.';

  @override
  String get showSectionHeadingsSubtitle =>
      'Montre tit seksion ek Psom ant bann pasaz.';

  @override
  String get wordsOfChristSubtitle =>
      'Montre parol Zezi an rouz. Eteign sa pou servi enn sel kouler tekst.';

  @override
  String get verseFormatTitle => 'Form verse';

  @override
  String get verseFormatSubtitle => 'Swazir kouma pou dispoz tekst Lekritir.';

  @override
  String get paragraphMode => 'Paragraf';

  @override
  String get verseListMode => 'Lalis verse';

  @override
  String get paragraphModeTooltip => 'Mod paragraf';

  @override
  String get verseListModeTooltip => 'Mod lalis verse';

  @override
  String get paragraphModeDescription =>
      'Tekst-la kontinie koule dan paragraf ki’nn rantre, parey kouma dan enn Labib inprime.';

  @override
  String get verseListModeDescription =>
      'Sak paragraf Lekritir koumans lor so prop lalinn, pou trouv bann group verse pli fasil.';

  @override
  String get deleteBookmarkTooltip => 'Efas signet';

  @override
  String deleteBookmarkSemantics(Object reference) {
    return 'Efas signet $reference';
  }

  @override
  String sortBookmarksTooltip(Object sortOrder) {
    return 'Triye: $sortOrder';
  }

  @override
  String get noBookmarksYet => 'Pena signet ziska ler.';

  @override
  String get noBookmarksYetHint =>
      'Tap lor ikon signet kan to pe lir pou anrezistre enn plas.';

  @override
  String bookmarkReferenceNavigationError(Object reference) {
    return 'Pa’nn kapav al lor $reference.';
  }

  @override
  String themeCardSemantics(Object description, Object name, Object selected) {
    return 'Tem $name$selected. $description';
  }

  @override
  String get selectedThemeSuffix => ', swazir aster-la';

  @override
  String get customisableAccentDescription => 'Kouler aksan ki kapav adapte.';

  @override
  String get fixedPaletteDescription => 'Palet kouler fix.';

  @override
  String accentColourTitle(Object themeName) {
    return 'Kouler aksan — $themeName';
  }

  @override
  String get brightnessMode => 'MOD LUMINOSITE';

  @override
  String get lightMode => 'Mod kler';

  @override
  String get followSystemMode => 'Swiv mod sistem';

  @override
  String get darkMode => 'Mod nwar';

  @override
  String get customColourPicker => 'Swazir kouler personel';

  @override
  String get customColourTooltip => 'Kouler personel...';

  @override
  String get couldNotLoadBooks =>
      'Pa’nn kapav sarz lalis bann liv. Esey ankor.';

  @override
  String chapterLabel(Object chapter) {
    return 'Sapitr $chapter';
  }

  @override
  String get traditionalOrderBooks => 'Bann liv dan lord tradisionel';

  @override
  String get alphabeticalOrderBooks => 'Bann liv dan lord alfabetik';

  @override
  String get home => 'Lakaz';

  @override
  String get addBookmarkTooltip => 'Azout signet';

  @override
  String get chooseBookChapter => 'Swazir liv ek sapitr';

  @override
  String get chooseVerse => 'Swazir verse';

  @override
  String get bookChapterQuickNavigation => 'Navigasion vit pou liv ek sapitr';

  @override
  String get verseQuickNavigation => 'Navigasion vit pou verse';

  @override
  String get backToBooks => 'Retourn ar bann liv';

  @override
  String get selectBookTitle => 'Swazir enn liv';

  @override
  String selectChapterTitle(Object bookName) {
    return 'Swazir sapitr ($bookName)';
  }

  @override
  String chapterSelectionLabel(Object chapter) {
    return 'Sapitr $chapter';
  }

  @override
  String verseSelectionLabel(Object verse) {
    return 'Verse $verse';
  }

  @override
  String fullChapterReference(Object bookName, Object chapter) {
    return 'Sapitr konplet: $bookName $chapter';
  }

  @override
  String get memorizeHint => 'Aprann par ker';

  @override
  String get addNoteHint => 'Azout enn not...';

  @override
  String get languageSearchHint => 'Rod bann lang';

  @override
  String get languageModuleInstalled => 'Instale';

  @override
  String get languageModulePending => 'Pe atann tradiksion otomatik';

  @override
  String get languageNoMatches => 'Pena lang ki koresponn ar to resers.';

  @override
  String get languageCatalogDescription =>
      'Bann lang ki’nn instale marse san internet. Pou azout lezot lang kouma modil tradir otomatik.';

  @override
  String get saveBookmarkSemantics => 'Anrezistre signet';

  @override
  String get couldNotLoadChapter => 'Pa’nn kapav sarz sapitr. Esey ankor.';

  @override
  String get couldNotLoadChapters =>
      'Pa’nn kapav sarz bann sapitr. Esey ankor.';

  @override
  String verseWithText(Object text, Object verse) {
    return 'Verse $verse: $text';
  }

  @override
  String accentSwatchSemantics(Object name, Object selected) {
    return 'Kouler aksan $name$selected';
  }

  @override
  String get oldTestament => 'Ansyen Testaman';

  @override
  String get newTestament => 'Nouvo Testaman';

  @override
  String get deuterocanonApocrypha => 'Deuterokanon / Apokrif';
}
