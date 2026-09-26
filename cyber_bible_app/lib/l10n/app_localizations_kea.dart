// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Kabuverdianu (`kea`).
class AppLocalizationsKea extends AppLocalizations {
  AppLocalizationsKea([String locale = 'kea']) : super(locale);

  @override
  String get settingsTitle => 'Konfiguraçõis';

  @override
  String get languageSection => 'Língua';

  @override
  String get useSystemLanguage => 'Uza língua di sistema';

  @override
  String get useSystemLanguageSubtitle => 'Uza língua di dipuzitivu pa padrãu.';

  @override
  String get currentLanguage => 'Língua atual';

  @override
  String get appLanguage => 'Língua di aplikativu';

  @override
  String get chooseLanguage => 'Scolhe língua';

  @override
  String get theme => 'Téma';

  @override
  String get appearance => 'Aparénsia';

  @override
  String get textSection => 'Testu';

  @override
  String get readingFormatSection => 'Formatu di letura';

  @override
  String get displaySection => 'Vizualizaçon';

  @override
  String get verseNumbers => 'Númerus di versíkulu';

  @override
  String get sectionHeadings => 'Títulus di seksãu';

  @override
  String get redLetterText => 'Testu na vermedju';

  @override
  String get selectABook => 'Scolhe un livru';

  @override
  String get traditionalOrder => 'Órdin tradisional';

  @override
  String get alphabeticalOrder => 'Órdin alfabétiku';

  @override
  String get bookmarks => 'Markadóris';

  @override
  String get retry => 'Tenta otu bês';

  @override
  String get chooseTheme => 'Scolhe téma';

  @override
  String get customisableThemes => 'Témas personalizável';

  @override
  String get customisableThemesSubtitle =>
      'Toka nun karton pa scolhe un kor di atxentu. \"Branku Klásiku\" tanbé suporta modus Klaru, Skuru y di Sistema.';

  @override
  String get setThemes => 'TÉMAS PRONTU';

  @override
  String get setThemesSubtitle =>
      'Palétas fixu, kriadu ku kuidadu. Nu meste personaliza: toka pa aplika.';

  @override
  String get deleteBookmarkQuestion => 'Apaga markador?';

  @override
  String get cancel => 'Kansela';

  @override
  String get delete => 'Apaga';

  @override
  String get bookmarkSaved => 'Markador guardadu';

  @override
  String get couldNotDeleteBookmark => 'N ka konsigi apaga markador.';

  @override
  String couldNotNavigate(Object reference) {
    return 'N ka konsigi bai pa $reference.';
  }

  @override
  String get pageNotFound => 'Pájina ka atxadu';

  @override
  String noRouteDefined(Object routeName) {
    return 'Ka ten rota difinidu pa \"$routeName\"';
  }

  @override
  String get english => 'Inglês';

  @override
  String get spanish => 'Spanhol';

  @override
  String get systemDefault => 'Padrãu di sistema';

  @override
  String get languageStatusEnglish => 'Inglês di rekursu sta ativu';

  @override
  String get languageStatusSystem => 'Ta uza língua di sistema';

  @override
  String languageStatusSelected(Object languageName) {
    return 'Língua skolhidu: $languageName';
  }

  @override
  String get themeLabel => 'Téma';

  @override
  String get notFoundTitle => 'Pájina ka atxadu';

  @override
  String get loadingCyberBible => 'Ta karega Cyber Bible...';

  @override
  String get couldNotOpenDatabase =>
      'N ka konsigi abri baze di dadus di Bíblia. Pur favor tenta otu bês.';

  @override
  String get homeTagline => 'Un aplikativu livre y abertu pa studa Bíblia';

  @override
  String get readTheBible => 'Lê Bíblia';

  @override
  String get settingsTooltip => 'Abri konfiguraçõis';

  @override
  String get themeChoose => 'Scolhe téma';

  @override
  String get customThemes => 'Témas personalizável';

  @override
  String get customThemesSubtitle =>
      'Toka nun karton pa scolhe un kor di atxentu. \"Branku Klásiku\" tanbé suporta modus Klaru, Skuru y di Sistema.';

  @override
  String get setThemesLabel => 'TÉMAS PRONTU';

  @override
  String get deleteBookmarkDialog => 'Apaga markador?';

