// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Zarma (`dje`).
class AppLocalizationsDje extends AppLocalizations {
  AppLocalizationsDje([String locale = 'dje']) : super(locale);

  @override
  String get settingsTitle => 'Paramètres';

  @override
  String get languageSection => 'Langue';

  @override
  String get useSystemLanguage => 'Utiliser la langue du système';

  @override
  String get useSystemLanguageSubtitle =>
      'Utiliser la langue de l’appareil par défaut.';

  @override
  String get currentLanguage => 'Langue actuelle';

  @override
  String get appLanguage => 'Langue de l’application';

  @override
  String get chooseLanguage => 'Choisir la langue';

  @override
  String get theme => 'Thème';

  @override
  String get appearance => 'Apparence';

  @override
  String get textSection => 'Texte';

  @override
  String get readingFormatSection => 'Format de lecture';

  @override
  String get displaySection => 'Affichage';

  @override
  String get verseNumbers => 'Numéros des versets';

  @override
  String get sectionHeadings => 'Titres des sections';

  @override
  String get redLetterText => 'Texte en rouge';

  @override
  String get selectABook => 'Choisir un livre';

  @override
  String get traditionalOrder => 'Ordre traditionnel';

  @override
  String get alphabeticalOrder => 'Ordre alphabétique';

  @override
  String get bookmarks => 'Signets';

  @override
  String get retry => 'Réessayer';

  @override
  String get chooseTheme => 'Choisir le thème';

  @override
  String get customisableThemes => 'Thèmes personnalisables';

  @override
  String get customisableThemesSubtitle =>
      'Tap a card to choose an accent colour. \"Classic White\" also supports Light, Dark and System modes.';

  @override
  String get setThemes => 'APPLIQUER LES THÈMES';

  @override
  String get setThemesSubtitle =>
      'Fixed, hand-crafted palettes. No customisation needed — just tap to apply.';

  @override
  String get deleteBookmarkQuestion => 'Supprimer le signet ?';

  @override
  String get cancel => 'Annuler';

  @override
  String get delete => 'Supprimer';

  @override
  String get bookmarkSaved => 'Signet enregistré';

  @override
  String get couldNotDeleteBookmark => 'Impossible de supprimer le signet.';

  @override
  String couldNotNavigate(Object reference) {
    return 'Could not navigate to $reference.';
  }

  @override
  String get pageNotFound => 'Page introuvable';

  @override
  String noRouteDefined(Object routeName) {
    return 'No route defined for \"$routeName\"';
  }

  @override
  String get english => 'Anglais';

  @override
  String get spanish => 'Espagnol';

  @override
  String get systemDefault => 'Paramètre du système';

  @override
  String get languageStatusEnglish => 'English fallback active';

  @override
  String get languageStatusSystem => 'Utilise la langue du système';

  @override
  String languageStatusSelected(Object languageName) {
    return 'Langue choisie : $languageName';
  }

  @override
  String get themeLabel => 'Thème';

  @override
  String get notFoundTitle => 'Page introuvable';

  @override
  String get loadingCyberBible => 'Loading Cyber Bible...';

  @override
  String get couldNotOpenDatabase =>
      'Could not open the Bible database. Please try again.';

  @override
  String get homeTagline => 'A free and open source Bible study app';

  @override
  String get readTheBible => 'Lire la Bible';

  @override
  String get settingsTooltip => 'Paramètres';

  @override
  String get themeChoose => 'Choisir le thème';

  @override
  String get customThemes => 'Thèmes personnalisés';

  @override
  String get customThemesSubtitle =>
      'Tap a card to choose an accent colour. \"Classic White\" also supports Light, Dark and System modes.';

  @override
  String get setThemesLabel => 'APPLIQUER LES THÈMES';

  @override
  String get deleteBookmarkDialog => 'Supprimer le signet ?';

  @override
  String removeBookmarkMessage(Object details, Object reference) {
    return 'Remove \"$reference\"$details?\n\nThis cannot be undone.';
  }

  @override
  String get couldNotLoadBookmarks =>
      'Could not load bookmarks. Please try again.';

  @override
  String get bookmarkSavedMessage => 'Signet enregistré';

  @override
  String get couldNotSaveBookmark => 'Impossible d’enregistrer le signet.';

  @override
  String get noBookmarksMatchFilter => 'Aucun signet ne correspond au filtre.';

  @override
  String get clearFilter => 'Effacer le filtre';

  @override
  String get traditionalOrderLabel => 'Ordre traditionnel';

