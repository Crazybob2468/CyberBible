// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Albanian (`sq`).
class AppLocalizationsSq extends AppLocalizations {
  AppLocalizationsSq([String locale = 'sq']) : super(locale);

  @override
  String get settingsTitle => 'Cilësimet';

  @override
  String get languageSection => 'Gjuha';

  @override
  String get useSystemLanguage => 'Përdorni gjuhën e sistemit';

  @override
  String get useSystemLanguageSubtitle =>
      'Përputhni gjuhën e pajisjes si parazgjedhje.';

  @override
  String get currentLanguage => 'Gjuha aktuale';

  @override
  String get appLanguage => 'Gjuha e aplikacionit';

  @override
  String get chooseLanguage => 'Zgjidhni gjuhën';

  @override
  String get theme => 'Tema';

  @override
  String get appearance => 'Pamja e jashtme';

  @override
  String get textSection => 'Teksti';

  @override
  String get readingFormatSection => 'Formati i leximit';

  @override
  String get displaySection => 'Ekrani';

  @override
  String get verseNumbers => 'Numrat e vargjeve';

  @override
  String get sectionHeadings => 'Titujt e seksioneve';

  @override
  String get redLetterText => 'Tekst me shkronja të kuqe';

  @override
  String get selectABook => 'Zgjidhni një libër';

  @override
  String get traditionalOrder => 'Rendi tradicional';

  @override
  String get alphabeticalOrder => 'Rendi alfabetik';

  @override
  String get bookmarks => 'Faqerojtësit';

  @override
  String get retry => 'Provo sërish';

  @override
  String get chooseTheme => 'Zgjidhni Temë';

  @override
  String get customisableThemes => 'Tema të personalizueshme';

  @override
  String get customisableThemesSubtitle =>
      'Prekni një kartë për të zgjedhur një ngjyrë të theksuar. \"E bardha klasike\" gjithashtu mbështet modalitetet e dritës, të errët dhe të sistemit.';

  @override
  String get setThemes => 'VENDOSI TEMA';

  @override
  String get setThemesSubtitle =>
      'Paleta fikse, të punuara me dorë. Nuk ka nevojë për personalizim - thjesht trokitni lehtë për të aplikuar.';

  @override
  String get deleteBookmarkQuestion => 'Të fshihet faqerojtësi?';

  @override
  String get cancel => 'Anulo';

  @override
  String get delete => 'Fshije';

  @override
  String get bookmarkSaved => 'Faqeshënuesi u ruajt';

  @override
  String get couldNotDeleteBookmark => 'Faqeshënuesi nuk mund të fshihej.';

  @override
  String couldNotNavigate(Object reference) {
    return 'Nuk mund të lundrohej te $reference.';
  }

  @override
  String get pageNotFound => 'Faqja nuk u gjet';

  @override
  String noRouteDefined(Object routeName) {
    return 'Nuk është përcaktuar asnjë itinerar për \"$routeName\"';
  }

  @override
  String get english => 'anglisht';

  @override
  String get spanish => 'Español';

  @override
  String get systemDefault => 'Parazgjedhja e sistemit';

  @override
  String get languageStatusEnglish => 'Rendit anglisht aktiv';

  @override
  String get languageStatusSystem => 'Përdorimi i gjuhës së sistemit';

  @override
  String languageStatusSelected(Object languageName) {
    return 'Gjuha e zgjedhur: $languageName';
  }

  @override
  String get themeLabel => 'Tema';

  @override
  String get notFoundTitle => 'Faqja nuk u gjet';

  @override
  String get loadingCyberBible => 'Po ngarkohet Bibla Kibernetike...';

  @override
  String get couldNotOpenDatabase =>
      'Baza e të dhënave të Biblës nuk mund të hapej. Ju lutemi provoni përsëri.';

  @override
  String get homeTagline =>
      'Një aplikacion falas dhe me burim të hapur për studimin e Biblës';

  @override
  String get readTheBible => 'Lexoni Biblën';

  @override
  String get settingsTooltip => 'Cilësimet';

  @override
  String get themeChoose => 'Zgjidhni Temë';

  @override
  String get customThemes => 'Tema të personalizueshme';

  @override
  String get customThemesSubtitle =>
      'Prekni një kartë për të zgjedhur një ngjyrë të theksuar. \"E bardha klasike\" gjithashtu mbështet modalitetet e dritës, të errët dhe të sistemit.';

  @override
  String get setThemesLabel => 'VENDOSI TEMA';

  @override
  String get deleteBookmarkDialog => 'Të fshihet faqerojtësi?';

