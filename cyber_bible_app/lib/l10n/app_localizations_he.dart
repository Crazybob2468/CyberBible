// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Hebrew (`he`).
class AppLocalizationsHe extends AppLocalizations {
  AppLocalizationsHe([String locale = 'he']) : super(locale);

  @override
  String get settingsTitle => 'הגדרות';

  @override
  String get languageSection => 'Language';

  @override
  String get useSystemLanguage => 'השתמש בשפת המערכת';

  @override
  String get useSystemLanguageSubtitle => 'התאם את שפת המכשיר כברירת מחדל.';

  @override
  String get currentLanguage => 'השפה הנוכחית';

  @override
  String get appLanguage => 'App שפת האפליקציה';

  @override
  String get chooseLanguage => 'בחר שפה';

  @override
  String get theme => 'Theme';

  @override
  String get appearance => 'מראה ';

  @override
  String get textSection => 'טקסט';

  @override
  String get readingFormatSection => 'קריאת פורמט';

  @override
  String get displaySection => 'Display';

  @override
  String get verseNumbers => 'מספרי פסוקים';

  @override
  String get sectionHeadings => ' כותרות סעיפים';

  @override
  String get redLetterText => 'טקסט באות אדום';

  @override
  String get selectABook => 'בחר ספר';

  @override
  String get traditionalOrder => 'סדר מסורתי';

  @override
  String get alphabeticalOrder => 'Aסדר אלפביתי';

  @override
  String get bookmarks => 'סימניות';

  @override
  String get retry => ' נסה שוב';

  @override
  String get chooseTheme => 'בחר Theme';

  @override
  String get customisableThemes => ' ערכות נושא להתאמה אישית';

  @override
  String get customisableThemesSubtitle =>
      'הקש על כרטיס כדי לבחור צבע מבטא. \"Classic White\" תומך גם במצבי אור, כהה ומערכת.';

  @override
  String get setThemes => 'SET THEMES';

  @override
  String get setThemesSubtitle =>
      'פלטות קבועות בעבודת יד. אין צורך בהתאמה אישית - פשוט הקש כדי להחיל.';

  @override
  String get deleteBookmarkQuestion => 'מחק סימניה?';

  @override
  String get cancel => 'בטל';

  @override
  String get delete => 'מחק';

  @override
  String get bookmarkSaved => 'סימניה נשמרה';

  @override
  String get couldNotDeleteBookmark => ' לא ניתן היה למחוק את הסימניה.';

  @override
  String couldNotNavigate(Object reference) {
    return 'לא ניתן היה לנווט אל $reference.';
  }

  @override
  String get pageNotFound => 'Page לא נמצא';

  @override
  String noRouteDefined(Object routeName) {
    return 'לא הוגדר מסלול עבור \"$routeName\"';
  }

  @override
  String get english => 'Eאנגלית';

  @override
  String get spanish => 'Español';

  @override
  String get systemDefault => ' ברירת המחדל של המערכת';

  @override
  String get languageStatusEnglish => 'חילוף באנגלית פעיל';

  @override
  String get languageStatusSystem => 'בשימוש בשפת מערכת';

  @override
  String languageStatusSelected(Object languageName) {
    return 'שפה נבחרת: $languageName';
  }

  @override
  String get themeLabel => 'Theme';

  @override
  String get notFoundTitle => 'עמוד לא נמצא';

  @override
  String get loadingCyberBible => 'טוען תנ\"ך סייבר...';

  @override
  String get couldNotOpenDatabase =>
      'לא ניתן היה לפתוח את מסד הנתונים של התנ\"ך. אנא נסה שוב. ';

  @override
  String get homeTagline => 'A חינמי וקוד פתוח ללימוד תנ\"ך';

  @override
  String get readTheBible => 'קרא את הגדרות Bible';

  @override
  String get settingsTooltip => '';

  @override
  String get themeChoose => 'בחר Theme';

  @override
  String get customThemes => ' ערכות נושא הניתנות להתאמה אישית';

  @override
  String get customThemesSubtitle =>
      'הקש על כרטיס כדי לבחור צבע מבטא. \"Classic White\" תומך גם במצבי אור, כהה ומערכת.';

  @override
  String get setThemesLabel => 'SET THEMES';

