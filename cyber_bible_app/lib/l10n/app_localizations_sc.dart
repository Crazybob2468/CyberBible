// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Sardinian (`sc`).
class AppLocalizationsSc extends AppLocalizations {
  AppLocalizationsSc([String locale = 'sc']) : super(locale);

  @override
  String get settingsTitle => 'Impostatziones';

  @override
  String get languageSection => 'Limba';

  @override
  String get useSystemLanguage => 'Impread sa limba de su sistema';

  @override
  String get useSystemLanguageSubtitle =>
      'Impread sa limba de su dispositivu comente limba predefinida.';

  @override
  String get currentLanguage => 'Limba atuali';

  @override
  String get appLanguage => 'Limba de s\'app';

  @override
  String get chooseLanguage => 'Sèbera una limba';

  @override
  String get theme => 'Tema';

  @override
  String get appearance => 'Aspetu';

  @override
  String get textSection => 'Testu';

  @override
  String get readingFormatSection => 'Formadu de letura';

  @override
  String get displaySection => 'Mustra';

  @override
  String get verseNumbers => 'Numeros de sos versos';

  @override
  String get sectionHeadings => 'Tìtulos de sas sezziones';

  @override
  String get redLetterText => 'Testu ruju';

  @override
  String get selectABook => 'Sèbera unu libru';

  @override
  String get traditionalOrder => 'Ordine traditzionale';

  @override
  String get alphabeticalOrder => 'Ordine alfabeticu';

  @override
  String get bookmarks => 'Marcadores';

  @override
  String get retry => 'Torra a proare';

  @override
  String get chooseTheme => 'Sèbera unu tema';

  @override
  String get customisableThemes => 'Temas personalizàbiles';

  @override
  String get customisableThemesSubtitle =>
      'Toca una cartella pro sèberare unu colore de accentu. \"Classic White\" soportat fintzas sos modos Crau, Iscuru e Sistema.';

  @override
  String get setThemes => 'TEMAS FÌSICOS';

  @override
  String get setThemesSubtitle =>
      'Palettas fìsicas cuncordadas cun cura. Non serbit a personalizare; toca pro aplicare.';

  @override
  String get deleteBookmarkQuestion => 'Cantzella su marcadore?';

  @override
  String get cancel => 'Annulla';

  @override
  String get delete => 'Cantzella';

  @override
  String get bookmarkSaved => 'Marcadore sarvadu';

  @override
  String get couldNotDeleteBookmark =>
      'No est istadu possìbile cantzellare su marcadore.';

  @override
  String couldNotNavigate(Object reference) {
    return 'No est istadu possìbile andare a $reference.';
  }

  @override
  String get pageNotFound => 'Pàgina no agatada';

  @override
  String noRouteDefined(Object routeName) {
    return 'Per \"$routeName\" no est definidu perunu caminu';
  }

  @override
  String get english => 'Inglesu';

  @override
  String get spanish => 'Ispagnolu';

  @override
  String get systemDefault => 'Predefinidu de su sistema';

  @override
  String get languageStatusEnglish =>
      'S\'inglesu est impreadu comente limba de riserva';

  @override
  String get languageStatusSystem => 'Sa limba de su sistema est impreada';

  @override
  String languageStatusSelected(Object languageName) {
    return 'Limba sèberada: $languageName';
  }

  @override
  String get themeLabel => 'Tema';

  @override
  String get notFoundTitle => 'Pàgina no agatada';

  @override
  String get loadingCyberBible => 'Carregamentu de Cyber Bible...';

  @override
  String get couldNotOpenDatabase =>
      'No est istadu possìbile abèrrere sa base de datos de sa Bibbia. Torra a proare.';

  @override
  String get homeTagline =>
      'Un\'aplicatzione gratuita e open source pro istudiare sa Bibbia';

  @override
  String get readTheBible => 'Lègi sa Bibbia';

  @override
  String get settingsTooltip => 'Impostatziones';

  @override
  String get themeChoose => 'Sèbera unu tema';

  @override
  String get customThemes => 'Temas personalizàbiles';

  @override
  String get customThemesSubtitle =>
      'Toca una cartella pro sèberare unu colore de accentu. \"Classic White\" soportat fintzas sos modos Crau, Iscuru e Sistema.';

  @override
  String get setThemesLabel => 'TEMAS FÌSICOS';

  @override
  String get deleteBookmarkDialog => 'Cantzella su marcadore?';

