// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Kinyarwanda (`rw`).
class AppLocalizationsRw extends AppLocalizations {
  AppLocalizationsRw([String locale = 'rw']) : super(locale);

  @override
  String get settingsTitle => 'Igenamiterere';

  @override
  String get languageSection => 'Ururimi';

  @override
  String get useSystemLanguage => 'Koresha ururimi rwa sisitemu';

  @override
  String get useSystemLanguageSubtitle =>
      'Huzwa ururimi rw\'igikoresho nk\'ubusanzwe.';

  @override
  String get currentLanguage => 'Ururimi ruriho';

  @override
  String get appLanguage => 'Ururimi rwa porogaramu';

  @override
  String get chooseLanguage => 'Hitamo ururimi';

  @override
  String get theme => 'Insanganyamatsiko';

  @override
  String get appearance => 'Imigaragarire';

  @override
  String get textSection => 'Inyandiko';

  @override
  String get readingFormatSection => 'Uburyo bwo gusoma';

  @override
  String get displaySection => 'Iyerekana';

  @override
  String get verseNumbers => 'Imibare y\'imirongo';

  @override
  String get sectionHeadings => 'Imitwe y\'ibice';

  @override
  String get redLetterText => 'Inyandiko itukura';

  @override
  String get selectABook => 'Hitamo igitabo';

  @override
  String get traditionalOrder => 'Uko bisanzwe bikurikirana';

  @override
  String get alphabeticalOrder => 'Uko inyuguti zikurikirana';

  @override
  String get bookmarks => 'Ibirango';

  @override
  String get retry => 'Ongera ugerageze';

  @override
  String get chooseTheme => 'Hitamo insanganyamatsiko';

  @override
  String get customisableThemes => 'Insanganyamatsiko zihindurwa';

  @override
  String get customisableThemesSubtitle =>
      'Kanda ku ikarita uhitemo ibara ry\'inyongera. \"Classic White\" inashyigikira uburyo bw\'Umucyo, Umwijima na Sisitemu.';

  @override
  String get setThemes => 'INSANGANYAMATSIKO ZASHYIZWEHO';

  @override
  String get setThemesSubtitle =>
      'Amabara adahinduka yakozwe n\'intoki. Nta guhindura bikenewe - kanda gusa uyakoreshe.';

  @override
  String get deleteBookmarkQuestion => 'Gusiba ikirango?';

  @override
  String get cancel => 'Kureka';

  @override
  String get delete => 'Siba';

  @override
  String get bookmarkSaved => 'Ikirango cyabitswe';

  @override
  String get couldNotDeleteBookmark => 'Ntibyashobotse gusiba ikirango.';

  @override
  String couldNotNavigate(Object reference) {
    return 'Ntibyashobotse kugera kuri $reference.';
  }

  @override
  String get pageNotFound => 'Paji ntiyabonetse';

  @override
  String noRouteDefined(Object routeName) {
    return 'Nta nzira yasobanuwe ya \"$routeName\"';
  }

  @override
  String get english => 'Icyongereza';

  @override
  String get spanish => 'Icyesipanyoli';

  @override
  String get systemDefault => 'Igenamiterere rya sisitemu';

  @override
  String get languageStatusEnglish => 'Gusubira ku Cyongereza birakora';

  @override
  String get languageStatusSystem => 'Hakoreshwa ururimi rwa sisitemu';

  @override
  String languageStatusSelected(Object languageName) {
    return 'Ururimi rwatoranyijwe: $languageName';
  }

  @override
  String get themeLabel => 'Insanganyamatsiko';

  @override
  String get notFoundTitle => 'Paji ntiyabonetse';

  @override
  String get loadingCyberBible => 'Cyber Bible irimo gutangira...';

  @override
  String get couldNotOpenDatabase =>
      'Ntibyashobotse gufungura ububiko bwa Bibiliya. Ongera ugerageze.';

  @override
  String get homeTagline =>
      'Porogaramu y\'ubuntu kandi ifunguye yo kwiga Bibiliya';

  @override
  String get readTheBible => 'Soma Bibiliya';

  @override
  String get settingsTooltip => 'Igenamiterere';

  @override
  String get themeChoose => 'Hitamo insanganyamatsiko';

  @override
  String get customThemes => 'Insanganyamatsiko zihindurwa';

  @override
  String get customThemesSubtitle =>
      'Kanda ku ikarita uhitemo ibara ry\'inyongera. \"Classic White\" inashyigikira uburyo bw\'Umucyo, Umwijima na Sisitemu.';

  @override
  String get setThemesLabel => 'INSANGANYAMATSIKO ZASHYIZWEHO';

