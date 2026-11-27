// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Kaingang (`kgp`).
class AppLocalizationsKgp extends AppLocalizations {
  AppLocalizationsKgp([String locale = 'kgp']) : super(locale);

  @override
  String get settingsTitle => 'Configurações';

  @override
  String get languageSection => 'Idioma';

  @override
  String get useSystemLanguage => 'Usar idioma do sistema';

  @override
  String get useSystemLanguageSubtitle =>
      'Usar o idioma do dispositivo por padrão.';

  @override
  String get currentLanguage => 'Idioma atual';

  @override
  String get appLanguage => 'Idioma do aplicativo';

  @override
  String get chooseLanguage => 'Escolher idioma';

  @override
  String get theme => 'Tema';

  @override
  String get appearance => 'Aparência';

  @override
  String get textSection => 'Texto';

  @override
  String get readingFormatSection => 'Formato de leitura';

  @override
  String get displaySection => 'Exibição';

  @override
  String get verseNumbers => 'Números dos versículos';

  @override
  String get sectionHeadings => 'Títulos das seções';

  @override
  String get redLetterText => 'Texto em vermelho';

  @override
  String get selectABook => 'Selecionar um livro';

  @override
  String get traditionalOrder => 'Ordem tradicional';

  @override
  String get alphabeticalOrder => 'Ordem alfabética';

  @override
  String get bookmarks => 'Marcadores';

  @override
  String get retry => 'Tentar novamente';

  @override
  String get chooseTheme => 'Escolher tema';

  @override
  String get customisableThemes => 'Temas personalizáveis';

  @override
  String get customisableThemesSubtitle =>
      'Tap a card to choose an accent colour. \"Classic White\" also supports Light, Dark and System modes.';

  @override
  String get setThemes => 'APLICAR TEMAS';

  @override
  String get setThemesSubtitle =>
      'Fixed, hand-crafted palettes. No customisation needed — just tap to apply.';

  @override
  String get deleteBookmarkQuestion => 'Excluir marcador?';

  @override
  String get cancel => 'Cancelar';

  @override
  String get delete => 'Excluir';

  @override
  String get bookmarkSaved => 'Marcador salvo';

  @override
  String get couldNotDeleteBookmark => 'Não foi possível excluir o marcador.';

  @override
  String couldNotNavigate(Object reference) {
    return 'Could not navigate to $reference.';
  }

  @override
  String get pageNotFound => 'Página não encontrada';

  @override
  String noRouteDefined(Object routeName) {
    return 'No route defined for \"$routeName\"';
  }

  @override
  String get english => 'Inglês';

  @override
  String get spanish => 'Espanhol';

  @override
  String get systemDefault => 'Padrão do sistema';

  @override
  String get languageStatusEnglish => 'English fallback active';

  @override
  String get languageStatusSystem => 'Usando o idioma do sistema';

  @override
  String languageStatusSelected(Object languageName) {
    return 'Idioma selecionado: $languageName';
  }

  @override
  String get themeLabel => 'Tema';

  @override
  String get notFoundTitle => 'Página não encontrada';

  @override
  String get loadingCyberBible => 'Loading Cyber Bible...';

  @override
  String get couldNotOpenDatabase =>
      'Could not open the Bible database. Please try again.';

  @override
  String get homeTagline => 'A free and open source Bible study app';

  @override
  String get readTheBible => 'Ler a Bíblia';

  @override
  String get settingsTooltip => 'Configurações';

  @override
  String get themeChoose => 'Escolher tema';

  @override
  String get customThemes => 'Temas personalizados';

  @override
  String get customThemesSubtitle =>
      'Tap a card to choose an accent colour. \"Classic White\" also supports Light, Dark and System modes.';

  @override
  String get setThemesLabel => 'APLICAR TEMAS';

  @override
  String get deleteBookmarkDialog => 'Excluir marcador?';

  @override
  String removeBookmarkMessage(Object details, Object reference) {
    return 'Remove \"$reference\"$details?\n\nThis cannot be undone.';
  }

