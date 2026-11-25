// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for French (`fr`).
class AppLocalizationsFr extends AppLocalizations {
  AppLocalizationsFr([String locale = 'fr']) : super(locale);

  @override
  String get settingsTitle => 'Paramètres';

  @override
  String get languageSection => 'Langue';

  @override
  String get useSystemLanguage => 'Utiliser la langue du système';

  @override
  String get useSystemLanguageSubtitle =>
      'Utiliser par défaut la langue de l\'appareil.';

  @override
  String get currentLanguage => 'Langue actuelle';

  @override
  String get appLanguage => 'Langue de l\'application';

  @override
  String get chooseLanguage => 'Choisir une langue';

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
  String get verseNumbers => 'Numéros de versets';

  @override
  String get sectionHeadings => 'Titres de sections';

  @override
  String get redLetterText => 'Paroles en rouge';

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
  String get chooseTheme => 'Choisir un thème';

  @override
  String get customisableThemes => 'Thèmes personnalisables';

  @override
  String get customisableThemesSubtitle =>
      'Touchez une carte pour choisir une couleur d\'accent. « Classic White » prend aussi en charge les modes clair, sombre et système.';

  @override
  String get setThemes => 'THÈMES FIXES';

  @override
  String get setThemesSubtitle =>
      'Palettes conçues à la main. Aucune personnalisation nécessaire : touchez simplement pour appliquer.';

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
    return 'Impossible d\'accéder à $reference.';
  }

  @override
  String get pageNotFound => 'Page introuvable';

  @override
  String noRouteDefined(Object routeName) {
    return 'Aucune route définie pour « $routeName »';
  }

  @override
  String get english => 'Anglais';

  @override
  String get spanish => 'Espagnol';

  @override
  String get systemDefault => 'Valeur par défaut du système';

  @override
  String get languageStatusEnglish => 'Utilisation de l\'anglais par défaut';

  @override
  String get languageStatusSystem => 'Langue du système utilisée';

  @override
  String languageStatusSelected(Object languageName) {
    return 'Langue sélectionnée : $languageName';
  }

  @override
  String get themeLabel => 'Thème';

  @override
  String get notFoundTitle => 'Page introuvable';

  @override
  String get loadingCyberBible => 'Chargement de Cyber Bible…';

  @override
  String get couldNotOpenDatabase =>
      'Impossible d\'ouvrir la base de données biblique. Réessayez.';

  @override
  String get homeTagline =>
      'Une application d\'étude biblique libre et open source';

  @override
  String get readTheBible => 'Lire la Bible';

  @override
  String get settingsTooltip => 'Paramètres';

  @override
  String get themeChoose => 'Choisir un thème';

  @override
  String get customThemes => 'Thèmes personnalisables';

  @override
  String get customThemesSubtitle =>
      'Touchez une carte pour choisir une couleur d\'accent. « Classic White » prend aussi en charge les modes clair, sombre et système.';

  @override
  String get setThemesLabel => 'THÈMES FIXES';

  @override
  String get deleteBookmarkDialog => 'Supprimer le signet ?';

  @override
  String removeBookmarkMessage(Object details, Object reference) {
    return 'Supprimer « $reference »$details ?\n\nCette action est irréversible.';
  }

  @override
  String get couldNotLoadBookmarks =>
      'Impossible de charger les signets. Réessayez.';

  @override
  String get bookmarkSavedMessage => 'Signet enregistré';

  @override
  String get couldNotSaveBookmark => 'Impossible d\'enregistrer le signet.';

  @override
  String get noBookmarksMatchFilter =>
      'Aucun signet ne correspond à ce filtre.';

  @override
  String get clearFilter => 'Effacer le filtre';

  @override
  String get traditionalOrderLabel => 'Ordre traditionnel';

  @override
  String get alphabeticalOrderLabel => 'Ordre alphabétique';

  @override
  String get bookmarksTabLabel => 'Signets';

  @override
  String get fullChapter => 'Chapitre entier';

  @override
  String get addBookmark => 'Ajouter un signet';

  @override
  String get selectVerse => 'Choisir un verset';

  @override
  String get labelOptional => 'Étiquette (facultatif)';

  @override
  String get notesOptional => 'Notes (facultatif)';

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
  String get switchToFullChapter => 'Passer au signet du chapitre entier';

  @override
  String get bookmarkSheetCancel => 'Annuler et fermer le panneau du signet';

  @override
  String get pickCustomAccent => 'Choisir une couleur d\'accent personnalisée';

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
  String get bookmarkSortRecent => 'Plus récents d\'abord';

  @override
  String get bookmarkSortCanonical => 'Ordre canonique';

  @override
  String get chapterRetry => 'Réessayer';

  @override
  String get fontSize => 'Taille du texte';

  @override
  String fontSizePixels(Object size) {
    return '$size px';
  }

  @override
  String get fontSizeSlider => 'Curseur de taille du texte';

  @override
  String get fontSizeSliderHint => 'Faites glisser pour régler de 12 à 28';

  @override
  String get fontPreview =>
      '« Au commencement, Dieu créa les cieux et la terre. » — Gn 1:1';

  @override
  String get showVerseNumbersSubtitle =>
      'Afficher les numéros de versets en exposant dans l\'écran de lecture.';

  @override
  String get showSectionHeadingsSubtitle =>
      'Afficher les titres de sections et de psaumes entre les passages.';

  @override
  String get wordsOfChristSubtitle =>
      'Afficher les paroles de Jésus en rouge. Désactivez cette option pour une seule couleur.';

  @override
  String get verseFormatTitle => 'Format des versets';

  @override
  String get verseFormatSubtitle =>
      'Choisissez la présentation du texte biblique.';

  @override
  String get paragraphMode => 'Paragraphe';

  @override
  String get verseListMode => 'Liste de versets';

  @override
  String get paragraphModeTooltip => 'Mode paragraphe';

  @override
  String get verseListModeTooltip => 'Mode liste de versets';

  @override
  String get paragraphModeDescription =>
      'Le texte s\'écoule avec des paragraphes indentés, comme dans une Bible imprimée.';

  @override
  String get verseListModeDescription =>
      'Chaque paragraphe biblique commence sur sa propre ligne pour repérer facilement les groupes de versets.';

  @override
  String get deleteBookmarkTooltip => 'Supprimer le signet';

  @override
  String deleteBookmarkSemantics(Object reference) {
    return 'Supprimer le signet $reference';
  }

  @override
  String sortBookmarksTooltip(Object sortOrder) {
    return 'Trier : $sortOrder';
  }

  @override
  String get noBookmarksYet => 'Aucun signet pour le moment.';

  @override
  String get noBookmarksYetHint =>
      'Touchez l\'icône de signet pendant la lecture pour enregistrer un emplacement.';

  @override
  String bookmarkReferenceNavigationError(Object reference) {
    return 'Impossible d\'accéder à $reference.';
  }

  @override
  String themeCardSemantics(Object description, Object name, Object selected) {
    return 'Thème $name$selected. $description';
  }

  @override
  String get selectedThemeSuffix => ', actuellement sélectionné';

  @override
  String get customisableAccentDescription =>
      'Couleur d\'accent personnalisable.';

  @override
  String get fixedPaletteDescription => 'Palette fixe.';

  @override
  String accentColourTitle(Object themeName) {
    return 'Couleur d\'accent — $themeName';
  }

  @override
  String get brightnessMode => 'MODE DE LUMINOSITÉ';

  @override
  String get lightMode => 'Mode clair';

  @override
  String get followSystemMode => 'Suivre le mode du système';

  @override
  String get darkMode => 'Mode sombre';

  @override
  String get customColourPicker => 'Sélecteur de couleur personnalisé';

  @override
  String get customColourTooltip => 'Couleur personnalisée…';

  @override
  String get couldNotLoadBooks =>
      'Impossible de charger la liste des livres. Réessayez.';

  @override
  String chapterLabel(Object chapter) {
    return 'Chapitre $chapter';
  }

  @override
  String get traditionalOrderBooks => 'Livres dans l\'ordre traditionnel';

  @override
  String get alphabeticalOrderBooks => 'Livres dans l\'ordre alphabétique';

  @override
  String get home => 'Accueil';

  @override
  String get addBookmarkTooltip => 'Ajouter un signet';

  @override
  String get chooseBookChapter => 'Choisir un livre et un chapitre';

  @override
  String get chooseVerse => 'Choisir un verset';

  @override
  String get bookChapterQuickNavigation =>
      'Navigation rapide du livre et du chapitre';

  @override
  String get verseQuickNavigation => 'Navigation rapide des versets';

  @override
  String get backToBooks => 'Retour aux livres';

  @override
  String get selectBookTitle => 'Choisir un livre';

  @override
  String selectChapterTitle(Object bookName) {
    return 'Choisir un chapitre ($bookName)';
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
    return 'Chapitre entier : $bookName $chapter';
  }

  @override
  String get memorizeHint => 'À mémoriser';

  @override
  String get addNoteHint => 'Ajouter une note…';

  @override
  String get languageSearchHint => 'Rechercher une langue';

  @override
  String get languageModuleInstalled => 'Installé';

  @override
  String get languageModulePending => 'Traduction automatique en attente';

  @override
  String get languageNoMatches =>
      'Aucune langue ne correspond à votre recherche.';

  @override
  String get languageCatalogDescription =>
      'Les langues installées fonctionnent hors ligne. Les autres seront ajoutées sous forme de modules traduits automatiquement.';

  @override
  String get saveBookmarkSemantics => 'Enregistrer le signet';

  @override
  String get couldNotLoadChapter =>
      'Impossible de charger le chapitre. Réessayez.';

  @override
  String get couldNotLoadChapters =>
      'Impossible de charger les chapitres. Réessayez.';

  @override
  String verseWithText(Object text, Object verse) {
    return 'Verset $verse : $text';
  }

  @override
  String accentSwatchSemantics(Object name, Object selected) {
    return 'Couleur d\'accent $name$selected';
  }

  @override
  String get oldTestament => 'Ancien Testament';

  @override
  String get newTestament => 'Nouveau Testament';

  @override
  String get deuterocanonApocrypha => 'Deutérocanoniques / Apocryphes';
}
