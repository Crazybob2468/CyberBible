// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Malayalam (`ml`).
class AppLocalizationsMl extends AppLocalizations {
  AppLocalizationsMl([String locale = 'ml']) : super(locale);

  @override
  String get settingsTitle => 'ക്രമീകരണങ്ങൾ';

  @override
  String get languageSection => 'ഭാഷ';

  @override
  String get useSystemLanguage => 'സിസ്റ്റം ഭാഷ ഉപയോഗിക്കുക';

  @override
  String get useSystemLanguageSubtitle =>
      'ഡിഫോൾട്ടായി ഉപകരണ ഭാഷ പൊരുത്തപ്പെടുത്തുക.';

  @override
  String get currentLanguage => 'നിലവിലെ ഭാഷ';

  @override
  String get appLanguage => 'ആപ്പ് ഭാഷ';

  @override
  String get chooseLanguage => 'ഭാഷ തിരഞ്ഞെടുക്കുക';

  @override
  String get theme => 'തീം';

  @override
  String get appearance => 'രൂപഭാവം';

  @override
  String get textSection => 'വാചകം';

  @override
  String get readingFormatSection => 'വായന ഫോർമാറ്റ്';

  @override
  String get displaySection => 'പ്രദർശിപ്പിക്കുക';

  @override
  String get verseNumbers => 'വാക്യ സംഖ്യകൾ';

  @override
  String get sectionHeadings => 'വിഭാഗം തലക്കെട്ടുകൾ';

  @override
  String get redLetterText => 'ചുവന്ന അക്ഷര വാചകം';

  @override
  String get selectABook => 'ഒരു പുസ്തകം തിരഞ്ഞെടുക്കുക';

  @override
  String get traditionalOrder => 'പരമ്പരാഗത ക്രമം';

  @override
  String get alphabeticalOrder => 'അക്ഷരമാലാ ക്രമം';

  @override
  String get bookmarks => 'ബുക്ക്മാർക്കുകൾ';

  @override
  String get retry => 'വീണ്ടും ശ്രമിക്കുക';

  @override
  String get chooseTheme => 'തീം തിരഞ്ഞെടുക്കുക';

  @override
  String get customisableThemes => 'ഇഷ്ടാനുസൃതമാക്കാവുന്ന തീമുകൾ';

  @override
  String get customisableThemesSubtitle =>
      'ഒരു ആക്സൻ്റ് നിറം തിരഞ്ഞെടുക്കാൻ ഒരു കാർഡിൽ ടാപ്പ് ചെയ്യുക. \"ക്ലാസിക് വൈറ്റ്\" ലൈറ്റ്, ഡാർക്ക്, സിസ്റ്റം മോഡുകളും പിന്തുണയ്ക്കുന്നു.';

  @override
  String get setThemes => 'തീമുകൾ സജ്ജമാക്കുക';

  @override
  String get setThemesSubtitle =>
      'സ്ഥിരമായ, കൈകൊണ്ട് നിർമ്മിച്ച പാലറ്റുകൾ. ഇഷ്‌ടാനുസൃതമാക്കൽ ആവശ്യമില്ല - പ്രയോഗിക്കാൻ ടാപ്പ് ചെയ്യുക.';

  @override
  String get deleteBookmarkQuestion => 'ബുക്ക്‌മാർക്ക് ഇല്ലാതാക്കണോ?';

  @override
  String get cancel => 'റദ്ദാക്കുക';

  @override
  String get delete => 'ഇല്ലാതാക്കുക';

  @override
  String get bookmarkSaved => 'ബുക്ക്‌മാർക്ക് സംരക്ഷിച്ചു';

  @override
  String get couldNotDeleteBookmark =>
      'ബുക്ക്‌മാർക്ക് ഇല്ലാതാക്കാൻ കഴിഞ്ഞില്ല.';

  @override
  String couldNotNavigate(Object reference) {
    return '$reference-ലേക്ക് നാവിഗേറ്റ് ചെയ്യാൻ കഴിഞ്ഞില്ല.';
  }

  @override
  String get pageNotFound => 'പേജ് കണ്ടെത്തിയില്ല';

