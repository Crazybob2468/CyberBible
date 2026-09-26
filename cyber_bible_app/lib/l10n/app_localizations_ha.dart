// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Hausa (`ha`).
class AppLocalizationsHa extends AppLocalizations {
  AppLocalizationsHa([String locale = 'ha']) : super(locale);

  @override
  String get settingsTitle => 'Saituna';

  @override
  String get languageSection => 'Harshe';

  @override
  String get useSystemLanguage => 'Yi amfani da yaren tsarin';

  @override
  String get useSystemLanguageSubtitle =>
      'Daidaita harshen na\'urar ta tsohuwa.';

  @override
  String get currentLanguage => 'Harshen na yanzu';

  @override
  String get appLanguage => 'Harshen app';

  @override
  String get chooseLanguage => 'Zaɓi harshe';

  @override
  String get theme => 'Jigo';

  @override
  String get appearance => 'Bayyanar';

  @override
  String get textSection => 'Rubutu';

  @override
  String get readingFormatSection => 'Tsarin Karatu';

  @override
  String get displaySection => 'Nunawa';

  @override
  String get verseNumbers => 'Lambobin Aya';

  @override
  String get sectionHeadings => 'Taken Sashe';

  @override
  String get redLetterText => 'Rubutun Jajayen Harafi';

  @override
  String get selectABook => 'Zaɓi Littafi';

  @override
  String get traditionalOrder => 'Tsarin gargajiya';

  @override
  String get alphabeticalOrder => 'Tsarin haruffa';

  @override
  String get bookmarks => 'Alamomi';

  @override
  String get retry => 'Sake gwadawa';

  @override
  String get chooseTheme => 'Zaɓi Jigo';

  @override
  String get customisableThemes => 'Jigogi masu iya daidaitawa';

  @override
  String get customisableThemesSubtitle =>
      'Matsa kati don zaɓar launin lafazi. \"Classic White\" kuma yana goyan bayan yanayin haske, duhu da tsarin.';

  @override
  String get setThemes => 'SATA JUNA';

  @override
  String get setThemesSubtitle =>
      'Kafaffen, palette na hannu. Babu keɓancewa da ake buƙata - danna kawai don nema.';

  @override
  String get deleteBookmarkQuestion => 'Share alamar shafi?';

  @override
  String get cancel => 'Soke';

  @override
  String get delete => 'Share';

  @override
  String get bookmarkSaved => 'An ajiye alamar shafi';

  @override
  String get couldNotDeleteBookmark => 'An kasa share alamar shafi.';

  @override
  String couldNotNavigate(Object reference) {
    return 'Ba za a iya kewaya zuwa $reference ba.';
  }

  @override
  String get pageNotFound => 'Ba a Samu Shafi ba';

  @override
  String noRouteDefined(Object routeName) {
    return 'Babu hanyar da aka ayyana don \"$routeName\"';
  }

  @override
  String get english => 'Turanci';

  @override
  String get spanish => 'Español';

  @override
  String get systemDefault => 'Tsohuwar tsarin';

  @override
  String get languageStatusEnglish => 'Turanci fallback yana aiki';

  @override
  String get languageStatusSystem => 'Amfani da tsarin harshe';

  @override
  String languageStatusSelected(Object languageName) {
    return 'Harshen da aka zaɓa: $languageName';
  }

  @override
  String get themeLabel => 'Jigo';

  @override
  String get notFoundTitle => 'Ba a Samu Shafi ba';

  @override
  String get loadingCyberBible => 'Ana Loda Littafi Mai Tsarki na Cyber...';

  @override
  String get couldNotOpenDatabase =>
      'An kasa buɗe bayanan Littafi Mai Tsarki. Da fatan za a sake gwadawa.';

  @override
  String get homeTagline =>
      'Aikace-aikacen nazarin Littafi Mai Tsarki kyauta da buɗewa';

  @override
  String get readTheBible => 'Karanta Littafi Mai Tsarki';

  @override
  String get settingsTooltip => 'Saituna';

  @override
  String get themeChoose => 'Zaɓi Jigo';

  @override
  String get customThemes => 'Jigogi masu iya daidaitawa';

  @override
  String get customThemesSubtitle =>
      'Matsa kati don zaɓar launin lafazi. \"Classic White\" kuma yana goyan bayan yanayin haske, duhu da tsarin.';

  @override
  String get setThemesLabel => 'SATA JUNA';

