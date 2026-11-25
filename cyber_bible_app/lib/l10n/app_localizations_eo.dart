// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Esperanto (`eo`).
class AppLocalizationsEo extends AppLocalizations {
  AppLocalizationsEo([String locale = 'eo']) : super(locale);

  @override
  String get settingsTitle => 'Agordoj';

  @override
  String get languageSection => 'Lingvo';

  @override
  String get useSystemLanguage => 'Uzu sisteman lingvon';

  @override
  String get useSystemLanguageSubtitle =>
      'Defaŭlte kongruu kun la aparatlingvo.';

  @override
  String get currentLanguage => 'Nuna lingvo';

  @override
  String get appLanguage => 'Aplingvo';

  @override
  String get chooseLanguage => 'Elektu lingvon';

  @override
  String get theme => 'Temo';

  @override
  String get appearance => 'Aspekto';

  @override
  String get textSection => 'Teksto';

  @override
  String get readingFormatSection => 'Formato de Legado';

  @override
  String get displaySection => 'Montru';

  @override
  String get verseNumbers => 'Versaj Nombroj';

  @override
  String get sectionHeadings => 'Sekciaj rubrikoj';

  @override
  String get redLetterText => 'Ruĝa-Letera Teksto';

  @override
  String get selectABook => 'Elektu Libron';

  @override
  String get traditionalOrder => 'Tradicia ordo';

  @override
  String get alphabeticalOrder => 'Alfabeta ordo';

  @override
  String get bookmarks => 'Legosignoj';

  @override
  String get retry => 'Reprovi';

  @override
  String get chooseTheme => 'Elektu Temon';

  @override
  String get customisableThemes => 'Agordigeblaj Temoj';

  @override
  String get customisableThemesSubtitle =>
      'Frapu karton por elekti akcentkoloron. \"Classic White\" ankaŭ subtenas Lumo, Malhela kaj Sistema modoj.';

  @override
  String get setThemes => 'ARRU TEMOJ';

  @override
  String get setThemesSubtitle =>
      'Fiksaj, mane faritaj paletroj. Ne necesas personigo - nur frapeti por apliki.';

  @override
  String get deleteBookmarkQuestion => 'Ĉu forigi legosignon?';

  @override
  String get cancel => 'Nuligi';

  @override
  String get delete => 'Forigi';

  @override
  String get bookmarkSaved => 'Legomarko konservita';

  @override
  String get couldNotDeleteBookmark => 'Ne eblis forigi legosignon.';

  @override
  String couldNotNavigate(Object reference) {
    return 'Ne eblis navigi al $reference.';
  }

  @override
  String get pageNotFound => 'Paĝo Ne Trovita';

  @override
  String noRouteDefined(Object routeName) {
    return 'Neniu itinero difinita por \"$routeName\"';
  }

  @override
  String get english => 'la angla';

  @override
  String get spanish => 'Hispana';

  @override
  String get systemDefault => 'Sistemo defaŭlta';

  @override
  String get languageStatusEnglish => 'Angla falo aktiva';

  @override
  String get languageStatusSystem => 'Uzante sistemlingvon';

  @override
  String languageStatusSelected(Object languageName) {
    return 'Elektita lingvo: $languageName';
  }

  @override
  String get themeLabel => 'Temo';

  @override
  String get notFoundTitle => 'Paĝo Ne Trovita';

  @override
  String get loadingCyberBible => 'Ŝarĝante Ciberan Biblion...';

  @override
  String get couldNotOpenDatabase =>
      'Ne eblis malfermi la Biblian datumbazon. Bonvolu provi denove.';

  @override
  String get homeTagline => 'Senpaga kaj malfermfonta Biblia studado';

  @override
  String get readTheBible => 'Legu la Biblion';

  @override
  String get settingsTooltip => 'Agordoj';

  @override
  String get themeChoose => 'Elektu Temon';

  @override
  String get customThemes => 'Agordigeblaj Temoj';

  @override
  String get customThemesSubtitle =>
      'Frapu karton por elekti akcentkoloron. \"Classic White\" ankaŭ subtenas Lumo, Malhela kaj Sistema modoj.';

  @override
  String get setThemesLabel => 'ARRU TEMOJ';

  @override
  String get deleteBookmarkDialog => 'Ĉu forigi legosignon?';

