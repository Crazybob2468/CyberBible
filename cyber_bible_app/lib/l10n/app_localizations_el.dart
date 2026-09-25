// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Modern Greek (`el`).
class AppLocalizationsEl extends AppLocalizations {
  AppLocalizationsEl([String locale = 'el']) : super(locale);

  @override
  String get settingsTitle => 'Ρυθμίσεις';

  @override
  String get languageSection => 'Γλώσσα';

  @override
  String get useSystemLanguage => 'Χρησιμοποιήστε τη γλώσσα συστήματος';

  @override
  String get useSystemLanguageSubtitle =>
      'Αντιστοιχίστε τη γλώσσα της συσκευής από προεπιλογή.';

  @override
  String get currentLanguage => 'Τρέχουσα γλώσσα';

  @override
  String get appLanguage => 'Γλώσσα εφαρμογής';

  @override
  String get chooseLanguage => 'Επιλέξτε γλώσσα';

  @override
  String get theme => 'Θέμα';

  @override
  String get appearance => 'Εμφάνιση';

  @override
  String get textSection => 'Κείμενο';

  @override
  String get readingFormatSection => 'Μορφή ανάγνωσης';

  @override
  String get displaySection => 'Επίδειξη';

  @override
  String get verseNumbers => 'Αριθμοί στίχων';

  @override
  String get sectionHeadings => 'Επικεφαλίδες Ενοτήτων';

  @override
  String get redLetterText => 'Κείμενο με κόκκινο γράμμα';

  @override
  String get selectABook => 'Επιλέξτε ένα βιβλίο';

  @override
  String get traditionalOrder => 'Παραδοσιακή παραγγελία';

  @override
  String get alphabeticalOrder => 'Αλφαβητική σειρά';

  @override
  String get bookmarks => 'Σελιδοδείκτες';

  @override
  String get retry => 'Δοκιμάζω πάλι';

  @override
  String get chooseTheme => 'Επιλέξτε Θέμα';

  @override
  String get customisableThemes => 'Προσαρμόσιμα θέματα';

  @override
  String get customisableThemesSubtitle =>
      'Πατήστε μια κάρτα για να επιλέξετε ένα χρώμα έμφασης. Το \"Classic White\" υποστηρίζει επίσης τις λειτουργίες Light, Dark και System.';

  @override
  String get setThemes => 'ΟΡΙΣΤΕ ΘΕΜΑΤΑ';

  @override
  String get setThemesSubtitle =>
      'Σταθερές, χειροποίητες παλέτες. Δεν απαιτείται προσαρμογή — απλώς πατήστε για εφαρμογή.';

  @override
  String get deleteBookmarkQuestion => 'Διαγραφή σελιδοδείκτη;';

  @override
  String get cancel => 'Ματαίωση';

  @override
  String get delete => 'Διαγράφω';

  @override
  String get bookmarkSaved => 'Ο σελιδοδείκτης αποθηκεύτηκε';

  @override
  String get couldNotDeleteBookmark =>
      'Δεν ήταν δυνατή η διαγραφή του σελιδοδείκτη.';

  @override
  String couldNotNavigate(Object reference) {
    return 'Δεν ήταν δυνατή η πλοήγηση στο $reference.';
  }

  @override
  String get pageNotFound => 'Η σελίδα δεν βρέθηκε';

  @override
  String noRouteDefined(Object routeName) {
    return 'Δεν έχει οριστεί διαδρομή για το \"$routeName\"';
  }

  @override
  String get english => 'αγγλικός';

  @override
  String get spanish => 'Español';

  @override
  String get systemDefault => 'Προεπιλογή συστήματος';

  @override
  String get languageStatusEnglish => 'Αγγλικά εναλλακτικά ενεργά';

  @override
  String get languageStatusSystem => 'Χρήση γλώσσας συστήματος';

  @override
  String languageStatusSelected(Object languageName) {
    return 'Επιλεγμένη γλώσσα: $languageName';
  }

  @override
  String get themeLabel => 'Θέμα';