  @override
  String get deleteBookmarkDialog => 'Gusiba ikirango?';

  @override
  String removeBookmarkMessage(Object details, Object reference) {
    return 'Siba \"$reference\"$details?\n\nIbi ntibishobora gusubizwaho.';
  }

  @override
  String get couldNotLoadBookmarks =>
      'Ntibyashobotse gufungura ibirango. Ongera ugerageze.';

  @override
  String get bookmarkSavedMessage => 'Ikirango cyabitswe';

  @override
  String get couldNotSaveBookmark => 'Ntibyashobotse kubika ikirango.';

  @override
  String get noBookmarksMatchFilter => 'Nta birango bihuye n\'iki kayunguruzo.';

  @override
  String get clearFilter => 'Kuraho akayunguruzo';

  @override
  String get traditionalOrderLabel => 'Uko bisanzwe bikurikirana';

  @override
  String get alphabeticalOrderLabel => 'Uko inyuguti zikurikirana';

  @override
  String get bookmarksTabLabel => 'Ibirango';

  @override
  String get fullChapter => 'Igice cyose';

  @override
  String get addBookmark => 'Ongeraho ikirango';

  @override
  String get selectVerse => 'Hitamo umurongo';

  @override
  String get labelOptional => 'Ikirango (si ngombwa)';

  @override
  String get notesOptional => 'Ibisobanuro (si ngombwa)';

  @override
  String get save => 'Bika';

  @override
  String get goToVerse => 'Jya ku murongo';

  @override
  String verseTitle(Object verse) {
    return 'Umurongo $verse';
  }

  @override
  String chapterTitle(Object chapter) {
    return 'Igice $chapter';
  }

  @override
  String get switchToFullChapter =>
      'Hindura ujye ku kimenyetso cy\'igice cyose';

  @override
  String get bookmarkSheetCancel => 'Kureka, funga urupapuro rw\'ibirango';

  @override
  String get pickCustomAccent => 'Hitamo ibara ry\'inyongera';

  @override
  String get apply => 'Koresha';

  @override
  String get custom => 'Byihariye';

  @override
  String get brightnessSystem => 'Sisitemu';

  @override
  String get brightnessLight => 'Umucyo';

  @override
  String get brightnessDark => 'Umwijima';

  @override
  String get selectBook => 'Hitamo igitabo';

  @override
  String get bookmarkFilterAll => 'Byose';

  @override
  String get bookmarkFilterUnlabeled => 'Nta kirango';

  @override
  String get bookmarkSortRecent => 'Ibishya bibanza';

  @override
  String get bookmarkSortCanonical => 'Uko byemewe bikurikirana';

  @override
  String get chapterRetry => 'Ongera ugerageze';

  @override
  String get fontSize => 'Ingano y\'imyandikire';

  @override
  String fontSizePixels(Object size) {
    return '$size px';
  }

  @override
  String get fontSizeSlider => 'Igikoresho cyo guhindura ingano y\'imyandikire';

  @override
  String get fontSizeSliderHint =>
      'Nyereza uhindure kuva kuri 12 kugera kuri 28';

  @override
  String get fontPreview =>
      '\"Mu ntangiriro Imana yaremye ijuru n\'isi.\" — Itangiriro 1:1';

  @override
  String get showVerseNumbersSubtitle =>
      'Erekana imibare mito y\'imirongo kuri paji yo gusoma.';

  @override
  String get showSectionHeadingsSubtitle =>
      'Erekana imitwe y\'ibice n\'iya Zaburi hagati y\'ibice by\'inyandiko.';

  @override
  String get wordsOfChristSubtitle =>
      'Erekana amagambo ya Yesu mu mutuku. Zimya kugira ngo inyandiko ibe ibara rimwe.';

  @override
  String get verseFormatTitle => 'Imiterere y\'umurongo';

  @override
  String get verseFormatSubtitle =>
      'Hitamo uko inyandiko z\'Ibyanditswe ziteye.';

  @override
  String get paragraphMode => 'Paragarafu';

  @override
  String get verseListMode => 'Urutonde rw\'imirongo';

  @override
  String get paragraphModeTooltip => 'Uburyo bwa paragarafu';

  @override
  String get verseListModeTooltip => 'Uburyo bw\'urutonde rw\'imirongo';

  @override
  String get paragraphModeDescription =>
      'Inyandiko zikomeza kugenda zifite paragarafu zisunitse, nka Bibiliya yacapwe.';

  @override
  String get verseListModeDescription =>
      'Buri paragarafu y\'Ibyanditswe itangirira ku murongo wayo, bigatuma amatsinda y\'imirongo agaragara neza.';