  @override
  String removeBookmarkMessage(Object details, Object reference) {
    return 'Ĉu forigi \"$reference\"$details?\n\nĈi tio ne povas esti malfarita.';
  }

  @override
  String get couldNotLoadBookmarks =>
      'Ne eblis ŝargi legosignojn. Bonvolu provi denove.';

  @override
  String get bookmarkSavedMessage => 'Legomarko konservita';

  @override
  String get couldNotSaveBookmark => 'Ne eblis konservi legosignon.';

  @override
  String get noBookmarksMatchFilter =>
      'Neniuj legosignoj kongruas kun ĉi tiu filtrilo.';

  @override
  String get clearFilter => 'Malplenigi filtrilon';

  @override
  String get traditionalOrderLabel => 'Tradicia ordo';

  @override
  String get alphabeticalOrderLabel => 'Alfabeta ordo';

  @override
  String get bookmarksTabLabel => 'Legosignoj';

  @override
  String get fullChapter => 'Plena ĉapitro';

  @override
  String get addBookmark => 'Aldonu legosignon';

  @override
  String get selectVerse => 'Elektu Verson';

  @override
  String get labelOptional => 'Etikedo (laŭvola)';

  @override
  String get notesOptional => 'Notoj (laŭvola)';

  @override
  String get save => 'Konservu';

  @override
  String get goToVerse => 'Iru al Verso';

  @override
  String verseTitle(Object verse) {
    return 'Verso $verse';
  }

  @override
  String chapterTitle(Object chapter) {
    return 'Ĉapitro $chapter';
  }

  @override
  String get switchToFullChapter => 'Ŝanĝu al plena ĉapitra legosigno';

  @override
  String get bookmarkSheetCancel => 'Nuligi, fermu legosignfolion';

  @override
  String get pickCustomAccent => 'Elektu kutiman akcenton';

  @override
  String get apply => 'Apliki';

  @override
  String get custom => 'Kutimo';

  @override
  String get brightnessSystem => 'Sistemo';

  @override
  String get brightnessLight => 'Lumo';

  @override
  String get brightnessDark => 'Mallumo';

  @override
  String get selectBook => 'Elektu Libron';

  @override
  String get bookmarkFilterAll => 'Ĉiuj';

  @override
  String get bookmarkFilterUnlabeled => 'Senetikedita';

  @override
  String get bookmarkSortRecent => 'Lastatempa unue';

  @override
  String get bookmarkSortCanonical => 'Kanona ordo';

  @override
  String get chapterRetry => 'Reprovi';

  @override
  String get fontSize => 'Tiparo Grandeco';

  @override
  String fontSizePixels(Object size) {
    return '$size px';
  }

  @override
  String get fontSizeSlider => 'Tipara grandeco glitilo';

  @override
  String get fontSizeSliderHint => 'Glitu por ĝustigi de 12 ĝis 28';

  @override
  String get fontPreview =>
      '\"En la komenco Dio kreis la ĉielon kaj la teron.\" — Gen 1:1';

  @override
  String get showVerseNumbersSubtitle =>
      'Montru versajn nombrosuperskribojn en la leganta ekrano.';

  @override
  String get showSectionHeadingsSubtitle =>
      'Montru sekciojn kaj psalmajn titolojn inter trairejoj.';

  @override
  String get wordsOfChristSubtitle =>
      'Montru la vortojn de Jesuo ruĝe. Malebligu por ununura tekstkoloro.';

  @override
  String get verseFormatTitle => 'Versa Formato';

  @override
  String get verseFormatSubtitle => 'Elektu kiel skriba teksto estas aranĝita.';

  @override
  String get paragraphMode => 'Paragrafo';

  @override
  String get verseListMode => 'Listo de versoj';

  @override
  String get paragraphModeTooltip => 'Paragrafreĝimo';

  @override
  String get verseListModeTooltip => 'Vers-lista reĝimo';

  @override
  String get paragraphModeDescription =>
      'Teksto fluas senĉese kun indentitaj alineoj, kiel presita Biblio.';

  @override
  String get verseListModeDescription =>
      'Ĉiu skriba alineo komenciĝas sur sia propra linio, igante versgrupojn facile ekvidi.';

  @override
  String get deleteBookmarkTooltip => 'Forigi legosignon';

  @override
  String deleteBookmarkSemantics(Object reference) {
    return 'Forigi legosignon $reference';
  }