  @override
  String get deleteBookmarkDialog => 'Share alamar shafi?';

  @override
  String removeBookmarkMessage(Object details, Object reference) {
    return 'Cire \"$reference\"$details?\n\nBa za a iya cire wannan ba.';
  }

  @override
  String get couldNotLoadBookmarks =>
      'An kasa loda alamomin. Da fatan za a sake gwadawa.';

  @override
  String get bookmarkSavedMessage => 'An ajiye alamar shafi';

  @override
  String get couldNotSaveBookmark => 'Ba za a iya ajiye alamar littafi ba.';

  @override
  String get noBookmarksMatchFilter =>
      'Babu alamun shafi da suka dace da wannan tace.';

  @override
  String get clearFilter => 'Share tace';

  @override
  String get traditionalOrderLabel => 'Tsarin al\'ada';

  @override
  String get alphabeticalOrderLabel => 'Tsarin haruffa';

  @override
  String get bookmarksTabLabel => 'Alamomi';

  @override
  String get fullChapter => 'Cikakken babi';

  @override
  String get addBookmark => 'Ƙara Alamar';

  @override
  String get selectVerse => 'Zaɓi Aya';

  @override
  String get labelOptional => 'Label (na zaɓi)';

  @override
  String get notesOptional => 'Bayanan kula (na zaɓi)';

  @override
  String get save => 'Ajiye';

  @override
  String get goToVerse => 'Je zuwa Aya';

  @override
  String verseTitle(Object verse) {
    return 'Bayani na $verse';
  }

  @override
  String chapterTitle(Object chapter) {
    return 'Babi na $chapter';
  }

  @override
  String get switchToFullChapter => 'Canza zuwa cikakken alamar shafi';

  @override
  String get bookmarkSheetCancel => 'Soke, rufe takardar alamar shafi';

  @override
  String get pickCustomAccent => 'Zaɓi lafazin al\'ada';

  @override
  String get apply => 'Aiwatar';

  @override
  String get custom => 'Custom';

  @override
  String get brightnessSystem => 'Tsari';

  @override
  String get brightnessLight => 'Haske';

  @override
  String get brightnessDark => 'Duhu';

  @override
  String get selectBook => 'Zaɓi Littafi';

  @override
  String get bookmarkFilterAll => 'Duka';

  @override
  String get bookmarkFilterUnlabeled => 'Unlabeled';

  @override
  String get bookmarkSortRecent => 'Kwanan nan na farko';

  @override
  String get bookmarkSortCanonical => 'Tsarin doka';

  @override
  String get chapterRetry => 'Sake gwadawa';

  @override
  String get fontSize => 'Girman Font';

  @override
  String fontSizePixels(Object size) {
    return '$size px';
  }

  @override
  String get fontSizeSlider => 'Girman rubutun rubutu';

  @override
  String get fontSizeSliderHint => 'Dokewa don daidaitawa daga 12 zuwa 28';

  @override
  String get fontPreview =>
      '\"A cikin farko Allah ya halicci sammai da ƙasa.\" —Farawa 1:1';

  @override
  String get showVerseNumbersSubtitle =>
      'Nuna manyan rubutun lambar aya a allon karatu.';

  @override
  String get showSectionHeadingsSubtitle =>
      'Nuna sashe da kanun Zabura tsakanin sassa.';

  @override
  String get wordsOfChristSubtitle =>
      'Nuna kalmomin Yesu da ja. A kashe don launin rubutu ɗaya.';

  @override
  String get verseFormatTitle => 'Tsarin Aya';

  @override
  String get verseFormatSubtitle => 'Zaɓi yadda aka shimfiɗa rubutun nassi.';

  @override
  String get paragraphMode => 'Sakin layi';

  @override
  String get verseListMode => 'Lissafin ãyõyi';

  @override
  String get paragraphModeTooltip => 'Yanayin sakin layi';

  @override
  String get verseListModeTooltip => 'Yanayin lissafin aya';

  @override
  String get paragraphModeDescription =>
      'Rubutu na ci gaba da gudana tare da sakin layi, kamar bugun Littafi Mai Tsarki.';

  @override
  String get verseListModeDescription =>
      'Kowane sakin layi na nassi yana farawa da nasa layin, yana sa ƙungiyoyin ayoyi masu sauƙin ganewa.';

  @override
  String get deleteBookmarkTooltip => 'Share alamar shafi';

