// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Bemba (`bem`).
class AppLocalizationsBem extends AppLocalizations {
  AppLocalizationsBem([String locale = 'bem']) : super(locale);

  @override
  String get settingsTitle => 'Imitantikile';

  @override
  String get languageSection => 'Ululimi';

  @override
  String get useSystemLanguage => 'Bomfyeni ululimi lwa mibombele';

  @override
  String get useSystemLanguageSubtitle =>
      'Ukupashanya ululimi lwa cibombelo ukulingana ne fyo caba.';

  @override
  String get currentLanguage => 'Ululimi lwa nomba';

  @override
  String get appLanguage => 'Ululimi lwa app';

  @override
  String get chooseLanguage => 'Saleni ululimi';

  @override
  String get theme => 'Umutwe';

  @override
  String get appearance => 'Imimonekele';

  @override
  String get textSection => 'Ilembo';

  @override
  String get readingFormatSection => 'Umusango wa Kubelenga';

  @override
  String get displaySection => 'Ukulangilila';

  @override
  String get verseNumbers => 'Amanambala ya fikomo';

  @override
  String get sectionHeadings => 'Imitwe ya Fiputulwa';

  @override
  String get redLetterText => 'Amalembo ayakashika';

  @override
  String get selectABook => 'Saleni Icitabo';

  @override
  String get traditionalOrder => 'Ukukonkana kwa cifyalilwa';

  @override
  String get alphabeticalOrder => 'Ukukonkana kwa alfabeti';

  @override
  String get bookmarks => 'Ifishibilo fya fitabo';

  @override
  String get retry => 'Esheni nakabili';

  @override
  String get chooseTheme => 'Saleni Umutwe';

  @override
  String get customisableThemes => 'Imitwe iyapangwa';

  @override
  String get customisableThemesSubtitle =>
      'Tinikeni pali khadi pakuti musale ilangi lyakubomfya. \"Ubuuta bwa kale\" na kabili bulatungilila imisango ya Bushiku, Icififi na Inshila.';

  @override
  String get setThemes => 'UKUBIKA IMITWE';

  @override
  String get setThemesSubtitle =>
      'Amapaleti ayashintililwapo, ayapangwa ku minwe. Takuli ukuipangasha ukukabilwa — tinikeni fye pakuti mubomfye.';

  @override
  String get deleteBookmarkQuestion => 'Bushe fuutipo akabokoshi?';

  @override
  String get cancel => 'Ukuleesha';

  @override
  String get delete => 'Ukufuta';

  @override
  String get bookmarkSaved => 'Icimanyililo ca citabo casungwa';

  @override
  String get couldNotDeleteBookmark => 'Teti cifuute akabokoshi.';

  @override
  String couldNotNavigate(Object reference) {
    return 'Teti cikonke ukuya ku $reference.';
  }

  @override
  String get pageNotFound => 'Ibuula talyasangwa';

  @override
  String noRouteDefined(Object routeName) {
    return 'Tapali inshila iyalondolwelwe iya \"$routeName\"';
  }

  @override
  String get english => 'Icisungu';

  @override
  String get spanish => 'IciSpain';

  @override
  String get systemDefault => 'Imibombele iyabako';

  @override
  String get languageStatusEnglish => 'Ukubweluluka kwa ciNgeleshi kulebomba';

  @override
  String get languageStatusSystem => 'Ukubomfya ululimi lwa mibombele';

  @override
  String languageStatusSelected(Object languageName) {
    return 'Ululimi ulusalilwe: $languageName';
  }

  @override
  String get themeLabel => 'Umutwe';

  @override
  String get notFoundTitle => 'Ibuula talyasangwa';

  @override
  String get loadingCyberBible => 'Ukubika Baibolo iya pa Intaneti...';

  @override
  String get couldNotOpenDatabase =>
      'Tacakwete amaka ya kwisula icifulo ca fishinka fya mu Baibolo. Mukwai esheniko nakabili.';

  @override
  String get homeTagline =>
      'App iya kusambililamo Baibolo iyabula ukulipilisha kabili iyaisulwa .';

  @override
  String get readTheBible => 'Belengeni Baibolo';

  @override
  String get settingsTooltip => 'Imitantikile';

  @override
  String get themeChoose => 'Saleni Umutwe';

  @override
  String get customThemes => 'Imitwe iyapangwa';

  @override
  String get customThemesSubtitle =>
      'Tinikeni pali khadi pakuti musale ilangi lyakubomfya. \"Ubuuta bwa kale\" na kabili bulatungilila imisango ya Bushiku, Icififi na Inshila.';

  @override
  String get setThemesLabel => 'UKUBIKA IMITWE';

  @override
  String get deleteBookmarkDialog => 'Bushe fuutipo akabokoshi?';

