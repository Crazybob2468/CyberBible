// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Portuguese (`pt`).
class AppLocalizationsPt extends AppLocalizations {
  AppLocalizationsPt([String locale = 'pt']) : super(locale);

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
  String get bookmarks => 'Favoritos';

  @override
  String get retry => 'Tentar novamente';

  @override
  String get chooseTheme => 'Escolher tema';

  @override
  String get customisableThemes => 'TEMAS PERSONALIZÁVEIS';

  @override
  String get customisableThemesSubtitle =>
      'Toque em um cartão para escolher uma cor de destaque. Classic White também aceita os modos Claro, Escuro e Sistema.';

  @override
  String get setThemes => 'TEMAS FIXOS';

  @override
  String get setThemesSubtitle =>
      'Paletas fixas e criadas à mão. Não é preciso personalizar — basta tocar para aplicar.';

  @override
  String get deleteBookmarkQuestion => 'Excluir favorito?';

  @override
  String get cancel => 'Cancelar';

  @override
  String get delete => 'Excluir';

  @override
  String get bookmarkSaved => 'Favorito salvo';

  @override
  String get couldNotDeleteBookmark => 'Não foi possível excluir o favorito.';

  @override
  String couldNotNavigate(Object reference) {
    return 'Não foi possível navegar para $reference.';
  }

  @override
  String get pageNotFound => 'Página não encontrada';

  @override
  String noRouteDefined(Object routeName) {
    return 'Nenhuma rota definida para \"$routeName\"';
  }

  @override
  String get english => 'Inglês';

  @override
  String get spanish => 'Espanhol';

  @override
  String get systemDefault => 'Padrão do sistema';

  @override
  String get languageStatusEnglish => 'Fallback em inglês ativo';

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
  String get loadingCyberBible => 'Carregando Cyber Bible...';

  @override
  String get couldNotOpenDatabase =>
      'Não foi possível abrir o banco de dados da Bíblia. Tente novamente.';

  @override
  String get homeTagline =>
      'Um aplicativo gratuito e de código aberto para estudo da Bíblia';

  @override
  String get readTheBible => 'Ler a Bíblia';

  @override
  String get settingsTooltip => 'Configurações';

  @override
  String get themeChoose => 'Escolher tema';

  @override
  String get customThemes => 'Temas personalizáveis';

  @override
  String get customThemesSubtitle =>
      'Toque em um cartão para escolher uma cor de destaque. Classic White também aceita os modos Claro, Escuro e Sistema.';

  @override
  String get setThemesLabel => 'TEMAS FIXOS';

  @override
  String get deleteBookmarkDialog => 'Excluir favorito?';

  @override
  String removeBookmarkMessage(Object details, Object reference) {
    return 'Remover \"$reference\"$details?\n\nNão é possível desfazer esta ação.';
  }

  @override
  String get couldNotLoadBookmarks =>
      'Não foi possível carregar os favoritos. Tente novamente.';

  @override
  String get bookmarkSavedMessage => 'Favorito salvo';

  @override
  String get couldNotSaveBookmark => 'Não foi possível salvar o favorito.';

  @override
  String get noBookmarksMatchFilter =>
      'Nenhum favorito corresponde a este filtro.';

  @override
  String get clearFilter => 'Limpar filtro';

  @override
  String get traditionalOrderLabel => 'Ordem tradicional';

  @override
  String get alphabeticalOrderLabel => 'Ordem alfabética';

  @override
  String get bookmarksTabLabel => 'Favoritos';

  @override
  String get fullChapter => 'Capítulo completo';

  @override
  String get addBookmark => 'Adicionar favorito';

  @override
  String get selectVerse => 'Selecionar versículo';

  @override
  String get labelOptional => 'Rótulo (opcional)';

  @override
  String get notesOptional => 'Notas (opcional)';

  @override
  String get save => 'Salvar';

  @override
  String get goToVerse => 'Ir para o versículo';

  @override
  String verseTitle(Object verse) {
    return 'Versículo $verse';
  }

  @override
  String chapterTitle(Object chapter) {
    return 'Capítulo $chapter';
  }

  @override
  String get switchToFullChapter => 'Mudar para favorito do capítulo completo';

  @override
  String get bookmarkSheetCancel => 'Cancelar e fechar painel de favorito';

  @override
  String get pickCustomAccent => 'Escolher destaque personalizado';

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
  String get selectBook => 'Selecionar um livro';

  @override
  String get bookmarkFilterAll => 'Todos';

  @override
  String get bookmarkFilterUnlabeled => 'Sem rótulo';

  @override
  String get bookmarkSortRecent => 'Mais recentes primeiro';

  @override
  String get bookmarkSortCanonical => 'Ordem canônica';

  @override
  String get chapterRetry => 'Tentar novamente';

  @override
  String get fontSize => 'Tamanho da fonte';

  @override
  String fontSizePixels(Object size) {
    return '$size px';
  }

  @override
  String get fontSizeSlider => 'Controle deslizante do tamanho da fonte';

  @override
  String get fontSizeSliderHint => 'Deslize para ajustar de 12 a 28';