  @override
  String removeBookmarkMessage(Object details, Object reference) {
    return 'Boga \"$reference\"$details?\n\nCust\'atzione non podet èssere anulada.';
  }

  @override
  String get couldNotLoadBookmarks =>
      'No est istadu possìbile carrigare sos marcadores. Torra a proare.';

  @override
  String get bookmarkSavedMessage => 'Marcadore sarvadu';

  @override
  String get couldNotSaveBookmark =>
      'No est istadu possìbile sarvare su marcadore.';

  @override
  String get noBookmarksMatchFilter =>
      'Perunu marcadore non corrispondet a custu filtru.';

  @override
  String get clearFilter => 'Boga su filtru';

  @override
  String get traditionalOrderLabel => 'Ordine traditzionale';

  @override
  String get alphabeticalOrderLabel => 'Ordine alfabeticu';

  @override
  String get bookmarksTabLabel => 'Marcadores';

  @override
  String get fullChapter => 'Capìtulu intreu';

  @override
  String get addBookmark => 'Agiunghe marcadore';

  @override
  String get selectVerse => 'Sèbera unu versu';

  @override
  String get labelOptional => 'Etichetta (optzionale)';

  @override
  String get notesOptional => 'Notas (optzionales)';

  @override
  String get save => 'Sarva';

  @override
  String get goToVerse => 'Bae a su versu';

  @override
  String verseTitle(Object verse) {
    return 'Versu $verse';
  }

  @override
  String chapterTitle(Object chapter) {
    return 'Capìtulu $chapter';
  }

  @override
  String get switchToFullChapter => 'Cambia a marcadore de capìtulu intreu';

  @override
  String get bookmarkSheetCancel => 'Annulla e serra su pannellu de marcadores';

  @override
  String get pickCustomAccent => 'Sèbera unu colore de accentu personalizadu';

  @override
  String get apply => 'Aplica';

  @override
  String get custom => 'Personalizadu';

  @override
  String get brightnessSystem => 'Sistema';

  @override
  String get brightnessLight => 'Crau';

  @override
  String get brightnessDark => 'Iscuru';

  @override
  String get selectBook => 'Sèbera unu libru';

  @override
  String get bookmarkFilterAll => 'Totus';

  @override
  String get bookmarkFilterUnlabeled => 'Chene etichetta';

  @override
  String get bookmarkSortRecent => 'Primos sos prus reghentes';

  @override
  String get bookmarkSortCanonical => 'Ordine canònicu';

  @override
  String get chapterRetry => 'Torra a proare';

  @override
  String get fontSize => 'Mannària de sos caràteres';

  @override
  String fontSizePixels(Object size) {
    return '$size px';
  }

  @override
  String get fontSizeSlider => 'Regulatore de mannària de sos caràteres';

  @override
  String get fontSizeSliderHint => 'Iscurre pro ajustare dae 12 a 28';

  @override
  String get fontPreview =>
      '\"In su prinzipiu Deus at criadu su chelu e sa terra.\" — Gen 1:1';

  @override
  String get showVerseNumbersSubtitle =>
      'Mustra sos numeros de sos versos in sa schermada de letura.';

  @override
  String get showSectionHeadingsSubtitle =>
      'Mustra sos tìtulos de sas sezziones e de sos Salmos intre sos passàgios.';

  @override
  String get wordsOfChristSubtitle =>
      'Mustra sas paraulas de Gesù in ruju. Disativa pro impreare unu colore solu.';

  @override
  String get verseFormatTitle => 'Formadu de su versu';

  @override
  String get verseFormatSubtitle =>
      'Sèbera comente aparrit su testu de sas Iscrituras.';

  @override
  String get paragraphMode => 'Paràgrafu';

  @override
  String get verseListMode => 'Lista de versos';

  @override
  String get paragraphModeTooltip => 'Modu paràgrafu';

  @override
  String get verseListModeTooltip => 'Modu lista de versos';

  @override
  String get paragraphModeDescription =>
      'Su testu curret in paràgrafos cun indentatzione, comente in una Bibbia imprentada.';

  @override
  String get verseListModeDescription =>
      'Chie cun paragrafu de sas Iscrituras incipit in una lìnia sua, pro fàghere fàtzile a agatare sos grupos de versos.';

  @override
  String get deleteBookmarkTooltip => 'Cantzella marcadore';