  @override
  String removeBookmarkMessage(Object details, Object reference) {
    return 'Të hiqet \"$reference\"$details?\n\nKjo nuk mund të zhbëhet.';
  }

  @override
  String get couldNotLoadBookmarks =>
      'Faqeshënuesit nuk mund të ngarkoheshin. Ju lutemi provoni përsëri.';

  @override
  String get bookmarkSavedMessage => 'Faqeshënuesi u ruajt';

  @override
  String get couldNotSaveBookmark => 'Faqeshënuesi nuk mund të ruhej.';

  @override
  String get noBookmarksMatchFilter =>
      'Asnjë faqeshënues nuk përputhet me këtë filtër.';

  @override
  String get clearFilter => 'Pastro filtrin';

  @override
  String get traditionalOrderLabel => 'Rendi tradicional';

  @override
  String get alphabeticalOrderLabel => 'Rendi alfabetik';

  @override
  String get bookmarksTabLabel => 'Faqerojtësit';

  @override
  String get fullChapter => 'Kapitulli i plotë';

  @override
  String get addBookmark => 'Shto faqeshënues';

  @override
  String get selectVerse => 'Zgjidhni Vargun';

  @override
  String get labelOptional => 'Etiketa (opsionale)';

  @override
  String get notesOptional => 'Shënime (opsionale)';

  @override
  String get save => 'Ruaj';

  @override
  String get goToVerse => 'Shkoni te Vargu';

  @override
  String verseTitle(Object verse) {
    return 'Vargu $verse';
  }

  @override
  String chapterTitle(Object chapter) {
    return 'Kapitulli $chapter';
  }

  @override
  String get switchToFullChapter => 'Kalo te faqerojtësi i kapitullit të plotë';

  @override
  String get bookmarkSheetCancel => 'Anulo, mbylle fletën e faqeshënuesit';

  @override
  String get pickCustomAccent => 'Zgjidhni një theks të personalizuar';

  @override
  String get apply => 'Aplikoni';

  @override
  String get custom => 'Me porosi';

  @override
  String get brightnessSystem => 'Sistemi';

  @override
  String get brightnessLight => 'Drita';

  @override
  String get brightnessDark => 'E errët';

  @override
  String get selectBook => 'Zgjidhni një libër';

  @override
  String get bookmarkFilterAll => 'Të gjitha';

  @override
  String get bookmarkFilterUnlabeled => 'E paetiketuar';

  @override
  String get bookmarkSortRecent => 'Së pari e fundit';

  @override
  String get bookmarkSortCanonical => 'Rendi kanonik';

  @override
  String get chapterRetry => 'Provo sërish';

  @override
  String get fontSize => 'Madhësia e shkronjave';

  @override
  String fontSizePixels(Object size) {
    return '$size px';
  }

  @override
  String get fontSizeSlider => 'Rrëshqitësi i madhësisë së shkronjave';

  @override
  String get fontSizeSliderHint => 'Rrëshqitni për ta rregulluar nga 12 në 28';

  @override
  String get fontPreview =>
      '\"Në fillim Zoti krijoi qiejt dhe tokën.\" — Zanafilla 1:1';

  @override
  String get showVerseNumbersSubtitle =>
      'Shfaqni mbishkrimet e numrave të vargjeve në ekranin e leximit.';

  @override
  String get showSectionHeadingsSubtitle =>
      'Shfaqni titujt e seksionit dhe të Psalmeve ndërmjet pasazheve.';

  @override
  String get wordsOfChristSubtitle =>
      'Trego fjalët e Jezusit me të kuqe. Çaktivizo për një ngjyrë të vetme teksti.';

  @override
  String get verseFormatTitle => 'Formati i vargjeve';

  @override
  String get verseFormatSubtitle =>
      'Zgjidhni se si paraqitet teksti i shkrimit të shenjtë.';

  @override
  String get paragraphMode => 'Paragrafi';

  @override
  String get verseListMode => 'Lista e vargjeve';

  @override
  String get paragraphModeTooltip => 'Mënyra e paragrafit';

  @override
  String get verseListModeTooltip => 'Modaliteti i listës së vargjeve';

  @override
  String get paragraphModeDescription =>
      'Teksti rrjedh vazhdimisht me paragrafë të prerë, si një Bibël e printuar.';

  @override
  String get verseListModeDescription =>
      'Çdo paragraf i shkrimit të shenjtë fillon në rreshtin e vet, duke i bërë grupet e vargjeve të lehta për t\'u dalluar.';

  @override
  String get deleteBookmarkTooltip => 'Fshi faqerojtësin';