  @override
  String deleteBookmarkSemantics(Object reference) {
    return 'Share alamar shafi $reference';
  }

  @override
  String sortBookmarksTooltip(Object sortOrder) {
    return 'Saukewa: $sortOrder';
  }

  @override
  String get noBookmarksYet => 'Babu alamun shafi tukuna.';

  @override
  String get noBookmarksYetHint =>
      'Matsa alamar alamar yayin karantawa don ajiye wuri.';

  @override
  String bookmarkReferenceNavigationError(Object reference) {
    return 'Ba za a iya kewaya zuwa $reference ba.';
  }

  @override
  String themeCardSemantics(Object description, Object name, Object selected) {
    return '$name taken$selected. $description';
  }

  @override
  String get selectedThemeSuffix => ', a halin yanzu zaba';

  @override
  String get customisableAccentDescription =>
      'Launin lafazi mai iya daidaitawa.';

  @override
  String get fixedPaletteDescription => 'Kafaffen palette.';

  @override
  String accentColourTitle(Object themeName) {
    return 'Launin lafazi - $themeName';
  }

  @override
  String get brightnessMode => 'HANKALI';

  @override
  String get lightMode => 'Yanayin haske';

  @override
  String get followSystemMode => 'Bi tsarin tsarin';

  @override
  String get darkMode => 'Yanayin duhu';

  @override
  String get customColourPicker => 'Mai ɗaukar launi na al\'ada';

  @override
  String get customColourTooltip => 'Launi na al\'ada…';

  @override
  String get couldNotLoadBooks =>
      'An kasa loda jerin littattafan. Da fatan za a sake gwadawa.';

  @override
  String chapterLabel(Object chapter) {
    return 'Babi na $chapter';
  }

  @override
  String get traditionalOrderBooks => 'Littattafan oda na gargajiya';

  @override
  String get alphabeticalOrderBooks => 'Littattafan umarni na Alphabetical';

  @override
  String get home => 'Gida';

  @override
  String get addBookmarkTooltip => 'Ƙara alamar shafi';

  @override
  String get chooseBookChapter => 'Zaɓi littafi da babi';

  @override
  String get chooseVerse => 'Zabi aya';

  @override
  String get bookChapterQuickNavigation => 'Littafi da babi saurin kewayawa';

  @override
  String get verseQuickNavigation => 'Aya mai sauri kewayawa';

  @override
  String get backToBooks => 'Komawa littattafai';

  @override
  String get selectBookTitle => 'Zaɓi Littafi';

  @override
  String selectChapterTitle(Object bookName) {
    return 'Zaɓi Babi ($bookName)';
  }

  @override
  String chapterSelectionLabel(Object chapter) {
    return 'Babi na $chapter';
  }

  @override
  String verseSelectionLabel(Object verse) {
    return 'Bayani na $verse';
  }

  @override
  String fullChapterReference(Object bookName, Object chapter) {
    return 'Cikakken babi: $bookName $chapter';
  }

  @override
  String get memorizeHint => 'haddace';

  @override
  String get addNoteHint => 'Ƙara bayanin kula...';

  @override
  String get languageSearchHint => 'Bincika harsuna';

  @override
  String get languageModuleInstalled => 'An shigar';

  @override
  String get languageModulePending => 'Na\'ura fassara jiran';

  @override
  String get languageNoMatches => 'Babu yaruka da suka dace da bincikenku.';

  @override
  String get languageCatalogDescription =>
      'Harsunan da aka yiwa alama a matsayin shigar aikin layi. Za a ƙara wasu harsuna a matsayin fassarar injina.';

  @override
  String get saveBookmarkSemantics => 'Ajiye alamar littafi';

  @override
  String get couldNotLoadChapter =>
      'An kasa loda babin. Da fatan za a sake gwadawa.';

  @override
  String get couldNotLoadChapters =>
      'An kasa loda surori. Da fatan za a sake gwadawa.';

  @override
  String verseWithText(Object text, Object verse) {
    return 'Aya $verse: $text';
  }

  @override
  String accentSwatchSemantics(Object name, Object selected) {
    return '$name kalar lafazin$selected';
  }

  @override
  String get oldTestament => 'Tsohon Alkawari';

  @override
  String get newTestament => 'Sabon Alkawari';

  @override
  String get deuterocanonApocrypha => 'Deuterocanon / Apocrypha';
}
