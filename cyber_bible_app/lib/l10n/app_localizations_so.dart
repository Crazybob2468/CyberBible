// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Somali (`so`).
class AppLocalizationsSo extends AppLocalizations {
  AppLocalizationsSo([String locale = 'so']) : super(locale);

  @override
  String get settingsTitle => 'Dejinta';

  @override
  String get languageSection => 'Luqadda';

  @override
  String get useSystemLanguage => 'Isticmaal luqadda nidaamka';

  @override
  String get useSystemLanguageSubtitle =>
      'Luqadda qalabka u isticmaal si toos ah.';

  @override
  String get currentLanguage => 'Luqadda hadda';

  @override
  String get appLanguage => 'Luqadda abka';

  @override
  String get chooseLanguage => 'Dooro luqad';

  @override
  String get theme => 'Muuqaal';

  @override
  String get appearance => 'Muuqaalka';

  @override
  String get textSection => 'Qoraal';

  @override
  String get readingFormatSection => 'Qaabka akhriska';

  @override
  String get displaySection => 'Bandhig';

  @override
  String get verseNumbers => 'Lambarada aayadaha';

  @override
  String get sectionHeadings => 'Cinwaannada qaybaha';

  @override
  String get redLetterText => 'Qoraal xarfo cas ah';

  @override
  String get selectABook => 'Dooro kitaab';

  @override
  String get traditionalOrder => 'Kala horreynta dhaqanka';

  @override
  String get alphabeticalOrder => 'Kala horreynta alifbeetada';

  @override
  String get bookmarks => 'Calaamadaha bogga';

  @override
  String get retry => 'Mar kale isku day';

  @override
  String get chooseTheme => 'Dooro muuqaal';

  @override
  String get customisableThemes => 'Muuqaallo la habayn karo';

  @override
  String get customisableThemesSubtitle =>
      'Taabo kaar si aad u doorato midab lahjad. \"Classic White\" sidoo kale wuxuu taageeraa hababka Iftiin, Madow iyo Nidaam.';

  @override
  String get setThemes => 'MUUQAALLO GO\'an';

  @override
  String get setThemesSubtitle =>
      'Midabbo hore loo diyaariyey. Habayn looma baahna; taabo si aad u adeegsato.';

  @override
  String get deleteBookmarkQuestion => 'Ma tirtirtaa calaamadda bogga?';

  @override
  String get cancel => 'Jooji';

  @override
  String get delete => 'Tirtir';

  @override
  String get bookmarkSaved => 'Calaamadda bogga waa la kaydiyey';

  @override
  String get couldNotDeleteBookmark => 'Calaamadda bogga lama tirtiri karin.';

  @override
  String couldNotNavigate(Object reference) {
    return 'Lama aadi karin $reference.';
  }

  @override
  String get pageNotFound => 'Bogga lama helin';

  @override
  String noRouteDefined(Object routeName) {
    return 'Jid looma cayimin \"$routeName\"';
  }

  @override
  String get english => 'Ingiriisi';

  @override
  String get spanish => 'Isbaanish';

  @override
  String get systemDefault => 'Dejinta nidaamka';

  @override
  String get languageStatusEnglish => 'Luqadda Ingiriisiga ayaa ah beddelka';

  @override
  String get languageStatusSystem => 'Luqadda nidaamka ayaa la isticmaalayaa';

  @override
  String languageStatusSelected(Object languageName) {
    return 'Luqadda la doortay: $languageName';
  }

  @override
  String get themeLabel => 'Muuqaal';

  @override
  String get notFoundTitle => 'Bogga lama helin';

  @override
  String get loadingCyberBible => 'Cyber Bible waa la rarayaa...';

  @override
  String get couldNotOpenDatabase =>
      'Kaydka xogta Baybalka lama furi karin. Fadlan mar kale isku day.';

  @override
  String get homeTagline =>
      'Barnaamij bilaash ah oo il-furan oo Baybalka lagu barto';

  @override
  String get readTheBible => 'Akhri Baybalka';

  @override
  String get settingsTooltip => 'Dejinta';

  @override
  String get themeChoose => 'Dooro muuqaal';

  @override
  String get customThemes => 'Muuqaallo la habayn karo';

  @override
  String get customThemesSubtitle =>
      'Taabo kaar si aad u doorato midab lahjad. \"Classic White\" sidoo kale wuxuu taageeraa hababka Iftiin, Madow iyo Nidaam.';

  @override
  String get setThemesLabel => 'MUUQAALLO GO\'an';

  @override
  String get deleteBookmarkDialog => 'Ma tirtirtaa calaamadda bogga?';

