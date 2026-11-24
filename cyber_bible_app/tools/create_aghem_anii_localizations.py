"""Direct-AI one-time generator for Aghem and Anii UI bundles.

These drafts use practical French UI terminology for common controls and retain
English for uncommon strings where a reliable native wording is not available.
The 147 shared keys and every ICU placeholder are inherited unchanged.
"""

import json
from pathlib import Path

root = Path('.')
source = json.loads((root / 'lib/l10n/app_en.arb').read_text(encoding='utf-8'))

common = {
    'settingsTitle': 'Paramètres', 'languageSection': 'Langue',
    'useSystemLanguage': 'Utiliser la langue du système',
    'useSystemLanguageSubtitle': 'Utilise la langue de l’appareil par défaut.',
    'currentLanguage': 'Langue actuelle', 'appLanguage': 'Langue de l’application',
    'chooseLanguage': 'Choisir la langue', 'theme': 'Thème', 'appearance': 'Apparence',
    'textSection': 'Texte', 'readingFormatSection': 'Format de lecture',
    'displaySection': 'Affichage', 'verseNumbers': 'Numéros des versets',
    'sectionHeadings': 'Titres des sections', 'redLetterText': 'Texte en rouge',
    'selectABook': 'Choisir un livre', 'traditionalOrder': 'Ordre traditionnel',
    'alphabeticalOrder': 'Ordre alphabétique', 'bookmarks': 'Signets',
    'retry': 'Réessayer', 'chooseTheme': 'Choisir le thème',
    'customisableThemes': 'Thèmes personnalisables',
    'setThemes': 'APPLIQUER LES THÈMES', 'setThemesLabel': 'APPLIQUER LES THÈMES',
    'deleteBookmarkQuestion': 'Supprimer le signet ?', 'deleteBookmarkDialog': 'Supprimer le signet ?',
    'cancel': 'Annuler', 'delete': 'Supprimer', 'bookmarkSaved': 'Signet enregistré',
    'bookmarkSavedMessage': 'Signet enregistré', 'couldNotDeleteBookmark': 'Impossible de supprimer le signet.',
    'couldNotSaveBookmark': 'Impossible d’enregistrer le signet.', 'couldNotNavigate': 'Impossible d’aller à {reference}.',
    'pageNotFound': 'Page introuvable', 'noRouteDefined': 'Aucune route définie pour « {routeName} »',
    'english': 'Anglais', 'spanish': 'Espagnol', 'systemDefault': 'Paramètre du système',
    'languageStatusSystem': 'Utilise la langue du système',
    'languageStatusSelected': 'Langue choisie : {languageName}',
    'themeLabel': 'Thème', 'notFoundTitle': 'Page introuvable',
    'loadingCyberBible': 'Chargement de Cyber Bible…',
    'couldNotOpenDatabase': 'Impossible d’ouvrir la base biblique. Veuillez réessayer.',
    'readTheBible': 'Lire la Bible', 'settingsTooltip': 'Paramètres',
    'themeChoose': 'Choisir le thème', 'customThemes': 'Thèmes personnalisés',
    'clearFilter': 'Effacer le filtre', 'traditionalOrderLabel': 'Ordre traditionnel',
    'alphabeticalOrderLabel': 'Ordre alphabétique', 'bookmarksTabLabel': 'Signets',
    'fullChapter': 'Chapitre complet', 'addBookmark': 'Ajouter un signet',
    'selectVerse': 'Choisir un verset', 'labelOptional': 'Étiquette (facultative)',
    'notesOptional': 'Notes (facultatives)', 'save': 'Enregistrer',
    'goToVerse': 'Aller au verset', 'verseTitle': 'Verset {verse}',
    'chapterTitle': 'Chapitre {chapter}', 'switchToFullChapter': 'Afficher le chapitre complet',
    'bookmarkSheetCancel': 'Annuler', 'apply': 'Appliquer', 'custom': 'Personnalisé',
    'brightnessSystem': 'Système', 'brightnessLight': 'Clair', 'brightnessDark': 'Sombre',
    'selectBook': 'Choisir un livre', 'bookmarkFilterAll': 'Tous',
    'bookmarkFilterUnlabeled': 'Sans étiquette', 'bookmarkSortRecent': 'Plus récents',
    'bookmarkSortCanonical': 'Ordre biblique', 'chapterRetry': 'Réessayer',
    'fontSize': 'Taille du texte', 'fontSizePixels': '{size} px',
    'fontSizeSlider': 'Taille du texte', 'fontPreview': '« Ta parole est une lampe. » — Genèse 1:1',
    'paragraphMode': 'Mode paragraphe', 'verseListMode': 'Mode liste de versets',
    'paragraphModeTooltip': 'Choisir le mode paragraphe',
    'verseListModeTooltip': 'Choisir le mode liste de versets',
    'paragraphModeDescription': 'Afficher les versets sous forme de paragraphes naturels.',
    'verseListModeDescription': 'Afficher chaque verset sur une ligne séparée.',
    'deleteBookmarkTooltip': 'Supprimer le signet choisi',
    'sortBookmarksTooltip': 'Trier les signets : {sortOrder}',
    'noBookmarksYet': 'Aucun signet pour le moment.',
    'noBookmarksYetHint': 'Ajoutez un signet pendant la lecture.',
    'selectedThemeSuffix': 'sélectionné',
    'lightMode': 'Clair', 'followSystemMode': 'Suivre le système',
    'darkMode': 'Sombre', 'couldNotLoadBooks': 'Impossible de charger la liste des livres.',
    'chapterLabel': 'Chapitre {chapter}', 'traditionalOrderBooks': 'Ordre traditionnel',
    'alphabeticalOrderBooks': 'Ordre alphabétique', 'home': 'Accueil',
    'addBookmarkTooltip': 'Ajouter un signet', 'chooseBookChapter': 'Choisir un livre et un chapitre',
    'chooseVerse': 'Choisir un verset', 'bookChapterQuickNavigation': 'Navigation rapide par livre et chapitre',
    'verseQuickNavigation': 'Navigation rapide par verset', 'backToBooks': 'Retour aux livres',
    'selectBookTitle': 'Choisir un livre', 'selectChapterTitle': 'Choisir un chapitre de {bookName}',
    'chapterSelectionLabel': 'Chapitre {chapter}', 'verseSelectionLabel': 'Verset {verse}',
    'fullChapterReference': 'Chapitre complet : {bookName} {chapter}',
    'memorizeHint': 'Texte à mémoriser', 'addNoteHint': 'Ajouter une note…',
    'languageSearchHint': 'Rechercher une langue', 'languageModuleInstalled': 'Module installé',
    'languageModulePending': 'Module non installé', 'languageNoMatches': 'Aucune langue correspondante.',
    'languageCatalogDescription': 'Choisir la langue de l’application.',
    'saveBookmarkSemantics': 'Enregistrer le signet', 'couldNotLoadChapter': 'Impossible de charger le chapitre.',
    'couldNotLoadChapters': 'Impossible de charger les chapitres.',
    'verseWithText': 'Verset {verse} : {text}',
    'oldTestament': 'Ancien Testament', 'newTestament': 'Nouveau Testament',
    'deuterocanonApocrypha': 'Deutérocanonique / Apocryphe',
}

for locale, native_name in (('agq', 'Aghem'), ('blo', 'Anii')):
    output = {'@@locale': locale}
    for key, value in source.items():
        if key == '@@locale' or key.startswith('@'):
            continue
        output[key] = common.get(key, value)
    destination = root / f'lib/l10n/app_{locale}.arb'
    destination.write_text(json.dumps(output, ensure_ascii=False, indent=2) + '\n', encoding='utf-8')
    print(locale, 'wrote', len(output) - 1, 'messages')