  @override
  String noRouteDefined(Object routeName) {
    return '\"$routeName\" എന്നതിനായി റൂട്ടൊന്നും നിർവചിച്ചിട്ടില്ല';
  }

  @override
  String get english => 'ഇംഗ്ലീഷ്';

  @override
  String get spanish => 'എസ്പാനോൾ';

  @override
  String get systemDefault => 'സിസ്റ്റം ഡിഫോൾട്ട്';

  @override
  String get languageStatusEnglish => 'ഇംഗ്ലീഷ് ഫോൾബാക്ക് സജീവമാണ്';

  @override
  String get languageStatusSystem => 'സിസ്റ്റം ഭാഷ ഉപയോഗിക്കുന്നു';

  @override
  String languageStatusSelected(Object languageName) {
    return 'തിരഞ്ഞെടുത്ത ഭാഷ: $languageName';
  }

  @override
  String get themeLabel => 'തീം';

  @override
  String get notFoundTitle => 'പേജ് കണ്ടെത്തിയില്ല';

  @override
  String get loadingCyberBible => 'സൈബർ ബൈബിൾ ലോഡ് ചെയ്യുന്നു...';

  @override
  String get couldNotOpenDatabase =>
      'ബൈബിൾ ഡാറ്റാബേസ് തുറക്കാൻ കഴിഞ്ഞില്ല. ദയവായി വീണ്ടും ശ്രമിക്കുക.';

  @override
  String get homeTagline => 'ഒരു സ്വതന്ത്രവും ഓപ്പൺ സോഴ്‌സ് ബൈബിൾ പഠന ആപ്പ്';

  @override
  String get readTheBible => 'ബൈബിൾ വായിക്കുക';

  @override
  String get settingsTooltip => 'ക്രമീകരണങ്ങൾ';

  @override
  String get themeChoose => 'തീം തിരഞ്ഞെടുക്കുക';

  @override
  String get customThemes => 'ഇഷ്ടാനുസൃതമാക്കാവുന്ന തീമുകൾ';

  @override
  String get customThemesSubtitle =>
      'ഒരു ആക്സൻ്റ് നിറം തിരഞ്ഞെടുക്കാൻ ഒരു കാർഡിൽ ടാപ്പ് ചെയ്യുക. \"ക്ലാസിക് വൈറ്റ്\" ലൈറ്റ്, ഡാർക്ക്, സിസ്റ്റം മോഡുകളും പിന്തുണയ്ക്കുന്നു.';

  @override
  String get setThemesLabel => 'തീമുകൾ സജ്ജമാക്കുക';

  @override
  String get deleteBookmarkDialog => 'ബുക്ക്‌മാർക്ക് ഇല്ലാതാക്കണോ?';

  @override
  String removeBookmarkMessage(Object details, Object reference) {
    return '\"$reference\"$details നീക്കംചെയ്യണോ?\n\nഇത് പഴയപടിയാക്കാനാകില്ല.';
  }

  @override
  String get couldNotLoadBookmarks =>
      'ബുക്ക്‌മാർക്കുകൾ ലോഡ് ചെയ്യാനായില്ല. ദയവായി വീണ്ടും ശ്രമിക്കുക.';

  @override
  String get bookmarkSavedMessage => 'ബുക്ക്‌മാർക്ക് സംരക്ഷിച്ചു';

  @override
  String get couldNotSaveBookmark => 'ബുക്ക്‌മാർക്ക് സംരക്ഷിക്കാൻ കഴിഞ്ഞില്ല.';

  @override
  String get noBookmarksMatchFilter =>
      'ഈ ഫിൽട്ടറുമായി പൊരുത്തപ്പെടുന്ന ബുക്ക്‌മാർക്കുകളൊന്നുമില്ല.';

  @override
  String get clearFilter => 'ഫിൽട്ടർ മായ്‌ക്കുക';

  @override
  String get traditionalOrderLabel => 'പരമ്പരാഗത ക്രമം';

  @override
  String get alphabeticalOrderLabel => 'അക്ഷരമാലാ ക്രമം';