  @override
  String removeBookmarkMessage(Object details, Object reference) {
    return 'Ka saar \"$reference\"$details?\n\nTallaabadan dib looma celin karo.';
  }

  @override
  String get couldNotLoadBookmarks =>
      'Calaamadaha bogga lama soo rari karin. Fadlan mar kale isku day.';

  @override
  String get bookmarkSavedMessage => 'Calaamadda bogga waa la kaydiyey';

  @override
  String get couldNotSaveBookmark => 'Calaamadda bogga lama kaydin karin.';

  @override
  String get noBookmarksMatchFilter =>
      'Ma jiro calaamad bog oo la jaanqaadaysa shaandhahan.';

  @override
  String get clearFilter => 'Nadiifi shaandhada';

  @override
  String get traditionalOrderLabel => 'Kala horreynta dhaqanka';

  @override
  String get alphabeticalOrderLabel => 'Kala horreynta alifbeetada';

  @override
  String get bookmarksTabLabel => 'Calaamadaha bogga';

  @override
  String get fullChapter => 'Cutubka oo dhan';

  @override
  String get addBookmark => 'Ku dar calaamad bog';

  @override
  String get selectVerse => 'Dooro aayad';

  @override
  String get labelOptional => 'Summad (ikhtiyaari)';

  @override
  String get notesOptional => 'Qoraallo (ikhtiyaari)';

  @override
  String get save => 'Kaydi';

  @override
  String get goToVerse => 'Aad aayadda';

  @override
  String verseTitle(Object verse) {
    return 'Aayadda $verse';
  }

  @override
  String chapterTitle(Object chapter) {
    return 'Cutubka $chapter';
  }

  @override
  String get switchToFullChapter => 'U beddel calaamadda cutubka oo dhan';

  @override
  String get bookmarkSheetCancel => 'Jooji oo xidh guddiga calaamadda bogga';

  @override
  String get pickCustomAccent => 'Dooro midab lahjad oo gaar ah';

  @override
  String get apply => 'Dhaqan geli';

  @override
  String get custom => 'Gaar ah';

  @override
  String get brightnessSystem => 'Nidaam';

  @override
  String get brightnessLight => 'Iftiin';

  @override
  String get brightnessDark => 'Madow';

  @override
  String get selectBook => 'Dooro kitaab';

  @override
  String get bookmarkFilterAll => 'Dhammaan';

  @override
  String get bookmarkFilterUnlabeled => 'Aan summad lahayn';

  @override
  String get bookmarkSortRecent => 'Kuwa ugu dambeeyey marka hore';

  @override
  String get bookmarkSortCanonical => 'Kala horreynta kitaabiga ah';

  @override
  String get chapterRetry => 'Mar kale isku day';

  @override
  String get fontSize => 'Cabbirka farta';

  @override
  String fontSizePixels(Object size) {
    return '$size px';
  }

  @override
  String get fontSizeSlider => 'Badhanka simbiriirixda cabbirka farta';

  @override
  String get fontSizeSliderHint => 'Jiidi si aad uga beddesho 12 ilaa 28';

  @override
  String get fontPreview =>
      '\"Bilowgii Ilaah wuxuu abuuray samooyinka iyo dhulka.\" — Gen 1:1';

  @override
  String get showVerseNumbersSubtitle =>
      'Shaashadda akhriska ku muuji lambarada aayadaha ee kor loo qaaday.';

  @override
  String get showSectionHeadingsSubtitle =>
      'Dhexda tuducyada ku muuji cinwaannada qaybaha iyo Sabuurrada.';

  @override
  String get wordsOfChristSubtitle =>
      'Erayada Ciise casaan ku muuji. Demi si hal midab qoraal loo isticmaalo.';

  @override
  String get verseFormatTitle => 'Qaabka aayadda';

  @override
  String get verseFormatSubtitle =>
      'Dooro sida qoraalka Qorniinka loo habeeyo.';

  @override
  String get paragraphMode => 'Faqrad';

  @override
  String get verseListMode => 'Liiska aayadaha';

  @override
  String get paragraphModeTooltip => 'Habka faqradaha';

  @override
  String get verseListModeTooltip => 'Habka liiska aayadaha';

  @override
  String get paragraphModeDescription =>
      'Qoraalku si joogto ah ayuu ugu socdaa faqrado gudaha loo leexiyey, sida Baybal daabacan.';

  @override
  String get verseListModeDescription =>
      'Faqrad kasta oo Qorniinka ahi waxay ka bilaabataa sadar gaar ah, si kooxaha aayaduhu u muuqdaan.';