  @override
  String removeBookmarkMessage(Object details, Object reference) {
    return 'Fumyapo \"$reference\"$details?\n\nIci tekuti cibweshiwepo.';
  }

  @override
  String get couldNotLoadBookmarks =>
      'Teti fibike ifishibilo fya fitabo. Mukwai esheniko nakabili.';

  @override
  String get bookmarkSavedMessage => 'Icimanyililo ca citabo casungwa';

  @override
  String get couldNotSaveBookmark => 'Teti cisungilwe akabokoshi.';

  @override
  String get noBookmarksMatchFilter =>
      'Tapali ifishibilo ifipalene na ifi ifipimo.';

  @override
  String get clearFilter => 'Fumyapo icakusefa';

  @override
  String get traditionalOrderLabel => 'Ukukonkana kwa cifyalilwa';

  @override
  String get alphabeticalOrderLabel => 'Ukukonkana kwa alfabeti';

  @override
  String get bookmarksTabLabel => 'Ifishibilo fya fitabo';

  @override
  String get fullChapter => 'Icipandwa conse';

  @override
  String get addBookmark => 'Lundako akabokoshi';

  @override
  String get selectVerse => 'Saleni Icikomo';

  @override
  String get labelOptional => 'Icimanyililo (nga mulefwaya)';

  @override
  String get notesOptional => 'Ifilembo (ngakusalapo)';

  @override
  String get save => 'Ukusunga';

  @override
  String get goToVerse => 'Kabiyeni ku Cikomo 1 .';

  @override
  String verseTitle(Object verse) {
    return 'Icikomo $verse';
  }

  @override
  String chapterTitle(Object chapter) {
    return 'Icipandwa $chapter';
  }

  @override
  String get switchToFullChapter => 'Cinjeni ku cishibilo ca cipandwa conse';

  @override
  String get bookmarkSheetCancel => 'Kansa, isaleni ibuula lya cishibilo';

  @override
  String get pickCustomAccent => 'Saleni amashiwi ayalinga';

  @override
  String get apply => 'Ukubomfya';

  @override
  String get custom => 'Intambi';

  @override
  String get brightnessSystem => 'Imibombele';

  @override
  String get brightnessLight => 'Ulubuuto';

  @override
  String get brightnessDark => 'Icafita';

  @override
  String get selectBook => 'Saleni Icitabo';

  @override
  String get bookmarkFilterAll => 'Conse';

  @override
  String get bookmarkFilterUnlabeled => 'Icishilembwa';

  @override
  String get bookmarkSortRecent => 'Icakubalilapo ica nombaline';

  @override
  String get bookmarkSortCanonical => 'Ukukonkana kwa mafunde';

  @override
  String get chapterRetry => 'Esheni nakabili';

  @override
  String get fontSize => 'Ubukulu bwa malembo';

  @override
  String fontSizePixels(Object size) {
    return '$size px';
  }

  @override
  String get fontSizeSlider => 'Ukusuntinkanya ubukulu bwa malembo';

  @override
  String get fontSizeSliderHint =>
      'Swipe pakuti mulungike ukufuma pali 12 ukufika kuli 28';

  @override
  String get fontPreview =>
      '\"Pa kutendeka Lesa alengele imyulu ne sonde.\" — Ukutendeka 1:1 .';

  @override
  String get showVerseNumbersSubtitle =>
      'Langisheni amanamba ya cikomo ayalembelwe pa muulu pa citabo ca kubelenga.';

  @override
  String get showSectionHeadingsSubtitle =>
      'Langisheni imitwe ya fiputulwa ne Amalumbo pa kati ka fiputulwa.';

  @override
  String get wordsOfChristSubtitle =>
      'Langisheni amashiwi ya kwa Yesu ayafitulukila. Lekeni pa langi limo ilya malembo.';

  @override
  String get verseFormatTitle => 'Imipangile ya cikomo';

  @override
  String get verseFormatSubtitle =>
      'Saleni ifyo amashiwi ya mu malembo yatantikwa.';

  @override
  String get paragraphMode => 'Icikomo';

  @override
  String get verseListMode => 'Umutande wa fikomo';

  @override
  String get paragraphModeTooltip => 'Umusango wa fikomo';

  @override
  String get verseListModeTooltip => 'Umusango wa mulongo wa fikomo';

  @override
  String get paragraphModeDescription =>
      'Amashiwi yalepita ukwabula ukuleka ne fikomo fyabikwamo, nga Baibolo iyapulintwa.';

  @override
  String get verseListModeDescription =>
      'Cila cikomo ca malembo citendeka pa mulongo wa ciko, ica kuti amabumba ya fikomo yaliyanguka ukumona.';

  @override
  String get deleteBookmarkTooltip => 'Fuuta akabokoshi';