  @override
  String get bookmarksTabLabel => 'ബുക്ക്മാർക്കുകൾ';

  @override
  String get fullChapter => 'മുഴുവൻ അധ്യായം';

  @override
  String get addBookmark => 'ബുക്ക്മാർക്ക് ചേർക്കുക';

  @override
  String get selectVerse => 'വാക്യം തിരഞ്ഞെടുക്കുക';

  @override
  String get labelOptional => 'ലേബൽ (ഓപ്ഷണൽ)';

  @override
  String get notesOptional => 'കുറിപ്പുകൾ (ഓപ്ഷണൽ)';

  @override
  String get save => 'സംരക്ഷിക്കുക';

  @override
  String get goToVerse => 'വാക്യത്തിലേക്ക് പോകുക';

  @override
  String verseTitle(Object verse) {
    return 'വാക്യം $verse';
  }

  @override
  String chapterTitle(Object chapter) {
    return 'അധ്യായം $chapter';
  }

  @override
  String get switchToFullChapter => 'പൂർണ്ണ അധ്യായ ബുക്ക്‌മാർക്കിലേക്ക് മാറുക';

  @override
  String get bookmarkSheetCancel =>
      'റദ്ദാക്കുക, ബുക്ക്മാർക്ക് ഷീറ്റ് അടയ്ക്കുക';

  @override
  String get pickCustomAccent => 'ഒരു ഇഷ്‌ടാനുസൃത ആക്സൻ്റ് തിരഞ്ഞെടുക്കുക';

  @override
  String get apply => 'അപേക്ഷിക്കുക';

  @override
  String get custom => 'കസ്റ്റം';

  @override
  String get brightnessSystem => 'സിസ്റ്റം';

  @override
  String get brightnessLight => 'വെളിച്ചം';

  @override
  String get brightnessDark => 'ഇരുട്ട്';

  @override
  String get selectBook => 'ഒരു പുസ്തകം തിരഞ്ഞെടുക്കുക';

  @override
  String get bookmarkFilterAll => 'എല്ലാം';

  @override
  String get bookmarkFilterUnlabeled => 'ലേബൽ ചെയ്യാത്തത്';

  @override
  String get bookmarkSortRecent => 'അടുത്തിടെയുള്ള ആദ്യത്തേത്';

  @override
  String get bookmarkSortCanonical => 'കാനോനിക്കൽ ഓർഡർ';

  @override
  String get chapterRetry => 'വീണ്ടും ശ്രമിക്കുക';

  @override
  String get fontSize => 'ഫോണ്ട് വലിപ്പം';

  @override
  String fontSizePixels(Object size) {
    return '$size px';
  }

  @override
  String get fontSizeSlider => 'ഫോണ്ട് സൈസ് സ്ലൈഡർ';

  @override
  String get fontSizeSliderHint =>
      '12 മുതൽ 28 വരെ ക്രമീകരിക്കാൻ സ്വൈപ്പ് ചെയ്യുക';

  @override
  String get fontPreview =>
      '\"ആദിയിൽ ദൈവം ആകാശവും ഭൂമിയും സൃഷ്ടിച്ചു.\" — ഉല്പത്തി 1:1';

  @override
  String get showVerseNumbersSubtitle =>
      'റീഡിംഗ് സ്‌ക്രീനിൽ വാക്യ നമ്പർ സൂപ്പർസ്‌ക്രിപ്റ്റുകൾ കാണിക്കുക.';

  @override
  String get showSectionHeadingsSubtitle =>
      'ഭാഗങ്ങൾക്കിടയിൽ വിഭാഗവും സങ്കീർത്തന തലക്കെട്ടുകളും കാണിക്കുക.';

  @override
  String get wordsOfChristSubtitle =>
      'യേശുവിൻ്റെ വാക്കുകൾ ചുവപ്പ് നിറത്തിൽ കാണിക്കുക. ഒരൊറ്റ ടെക്സ്റ്റ് വർണ്ണത്തിനായി പ്രവർത്തനരഹിതമാക്കുക.';

  @override
  String get verseFormatTitle => 'വാക്യ ഫോർമാറ്റ്';

