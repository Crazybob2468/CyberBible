// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Interlingue Occidental (`ie`).
class AppLocalizationsIe extends AppLocalizations {
  AppLocalizationsIe([String locale = 'ie']) : super(locale);

  @override
  String get settingsTitle => 'Configuration';

  @override
  String get languageSection => 'Lingue';

  @override
  String get useSystemLanguage => 'Usar li lingue del sistema';

  @override
  String get useSystemLanguageSubtitle =>
      'Usar li lingue del aparate quam standard.';

  @override
  String get currentLanguage => 'Lingue actual';

  @override
  String get appLanguage => 'Lingue del application';

  @override
  String get chooseLanguage => 'Selecter un lingue';

  @override
  String get theme => 'Tema';

  @override
  String get appearance => 'Aspecte';

  @override
  String get textSection => 'Textu';

  @override
  String get readingFormatSection => 'Formate de lection';

  @override
  String get displaySection => 'Affichage';

  @override
  String get verseNumbers => 'Numeros de vers';

  @override
  String get sectionHeadings => 'Titules de section';

  @override
  String get redLetterText => 'Textu rubi';

  @override
  String get selectABook => 'Selecter un libre';

  @override
  String get traditionalOrder => 'Ordine traditional';

  @override
  String get alphabeticalOrder => 'Ordine alfabetic';

  @override
  String get bookmarks => 'Marcapagines';

  @override
  String get retry => 'Tentar denov';

  @override
  String get chooseTheme => 'Selecter un tema';

  @override
  String get customisableThemes => 'Temas personalisabil';

  @override
  String get customisableThemesSubtitle =>
      'Toca un carte por selecter un color accentual. \"Classic White\" supporta anc li modes Clar, Obscur e Sistema.';

  @override
  String get setThemes => 'TEMAS FIX';

  @override
  String get setThemesSubtitle =>
      'Palettes fix elaborat con cure. Null adaptation es necessi; toca por applicar.';

  @override
  String get deleteBookmarkQuestion => 'Remover li marcapagine?';

  @override
  String get cancel => 'Anullar';

  @override
  String get delete => 'Remover';

  @override
  String get bookmarkSaved => 'Marcapagine salvat';

  @override
  String get couldNotDeleteBookmark =>
      'Li marcapagine ne posset esser removet.';

  @override
  String couldNotNavigate(Object reference) {
    return 'Ne posset navigar a $reference.';
  }

  @override
  String get pageNotFound => 'Págine ne trovat';

  @override
  String noRouteDefined(Object routeName) {
    return 'Null via es definit por \"$routeName\"';
  }

  @override
  String get english => 'Anglese';

  @override
  String get spanish => 'Espaniol';

  @override
  String get systemDefault => 'Standard del sistema';

  @override
  String get languageStatusEnglish => 'Anglese es usat quam lingue de reserva';

  @override
  String get languageStatusSystem => 'Li lingue del sistema es usat';

  @override
  String languageStatusSelected(Object languageName) {
    return 'Selectet lingue: $languageName';
  }

  @override
  String get themeLabel => 'Tema';

  @override
  String get notFoundTitle => 'Págine ne trovat';

  @override
  String get loadingCyberBible => 'Cargante Cyber Bible...';

  @override
  String get couldNotOpenDatabase =>
      'Ne posset aperter li base de data del Bible. Tenta denov.';

  @override
  String get homeTagline =>
      'Un application gratuit e de codice apert por studiar li Bible';

  @override
  String get readTheBible => 'Leer li Bible';

  @override
  String get settingsTooltip => 'Configuration';

  @override
  String get themeChoose => 'Selecter un tema';

  @override
  String get customThemes => 'Temas personalisabil';

  @override
  String get customThemesSubtitle =>
      'Toca un carte por selecter un color accentual. \"Classic White\" supporta anc li modes Clar, Obscur e Sistema.';

  @override
  String get setThemesLabel => 'TEMAS FIX';

  @override
  String get deleteBookmarkDialog => 'Remover li marcapagine?';