  @override
  String get deleteBookmarkTooltip => 'Tirtir calaamadda bogga';

  @override
  String deleteBookmarkSemantics(Object reference) {
    return 'Tirtir calaamadda bogga $reference';
  }

  @override
  String sortBookmarksTooltip(Object sortOrder) {
    return 'Kala saar: $sortOrder';
  }

  @override
  String get noBookmarksYet => 'Weli ma jiraan calaamado bog.';

  @override
  String get noBookmarksYetHint =>
      'Markaad akhrinayso taabo astaanta calaamadda bogga si aad u kaydiso meel.';

  @override
  String bookmarkReferenceNavigationError(Object reference) {
    return 'Lama aadi karin $reference.';
  }

  @override
  String themeCardSemantics(Object description, Object name, Object selected) {
    return 'Muuqaalka $name$selected. $description';
  }

  @override
  String get selectedThemeSuffix => ', hadda la doortay';

  @override
  String get customisableAccentDescription => 'Midab lahjad la habayn karo.';

  @override
  String get fixedPaletteDescription => 'Midabyo go\'an.';

  @override
  String accentColourTitle(Object themeName) {
    return 'Midabka lahjadda — $themeName';
  }

  @override
  String get brightnessMode => 'HABKA IFTIINKA';

  @override
  String get lightMode => 'Habka iftiinka';

  @override
  String get followSystemMode => 'Raac habka nidaamka';

  @override
  String get darkMode => 'Habka mugdiga';

  @override
  String get customColourPicker => 'Doorashada midab gaar ah';

  @override
  String get customColourTooltip => 'Midab gaar ah…';

  @override
  String get couldNotLoadBooks =>
      'Liiska kutubta lama soo rari karin. Fadlan mar kale isku day.';

  @override
  String chapterLabel(Object chapter) {
    return 'Cutubka $chapter';
  }

  @override
  String get traditionalOrderBooks => 'Kutubta kala horreynta dhaqanka';

  @override
  String get alphabeticalOrderBooks => 'Kutubta kala horreynta alifbeetada';

  @override
  String get home => 'Guriga';

  @override
  String get addBookmarkTooltip => 'Ku dar calaamad bog';

  @override
  String get chooseBookChapter => 'Dooro kitaab iyo cutub';

  @override
  String get chooseVerse => 'Dooro aayad';

  @override
  String get bookChapterQuickNavigation =>
      'U gudub kitaab iyo cutub si degdeg ah';

  @override
  String get verseQuickNavigation => 'U gudub aayad si degdeg ah';

  @override
  String get backToBooks => 'Ku noqo kutubta';

  @override
  String get selectBookTitle => 'Dooro kitaab';

  @override
  String selectChapterTitle(Object bookName) {
    return 'Dooro cutubka ($bookName)';
  }

  @override
  String chapterSelectionLabel(Object chapter) {
    return 'Cutubka $chapter';
  }

  @override
  String verseSelectionLabel(Object verse) {
    return 'Aayadda $verse';
  }

  @override
  String fullChapterReference(Object bookName, Object chapter) {
    return 'Cutubka oo dhan: $bookName $chapter';
  }

  @override
  String get memorizeHint => 'Xafid';

  @override
  String get addNoteHint => 'Ku dar qoraal...';

  @override
  String get languageSearchHint => 'Raadi luqado';

  @override
  String get languageModuleInstalled => 'Waa la rakibay';

  @override
  String get languageModulePending => 'Turjumaad mashiin ayaa sugaysa';

  @override
  String get languageNoMatches => 'Luqad ku habboon raadintaada lama helin.';

  @override
  String get languageCatalogDescription =>
      'Luqadaha la rakibay waxay ku shaqeeyaan internet la\'aan. Luqadaha kale waxaa lagu dari doonaa qaybo mashiin turjumay.';

  @override
  String get saveBookmarkSemantics => 'Kaydi calaamadda bogga';

  @override
  String get couldNotLoadChapter =>
      'Cutubka lama soo rari karin. Fadlan mar kale isku day.';

  @override
  String get couldNotLoadChapters =>
      'Cutubyada lama soo rari karin. Fadlan mar kale isku day.';

  @override
  String verseWithText(Object text, Object verse) {
    return 'Aayadda $verse: $text';
  }

  @override
  String accentSwatchSemantics(Object name, Object selected) {
    return 'Midabka lahjadda $name$selected';
  }

  @override
  String get oldTestament => 'Axdigii Hore';

  @override
  String get newTestament => 'Axdiga Cusub';

  @override
  String get deuterocanonApocrypha =>
      'Kutubta labaad ee kitaabiga ah / Apocrypha';
}
