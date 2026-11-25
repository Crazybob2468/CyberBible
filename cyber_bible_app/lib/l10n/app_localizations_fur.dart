// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Friulian (`fur`).
class AppLocalizationsFur extends AppLocalizations {
  AppLocalizationsFur([String locale = 'fur']) : super(locale);

  @override
  String get settingsTitle => 'Impostazions';

  @override
  String get languageSection => 'Lenghe';

  @override
  String get useSystemLanguage => 'Dopre la lenghe dal sisteme';

  @override
  String get useSystemLanguageSubtitle =>
      'Parie la lenghe dal dispositîf come predefinide.';

  @override
  String get currentLanguage => 'Lenghe corinte';

  @override
  String get appLanguage => 'Lenghe de aplicazion';

  @override
  String get chooseLanguage => 'Sielç la lenghe';

  @override
  String get theme => 'Teme';

  @override
  String get appearance => 'Aspiet';

  @override
  String get textSection => 'Test';

  @override
  String get readingFormatSection => 'Formât di leture';

  @override
  String get displaySection => 'Visualizazion';

  @override
  String get verseNumbers => 'Numars dai versets';

  @override
  String get sectionHeadings => 'Titui des sezions';

  @override
  String get redLetterText => 'Test in ros';

  @override
  String get selectABook => 'Sielç un libri';

  @override
  String get traditionalOrder => 'Ordin tradicionâl';

  @override
  String get alphabeticalOrder => 'Ordin alfabetic';

  @override
  String get bookmarks => 'Segnelibris';

  @override
  String get retry => 'Torne prove';

  @override
  String get chooseTheme => 'Sielç il teme';

  @override
  String get customisableThemes => 'Temis personalizabii';

  @override
  String get customisableThemesSubtitle =>
      'Toche une cjadree par sielzi un colôr di acent. \"Classic White\" al supuarte ancje lis modalitâts Clâr, Scûr e Sisteme.';

  @override
  String get setThemes => 'STABILÌS TEMIS';

  @override
  String get setThemesSubtitle =>
      'Paletis fissis, fatis a man. Nol covente personalizâ: tocje par aplicâ.';

  @override
  String get deleteBookmarkQuestion => 'Eliminâ il segnelibri?';

  @override
  String get cancel => 'Anule';

  @override
  String get delete => 'Elimine';

  @override
  String get bookmarkSaved => 'Segnelibri salvât';

  @override
  String get couldNotDeleteBookmark => 'Impussibil eliminâ il segnelibri.';

  @override
  String couldNotNavigate(Object reference) {
    return 'Impussibil lâ a $reference.';
  }

  @override
  String get pageNotFound => 'Pagjine no cjatade';

  @override
  String noRouteDefined(Object routeName) {
    return 'Nissun percors definît par \"$routeName\"';
  }

  @override
  String get english => 'Inglês';

  @override
  String get spanish => 'Spagnûl';

  @override
  String get systemDefault => 'Predefinît dal sisteme';

  @override
  String get languageStatusEnglish => 'Ripieg su inglês atîf';

  @override
  String get languageStatusSystem => 'Daûr de lenghe dal sisteme';

  @override
  String languageStatusSelected(Object languageName) {
    return 'Lenghe selezionade: $languageName';
  }

  @override
  String get themeLabel => 'Teme';

  @override
  String get notFoundTitle => 'Pagjine no cjatade';

  @override
  String get loadingCyberBible => 'Daûr a cjariâ Cyber Bible...';

  @override
  String get couldNotOpenDatabase =>
      'Impussibil vierzi la base di dâts de Bibie. Torne prove.';

  @override
  String get homeTagline =>
      'Une aplicazion libare e open source par studiâ la Bibie';

  @override
  String get readTheBible => 'Lei la Bibie';

  @override
  String get settingsTooltip => 'Impostazions';

  @override
  String get themeChoose => 'Sielç il teme';

  @override
  String get customThemes => 'Temis personalizabii';

  @override
  String get customThemesSubtitle =>
      'Toche une cjadree par sielzi un colôr di acent. \"Classic White\" al supuarte ancje lis modalitâts Clâr, Scûr e Sisteme.';

  @override
  String get setThemesLabel => 'STABILÌS TEMIS';