  @override
  String get notFoundTitle => 'Η σελίδα δεν βρέθηκε';

  @override
  String get loadingCyberBible => 'Φόρτωση Cyber ​​Bible...';

  @override
  String get couldNotOpenDatabase =>
      'Δεν ήταν δυνατό το άνοιγμα της βάσης δεδομένων της Βίβλου. Δοκιμάστε ξανά.';

  @override
  String get homeTagline =>
      'Μια δωρεάν και ανοιχτού κώδικα εφαρμογή μελέτης της Αγίας Γραφής';

  @override
  String get readTheBible => 'Διαβάστε τη Βίβλο';

  @override
  String get settingsTooltip => 'Ρυθμίσεις';

  @override
  String get themeChoose => 'Επιλέξτε Θέμα';

  @override
  String get customThemes => 'Προσαρμόσιμα θέματα';

  @override
  String get customThemesSubtitle =>
      'Πατήστε μια κάρτα για να επιλέξετε ένα χρώμα έμφασης. Το \"Classic White\" υποστηρίζει επίσης τις λειτουργίες Light, Dark και System.';

  @override
  String get setThemesLabel => 'ΟΡΙΣΤΕ ΘΕΜΑΤΑ';

  @override
  String get deleteBookmarkDialog => 'Διαγραφή σελιδοδείκτη;';

  @override
  String removeBookmarkMessage(Object details, Object reference) {
    return 'Κατάργηση του \"$reference\"$details;\n\nΑυτό δεν μπορεί να αναιρεθεί.';
  }

  @override
  String get couldNotLoadBookmarks =>
      'Δεν ήταν δυνατή η φόρτωση σελιδοδεικτών. Δοκιμάστε ξανά.';

  @override
  String get bookmarkSavedMessage => 'Ο σελιδοδείκτης αποθηκεύτηκε';

  @override
  String get couldNotSaveBookmark =>
      'Δεν ήταν δυνατή η αποθήκευση του σελιδοδείκτη.';

  @override
  String get noBookmarksMatchFilter =>
      'Δεν υπάρχουν σελιδοδείκτες που να αντιστοιχούν σε αυτό το φίλτρο.';

  @override
  String get clearFilter => 'Καθαρίστε το φίλτρο';

  @override
  String get traditionalOrderLabel => 'Παραδοσιακή παραγγελία';

  @override
  String get alphabeticalOrderLabel => 'Αλφαβητική σειρά';

  @override
  String get bookmarksTabLabel => 'Σελιδοδείκτες';

  @override
  String get fullChapter => 'Πλήρες κεφάλαιο';

  @override
  String get addBookmark => 'Προσθήκη σελιδοδείκτη';

  @override
  String get selectVerse => 'Επιλέξτε Στίχος';

  @override
  String get labelOptional => 'Ετικέτα (προαιρετικό)';

  @override
  String get notesOptional => 'Σημειώσεις (προαιρετικό)';

  @override
  String get save => 'Εκτός';

  @override
  String get goToVerse => 'Πηγαίνετε στο Στίχος';

  @override
  String verseTitle(Object verse) {
    return 'Στίχος $verse';
  }

  @override
  String chapterTitle(Object chapter) {
    return 'Κεφάλαιο $chapter';
  }

  @override
  String get switchToFullChapter =>
      'Μετάβαση σε σελιδοδείκτη πλήρους κεφαλαίου';

  @override
  String get bookmarkSheetCancel => 'Ακύρωση, κλείσιμο φύλλου σελιδοδεικτών';

  @override
  String get pickCustomAccent => 'Επιλέξτε μια προσαρμοσμένη προφορά';

  @override
  String get apply => 'Εφαρμόζω';

  @override
  String get custom => 'Εθιμο';

  @override
  String get brightnessSystem => 'Σύστημα';

  @override
  String get brightnessLight => 'Φως';

  @override
  String get brightnessDark => 'Σκοτάδι';

  @override
  String get selectBook => 'Επιλέξτε ένα βιβλίο';