  @override
  String get deleteBookmarkDialog => 'למחוק סימניה?';

  @override
  String removeBookmarkMessage(Object details, Object reference) {
    return 'הסר את \"$reference\"$details?\n\nלא ניתן לבטל זאת.';
  }

  @override
  String get couldNotLoadBookmarks => 'לא ניתן לטעון סימניות. אנא נסה שוב.';

  @override
  String get bookmarkSavedMessage => 'הסימנייה נשמרה';

  @override
  String get couldNotSaveBookmark => 'לא ניתן לשמור את הסימניה.';

  @override
  String get noBookmarksMatchFilter => 'אין סימניות תואמות למסנן זה.';

  @override
  String get clearFilter => 'נקה מסנן';

  @override
  String get traditionalOrderLabel => ' סדר מסורתי';

  @override
  String get alphabeticalOrderLabel => 'סדר אלפביתי';

  @override
  String get bookmarksTabLabel => 'סימניות';

  @override
  String get fullChapter => 'הפרק המלא';

  @override
  String get addBookmark => 'Aהוסף סימניה';

  @override
  String get selectVerse => 'בחר Verse';

  @override
  String get labelOptional => 'Label (אופציונלי)';

  @override
  String get notesOptional => 'הערות (אופציונלי) ';

  @override
  String get save => 'Save';

  @override
  String get goToVerse => 'עבור אל Verse';

  @override
  String verseTitle(Object verse) {
    return 'Verse $verse';
  }

  @override
  String chapterTitle(Object chapter) {
    return 'פרק $chapter';
  }

  @override
  String get switchToFullChapter => 'עבור לסימניה של הפרק המלא';

  @override
  String get bookmarkSheetCancel => 'בטל, סגור את גיליון הסימניות';

  @override
  String get pickCustomAccent => 'בחר מבטא מותאם אישית';

  @override
  String get apply => 'החל ';

  @override
  String get custom => 'Custom';

  @override
  String get brightnessSystem => 'System';

  @override
  String get brightnessLight => 'Light';

  @override
  String get brightnessDark => 'Dark';

  @override
  String get selectBook => 'בחר ספר';

  @override
  String get bookmarkFilterAll => 'All';

  @override
  String get bookmarkFilterUnlabeled => ' ללא תווית';

  @override
  String get bookmarkSortRecent => 'הזמנה ראשונה אחרונה ';

  @override
  String get bookmarkSortCanonical => ' קנונית';

  @override
  String get chapterRetry => 'נסה שוב';

  @override
  String get fontSize => ' גודל גופן';

  @override
  String fontSizePixels(Object size) {
    return '$size px';
  }

  @override
  String get fontSizeSlider => ' מחוון גודל גופן';

  @override
  String get fontSizeSliderHint => 'החלק כדי להתאים מ-12 ל-28';

  @override
  String get fontPreview =>
      '\"בראשית ברא אלוהים את השמים ואת הארץ.\" — ברא\' א\':1';

  @override
  String get showVerseNumbersSubtitle =>
      'הצג כתוביות על מספר פסוקים במסך הקריאה.';

  @override
  String get showSectionHeadingsSubtitle =>
      'הצג חלק וכותרות תהילים בין הקטעים.';

  @override
  String get wordsOfChristSubtitle =>
      'הראה את דבריו של ישוע באדום. השבת עבור צבע טקסט יחיד.';

  @override
  String get verseFormatTitle => 'Verse Format';

  @override
  String get verseFormatSubtitle => 'בחר כיצד מונח טקסט הכתובים.';

  @override
  String get paragraphMode => 'Paragraph';

  @override
  String get verseListMode => 'רשימת פסוקים';

  @override
  String get paragraphModeTooltip => 'Paragraph מצב';

  @override
  String get verseListModeTooltip => 'מצב רשימת פסוקים';

  @override
  String get paragraphModeDescription =>
      'הטקסט זורם ברציפות עם פסקאות מפוזרות, כמו תנ\"ך מודפס.';

  @override
  String get verseListModeDescription =>
      'כל פסקה של כתבי הקודש מתחילה בשורה משלה, מה שהופך קבוצות פסוקים קלות לזהות.';

  @override
  String get deleteBookmarkTooltip => 'מחק סימניה';

  @override
  String deleteBookmarkSemantics(Object reference) {
    return 'מחק סימניה $reference';
  }