  @override
  String get deleteBookmarkDialog => 'Eliminâ il segnelibri?';

  @override
  String removeBookmarkMessage(Object details, Object reference) {
    return 'Gjave \"$reference\"$details?\n\nNo si pues anulâ.';
  }

  @override
  String get couldNotLoadBookmarks =>
      'Impussibil cjariâ i segnelibris. Torne prove.';

  @override
  String get bookmarkSavedMessage => 'Segnelibri salvât';

  @override
  String get couldNotSaveBookmark => 'Impussibil salvâ il segnelibri.';

  @override
  String get noBookmarksMatchFilter =>
      'Nissun segnelibri al corispuint al filtri.';

  @override
  String get clearFilter => 'Nete il filtri';

  @override
  String get traditionalOrderLabel => 'Ordin tradicionâl';

  @override
  String get alphabeticalOrderLabel => 'Ordin alfabetic';

  @override
  String get bookmarksTabLabel => 'Segnelibris';

  @override
  String get fullChapter => 'Cjapitul intîr';

  @override
  String get addBookmark => 'Zonte segnelibri';

  @override
  String get selectVerse => 'Sielç verset';

  @override
  String get labelOptional => 'Etichete (opzionâl)';

  @override
  String get notesOptional => 'Notis (opzionâls)';

  @override
  String get save => 'Salve';

  @override
  String get goToVerse => 'Va al verset';

  @override
  String verseTitle(Object verse) {
    return 'Verset $verse';
  }

  @override
  String chapterTitle(Object chapter) {
    return 'Cjapitul $chapter';
  }

  @override
  String get switchToFullChapter => 'Passe al segnelibri dal cjapitul intîr';

  @override
  String get bookmarkSheetCancel => 'Anule, siere il sfuei dai segnelibris';

  @override
  String get pickCustomAccent => 'Sielç un acent personalizât';

  @override
  String get apply => 'Apliche';

  @override
  String get custom => 'Personalizât';

  @override
  String get brightnessSystem => 'Sisteme';

  @override
  String get brightnessLight => 'Clâr';

  @override
  String get brightnessDark => 'Scûr';

  @override
  String get selectBook => 'Sielç un libri';

  @override
  String get bookmarkFilterAll => 'Ducj';

  @override
  String get bookmarkFilterUnlabeled => 'Cence etichete';

  @override
  String get bookmarkSortRecent => 'I plui resints prime';

  @override
  String get bookmarkSortCanonical => 'Ordin canonic';

  @override
  String get chapterRetry => 'Torne prove';

  @override
  String get fontSize => 'Dimension dal caratar';

  @override
  String fontSizePixels(Object size) {
    return '$size px';
  }

  @override
  String get fontSizeSlider => 'Cursôr de dimension dal caratar';

  @override
  String get fontSizeSliderHint => 'Strisse par regolâ di 12 a 28';

  @override
  String get fontPreview =>
      '\"Tal imprin Diu al creà il cîl e la tiere.\" — Gen 1:1';

  @override
  String get showVerseNumbersSubtitle =>
      'Mostre i numars dai versets in apîç te schermade di leture.';

  @override
  String get showSectionHeadingsSubtitle =>
      'Mostre i titui des sezions e dai Salms tra i passaçs.';

  @override
  String get wordsOfChristSubtitle =>
      'Mostre in ros lis peraulis di Jesù. Disative par vê un unic colôr dal test.';

  @override
  String get verseFormatTitle => 'Formât dai versets';

  @override
  String get verseFormatSubtitle => 'Sielç cemût disponi il test de Scriture.';

  @override
  String get paragraphMode => 'Paragraf';

  @override
  String get verseListMode => 'Liste dai versets';

  @override
  String get paragraphModeTooltip => 'Modalitât paragraf';

  @override
  String get verseListModeTooltip => 'Modalitât liste dai versets';

  @override
  String get paragraphModeDescription =>
      'Il test al fluis continuamentri cun parafs indentâts, come une Bibie stampade.';

  @override
  String get verseListModeDescription =>
      'Ogni paragraf de Scriture al tache suntune linie separade, par viodi miôr i grups di versets.';

  @override
  String get deleteBookmarkTooltip => 'Elimine segnelibri';

  @override
  String deleteBookmarkSemantics(Object reference) {
    return 'Elimine segnelibri $reference';
  }