  @override
  String get couldNotLoadBookmarks =>
      'Could not load bookmarks. Please try again.';

  @override
  String get bookmarkSavedMessage => 'Marcador salvo';

  @override
  String get couldNotSaveBookmark => 'Não foi possível salvar o marcador.';

  @override
  String get noBookmarksMatchFilter => 'No bookmarks match this filter.';

  @override
  String get clearFilter => 'Limpar filtro';

  @override
  String get traditionalOrderLabel => 'Ordem tradicional';

  @override
  String get alphabeticalOrderLabel => 'Ordem alfabética';

  @override
  String get bookmarksTabLabel => 'Marcadores';

  @override
  String get fullChapter => 'Capítulo completo';

  @override
  String get addBookmark => 'Adicionar marcador';

  @override
  String get selectVerse => 'Selecionar versículo';

  @override
  String get labelOptional => 'Label (optional)';

  @override
  String get notesOptional => 'Notes (optional)';

  @override
  String get save => 'Salvar';

  @override
  String get goToVerse => 'Ir ao versículo';

  @override
  String verseTitle(Object verse) {
    return 'Versículo $verse';
  }

  @override
  String chapterTitle(Object chapter) {
    return 'Capítulo $chapter';
  }

  @override
  String get switchToFullChapter => 'Mostrar capítulo completo';

  @override
  String get bookmarkSheetCancel => 'Cancelar';

  @override
  String get pickCustomAccent => 'Choose a custom accent';

  @override
  String get apply => 'Aplicar';

  @override
  String get custom => 'Personalizado';

  @override
  String get brightnessSystem => 'Sistema';

  @override
  String get brightnessLight => 'Claro';

  @override
  String get brightnessDark => 'Escuro';

  @override
  String get selectBook => 'Selecionar livro';

  @override
  String get bookmarkFilterAll => 'Todos';

  @override
  String get bookmarkFilterUnlabeled => 'Sem etiqueta';

  @override
  String get bookmarkSortRecent => 'Mais recentes';

  @override
  String get bookmarkSortCanonical => 'Ordem bíblica';

  @override
  String get chapterRetry => 'Tentar novamente';

  @override
  String get fontSize => 'Tamanho da fonte';

  @override
  String fontSizePixels(Object size) {
    return '$size px';
  }

  @override
  String get fontSizeSlider => 'Tamanho da fonte';

  @override
  String get fontSizeSliderHint => 'Swipe to adjust from 12 to 28';

  @override
  String get fontPreview =>
      '\"In the beginning God created the heavens and the earth.\" — Gen 1:1';

  @override
  String get showVerseNumbersSubtitle =>
      'Show verse number superscripts in the reading screen.';

  @override
  String get showSectionHeadingsSubtitle =>
      'Show section and Psalm headings between passages.';

  @override
  String get wordsOfChristSubtitle =>
      'Show Jesus\' words in red. Disable for a single text color.';

  @override
  String get verseFormatTitle => 'Verse Format';

  @override
  String get verseFormatSubtitle => 'Choose how scripture text is laid out.';

  @override
  String get paragraphMode => 'Modo parágrafo';

  @override
  String get verseListMode => 'Modo lista de versículos';

  @override
  String get paragraphModeTooltip => 'Escolher modo parágrafo';

  @override
  String get verseListModeTooltip => 'Escolher modo lista';

  @override
  String get paragraphModeDescription =>
      'Text flows continuously with indented paragraphs, like a printed Bible.';

  @override
  String get verseListModeDescription =>
      'Each scripture paragraph begins on its own line, making verse groups easy to spot.';

  @override
  String get deleteBookmarkTooltip => 'Delete bookmark';

  @override
  String deleteBookmarkSemantics(Object reference) {
    return 'Delete bookmark $reference';
  }

  @override
  String sortBookmarksTooltip(Object sortOrder) {
    return 'Sort: $sortOrder';
  }

  @override
  String get noBookmarksYet => 'Ainda não há marcadores.';

  @override
  String get noBookmarksYetHint => 'Adicione um marcador durante a leitura.';