  @override
  String get bookmarkFilterAll => 'Ολοι';

  @override
  String get bookmarkFilterUnlabeled => 'Χωρίς ετικέτα';

  @override
  String get bookmarkSortRecent => 'Πρώτα πρόσφατα';

  @override
  String get bookmarkSortCanonical => 'Κανονική τάξη';

  @override
  String get chapterRetry => 'Δοκιμάζω πάλι';

  @override
  String get fontSize => 'Μέγεθος γραμματοσειράς';

  @override
  String fontSizePixels(Object size) {
    return '$size px';
  }

  @override
  String get fontSizeSlider => 'Ρυθμιστικό μεγέθους γραμματοσειράς';

  @override
  String get fontSizeSliderHint => 'Σύρετε για προσαρμογή από το 12 στο 28';

  @override
  String get fontPreview =>
      '«Στην αρχή ο Θεός δημιούργησε τους ουρανούς και τη γη». — Γεν 1:1';

  @override
  String get showVerseNumbersSubtitle =>
      'Εμφάνιση εκθέτων αριθμών στίχων στην οθόνη ανάγνωσης.';

  @override
  String get showSectionHeadingsSubtitle =>
      'Εμφάνιση επικεφαλίδων ενότητας και Ψαλμών μεταξύ των αποσπασμάτων.';

  @override
  String get wordsOfChristSubtitle =>
      'Δείξτε τα λόγια του Ιησού με κόκκινο χρώμα. Απενεργοποίηση για ένα μόνο χρώμα κειμένου.';

  @override
  String get verseFormatTitle => 'Μορφή στίχου';

  @override
  String get verseFormatSubtitle =>
      'Επιλέξτε πώς διατυπώνεται το κείμενο της γραφής.';

  @override
  String get paragraphMode => 'Παράγραφος';

  @override
  String get verseListMode => 'Λίστα στίχων';

  @override
  String get paragraphModeTooltip => 'Λειτουργία παραγράφου';

  @override
  String get verseListModeTooltip => 'Λειτουργία λίστας στίχων';

  @override
  String get paragraphModeDescription =>
      'Το κείμενο ρέει συνεχώς με εσοχές παραγράφους, όπως μια έντυπη Βίβλος.';

  @override
  String get verseListModeDescription =>
      'Κάθε παράγραφος της γραφής ξεκινά από τη δική της γραμμή, καθιστώντας τις ομάδες στίχων εύκολο να εντοπιστούν.';

  @override
  String get deleteBookmarkTooltip => 'Διαγραφή σελιδοδείκτη';

  @override
  String deleteBookmarkSemantics(Object reference) {
    return 'Διαγραφή σελιδοδείκτη $reference';
  }

  @override
  String sortBookmarksTooltip(Object sortOrder) {
    return 'Ταξινόμηση: $sortOrder';
  }

  @override
  String get noBookmarksYet => 'Δεν υπάρχουν ακόμη σελιδοδείκτες.';

  @override
  String get noBookmarksYetHint =>
      'Πατήστε το εικονίδιο σελιδοδείκτη ενώ διαβάζετε για να αποθηκεύσετε μια τοποθεσία.';

  @override
  String bookmarkReferenceNavigationError(Object reference) {
    return 'Δεν ήταν δυνατή η πλοήγηση στο $reference.';
  }

  @override
  String themeCardSemantics(Object description, Object name, Object selected) {
    return 'Θέμα $name$selected. $description';
  }

  @override
  String get selectedThemeSuffix => ', επιλεγμένο αυτήν τη στιγμή';

  @override
  String get customisableAccentDescription => 'Προσαρμόσιμο χρώμα έμφασης.';

  @override
  String get fixedPaletteDescription => 'Σταθερή παλέτα.';

  @override
  String accentColourTitle(Object themeName) {
    return 'Χρώμα έμφασης — $themeName';
  }

  @override
  String get brightnessMode => 'ΛΕΙΤΟΥΡΓΙΑ ΦΩΤΕΙΝΟΤΗΤΑΣ';