  @override
  String get verseFormatSubtitle =>
      'തിരുവെഴുത്തുകൾ എങ്ങനെയാണ് ക്രമീകരിച്ചിരിക്കുന്നതെന്ന് തിരഞ്ഞെടുക്കുക.';

  @override
  String get paragraphMode => 'ഖണ്ഡിക';

  @override
  String get verseListMode => 'വാക്യങ്ങളുടെ പട്ടിക';

  @override
  String get paragraphModeTooltip => 'ഖണ്ഡിക മോഡ്';

  @override
  String get verseListModeTooltip => 'വാക്യ-ലിസ്റ്റ് മോഡ്';

  @override
  String get paragraphModeDescription =>
      'അച്ചടിച്ച ബൈബിൾ പോലെ ഇൻഡൻ്റ് ചെയ്‌ത ഖണ്ഡികകളോടെ വാചകം തുടർച്ചയായി ഒഴുകുന്നു.';

  @override
  String get verseListModeDescription =>
      'ഓരോ തിരുവെഴുത്ത് ഖണ്ഡികയും അതിൻ്റേതായ വരിയിൽ ആരംഭിക്കുന്നു, ഇത് വാക്യഗ്രൂപ്പുകൾ കണ്ടെത്തുന്നത് എളുപ്പമാക്കുന്നു.';

  @override
  String get deleteBookmarkTooltip => 'ബുക്ക്മാർക്ക് ഇല്ലാതാക്കുക';

  @override
  String deleteBookmarkSemantics(Object reference) {
    return 'ബുക്ക്‌മാർക്ക് $reference ഇല്ലാതാക്കുക';
  }

  @override
  String sortBookmarksTooltip(Object sortOrder) {
    return 'അടുക്കുക: $sortOrder';
  }

  @override
  String get noBookmarksYet => 'ഇതുവരെ ബുക്ക്‌മാർക്കുകളൊന്നുമില്ല.';

  @override
  String get noBookmarksYetHint =>
      'ഒരു ലൊക്കേഷൻ സംരക്ഷിക്കാൻ വായിക്കുമ്പോൾ ബുക്ക്മാർക്ക് ഐക്കണിൽ ടാപ്പ് ചെയ്യുക.';

  @override
  String bookmarkReferenceNavigationError(Object reference) {
    return '$reference-ലേക്ക് നാവിഗേറ്റ് ചെയ്യാൻ കഴിഞ്ഞില്ല.';
  }

  @override
  String themeCardSemantics(Object description, Object name, Object selected) {
    return '$name തീം$selected. $description';
  }

  @override
  String get selectedThemeSuffix => ', നിലവിൽ തിരഞ്ഞെടുത്തു';

  @override
  String get customisableAccentDescription =>
      'ഇഷ്ടാനുസൃതമാക്കാവുന്ന ആക്സൻ്റ് നിറം.';

  @override
  String get fixedPaletteDescription => 'നിശ്ചിത പാലറ്റ്.';

  @override
  String accentColourTitle(Object themeName) {
    return 'ആക്സൻ്റ് നിറം - $themeName';
  }

  @override
  String get brightnessMode => 'ബ്രൈറ്റ്‌നസ് മോഡ്';

  @override
  String get lightMode => 'ലൈറ്റ് മോഡ്';

  @override
  String get followSystemMode => 'സിസ്റ്റം മോഡ് പിന്തുടരുക';

  @override
  String get darkMode => 'ഡാർക്ക് മോഡ്';

  @override
  String get customColourPicker => 'ഇഷ്‌ടാനുസൃത വർണ്ണ പിക്കർ';

  @override
  String get customColourTooltip => 'ഇഷ്ടാനുസൃത നിറം...';

  @override
  String get couldNotLoadBooks =>
      'പുസ്തകങ്ങളുടെ ലിസ്റ്റ് ലോഡ് ചെയ്യാനായില്ല. ദയവായി വീണ്ടും ശ്രമിക്കുക.';

  @override
  String chapterLabel(Object chapter) {
    return 'അധ്യായം $chapter';
  }