  @override
  String get deleteBookmarkTooltip => 'Siba ikirango';

  @override
  String deleteBookmarkSemantics(Object reference) {
    return 'Siba ikirango $reference';
  }

  @override
  String sortBookmarksTooltip(Object sortOrder) {
    return 'Tondeka: $sortOrder';
  }

  @override
  String get noBookmarksYet => 'Nta birango birabaho.';

  @override
  String get noBookmarksYetHint =>
      'Kanda agashushanyo k\'ikirango uri gusoma kugira ngo ubike aho ugeze.';

  @override
  String bookmarkReferenceNavigationError(Object reference) {
    return 'Ntibyashobotse kugera kuri $reference.';
  }

  @override
  String themeCardSemantics(Object description, Object name, Object selected) {
    return 'Insanganyamatsiko $name$selected. $description';
  }

  @override
  String get selectedThemeSuffix => ', iriho ubu';

  @override
  String get customisableAccentDescription => 'Ibara ry\'inyongera rihindurwa.';

  @override
  String get fixedPaletteDescription => 'Amabara adahinduka.';

  @override
  String accentColourTitle(Object themeName) {
    return 'Ibara ry\'inyongera — $themeName';
  }

  @override
  String get brightnessMode => 'UBURYO BW\'UMUCYO';

  @override
  String get lightMode => 'Uburyo bw\'umucyo';

  @override
  String get followSystemMode => 'Kurikiza uburyo bwa sisitemu';

  @override
  String get darkMode => 'Uburyo bw\'umwijima';

  @override
  String get customColourPicker => 'Guhitamo ibara ryihariye';

  @override
  String get customColourTooltip => 'Ibara ryihariye...';

  @override
  String get couldNotLoadBooks =>
      'Ntibyashobotse gufungura urutonde rw\'ibitabo. Ongera ugerageze.';

  @override
  String chapterLabel(Object chapter) {
    return 'Igice $chapter';
  }

  @override
  String get traditionalOrderBooks => 'Ibitabo bikurikirana bisanzwe';

  @override
  String get alphabeticalOrderBooks => 'Ibitabo bikurikirana inyuguti';

  @override
  String get home => 'Ahabanza';

  @override
  String get addBookmarkTooltip => 'Ongeraho ikirango';

  @override
  String get chooseBookChapter => 'Hitamo igitabo n\'igice';

  @override
  String get chooseVerse => 'Hitamo umurongo';

  @override
  String get bookChapterQuickNavigation => 'Kujya vuba ku gitabo n\'igice';

  @override
  String get verseQuickNavigation => 'Kujya vuba ku murongo';

  @override
  String get backToBooks => 'Subira ku bitabo';

  @override
  String get selectBookTitle => 'Hitamo igitabo';

  @override
  String selectChapterTitle(Object bookName) {
    return 'Hitamo igice ($bookName)';
  }

  @override
  String chapterSelectionLabel(Object chapter) {
    return 'Igice $chapter';
  }

  @override
  String verseSelectionLabel(Object verse) {
    return 'Umurongo $verse';
  }

  @override
  String fullChapterReference(Object bookName, Object chapter) {
    return 'Igice cyose: $bookName $chapter';
  }

  @override
  String get memorizeHint => 'Fata mu mutwe';

  @override
  String get addNoteHint => 'Ongeraho igisobanuro...';

  @override
  String get languageSearchHint => 'Shakisha indimi';

  @override
  String get languageModuleInstalled => 'Yashyizwemo';

  @override
  String get languageModulePending => 'Kwamamaza n\'imashini birategerejwe';

  @override
  String get languageNoMatches => 'Nta ndimi zihuye n\'ishakisha ryawe.';

  @override
  String get languageCatalogDescription =>
      'Indimi zanditswe ko zashyizwemo zikora nta murandasi. Izindi zizongerwa nk\'uduce twahinduwe n\'imashini.';

  @override
  String get saveBookmarkSemantics => 'Bika ikirango';

  @override
  String get couldNotLoadChapter =>
      'Ntibyashobotse gufungura igice. Ongera ugerageze.';

  @override
  String get couldNotLoadChapters =>
      'Ntibyashobotse gufungura ibice. Ongera ugerageze.';

  @override
  String verseWithText(Object text, Object verse) {
    return 'Umurongo $verse: $text';
  }

  @override
  String accentSwatchSemantics(Object name, Object selected) {
    return 'Ibara ry\'inyongera $name$selected';
  }

  @override
  String get oldTestament => 'Isezerano Rya Kera';

  @override
  String get newTestament => 'Isezerano Rishya';

  @override
  String get deuterocanonApocrypha => 'Deuterocanon / Apocrypha';
}