  @override
  String get fontPreview =>
      '\"No princípio Deus criou os céus e a terra.\" — Gn 1:1';

  @override
  String get showVerseNumbersSubtitle =>
      'Mostrar números dos versículos na tela de leitura.';

  @override
  String get showSectionHeadingsSubtitle =>
      'Mostrar títulos de seções e Salmos entre as passagens.';

  @override
  String get wordsOfChristSubtitle =>
      'Mostrar as palavras de Jesus em vermelho. Desative para uma única cor de texto.';

  @override
  String get verseFormatTitle => 'Formato do versículo';

  @override
  String get verseFormatSubtitle =>
      'Escolha como o texto bíblico será organizado.';

  @override
  String get paragraphMode => 'Parágrafo';

  @override
  String get verseListMode => 'Lista de versículos';

  @override
  String get paragraphModeTooltip => 'Modo parágrafo';

  @override
  String get verseListModeTooltip => 'Modo lista de versículos';

  @override
  String get paragraphModeDescription =>
      'O texto flui continuamente em parágrafos recuados, como em uma Bíblia impressa.';

  @override
  String get verseListModeDescription =>
      'Cada parágrafo bíblico começa em sua própria linha, facilitando localizar grupos de versículos.';

  @override
  String get deleteBookmarkTooltip => 'Excluir favorito';

  @override
  String deleteBookmarkSemantics(Object reference) {
    return 'Excluir favorito $reference';
  }

  @override
  String sortBookmarksTooltip(Object sortOrder) {
    return 'Ordenar: $sortOrder';
  }

  @override
  String get noBookmarksYet => 'Ainda não há favoritos.';

  @override
  String get noBookmarksYetHint =>
      'Toque no ícone de favorito durante a leitura para salvar uma localização.';

  @override
  String bookmarkReferenceNavigationError(Object reference) {
    return 'Não foi possível navegar para $reference.';
  }

  @override
  String themeCardSemantics(Object description, Object name, Object selected) {
    return 'Tema $name$selected. $description';
  }

  @override
  String get selectedThemeSuffix => ', atualmente selecionado';

  @override
  String get customisableAccentDescription => 'Cor de destaque personalizável.';

  @override
  String get fixedPaletteDescription => 'Paleta fixa.';

  @override
  String accentColourTitle(Object themeName) {
    return 'Cor de destaque — $themeName';
  }

  @override
  String get brightnessMode => 'MODO DE BRILHO';

  @override
  String get lightMode => 'Modo claro';

  @override
  String get followSystemMode => 'Seguir modo do sistema';

  @override
  String get darkMode => 'Modo escuro';

  @override
  String get customColourPicker => 'Seletor de cor personalizado';

  @override
  String get customColourTooltip => 'Cor personalizada…';

  @override
  String get couldNotLoadBooks =>
      'Não foi possível carregar a lista de livros. Tente novamente.';

  @override
  String chapterLabel(Object chapter) {
    return 'Capítulo $chapter';
  }

  @override
  String get traditionalOrderBooks => 'Livros em ordem tradicional';

  @override
  String get alphabeticalOrderBooks => 'Livros em ordem alfabética';

  @override
  String get home => 'Início';

  @override
  String get addBookmarkTooltip => 'Adicionar favorito';

  @override
  String get chooseBookChapter => 'Escolher livro e capítulo';

  @override
  String get chooseVerse => 'Escolher versículo';

  @override
  String get bookChapterQuickNavigation =>
      'Navegação rápida de livro e capítulo';

  @override
  String get verseQuickNavigation => 'Navegação rápida de versículo';

  @override
  String get backToBooks => 'Voltar aos livros';

  @override
  String get selectBookTitle => 'Selecionar livro';

  @override
  String selectChapterTitle(Object bookName) {
    return 'Selecionar capítulo ($bookName)';
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
  String get memorizeHint => 'Memorizar';

  @override
  String get addNoteHint => 'Adicionar uma nota...';

  @override
  String get languageSearchHint => 'Pesquisar idiomas';

  @override
  String get languageModuleInstalled => 'Instalado';

  @override
  String get languageModulePending => 'Tradução automática pendente';

  @override
  String get languageNoMatches => 'Nenhum idioma corresponde à pesquisa.';

  @override
  String get languageCatalogDescription =>
      'Os idiomas marcados como instalados funcionam offline. Outros idiomas serão adicionados como módulos traduzidos automaticamente.';

  @override
  String get saveBookmarkSemantics => 'Salvar favorito';

  @override
  String get couldNotLoadChapter =>
      'Não foi possível carregar o capítulo. Tente novamente.';

  @override
  String get couldNotLoadChapters =>
      'Não foi possível carregar os capítulos. Tente novamente.';

  @override
  String verseWithText(Object text, Object verse) {
    return 'Versículo $verse: $text';
  }

  @override
  String accentSwatchSemantics(Object name, Object selected) {
    return 'Cor de destaque $name$selected';
  }

  @override
  String get oldTestament => 'Antigo Testamento';

  @override
  String get newTestament => 'Novo Testamento';

  @override
  String get deuterocanonApocrypha => 'Deuterocanônico / Apócrifos';
}