  @override
  String deleteBookmarkSemantics(Object reference) {
    return 'Fshi faqerojtësin $reference';
  }

  @override
  String sortBookmarksTooltip(Object sortOrder) {
    return 'Rendit: $sortOrder';
  }

  @override
  String get noBookmarksYet => 'Nuk ka ende faqeshënues.';

  @override
  String get noBookmarksYetHint =>
      'Prekni ikonën e faqeshënuesit gjatë leximit për të ruajtur një vendndodhje.';

  @override
  String bookmarkReferenceNavigationError(Object reference) {
    return 'Nuk mund të lundrohej te $reference.';
  }

  @override
  String themeCardSemantics(Object description, Object name, Object selected) {
    return '$name tema$selected. $description';
  }

  @override
  String get selectedThemeSuffix => ', i zgjedhur aktualisht';

  @override
  String get customisableAccentDescription =>
      'Ngjyra thekse e personalizueshme.';

  @override
  String get fixedPaletteDescription => 'Paleta e fiksuar.';

  @override
  String accentColourTitle(Object themeName) {
    return 'Ngjyra e theksit — $themeName';
  }

  @override
  String get brightnessMode => 'MODALI I NDRIÇIMIT';

  @override
  String get lightMode => 'Modaliteti i dritës';

  @override
  String get followSystemMode => 'Ndiqni modalitetin e sistemit';

  @override
  String get darkMode => 'Modaliteti i errët';

  @override
  String get customColourPicker => 'Zgjedhës i personalizuar i ngjyrave';

  @override
  String get customColourTooltip => 'Ngjyra e personalizuar…';

  @override
  String get couldNotLoadBooks =>
      'Lista e librave nuk mund të ngarkohej. Ju lutemi provoni përsëri.';

  @override
  String chapterLabel(Object chapter) {
    return 'Kapitulli $chapter';
  }

  @override
  String get traditionalOrderBooks => 'Librat e porosive tradicionale';

  @override
  String get alphabeticalOrderBooks => 'Librat e rendit alfabetik';

  @override
  String get home => 'Shtëpi';

  @override
  String get addBookmarkTooltip => 'Shto faqerojtës';

  @override
  String get chooseBookChapter => 'Zgjidhni librin dhe kapitullin';

  @override
  String get chooseVerse => 'Zgjidhni vargun';

  @override
  String get bookChapterQuickNavigation =>
      'Navigim i shpejtë i librit dhe kapitullit';

  @override
  String get verseQuickNavigation => 'Lundrim i shpejtë i vargjeve';

  @override
  String get backToBooks => 'Kthehu te librat';

  @override
  String get selectBookTitle => 'Zgjidhni Libër';

  @override
  String selectChapterTitle(Object bookName) {
    return 'Zgjidh kapitullin ($bookName)';
  }

  @override
  String chapterSelectionLabel(Object chapter) {
    return 'Kapitulli $chapter';
  }

  @override
  String verseSelectionLabel(Object verse) {
    return 'Vargu $verse';
  }

  @override
  String fullChapterReference(Object bookName, Object chapter) {
    return 'Kapitulli i plotë: $bookName $chapter';
  }

  @override
  String get memorizeHint => 'Mësoni përmendësh';

  @override
  String get addNoteHint => 'Shto një shënim...';

  @override
  String get languageSearchHint => 'Kërkoni gjuhë';

  @override
  String get languageModuleInstalled => 'Instaluar';

  @override
  String get languageModulePending => 'Përkthimi me makinë në pritje';

  @override
  String get languageNoMatches => 'Asnjë gjuhë nuk përputhet me kërkimin tuaj.';

  @override
  String get languageCatalogDescription =>
      'Gjuhët e shënuara si të instaluara punojnë jashtë linje. Gjuhë të tjera do të shtohen si module të përkthyera me makinë.';

  @override
  String get saveBookmarkSemantics => 'Ruaj faqerojtësin';

  @override
  String get couldNotLoadChapter =>
      'Kapitulli nuk mund të ngarkohej. Ju lutemi provoni përsëri.';

  @override
  String get couldNotLoadChapters =>
      'Kapitujt nuk mund të ngarkoheshin. Ju lutemi provoni përsëri.';

  @override
  String verseWithText(Object text, Object verse) {
    return 'Vargu $verse: $text';
  }

  @override
  String accentSwatchSemantics(Object name, Object selected) {
    return '$name ngjyra e theksit$selected';
  }

  @override
  String get oldTestament => 'Dhiata e Vjetër';

  @override
  String get newTestament => 'Dhiata e Re';

  @override
  String get deuterocanonApocrypha => 'Deuterocanon / Apokrifa';
}