  @override
  String get lightMode => 'Λειτουργία φωτός';

  @override
  String get followSystemMode => 'Ακολουθήστε τη λειτουργία συστήματος';

  @override
  String get darkMode => 'Σκοτεινή λειτουργία';

  @override
  String get customColourPicker => 'Προσαρμοσμένο επιλογέα χρώματος';

  @override
  String get customColourTooltip => 'Προσαρμοσμένο χρώμα…';

  @override
  String get couldNotLoadBooks =>
      'Δεν ήταν δυνατή η φόρτωση της λίστας βιβλίων. Δοκιμάστε ξανά.';

  @override
  String chapterLabel(Object chapter) {
    return 'Κεφάλαιο $chapter';
  }

  @override
  String get traditionalOrderBooks => 'Παραδοσιακά βιβλία παραγγελιών';

  @override
  String get alphabeticalOrderBooks => 'Βιβλία αλφαβητικής σειράς';

  @override
  String get home => 'Σπίτι';

  @override
  String get addBookmarkTooltip => 'Προσθήκη σελιδοδείκτη';

  @override
  String get chooseBookChapter => 'Επιλέξτε βιβλίο και κεφάλαιο';

  @override
  String get chooseVerse => 'Διάλεξε στίχο';

  @override
  String get bookChapterQuickNavigation =>
      'Γρήγορη πλοήγηση βιβλίων και κεφαλαίων';

  @override
  String get verseQuickNavigation => 'Στίχος γρήγορη πλοήγηση';

  @override
  String get backToBooks => 'Επιστροφή στα βιβλία';

  @override
  String get selectBookTitle => 'Επιλέξτε Βιβλίο';

  @override
  String selectChapterTitle(Object bookName) {
    return 'Επιλέξτε κεφάλαιο ($bookName)';
  }

  @override
  String chapterSelectionLabel(Object chapter) {
    return 'Κεφάλαιο $chapter';
  }

  @override
  String verseSelectionLabel(Object verse) {
    return 'Στίχος $verse';
  }

  @override
  String fullChapterReference(Object bookName, Object chapter) {
    return 'Πλήρες κεφάλαιο: $bookName $chapter';
  }

  @override
  String get memorizeHint => 'Απομνημονεύω';

  @override
  String get addNoteHint => 'Προσθήκη σημείωσης...';

  @override
  String get languageSearchHint => 'Αναζήτηση γλωσσών';

  @override
  String get languageModuleInstalled => 'Εγκατεστημένο';

  @override
  String get languageModulePending => 'Εκκρεμεί η αυτόματη μετάφραση';

  @override
  String get languageNoMatches =>
      'Καμία γλώσσα δεν αντιστοιχεί στην αναζήτησή σας.';

  @override
  String get languageCatalogDescription =>
      'Οι γλώσσες που έχουν επισημανθεί ως εγκατεστημένες λειτουργούν εκτός σύνδεσης. Άλλες γλώσσες θα προστεθούν ως μηχανικά μεταφρασμένες ενότητες.';

  @override
  String get saveBookmarkSemantics => 'Αποθήκευση σελιδοδείκτη';

  @override
  String get couldNotLoadChapter =>
      'Δεν ήταν δυνατή η φόρτωση του κεφαλαίου. Δοκιμάστε ξανά.';

  @override
  String get couldNotLoadChapters =>
      'Δεν ήταν δυνατή η φόρτωση κεφαλαίων. Δοκιμάστε ξανά.';

  @override
  String verseWithText(Object text, Object verse) {
    return 'Στίχος $verse: $text';
  }

  @override
  String accentSwatchSemantics(Object name, Object selected) {
    return '$name χρώμα έμφασης$selected';
  }

  @override
  String get oldTestament => 'Παλαια Διαθήκη';

  @override
  String get newTestament => 'Καινή Διαθήκη';

  @override
  String get deuterocanonApocrypha => 'Δευτεροκάνον / Απόκρυφα';
}