  @override
  String removeBookmarkMessage(Object details, Object reference) {
    return 'Tira \"$reference\"$details?\n\nEs operason ka podi desfasê.';
  }

  @override
  String get couldNotLoadBookmarks =>
      'N ka konsigi karega markadóris. Pur favor tenta otu bês.';

  @override
  String get bookmarkSavedMessage => 'Markador guardadu';

  @override
  String get couldNotSaveBookmark => 'N ka konsigi guarda markador.';

  @override
  String get noBookmarksMatchFilter =>
      'Ninhun markador ka ta konbina ku es filtru.';

  @override
  String get clearFilter => 'Limpa filtru';

  @override
  String get traditionalOrderLabel => 'Órdin tradisional';

  @override
  String get alphabeticalOrderLabel => 'Órdin alfabétiku';

  @override
  String get bookmarksTabLabel => 'Markadóris';

  @override
  String get fullChapter => 'Kapitulu interu';

  @override
  String get addBookmark => 'Adisiona markador';

  @override
  String get selectVerse => 'Scolhe versíkulu';

  @override
  String get labelOptional => 'Rótulu (opsional)';

  @override
  String get notesOptional => 'Notas (opsional)';

  @override
  String get save => 'Warda';

  @override
  String get goToVerse => 'Bai pa versíkulu';

  @override
  String verseTitle(Object verse) {
    return 'Versíkulu $verse';
  }

  @override
  String chapterTitle(Object chapter) {
    return 'Kapitulu $chapter';
  }

  @override
  String get switchToFullChapter => 'Muda pa markador di kapitulu interu';

  @override
  String get bookmarkSheetCancel => 'Kansela y fitxa painel di markador';

  @override
  String get pickCustomAccent => 'Scolhe un atxentu personalizadu';

  @override
  String get apply => 'Aplika';

  @override
  String get custom => 'Personalizadu';

  @override
  String get brightnessSystem => 'Sistema';

  @override
  String get brightnessLight => 'Klaru';

  @override
  String get brightnessDark => 'Skuru';

  @override
  String get selectBook => 'Scolhe un livru';

  @override
  String get bookmarkFilterAll => 'Tudu';

  @override
  String get bookmarkFilterUnlabeled => 'Sin rótulu';

  @override
  String get bookmarkSortRecent => 'Más resenti primeru';

  @override
  String get bookmarkSortCanonical => 'Órdin kanóniku';

  @override
  String get chapterRetry => 'Tenta karega kapitulu otu bês';

  @override
  String get fontSize => 'Tamanhu di letra';

  @override
  String fontSizePixels(Object size) {
    return '$size px';
  }

  @override
  String get fontSizeSlider => 'Kontrolu di tamanhu di letra';

  @override
  String get fontSizeSliderHint => 'Arrasta pa ajusta di 12 pa 28';

  @override
  String get fontPreview => '\"Na prinsipiu Deus kriá séus y tera.\" — Gén 1:1';

  @override
  String get showVerseNumbersSubtitle =>
      'Mostra númerus di versíkulu na letrinha riba na tela di letura.';

  @override
  String get showSectionHeadingsSubtitle =>
      'Mostra títulus di seksãu y di Salmus entre pasajens.';

  @override
  String get wordsOfChristSubtitle =>
      'Mostra palavras di Jesus na vermedju. Dezativa pa uza un só kor di testu.';

  @override
  String get verseFormatTitle => 'Formatu di versíkulu';

  @override
  String get verseFormatSubtitle =>
      'Scolhe modi ki testu sagradu ta ser organizadu.';

  @override
  String get paragraphMode => 'Parágrafu';

  @override
  String get verseListMode => 'Lista di versíkulus';

  @override
  String get paragraphModeTooltip => 'Modu parágrafu';

  @override
  String get verseListModeTooltip => 'Modu lista di versíkulus';

  @override
  String get paragraphModeDescription =>
      'Testu ta sigi kontinuadu ku parágrafus indentadu, manera Bíblia imprésu.';

  @override
  String get verseListModeDescription =>
      'Kada parágrafu sagradu ta kumesa na se própi linha, fasilitandu odja grupus di versíkulu.';

  @override
  String get deleteBookmarkTooltip => 'Apaga markador';

  @override
  String deleteBookmarkSemantics(Object reference) {
    return 'Apaga markador $reference';
  }