  @override
  String get alphabeticalOrderLabel => 'Ordre alphabétique';

  @override
  String get bookmarksTabLabel => 'Signets';

  @override
  String get fullChapter => 'Chapitre complet';

  @override
  String get addBookmark => 'Ajouter un signet';

  @override
  String get selectVerse => 'Choisir un verset';

  @override
  String get labelOptional => 'Étiquette (facultative)';

  @override
  String get notesOptional => 'Notes (facultatives)';

  @override
  String get save => 'Enregistrer';

  @override
  String get goToVerse => 'Aller au verset';

  @override
  String verseTitle(Object verse) {
    return 'Verset $verse';
  }

  @override
  String chapterTitle(Object chapter) {
    return 'Chapitre $chapter';
  }

  @override
  String get switchToFullChapter => 'Afficher le chapitre complet';

  @override
  String get bookmarkSheetCancel => 'Annuler';

  @override
  String get pickCustomAccent => 'Choose a custom accent';

  @override
  String get apply => 'Appliquer';

  @override
  String get custom => 'Personnalisé';

  @override
  String get brightnessSystem => 'Système';

  @override
  String get brightnessLight => 'Clair';

  @override
  String get brightnessDark => 'Sombre';

  @override
  String get selectBook => 'Choisir un livre';

  @override
  String get bookmarkFilterAll => 'Tous';

  @override
  String get bookmarkFilterUnlabeled => 'Sans étiquette';

  @override
  String get bookmarkSortRecent => 'Plus récents';

  @override
  String get bookmarkSortCanonical => 'Ordre biblique';

  @override
  String get chapterRetry => 'Réessayer';

  @override
  String get fontSize => 'Taille du texte';

  @override
  String fontSizePixels(Object size) {
    return '$size px';
  }

  @override
  String get fontSizeSlider => 'Taille du texte';

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
  String get paragraphMode => 'Mode paragraphe';

  @override
  String get verseListMode => 'Mode liste de versets';

  @override
  String get paragraphModeTooltip => 'Choisir le mode paragraphe';

  @override
  String get verseListModeTooltip => 'Choisir le mode liste de versets';

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
  String get noBookmarksYet => 'Aucun signet pour le moment.';

  @override
  String get noBookmarksYetHint => 'Ajoutez un signet pendant la lecture.';

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
  String get lightMode => 'Clair';

  @override
  String get followSystemMode => 'Suivre le système';

  @override
  String get darkMode => 'Sombre';

  @override
  String get customColourPicker => 'Custom colour picker';

  @override
  String get customColourTooltip => 'Custom color…';

  @override
  String get couldNotLoadBooks => 'Impossible de charger les livres.';

  @override
  String chapterLabel(Object chapter) {
    return 'Chapitre $chapter';
  }

  @override
  String get traditionalOrderBooks => 'Ordre traditionnel';

  @override
  String get alphabeticalOrderBooks => 'Ordre alphabétique';

  @override
  String get home => 'Accueil';

  @override
  String get addBookmarkTooltip => 'Ajouter un signet';

  @override
  String get chooseBookChapter => 'Choisir un livre et un chapitre';

  @override
  String get chooseVerse => 'Choisir un verset';

  @override
  String get bookChapterQuickNavigation => 'Book and chapter quick navigation';

  @override
  String get verseQuickNavigation => 'Verse quick navigation';

  @override
  String get backToBooks => 'Retour aux livres';

  @override
  String get selectBookTitle => 'Choisir un livre';

  @override
  String selectChapterTitle(Object bookName) {
    return 'Choisir un chapitre de $bookName';
  }

  @override
  String chapterSelectionLabel(Object chapter) {
    return 'Chapitre $chapter';
  }

  @override
  String verseSelectionLabel(Object verse) {
    return 'Verset $verse';
  }

  @override
  String fullChapterReference(Object bookName, Object chapter) {
    return 'Chapitre complet : $bookName $chapter';
  }

  @override
  String get memorizeHint => 'Memorize';

  @override
  String get addNoteHint => 'Add a note...';

  @override
  String get languageSearchHint => 'Rechercher une langue';

  @override
  String get languageModuleInstalled => 'Module installé';

  @override
  String get languageModulePending => 'Module non installé';

  @override
  String get languageNoMatches => 'Aucune langue correspondante.';

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
  String get oldTestament => 'Ancien Testament';

  @override
  String get newTestament => 'Nouveau Testament';

  @override
  String get deuterocanonApocrypha => 'Deutérocanonique / Apocryphe';

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