  @override
  String deleteBookmarkSemantics(Object reference) {
    return 'Fuuta icilangililo ca citabo $reference';
  }

  @override
  String sortBookmarksTooltip(Object sortOrder) {
    return 'Ukusalapula: $sortOrder';
  }

  @override
  String get noBookmarksYet => 'Tapali ifishibilo fya fitabo nomba.';

  @override
  String get noBookmarksYetHint =>
      'Tinikeni pa cishibilo ca cishibilo ilyo mulebelenga pa kuti musunge icifulo.';

  @override
  String bookmarkReferenceNavigationError(Object reference) {
    return 'Teti cikonke ukuya ku $reference.';
  }

  @override
  String themeCardSemantics(Object description, Object name, Object selected) {
    return '$name umutwe wa lyashi$selected. $description';
  }

  @override
  String get selectedThemeSuffix => ', pali ino nshita icasalilwe';

  @override
  String get customisableAccentDescription => 'Ilangi lyakubomfya ilyalinga.';

  @override
  String get fixedPaletteDescription => 'Paleti iyashintililwapo.';

  @override
  String accentColourTitle(Object themeName) {
    return 'Ilangi lya Cikomo — $themeName';
  }

  @override
  String get brightnessMode => 'IMIBELE YA KUSANGA';

  @override
  String get lightMode => 'Umusango wa lubuuto';

  @override
  String get followSystemMode => 'Ukonke inshila';

  @override
  String get darkMode => 'Umusango wafiita';

  @override
  String get customColourPicker => 'Icisalilo ca ma langi icalinga';

  @override
  String get customColourTooltip => 'Ilangi ilyalinga...';

  @override
  String get couldNotLoadBooks =>
      'Tatwakwanishe ukubika umutande wa mabuuku. Mukwai esheniko nakabili.';

  @override
  String chapterLabel(Object chapter) {
    return 'Icipandwa $chapter';
  }

  @override
  String get traditionalOrderBooks => 'Amabuuku ya cifyalilwa aya oda';

  @override
  String get alphabeticalOrderBooks =>
      'Amabuuku ayatantikwa ukulingana na alfabeti';

  @override
  String get home => 'Ing\'anda';

  @override
  String get addBookmarkTooltip => 'Lundako akabokoshi';

  @override
  String get chooseBookChapter => 'Saleni ibuuku ne cipandwa .';

  @override
  String get chooseVerse => 'Saleni icikomo';

  @override
  String get bookChapterQuickNavigation =>
      'Ukufwailisha kwa bwangu ukwa citabo ne fipandwa';

  @override
  String get verseQuickNavigation => 'Ukutandalila bwangu amavesi';

  @override
  String get backToBooks => 'Ukubwelela ku mabuuku';

  @override
  String get selectBookTitle => 'Saleni Icitabo';

  @override
  String selectChapterTitle(Object bookName) {
    return 'Saleni Icipandwa ($bookName)';
  }

  @override
  String chapterSelectionLabel(Object chapter) {
    return 'Icipandwa $chapter';
  }

  @override
  String verseSelectionLabel(Object verse) {
    return 'Icikomo $verse';
  }

  @override
  String fullChapterReference(Object bookName, Object chapter) {
    return 'Icipandwa conse: $bookName $chapter';
  }

  @override
  String get memorizeHint => 'Ukusunga mu mutwe';

  @override
  String get addNoteHint => 'Lundapo icikomo...';

  @override
  String get languageSearchHint => 'Fwayeni ifitundu';

  @override
  String get languageModuleInstalled => 'Ifibikwa';

  @override
  String get languageModulePending => 'Ukupilibula kwa mashini kulelolela';

  @override
  String get languageNoMatches => 'Tapali ifitundu ifipalene nefyo mulefwaya.';

  @override
  String get languageCatalogDescription =>
      'Ifitundu ifishibikwe ukuti fyabikwa filabomba ukwabula intaneti. Ifitundu fimbi fikalundwako nga ifiputulwa fyapilibulwa ku mashini.';

  @override
  String get saveBookmarkSemantics => 'Sunga akabokoshi';

  @override
  String get couldNotLoadChapter =>
      'Teti cikonkepo ukubika icipandwa. Mukwai esheniko nakabili.';

  @override
  String get couldNotLoadChapters =>
      'Tacikweteko imitwe. Mukwai esheniko nakabili.';

  @override
  String verseWithText(Object text, Object verse) {
    return 'Icikomo $verse: $text';
  }

  @override
  String accentSwatchSemantics(Object name, Object selected) {
    return '$name ilangi lya kucincimusha$selected';
  }

  @override
  String get oldTestament => 'Icipangano ca Kale';

  @override
  String get newTestament => 'Icipangano Cipya';

  @override
  String get deuterocanonApocrypha => 'Amafunde / Amafunde yafiko';
}