  @override
  String removeBookmarkMessage(Object details, Object reference) {
    return 'Remover \"$reference\"$details?\n\nTi action ne posse esser reverset.';
  }

  @override
  String get couldNotLoadBookmarks =>
      'Ne posset cargar li marcapagines. Tenta denov.';

  @override
  String get bookmarkSavedMessage => 'Marcapagine salvat';

  @override
  String get couldNotSaveBookmark => 'Ne posset salvar li marcapagine.';

  @override
  String get noBookmarksMatchFilter =>
      'Null marcapagine corresponde a ti filtre.';

  @override
  String get clearFilter => 'Vacuar li filtre';

  @override
  String get traditionalOrderLabel => 'Ordine traditional';

  @override
  String get alphabeticalOrderLabel => 'Ordine alfabetic';

  @override
  String get bookmarksTabLabel => 'Marcapagines';

  @override
  String get fullChapter => 'Capitul complet';

  @override
  String get addBookmark => 'Adjunter marcapagine';

  @override
  String get selectVerse => 'Selecter un vers';

  @override
  String get labelOptional => 'Etiquette (optional)';

  @override
  String get notesOptional => 'Notes (optional)';

  @override
  String get save => 'Salvar';

  @override
  String get goToVerse => 'Ear al vers';

  @override
  String verseTitle(Object verse) {
    return 'Vers $verse';
  }

  @override
  String chapterTitle(Object chapter) {
    return 'Capitul $chapter';
  }

  @override
  String get switchToFullChapter =>
      'Cambiar al marcapagine del capitul complet';

  @override
  String get bookmarkSheetCancel => 'Anullar e cluder li panel de marcapagines';

  @override
  String get pickCustomAccent => 'Selecter un color accentual personal';

  @override
  String get apply => 'Applicar';

  @override
  String get custom => 'Personal';

  @override
  String get brightnessSystem => 'Sistema';

  @override
  String get brightnessLight => 'Clar';

  @override
  String get brightnessDark => 'Obscur';

  @override
  String get selectBook => 'Selecter un libre';

  @override
  String get bookmarkFilterAll => 'Omni';

  @override
  String get bookmarkFilterUnlabeled => 'Sin etiquette';

  @override
  String get bookmarkSortRecent => 'Li plu recent antey';

  @override
  String get bookmarkSortCanonical => 'Ordine canonic';

  @override
  String get chapterRetry => 'Tentar denov';

  @override
  String get fontSize => 'Dimension de litteres';

  @override
  String fontSizePixels(Object size) {
    return '$size px';
  }

  @override
  String get fontSizeSlider => 'Control por dimension de litteres';

  @override
  String get fontSizeSliderHint => 'Glissa por adjustar de 12 a 28';

  @override
  String get fontPreview =>
      '\"In li comensa, Deo creavit li ciel e li terre.\" — Gen 1:1';

  @override
  String get showVerseNumbersSubtitle =>
      'Monstrar li numeros de vers in li scherm de lection.';

  @override
  String get showSectionHeadingsSubtitle =>
      'Monstrar titules de section e de Psalmes inter li passages.';

  @override
  String get wordsOfChristSubtitle =>
      'Monstrar li paroles de Jesus in rubi. Desactiva por usar un sol color de textu.';

  @override
  String get verseFormatTitle => 'Formate de vers';

  @override
  String get verseFormatSubtitle =>
      'Selecte qualmen li textu del Scriptura es disposit.';

  @override
  String get paragraphMode => 'Paragraf';

  @override
  String get verseListMode => 'Liste de vers';

  @override
  String get paragraphModeTooltip => 'Mode paragraf';

  @override
  String get verseListModeTooltip => 'Mode liste de vers';

  @override
  String get paragraphModeDescription =>
      'Li textu flu continuimen in indentat paragrafes, quam in un Bible imprimet.';

  @override
  String get verseListModeDescription =>
      'Chascun paragraf del Scriptura comensa sur su propri linea, por facilitar li recognition de gruppes de vers.';

  @override
  String get deleteBookmarkTooltip => 'Remover marcapagine';