  @override
  String sortBookmarksTooltip(Object sortOrder) {
    return 'Ordigi: $sortOrder';
  }

  @override
  String get noBookmarksYet => 'Ankoraŭ neniuj legosignoj.';

  @override
  String get noBookmarksYetHint =>
      'Frapu la legosignikon dum legado por konservi lokon.';

  @override
  String bookmarkReferenceNavigationError(Object reference) {
    return 'Ne eblis navigi al $reference.';
  }

  @override
  String themeCardSemantics(Object description, Object name, Object selected) {
    return '$name etoso$selected. $description';
  }

  @override
  String get selectedThemeSuffix => ', nuntempe elektita';

  @override
  String get customisableAccentDescription => 'Agordigebla akcentkoloro.';

  @override
  String get fixedPaletteDescription => 'Fiksa paletro.';

  @override
  String accentColourTitle(Object themeName) {
    return 'Akcenta Koloro — $themeName';
  }

  @override
  String get brightnessMode => 'REĜIMO DE BRILO';

  @override
  String get lightMode => 'Luma reĝimo';

  @override
  String get followSystemMode => 'Sekvu sisteman reĝimon';

  @override
  String get darkMode => 'Malhela reĝimo';

  @override
  String get customColourPicker => 'Propra kolorelektilo';

  @override
  String get customColourTooltip => 'Propra koloro...';

  @override
  String get couldNotLoadBooks =>
      'Ne eblis ŝargi la liston de libroj. Bonvolu provi denove.';

  @override
  String chapterLabel(Object chapter) {
    return 'Ĉapitro $chapter';
  }

  @override
  String get traditionalOrderBooks => 'Tradiciaj mendlibroj';

  @override
  String get alphabeticalOrderBooks => 'Alfabetaj ordolibroj';

  @override
  String get home => 'Hejmo';

  @override
  String get addBookmarkTooltip => 'Aldonu legosignon';

  @override
  String get chooseBookChapter => 'Elektu libron kaj ĉapitron';

  @override
  String get chooseVerse => 'Elektu verson';

  @override
  String get bookChapterQuickNavigation => 'Libro kaj ĉapitro rapida navigado';

  @override
  String get verseQuickNavigation => 'Versa rapida navigado';

  @override
  String get backToBooks => 'Reen al libroj';

  @override
  String get selectBookTitle => 'Elektu Libron';

  @override
  String selectChapterTitle(Object bookName) {
    return 'Elektu ĉapitron ($bookName)';
  }

  @override
  String chapterSelectionLabel(Object chapter) {
    return 'Ĉapitro $chapter';
  }

  @override
  String verseSelectionLabel(Object verse) {
    return 'Verso $verse';
  }

  @override
  String fullChapterReference(Object bookName, Object chapter) {
    return 'Plena ĉapitro: $bookName $chapter';
  }

  @override
  String get memorizeHint => 'Enmemorigi';

  @override
  String get addNoteHint => 'Aldonu noton...';

  @override
  String get languageSearchHint => 'Serĉu lingvojn';

  @override
  String get languageModuleInstalled => 'Instalita';

  @override
  String get languageModulePending => 'Atendata maŝintradukado';

  @override
  String get languageNoMatches => 'Neniuj lingvoj kongruas kun via serĉo.';

  @override
  String get languageCatalogDescription =>
      'Lingvoj markitaj kiel instalitaj funkcias eksterrete. Aliaj lingvoj estos aldonitaj kiel maŝintradukitaj moduloj.';

  @override
  String get saveBookmarkSemantics => 'Konservu legosignon';

  @override
  String get couldNotLoadChapter =>
      'Ne eblis ŝargi la ĉapitron. Bonvolu provi denove.';

  @override
  String get couldNotLoadChapters =>
      'Ne eblis ŝargi ĉapitrojn. Bonvolu provi denove.';

  @override
  String verseWithText(Object text, Object verse) {
    return 'Verso $verse: $text';
  }

  @override
  String accentSwatchSemantics(Object name, Object selected) {
    return '$name akcentokoloro$selected';
  }

  @override
  String get oldTestament => 'Malnova Testamento';

  @override
  String get newTestament => 'Nova Testamento';

  @override
  String get deuterocanonApocrypha => 'Deuterocanon/Apokrifoj';
}