  @override
  String get traditionalOrderBooks => 'പരമ്പരാഗത ഓർഡർ പുസ്തകങ്ങൾ';

  @override
  String get alphabeticalOrderBooks => 'അക്ഷരമാലാ ക്രമ പുസ്തകങ്ങൾ';

  @override
  String get home => 'വീട്';

  @override
  String get addBookmarkTooltip => 'ബുക്ക്മാർക്ക് ചേർക്കുക';

  @override
  String get chooseBookChapter => 'പുസ്തകവും അധ്യായവും തിരഞ്ഞെടുക്കുക';

  @override
  String get chooseVerse => 'വാക്യം തിരഞ്ഞെടുക്കുക';

  @override
  String get bookChapterQuickNavigation => 'പുസ്തകവും അധ്യായവും ദ്രുത നാവിഗേഷൻ';

  @override
  String get verseQuickNavigation => 'വാക്യ ദ്രുത നാവിഗേഷൻ';

  @override
  String get backToBooks => 'പുസ്തകങ്ങളിലേക്ക് മടങ്ങുക';

  @override
  String get selectBookTitle => 'ബുക്ക് തിരഞ്ഞെടുക്കുക';

  @override
  String selectChapterTitle(Object bookName) {
    return 'അധ്യായം തിരഞ്ഞെടുക്കുക ($bookName)';
  }

  @override
  String chapterSelectionLabel(Object chapter) {
    return 'അധ്യായം $chapter';
  }

  @override
  String verseSelectionLabel(Object verse) {
    return 'വാക്യം $verse';
  }

  @override
  String fullChapterReference(Object bookName, Object chapter) {
    return 'മുഴുവൻ അധ്യായം: $bookName $chapter';
  }

  @override
  String get memorizeHint => 'മനഃപാഠമാക്കുക';

  @override
  String get addNoteHint => 'ഒരു കുറിപ്പ് ചേർക്കുക...';

  @override
  String get languageSearchHint => 'ഭാഷകൾ തിരയുക';

  @override
  String get languageModuleInstalled => 'ഇൻസ്റ്റാൾ ചെയ്തു';

  @override
  String get languageModulePending =>
      'മെഷീൻ വിവർത്തനം തീർച്ചപ്പെടുത്തിയിട്ടില്ല';

  @override
  String get languageNoMatches =>
      'നിങ്ങളുടെ തിരയലുമായി പൊരുത്തപ്പെടുന്ന ഭാഷകളൊന്നുമില്ല.';

  @override
  String get languageCatalogDescription =>
      'ഇൻസ്‌റ്റാൾ ചെയ്‌തതായി അടയാളപ്പെടുത്തിയിരിക്കുന്ന ഭാഷകൾ ഓഫ്‌ലൈനായി പ്രവർത്തിക്കുന്നു. മറ്റ് ഭാഷകൾ മെഷീൻ വിവർത്തനം ചെയ്ത മൊഡ്യൂളുകളായി ചേർക്കും.';

  @override
  String get saveBookmarkSemantics => 'ബുക്ക്മാർക്ക് സംരക്ഷിക്കുക';

  @override
  String get couldNotLoadChapter =>
      'ചാപ്റ്റർ ലോഡ് ചെയ്യാനായില്ല. ദയവായി വീണ്ടും ശ്രമിക്കുക.';

  @override
  String get couldNotLoadChapters =>
      'ചാപ്റ്ററുകൾ ലോഡ് ചെയ്യാനായില്ല. ദയവായി വീണ്ടും ശ്രമിക്കുക.';

  @override
  String verseWithText(Object text, Object verse) {
    return 'വാക്യം $verse: $text';
  }

  @override
  String accentSwatchSemantics(Object name, Object selected) {
    return '$name ആക്സൻ്റ് കളർ$selected';
  }

  @override
  String get oldTestament => 'പഴയ നിയമം';

  @override
  String get newTestament => 'പുതിയ നിയമം';

  @override
  String get deuterocanonApocrypha => 'ഡ്യൂട്ടറോകാനോൺ / അപ്പോക്രിഫ';
}