  @override
  String deleteBookmarkSemantics(Object reference) {
    return 'Remover marcapagine $reference';
  }

  @override
  String sortBookmarksTooltip(Object sortOrder) {
    return 'Ordinar: $sortOrder';
  }

  @override
  String get noBookmarksYet => 'Null marcapagine ancor.';

  @override
  String get noBookmarksYetHint =>
      'Toca li icone de marcapagine durante li lection por salvar un loco.';

  @override
  String bookmarkReferenceNavigationError(Object reference) {
    return 'Ne posset navigar a $reference.';
  }

  @override
  String themeCardSemantics(Object description, Object name, Object selected) {
    return 'Tema $name$selected. $description';
  }

  @override
  String get selectedThemeSuffix => ', selectet actualmen';

  @override
  String get customisableAccentDescription => 'Color accentual personalisabil.';

  @override
  String get fixedPaletteDescription => 'Palette fix.';

  @override
  String accentColourTitle(Object themeName) {
    return 'Color accentual — $themeName';
  }

  @override
  String get brightnessMode => 'MODE DE LUMINOSITÁ';

  @override
  String get lightMode => 'Mode clar';

  @override
  String get followSystemMode => 'Sequer li mode del sistema';

  @override
  String get darkMode => 'Mode obscur';

  @override
  String get customColourPicker => 'Selector de color personal';

  @override
  String get customColourTooltip => 'Color personal...';

  @override
  String get couldNotLoadBooks =>
      'Ne posset cargar li liste de libres. Tenta denov.';

  @override
  String chapterLabel(Object chapter) {
    return 'Capitul $chapter';
  }

  @override
  String get traditionalOrderBooks => 'Libres in ordine traditional';

  @override
  String get alphabeticalOrderBooks => 'Libres in ordine alfabetic';

  @override
  String get home => 'Hem';

  @override
  String get addBookmarkTooltip => 'Adjunter marcapagine';

  @override
  String get chooseBookChapter => 'Selecter libre e capitul';

  @override
  String get chooseVerse => 'Selecter un vers';

  @override
  String get bookChapterQuickNavigation =>
      'Navigation rapid al libre e capitul';

  @override
  String get verseQuickNavigation => 'Navigation rapid al vers';

  @override
  String get backToBooks => 'Retro al libres';

  @override
  String get selectBookTitle => 'Selecter un libre';

  @override
  String selectChapterTitle(Object bookName) {
    return 'Selecter capitul ($bookName)';
  }

  @override
  String chapterSelectionLabel(Object chapter) {
    return 'Capitul $chapter';
  }

  @override
  String verseSelectionLabel(Object verse) {
    return 'Vers $verse';
  }

  @override
  String fullChapterReference(Object bookName, Object chapter) {
    return 'Capitul complet: $bookName $chapter';
  }

  @override
  String get memorizeHint => 'Memorisar';

  @override
  String get addNoteHint => 'Adjunter un note...';

  @override
  String get languageSearchHint => 'Serchar lingues';

  @override
  String get languageModuleInstalled => 'Installat';

  @override
  String get languageModulePending => 'Traduction automatic atende';

  @override
  String get languageNoMatches => 'Null lingue corresponde a vor sercha.';

  @override
  String get languageCatalogDescription =>
      'Installat lingues functiona sin internet. Altri lingues va esser adjuntet quam moduls traductet automaticmen.';

  @override
  String get saveBookmarkSemantics => 'Salvar marcapagine';

  @override
  String get couldNotLoadChapter => 'Ne posset cargar li capitul. Tenta denov.';

  @override
  String get couldNotLoadChapters =>
      'Ne posset cargar li capitules. Tenta denov.';

  @override
  String verseWithText(Object text, Object verse) {
    return 'Vers $verse: $text';
  }

  @override
  String accentSwatchSemantics(Object name, Object selected) {
    return 'Color accentual $name$selected';
  }

  @override
  String get oldTestament => 'Ancian Testamento';

  @override
  String get newTestament => 'Nov Testamento';

  @override
  String get deuterocanonApocrypha => 'Deuterocanon / Apocrypha';
}