  @override
  String sortBookmarksTooltip(Object sortOrder) {
    return 'Ordene: $sortOrder';
  }

  @override
  String get noBookmarksYet => 'Ancjemò nissun segnelibri.';

  @override
  String get noBookmarksYetHint =>
      'Toche la icone dal segnelibri intant che tu leisis par salvâ une posizion.';

  @override
  String bookmarkReferenceNavigationError(Object reference) {
    return 'Impussibil lâ a $reference.';
  }

  @override
  String themeCardSemantics(Object description, Object name, Object selected) {
    return 'Teme $name$selected. $description';
  }

  @override
  String get selectedThemeSuffix => ', selezionât cumò';

  @override
  String get customisableAccentDescription => 'Colôr di acent personalizabil.';

  @override
  String get fixedPaletteDescription => 'Palete fisse.';

  @override
  String accentColourTitle(Object themeName) {
    return 'Colôr di acent — $themeName';
  }

  @override
  String get brightnessMode => 'MODALITÂT LUMINOSE';

  @override
  String get lightMode => 'Modalitât clare';

  @override
  String get followSystemMode => 'Daûr de modalitât dal sisteme';

  @override
  String get darkMode => 'Modalitât scure';

  @override
  String get customColourPicker => 'Seletôr di colôr personalizât';

  @override
  String get customColourTooltip => 'Colôr personalizât…';

  @override
  String get couldNotLoadBooks =>
      'Impussibil cjariâ la liste dai libris. Torne prove.';

  @override
  String chapterLabel(Object chapter) {
    return 'Cjapitul $chapter';
  }

  @override
  String get traditionalOrderBooks => 'Libris in ordin tradicionâl';

  @override
  String get alphabeticalOrderBooks => 'Libris in ordin alfabetic';

  @override
  String get home => 'Cjase';

  @override
  String get addBookmarkTooltip => 'Zonte segnelibri';

  @override
  String get chooseBookChapter => 'Sielç libri e cjapitul';

  @override
  String get chooseVerse => 'Sielç verset';

  @override
  String get bookChapterQuickNavigation =>
      'Navigazion svelte par libri e cjapitul';

  @override
  String get verseQuickNavigation => 'Navigazion svelte par verset';

  @override
  String get backToBooks => 'Torne ai libris';

  @override
  String get selectBookTitle => 'Sielç libri';

  @override
  String selectChapterTitle(Object bookName) {
    return 'Sielç cjapitul ($bookName)';
  }

  @override
  String chapterSelectionLabel(Object chapter) {
    return 'Cjapitul $chapter';
  }

  @override
  String verseSelectionLabel(Object verse) {
    return 'Verset $verse';
  }

  @override
  String fullChapterReference(Object bookName, Object chapter) {
    return 'Cjapitul intîr: $bookName $chapter';
  }

  @override
  String get memorizeHint => 'Impare a memorie';

  @override
  String get addNoteHint => 'Zonte une note...';

  @override
  String get languageSearchHint => 'Cîr lenghis';

  @override
  String get languageModuleInstalled => 'Instalât';

  @override
  String get languageModulePending => 'Traduzion automatiche in spiete';

  @override
  String get languageNoMatches => 'Nissune lenghe e corispuint ae tô ricercje.';

  @override
  String get languageCatalogDescription =>
      'Lis lenghis segnalis come instaladis a funzionin fûr rêt. Altris lenghis a vignaran zontadis come modui tradus in automatic.';

  @override
  String get saveBookmarkSemantics => 'Salve segnelibri';

  @override
  String get couldNotLoadChapter =>
      'Impussibil cjariâ il cjapitul. Torne prove.';

  @override
  String get couldNotLoadChapters =>
      'Impussibil cjariâ i cjapitui. Torne prove.';

  @override
  String verseWithText(Object text, Object verse) {
    return 'Verset $verse: $text';
  }

  @override
  String accentSwatchSemantics(Object name, Object selected) {
    return 'Colôr di acent $name$selected';
  }

  @override
  String get oldTestament => 'Vierç Testamenti';

  @override
  String get newTestament => 'Gnûf Testamenti';

  @override
  String get deuterocanonApocrypha => 'Deuterocanon / Apocrifs';
}