  @override
  String deleteBookmarkSemantics(Object reference) {
    return 'Cantzella marcadore $reference';
  }

  @override
  String sortBookmarksTooltip(Object sortOrder) {
    return 'Ordinamentu: $sortOrder';
  }

  @override
  String get noBookmarksYet => 'Ancora perunu marcadore.';

  @override
  String get noBookmarksYetHint =>
      'Toca s\'icona de su marcadore mentras lègis pro sarvare una positzione.';

  @override
  String bookmarkReferenceNavigationError(Object reference) {
    return 'No est istadu possìbile andare a $reference.';
  }

  @override
  String themeCardSemantics(Object description, Object name, Object selected) {
    return 'Tema $name$selected. $description';
  }

  @override
  String get selectedThemeSuffix => ', sèberadu como';

  @override
  String get customisableAccentDescription =>
      'Colore de accentu personalizàbile.';

  @override
  String get fixedPaletteDescription => 'Paletta de colores fìsica.';

  @override
  String accentColourTitle(Object themeName) {
    return 'Colore de accentu — $themeName';
  }

  @override
  String get brightnessMode => 'MODU DE LUMINOSIDADE';

  @override
  String get lightMode => 'Modu crau';

  @override
  String get followSystemMode => 'Sighi su modu de su sistema';

  @override
  String get darkMode => 'Modu iscuru';

  @override
  String get customColourPicker => 'Sèbera unu colore personalizadu';

  @override
  String get customColourTooltip => 'Colore personalizadu...';

  @override
  String get couldNotLoadBooks =>
      'No est istadu possìbile carrigare sa lista de libros. Torra a proare.';

  @override
  String chapterLabel(Object chapter) {
    return 'Capìtulu $chapter';
  }

  @override
  String get traditionalOrderBooks => 'Libros in ordine traditzionale';

  @override
  String get alphabeticalOrderBooks => 'Libros in ordine alfabeticu';

  @override
  String get home => 'Domo';

  @override
  String get addBookmarkTooltip => 'Agiunghe marcadore';

  @override
  String get chooseBookChapter => 'Sèbera libru e capìtulu';

  @override
  String get chooseVerse => 'Sèbera unu versu';

  @override
  String get bookChapterQuickNavigation =>
      'Navigatzione lestra a libru e capìtulu';

  @override
  String get verseQuickNavigation => 'Navigatzione lestra a su versu';

  @override
  String get backToBooks => 'Torra a sos libros';

  @override
  String get selectBookTitle => 'Sèbera unu libru';

  @override
  String selectChapterTitle(Object bookName) {
    return 'Sèbera capìtulu ($bookName)';
  }

  @override
  String chapterSelectionLabel(Object chapter) {
    return 'Capìtulu $chapter';
  }

  @override
  String verseSelectionLabel(Object verse) {
    return 'Versu $verse';
  }

  @override
  String fullChapterReference(Object bookName, Object chapter) {
    return 'Capìtulu intreu: $bookName $chapter';
  }

  @override
  String get memorizeHint => 'Impara a memoria';

  @override
  String get addNoteHint => 'Agiunghe una nota...';

  @override
  String get languageSearchHint => 'Chirca limbas';

  @override
  String get languageModuleInstalled => 'Installadu';

  @override
  String get languageModulePending => 'Tradutzione automàtica in ispetu';

  @override
  String get languageNoMatches => 'Peruna limba corrispondet a sa chirca.';

  @override
  String get languageCatalogDescription =>
      'Sas limbas installadas funtzionant chene internet. Àteras limbas ant a èssere agiuntas comente modulos tradutzidos automàticamente.';

  @override
  String get saveBookmarkSemantics => 'Sarva marcadore';

  @override
  String get couldNotLoadChapter =>
      'No est istadu possìbile carrigare su capìtulu. Torra a proare.';

  @override
  String get couldNotLoadChapters =>
      'No est istadu possìbile carrigare sos capìtulos. Torra a proare.';

  @override
  String verseWithText(Object text, Object verse) {
    return 'Versu $verse: $text';
  }

  @override
  String accentSwatchSemantics(Object name, Object selected) {
    return 'Colore de accentu $name$selected';
  }

  @override
  String get oldTestament => 'Testamentu Antigu';

  @override
  String get newTestament => 'Testamentu Nou';

  @override
  String get deuterocanonApocrypha => 'Deuterocanon / Apocrifos';
}