  @override
  String bookmarkReferenceNavigationError(Object reference) {
    return 'Could not navigate to $reference.';
  }

  @override
  String themeCardSemantics(Object description, Object name, Object selected) {
    return '$name theme$selected. $description';
  }

  @override
  String get selectedThemeSuffix => ', currently selected';

  @override
  String get customisableAccentDescription => 'Customisable accent colour.';

  @override
  String get fixedPaletteDescription => 'Fixed palette.';

  @override
  String accentColourTitle(Object themeName) {
    return 'Accent Colour — $themeName';
  }

  @override
  String get brightnessMode => 'BRIGHTNESS MODE';

  @override
  String get lightMode => 'Claro';

  @override
  String get followSystemMode => 'Seguir sistema';

  @override
  String get darkMode => 'Escuro';

  @override
  String get customColourPicker => 'Custom colour picker';

  @override
  String get customColourTooltip => 'Custom color…';

  @override
  String get couldNotLoadBooks => 'Não foi possível carregar os livros.';

  @override
  String chapterLabel(Object chapter) {
    return 'Capítulo $chapter';
  }

  @override
  String get traditionalOrderBooks => 'Ordem tradicional';

  @override
  String get alphabeticalOrderBooks => 'Ordem alfabética';

  @override
  String get home => 'Início';

  @override
  String get addBookmarkTooltip => 'Adicionar marcador';

  @override
  String get chooseBookChapter => 'Escolher livro e capítulo';

  @override
  String get chooseVerse => 'Escolher versículo';

  @override
  String get bookChapterQuickNavigation => 'Book and chapter quick navigation';

  @override
  String get verseQuickNavigation => 'Verse quick navigation';

  @override
  String get backToBooks => 'Voltar aos livros';

  @override
  String get selectBookTitle => 'Selecionar livro';

  @override
  String selectChapterTitle(Object bookName) {
    return 'Selecionar capítulo de $bookName';
  }

  @override
  String chapterSelectionLabel(Object chapter) {
    return 'Capítulo $chapter';
  }

  @override
  String verseSelectionLabel(Object verse) {
    return 'Versículo $verse';
  }

  @override
  String fullChapterReference(Object bookName, Object chapter) {
    return 'Capítulo completo: $bookName $chapter';
  }

  @override
  String get memorizeHint => 'Memorize';

  @override
  String get addNoteHint => 'Add a note...';

  @override
  String get languageSearchHint => 'Pesquisar idioma';

  @override
  String get languageModuleInstalled => 'Módulo de idioma instalado';

  @override
  String get languageModulePending => 'Módulo de idioma pendente';

  @override
  String get languageNoMatches => 'Nenhum idioma correspondente.';

  @override
  String get languageCatalogDescription =>
      'Languages marked as installed work offline. Other languages will be added as machine-translated modules.';

  @override
  String get saveBookmarkSemantics => 'Save bookmark';

  @override
  String get couldNotLoadChapter =>
      'Could not load the chapter. Please try again.';

  @override
  String get couldNotLoadChapters =>
      'Could not load chapters. Please try again.';

  @override
  String verseWithText(Object text, Object verse) {
    return 'Verse $verse: $text';
  }

  @override
  String accentSwatchSemantics(Object name, Object selected) {
    return '$name accent colour$selected';
  }

  @override
  String get oldTestament => 'Antigo Testamento';

  @override
  String get newTestament => 'Novo Testamento';

  @override
  String get deuterocanonApocrypha => 'Deuterocanônicos / Apócrifos';

  @override
  String footnoteTitle(Object caller) {
    return 'Footnote $caller';
  }

  @override
  String get closeFootnote => 'Close footnote';

  @override
  String couldNotOpenFootnote(Object reference) {
    return 'Could not open footnote $reference.';
  }

  @override
  String get chapterFootnotesTitle => 'Footnotes';

  @override
  String openScriptureReference(Object reference) {
    return 'Open $reference';
  }

  @override
  String get couldNotLoadFootnotes =>
      'Could not load footnotes. Please try again.';
}