  @override
  String sortBookmarksTooltip(Object sortOrder) {
    return 'Organiza: $sortOrder';
  }

  @override
  String get noBookmarksYet => 'Inda ka ten markadóris.';

  @override
  String get noBookmarksYetHint =>
      'Toka na ikoni di markador ora bu sta lê pa guarda un lugar.';

  @override
  String bookmarkReferenceNavigationError(Object reference) {
    return 'N ka konsigi bai pa $reference.';
  }

  @override
  String themeCardSemantics(Object description, Object name, Object selected) {
    return 'Téma $name$selected. $description';
  }

  @override
  String get selectedThemeSuffix => ', atualmenti skolhidu';

  @override
  String get customisableAccentDescription => 'Kor di atxentu personalizável.';

  @override
  String get fixedPaletteDescription => 'Paléta fixu.';

  @override
  String accentColourTitle(Object themeName) {
    return 'Kor di atxentu — $themeName';
  }

  @override
  String get brightnessMode => 'MODU DI LUMINUSIDADI';

  @override
  String get lightMode => 'Modu klaru';

  @override
  String get followSystemMode => 'Sigui modu di sistema';

  @override
  String get darkMode => 'Modu skuru';

  @override
  String get customColourPicker => 'Skoledor di kor personalizadu';

  @override
  String get customColourTooltip => 'Kor personalizadu...';

  @override
  String get couldNotLoadBooks =>
      'N ka konsigi karega lista di livrus. Pur favor tenta otu bês.';

  @override
  String chapterLabel(Object chapter) {
    return 'Kapitulu $chapter';
  }

  @override
  String get traditionalOrderBooks => 'Livrus na órdin tradisional';

  @override
  String get alphabeticalOrderBooks => 'Livrus na órdin alfabétiku';

  @override
  String get home => 'Inísiu';

  @override
  String get addBookmarkTooltip => 'Adisiona markador';

  @override
  String get chooseBookChapter => 'Scolhe livru y kapitulu';

  @override
  String get chooseVerse => 'Scolhe versíkulu';

  @override
  String get bookChapterQuickNavigation =>
      'Navegason rápidu pa livru y kapitulu';

  @override
  String get verseQuickNavigation => 'Navegason rápidu pa versíkulu';

  @override
  String get backToBooks => 'Bolta pa livrus';

  @override
  String get selectBookTitle => 'Scolhe livru';

  @override
  String selectChapterTitle(Object bookName) {
    return 'Scolhe kapitulu ($bookName)';
  }

  @override
  String chapterSelectionLabel(Object chapter) {
    return 'Kapitulu $chapter';
  }

  @override
  String verseSelectionLabel(Object verse) {
    return 'Versíkulu $verse';
  }

  @override
  String fullChapterReference(Object bookName, Object chapter) {
    return 'Kapitulu interu: $bookName $chapter';
  }

  @override
  String get memorizeHint => 'Memoriza';

  @override
  String get addNoteHint => 'Adisiona un nota...';

  @override
  String get languageSearchHint => 'Piskiza línguas';

  @override
  String get languageModuleInstalled => 'Instaladu';

  @override
  String get languageModulePending => 'Traduson pa máquina pendenti';

  @override
  String get languageNoMatches => 'Ninhun língua ka ta konbina ku bu piskiza.';

  @override
  String get languageCatalogDescription =>
      'Línguas markadu komu instaladu ta funsiona sen internet. Otus línguas ta ser adisionadu komu módulus tradusidu pa máquina.';

  @override
  String get saveBookmarkSemantics => 'Guarda markador';

  @override
  String get couldNotLoadChapter =>
      'N ka konsigi karega kapitulu. Pur favor tenta otu bês.';

  @override
  String get couldNotLoadChapters =>
      'N ka konsigi karega kapítulus. Pur favor tenta otu bês.';

  @override
  String verseWithText(Object text, Object verse) {
    return 'Versíkulu $verse: $text';
  }

  @override
  String accentSwatchSemantics(Object name, Object selected) {
    return 'Kor di atxentu $name$selected';
  }

  @override
  String get oldTestament => 'Velhu Testamentu';

  @override
  String get newTestament => 'Novu Testamentu';

  @override
  String get deuterocanonApocrypha => 'Deuterokanóniku / Apókifru';
}