  @override
  String sortBookmarksTooltip(Object sortOrder) {
    return 'מיון: $sortOrder';
  }

  @override
  String get noBookmarksYet => 'אין עדיין סימניות.';

  @override
  String get noBookmarksYetHint =>
      'הקש על סמל הסימניה בזמן הקריאה כדי לשמור מיקום.';

  @override
  String bookmarkReferenceNavigationError(Object reference) {
    return 'לא ניתן היה לנווט אל $reference.';
  }

  @override
  String themeCardSemantics(Object description, Object name, Object selected) {
    return '$name theme$selected. $description';
  }

  @override
  String get selectedThemeSuffix => ', נבחר כעת';

  @override
  String get customisableAccentDescription => ' צבע הדגשה להתאמה אישית.';

  @override
  String get fixedPaletteDescription => 'פלטה קבועה.';

  @override
  String accentColourTitle(Object themeName) {
    return 'Aצבע הדגשה — $themeName';
  }

  @override
  String get brightnessMode => 'BRIGHTNESS MODE';

  @override
  String get lightMode => ' מצב אור';

  @override
  String get followSystemMode => 'עקוב אחר מצב המערכת';

  @override
  String get darkMode => ' מצב כהה';

  @override
  String get customColourPicker => 'בוחר צבעים מותאם אישית';

  @override
  String get customColourTooltip => ' צבע מותאם אישית...';

  @override
  String get couldNotLoadBooks =>
      'לא ניתן היה לטעון את רשימת הספרים. אנא נסה שוב.';

  @override
  String chapterLabel(Object chapter) {
    return 'Chapter $chapter';
  }

  @override
  String get traditionalOrderBooks => 'ספרי הזמנות מסורתיים';

  @override
  String get alphabeticalOrderBooks => 'Aספרי סדר אלפביתי';

  @override
  String get home => 'בית';

  @override
  String get addBookmarkTooltip => 'Aהוסף סימניה';

  @override
  String get chooseBookChapter => 'בחר ספר ופרק';

  @override
  String get chooseVerse => 'בחר פסוק';

  @override
  String get bookChapterQuickNavigation => 'ניווט מהיר בספר ובפרק';

  @override
  String get verseQuickNavigation => ' ניווט מהיר';

  @override
  String get backToBooks => 'חזרה לספרים';

  @override
  String get selectBookTitle => 'בחר ספר';

  @override
  String selectChapterTitle(Object bookName) {
    return 'בחר פרק ($bookName)';
  }

  @override
  String chapterSelectionLabel(Object chapter) {
    return 'Chapter $chapter';
  }

  @override
  String verseSelectionLabel(Object verse) {
    return 'פסוק $verse';
  }

  @override
  String fullChapterReference(Object bookName, Object chapter) {
    return ' הפרק המלא: $bookName $chapter';
  }

  @override
  String get memorizeHint => 'שינון';

  @override
  String get addNoteHint => 'Aהוסף הערה...';

  @override
  String get languageSearchHint => 'שפות חיפוש';

  @override
  String get languageModuleInstalled => ' מותקן';

  @override
  String get languageModulePending => 'תרגום מכונה בהמתנה';

  @override
  String get languageNoMatches => 'אין שפות מתאימות לחיפוש שלך.';

  @override
  String get languageCatalogDescription =>
      'שפות המסומנות כמותקנות עובדות במצב לא מקוון. שפות אחרות יתווספו כמודולים בתרגום מכונה.';

  @override
  String get saveBookmarkSemantics => 'שמור סימניה';

  @override
  String get couldNotLoadChapter => 'לא ניתן לטעון את הפרק. אנא נסה שוב. ';

  @override
  String get couldNotLoadChapters => ' לא ניתן היה לטעון פרקים. אנא נסה שוב.';

  @override
  String verseWithText(Object text, Object verse) {
    return 'פסוק $verse: $text';
  }

  @override
  String accentSwatchSemantics(Object name, Object selected) {
    return '$name צבע מבטא$selected';
  }

  @override
  String get oldTestament => 'הברית הישנה';

  @override
  String get newTestament => ' הברית החדשה';

  @override
  String get deuterocanonApocrypha => 'Deuterocanon / אפוקריפה';
}
