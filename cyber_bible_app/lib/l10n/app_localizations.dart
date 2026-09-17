import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_af.dart';
import 'app_localizations_am.dart';
import 'app_localizations_ar.dart';
import 'app_localizations_as.dart';
import 'app_localizations_az.dart';
import 'app_localizations_be.dart';
import 'app_localizations_bg.dart';
import 'app_localizations_bn.dart';
import 'app_localizations_bs.dart';
import 'app_localizations_ca.dart';
import 'app_localizations_cs.dart';
import 'app_localizations_da.dart';
import 'app_localizations_de.dart';
import 'app_localizations_en.dart';
import 'app_localizations_es.dart';
import 'app_localizations_et.dart';
import 'app_localizations_eu.dart';
import 'app_localizations_fa.dart';
import 'app_localizations_fi.dart';
import 'app_localizations_fil.dart';
import 'app_localizations_fr.dart';
import 'app_localizations_gl.dart';
import 'app_localizations_gu.dart';
import 'app_localizations_he.dart';
import 'app_localizations_hi.dart';
import 'app_localizations_hr.dart';
import 'app_localizations_hu.dart';
import 'app_localizations_hy.dart';
import 'app_localizations_id.dart';
import 'app_localizations_is.dart';
import 'app_localizations_it.dart';
import 'app_localizations_ja.dart';
import 'app_localizations_ka.dart';
import 'app_localizations_kk.dart';
import 'app_localizations_ko.dart';
import 'app_localizations_lo.dart';
import 'app_localizations_lt.dart';
import 'app_localizations_lv.dart';
import 'app_localizations_mk.dart';
import 'app_localizations_ml.dart';
import 'app_localizations_nl.dart';
import 'app_localizations_pl.dart';
import 'app_localizations_pt.dart';
import 'app_localizations_ru.dart';
import 'app_localizations_tr.dart';
import 'app_localizations_uk.dart';
import 'app_localizations_vi.dart';
import 'app_localizations_zh.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'l10n/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale)
    : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static const LocalizationsDelegate<AppLocalizations> delegate =
      _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates =
      <LocalizationsDelegate<dynamic>>[
        delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('en'),
    Locale('es'),
    Locale('fr'),
    Locale('de'),
    Locale('it'),
    Locale('pt'),
    Locale('hi'),
    Locale('zh'),
    Locale('ar'),
    Locale('bn'),
    Locale('ja'),
    Locale('ko'),
    Locale('ru'),
    Locale('tr'),
    Locale('uk'),
    Locale('vi'),
    Locale('pl'),
    Locale('nl'),
    Locale('af'),
    Locale('am'),
    Locale('ca'),
    Locale('cs'),
    Locale('da'),
    Locale('az'),
    Locale('be'),
    Locale('bg'),
    Locale('bs'),
    Locale('et'),
    Locale('eu'),
    Locale('fa'),
    Locale('fi'),
    Locale('fil'),
    Locale('gl'),
    Locale('gu'),
    Locale('he'),
    Locale('hr'),
    Locale('hu'),
    Locale('hy'),
    Locale('id'),
    Locale('is'),
    Locale('ka'),
    Locale('kk'),
    Locale('lo'),
    Locale('lt'),
    Locale('lv'),
    Locale('mk'),
    Locale('ml'),
    Locale('as'),
  ];

  /// No description provided for @settingsTitle.
  ///
  /// In en, this message translates to:
  /// **'Settings'**
  String get settingsTitle;

  /// No description provided for @languageSection.
  ///
  /// In en, this message translates to:
  /// **'Language'**
  String get languageSection;

  /// No description provided for @useSystemLanguage.
  ///
  /// In en, this message translates to:
  /// **'Use system language'**
  String get useSystemLanguage;

  /// No description provided for @useSystemLanguageSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Match the device language by default.'**
  String get useSystemLanguageSubtitle;

  /// No description provided for @currentLanguage.
  ///
  /// In en, this message translates to:
  /// **'Current language'**
  String get currentLanguage;

  /// No description provided for @appLanguage.
  ///
  /// In en, this message translates to:
  /// **'App language'**
  String get appLanguage;

  /// No description provided for @chooseLanguage.
  ///
  /// In en, this message translates to:
  /// **'Choose language'**
  String get chooseLanguage;

  /// No description provided for @theme.
  ///
  /// In en, this message translates to:
  /// **'Theme'**
  String get theme;

  /// No description provided for @appearance.
  ///
  /// In en, this message translates to:
  /// **'Appearance'**
  String get appearance;

  /// No description provided for @textSection.
  ///
  /// In en, this message translates to:
  /// **'Text'**
  String get textSection;

  /// No description provided for @readingFormatSection.
  ///
  /// In en, this message translates to:
  /// **'Reading Format'**
  String get readingFormatSection;

  /// No description provided for @displaySection.
  ///
  /// In en, this message translates to:
  /// **'Display'**
  String get displaySection;

  /// No description provided for @verseNumbers.
  ///
  /// In en, this message translates to:
  /// **'Verse Numbers'**
  String get verseNumbers;

  /// No description provided for @sectionHeadings.
  ///
  /// In en, this message translates to:
  /// **'Section Headings'**
  String get sectionHeadings;

  /// No description provided for @redLetterText.
  ///
  /// In en, this message translates to:
  /// **'Red-Letter Text'**
  String get redLetterText;

  /// No description provided for @selectABook.
  ///
  /// In en, this message translates to:
  /// **'Select a Book'**
  String get selectABook;

  /// No description provided for @traditionalOrder.
  ///
  /// In en, this message translates to:
  /// **'Traditional order'**
  String get traditionalOrder;

  /// No description provided for @alphabeticalOrder.
  ///
  /// In en, this message translates to:
  /// **'Alphabetical order'**
  String get alphabeticalOrder;

  /// No description provided for @bookmarks.
  ///
  /// In en, this message translates to:
  /// **'Bookmarks'**
  String get bookmarks;

  /// No description provided for @retry.
  ///
  /// In en, this message translates to:
  /// **'Retry'**
  String get retry;

  /// No description provided for @chooseTheme.
  ///
  /// In en, this message translates to:
  /// **'Choose Theme'**
  String get chooseTheme;

  /// No description provided for @customisableThemes.
  ///
  /// In en, this message translates to:
  /// **'Customisable Themes'**
  String get customisableThemes;

  /// No description provided for @customisableThemesSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Tap a card to choose an accent colour. \"Classic White\" also supports Light, Dark and System modes.'**
  String get customisableThemesSubtitle;

  /// No description provided for @setThemes.
  ///
  /// In en, this message translates to:
  /// **'SET THEMES'**
  String get setThemes;

  /// No description provided for @setThemesSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Fixed, hand-crafted palettes. No customisation needed — just tap to apply.'**
  String get setThemesSubtitle;

  /// No description provided for @deleteBookmarkQuestion.
  ///
  /// In en, this message translates to:
  /// **'Delete bookmark?'**
  String get deleteBookmarkQuestion;

  /// No description provided for @cancel.
  ///
  /// In en, this message translates to:
  /// **'Cancel'**
  String get cancel;

  /// No description provided for @delete.
  ///
  /// In en, this message translates to:
  /// **'Delete'**
  String get delete;

  /// No description provided for @bookmarkSaved.
  ///
  /// In en, this message translates to:
  /// **'Bookmark saved'**
  String get bookmarkSaved;

  /// No description provided for @couldNotDeleteBookmark.
  ///
  /// In en, this message translates to:
  /// **'Could not delete bookmark.'**
  String get couldNotDeleteBookmark;

  /// No description provided for @couldNotNavigate.
  ///
  /// In en, this message translates to:
  /// **'Could not navigate to {reference}.'**
  String couldNotNavigate(Object reference);

  /// No description provided for @pageNotFound.
  ///
  /// In en, this message translates to:
  /// **'Page Not Found'**
  String get pageNotFound;

  /// No description provided for @noRouteDefined.
  ///
  /// In en, this message translates to:
  /// **'No route defined for \"{routeName}\"'**
  String noRouteDefined(Object routeName);

  /// No description provided for @english.
  ///
  /// In en, this message translates to:
  /// **'English'**
  String get english;

  /// No description provided for @spanish.
  ///
  /// In en, this message translates to:
  /// **'Español'**
  String get spanish;

  /// No description provided for @systemDefault.
  ///
  /// In en, this message translates to:
  /// **'System default'**
  String get systemDefault;

  /// No description provided for @languageStatusEnglish.
  ///
  /// In en, this message translates to:
  /// **'English fallback active'**
  String get languageStatusEnglish;

  /// No description provided for @languageStatusSystem.
  ///
  /// In en, this message translates to:
  /// **'Using system language'**
  String get languageStatusSystem;

  /// No description provided for @languageStatusSelected.
  ///
  /// In en, this message translates to:
  /// **'Selected language: {languageName}'**
  String languageStatusSelected(Object languageName);

  /// No description provided for @themeLabel.
  ///
  /// In en, this message translates to:
  /// **'Theme'**
  String get themeLabel;

  /// No description provided for @notFoundTitle.
  ///
  /// In en, this message translates to:
  /// **'Page Not Found'**
  String get notFoundTitle;

  /// No description provided for @loadingCyberBible.
  ///
  /// In en, this message translates to:
  /// **'Loading Cyber Bible...'**
  String get loadingCyberBible;

  /// No description provided for @couldNotOpenDatabase.
  ///
  /// In en, this message translates to:
  /// **'Could not open the Bible database. Please try again.'**
  String get couldNotOpenDatabase;

  /// No description provided for @homeTagline.
  ///
  /// In en, this message translates to:
  /// **'A free and open source Bible study app'**
  String get homeTagline;

  /// No description provided for @readTheBible.
  ///
  /// In en, this message translates to:
  /// **'Read the Bible'**
  String get readTheBible;

  /// No description provided for @settingsTooltip.
  ///
  /// In en, this message translates to:
  /// **'Settings'**
  String get settingsTooltip;

  /// No description provided for @themeChoose.
  ///
  /// In en, this message translates to:
  /// **'Choose Theme'**
  String get themeChoose;

  /// No description provided for @customThemes.
  ///
  /// In en, this message translates to:
  /// **'Customisable Themes'**
  String get customThemes;

  /// No description provided for @customThemesSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Tap a card to choose an accent colour. \"Classic White\" also supports Light, Dark and System modes.'**
  String get customThemesSubtitle;

  /// No description provided for @setThemesLabel.
  ///
  /// In en, this message translates to:
  /// **'SET THEMES'**
  String get setThemesLabel;

  /// No description provided for @deleteBookmarkDialog.
  ///
  /// In en, this message translates to:
  /// **'Delete bookmark?'**
  String get deleteBookmarkDialog;

  /// No description provided for @removeBookmarkMessage.
  ///
  /// In en, this message translates to:
  /// **'Remove \"{reference}\"{details}?\n\nThis cannot be undone.'**
  String removeBookmarkMessage(Object details, Object reference);

  /// No description provided for @couldNotLoadBookmarks.
  ///
  /// In en, this message translates to:
  /// **'Could not load bookmarks. Please try again.'**
  String get couldNotLoadBookmarks;

  /// No description provided for @bookmarkSavedMessage.
  ///
  /// In en, this message translates to:
  /// **'Bookmark saved'**
  String get bookmarkSavedMessage;

  /// No description provided for @couldNotSaveBookmark.
  ///
  /// In en, this message translates to:
  /// **'Could not save bookmark.'**
  String get couldNotSaveBookmark;

  /// No description provided for @noBookmarksMatchFilter.
  ///
  /// In en, this message translates to:
  /// **'No bookmarks match this filter.'**
  String get noBookmarksMatchFilter;

  /// No description provided for @clearFilter.
  ///
  /// In en, this message translates to:
  /// **'Clear filter'**
  String get clearFilter;

  /// No description provided for @traditionalOrderLabel.
  ///
  /// In en, this message translates to:
  /// **'Traditional order'**
  String get traditionalOrderLabel;

  /// No description provided for @alphabeticalOrderLabel.
  ///
  /// In en, this message translates to:
  /// **'Alphabetical order'**
  String get alphabeticalOrderLabel;

  /// No description provided for @bookmarksTabLabel.
  ///
  /// In en, this message translates to:
  /// **'Bookmarks'**
  String get bookmarksTabLabel;

  /// No description provided for @fullChapter.
  ///
  /// In en, this message translates to:
  /// **'Full chapter'**
  String get fullChapter;

  /// No description provided for @addBookmark.
  ///
  /// In en, this message translates to:
  /// **'Add Bookmark'**
  String get addBookmark;

  /// No description provided for @selectVerse.
  ///
  /// In en, this message translates to:
  /// **'Select Verse'**
  String get selectVerse;

  /// No description provided for @labelOptional.
  ///
  /// In en, this message translates to:
  /// **'Label (optional)'**
  String get labelOptional;

  /// No description provided for @notesOptional.
  ///
  /// In en, this message translates to:
  /// **'Notes (optional)'**
  String get notesOptional;

  /// No description provided for @save.
  ///
  /// In en, this message translates to:
  /// **'Save'**
  String get save;

  /// No description provided for @goToVerse.
  ///
  /// In en, this message translates to:
  /// **'Go to Verse'**
  String get goToVerse;

  /// No description provided for @verseTitle.
  ///
  /// In en, this message translates to:
  /// **'Verse {verse}'**
  String verseTitle(Object verse);

  /// No description provided for @chapterTitle.
  ///
  /// In en, this message translates to:
  /// **'Chapter {chapter}'**
  String chapterTitle(Object chapter);

  /// No description provided for @switchToFullChapter.
  ///
  /// In en, this message translates to:
  /// **'Switch to full chapter bookmark'**
  String get switchToFullChapter;

  /// No description provided for @bookmarkSheetCancel.
  ///
  /// In en, this message translates to:
  /// **'Cancel, close bookmark sheet'**
  String get bookmarkSheetCancel;

  /// No description provided for @pickCustomAccent.
  ///
  /// In en, this message translates to:
  /// **'Choose a custom accent'**
  String get pickCustomAccent;

  /// No description provided for @apply.
  ///
  /// In en, this message translates to:
  /// **'Apply'**
  String get apply;

  /// No description provided for @custom.
  ///
  /// In en, this message translates to:
  /// **'Custom'**
  String get custom;

  /// No description provided for @brightnessSystem.
  ///
  /// In en, this message translates to:
  /// **'System'**
  String get brightnessSystem;

  /// No description provided for @brightnessLight.
  ///
  /// In en, this message translates to:
  /// **'Light'**
  String get brightnessLight;

  /// No description provided for @brightnessDark.
  ///
  /// In en, this message translates to:
  /// **'Dark'**
  String get brightnessDark;

  /// No description provided for @selectBook.
  ///
  /// In en, this message translates to:
  /// **'Select a Book'**
  String get selectBook;

  /// No description provided for @bookmarkFilterAll.
  ///
  /// In en, this message translates to:
  /// **'All'**
  String get bookmarkFilterAll;

  /// No description provided for @bookmarkFilterUnlabeled.
  ///
  /// In en, this message translates to:
  /// **'Unlabeled'**
  String get bookmarkFilterUnlabeled;

  /// No description provided for @bookmarkSortRecent.
  ///
  /// In en, this message translates to:
  /// **'Recent first'**
  String get bookmarkSortRecent;

  /// No description provided for @bookmarkSortCanonical.
  ///
  /// In en, this message translates to:
  /// **'Canonical order'**
  String get bookmarkSortCanonical;

  /// No description provided for @chapterRetry.
  ///
  /// In en, this message translates to:
  /// **'Retry'**
  String get chapterRetry;

  /// No description provided for @fontSize.
  ///
  /// In en, this message translates to:
  /// **'Font Size'**
  String get fontSize;

  /// No description provided for @fontSizePixels.
  ///
  /// In en, this message translates to:
  /// **'{size} px'**
  String fontSizePixels(Object size);

  /// No description provided for @fontSizeSlider.
  ///
  /// In en, this message translates to:
  /// **'Font size slider'**
  String get fontSizeSlider;

  /// No description provided for @fontSizeSliderHint.
  ///
  /// In en, this message translates to:
  /// **'Swipe to adjust from 12 to 28'**
  String get fontSizeSliderHint;

  /// No description provided for @fontPreview.
  ///
  /// In en, this message translates to:
  /// **'\"In the beginning God created the heavens and the earth.\" — Gen 1:1'**
  String get fontPreview;

  /// No description provided for @showVerseNumbersSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Show verse number superscripts in the reading screen.'**
  String get showVerseNumbersSubtitle;

  /// No description provided for @showSectionHeadingsSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Show section and Psalm headings between passages.'**
  String get showSectionHeadingsSubtitle;

  /// No description provided for @wordsOfChristSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Show Jesus\' words in red. Disable for a single text color.'**
  String get wordsOfChristSubtitle;

  /// No description provided for @verseFormatTitle.
  ///
  /// In en, this message translates to:
  /// **'Verse Format'**
  String get verseFormatTitle;

  /// No description provided for @verseFormatSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Choose how scripture text is laid out.'**
  String get verseFormatSubtitle;

  /// No description provided for @paragraphMode.
  ///
  /// In en, this message translates to:
  /// **'Paragraph'**
  String get paragraphMode;

  /// No description provided for @verseListMode.
  ///
  /// In en, this message translates to:
  /// **'Verse list'**
  String get verseListMode;

  /// No description provided for @paragraphModeTooltip.
  ///
  /// In en, this message translates to:
  /// **'Paragraph mode'**
  String get paragraphModeTooltip;

  /// No description provided for @verseListModeTooltip.
  ///
  /// In en, this message translates to:
  /// **'Verse-list mode'**
  String get verseListModeTooltip;

  /// No description provided for @paragraphModeDescription.
  ///
  /// In en, this message translates to:
  /// **'Text flows continuously with indented paragraphs, like a printed Bible.'**
  String get paragraphModeDescription;

  /// No description provided for @verseListModeDescription.
  ///
  /// In en, this message translates to:
  /// **'Each scripture paragraph begins on its own line, making verse groups easy to spot.'**
  String get verseListModeDescription;

  /// No description provided for @deleteBookmarkTooltip.
  ///
  /// In en, this message translates to:
  /// **'Delete bookmark'**
  String get deleteBookmarkTooltip;

  /// No description provided for @deleteBookmarkSemantics.
  ///
  /// In en, this message translates to:
  /// **'Delete bookmark {reference}'**
  String deleteBookmarkSemantics(Object reference);

  /// No description provided for @sortBookmarksTooltip.
  ///
  /// In en, this message translates to:
  /// **'Sort: {sortOrder}'**
  String sortBookmarksTooltip(Object sortOrder);

  /// No description provided for @noBookmarksYet.
  ///
  /// In en, this message translates to:
  /// **'No bookmarks yet.'**
  String get noBookmarksYet;

  /// No description provided for @noBookmarksYetHint.
  ///
  /// In en, this message translates to:
  /// **'Tap the bookmark icon while reading to save a location.'**
  String get noBookmarksYetHint;

  /// No description provided for @bookmarkReferenceNavigationError.
  ///
  /// In en, this message translates to:
  /// **'Could not navigate to {reference}.'**
  String bookmarkReferenceNavigationError(Object reference);

  /// No description provided for @themeCardSemantics.
  ///
  /// In en, this message translates to:
  /// **'{name} theme{selected}. {description}'**
  String themeCardSemantics(Object description, Object name, Object selected);

  /// No description provided for @selectedThemeSuffix.
  ///
  /// In en, this message translates to:
  /// **', currently selected'**
  String get selectedThemeSuffix;

  /// No description provided for @customisableAccentDescription.
  ///
  /// In en, this message translates to:
  /// **'Customisable accent colour.'**
  String get customisableAccentDescription;

  /// No description provided for @fixedPaletteDescription.
  ///
  /// In en, this message translates to:
  /// **'Fixed palette.'**
  String get fixedPaletteDescription;

  /// No description provided for @accentColourTitle.
  ///
  /// In en, this message translates to:
  /// **'Accent Colour — {themeName}'**
  String accentColourTitle(Object themeName);

  /// No description provided for @brightnessMode.
  ///
  /// In en, this message translates to:
  /// **'BRIGHTNESS MODE'**
  String get brightnessMode;

  /// No description provided for @lightMode.
  ///
  /// In en, this message translates to:
  /// **'Light mode'**
  String get lightMode;

  /// No description provided for @followSystemMode.
  ///
  /// In en, this message translates to:
  /// **'Follow system mode'**
  String get followSystemMode;

  /// No description provided for @darkMode.
  ///
  /// In en, this message translates to:
  /// **'Dark mode'**
  String get darkMode;

  /// No description provided for @customColourPicker.
  ///
  /// In en, this message translates to:
  /// **'Custom colour picker'**
  String get customColourPicker;

  /// No description provided for @customColourTooltip.
  ///
  /// In en, this message translates to:
  /// **'Custom color…'**
  String get customColourTooltip;

  /// No description provided for @couldNotLoadBooks.
  ///
  /// In en, this message translates to:
  /// **'Could not load the books list. Please try again.'**
  String get couldNotLoadBooks;

  /// No description provided for @chapterLabel.
  ///
  /// In en, this message translates to:
  /// **'Chapter {chapter}'**
  String chapterLabel(Object chapter);

  /// No description provided for @traditionalOrderBooks.
  ///
  /// In en, this message translates to:
  /// **'Traditional order books'**
  String get traditionalOrderBooks;

  /// No description provided for @alphabeticalOrderBooks.
  ///
  /// In en, this message translates to:
  /// **'Alphabetical order books'**
  String get alphabeticalOrderBooks;

  /// No description provided for @home.
  ///
  /// In en, this message translates to:
  /// **'Home'**
  String get home;

  /// No description provided for @addBookmarkTooltip.
  ///
  /// In en, this message translates to:
  /// **'Add bookmark'**
  String get addBookmarkTooltip;

  /// No description provided for @chooseBookChapter.
  ///
  /// In en, this message translates to:
  /// **'Choose book and chapter'**
  String get chooseBookChapter;

  /// No description provided for @chooseVerse.
  ///
  /// In en, this message translates to:
  /// **'Choose verse'**
  String get chooseVerse;

  /// No description provided for @bookChapterQuickNavigation.
  ///
  /// In en, this message translates to:
  /// **'Book and chapter quick navigation'**
  String get bookChapterQuickNavigation;

  /// No description provided for @verseQuickNavigation.
  ///
  /// In en, this message translates to:
  /// **'Verse quick navigation'**
  String get verseQuickNavigation;

  /// No description provided for @backToBooks.
  ///
  /// In en, this message translates to:
  /// **'Back to books'**
  String get backToBooks;

  /// No description provided for @selectBookTitle.
  ///
  /// In en, this message translates to:
  /// **'Select Book'**
  String get selectBookTitle;

  /// No description provided for @selectChapterTitle.
  ///
  /// In en, this message translates to:
  /// **'Select Chapter ({bookName})'**
  String selectChapterTitle(Object bookName);

  /// No description provided for @chapterSelectionLabel.
  ///
  /// In en, this message translates to:
  /// **'Chapter {chapter}'**
  String chapterSelectionLabel(Object chapter);

  /// No description provided for @verseSelectionLabel.
  ///
  /// In en, this message translates to:
  /// **'Verse {verse}'**
  String verseSelectionLabel(Object verse);

  /// No description provided for @fullChapterReference.
  ///
  /// In en, this message translates to:
  /// **'Full chapter: {bookName} {chapter}'**
  String fullChapterReference(Object bookName, Object chapter);

  /// No description provided for @memorizeHint.
  ///
  /// In en, this message translates to:
  /// **'Memorize'**
  String get memorizeHint;

  /// No description provided for @addNoteHint.
  ///
  /// In en, this message translates to:
  /// **'Add a note...'**
  String get addNoteHint;

  /// No description provided for @languageSearchHint.
  ///
  /// In en, this message translates to:
  /// **'Search languages'**
  String get languageSearchHint;

  /// No description provided for @languageModuleInstalled.
  ///
  /// In en, this message translates to:
  /// **'Installed'**
  String get languageModuleInstalled;

  /// No description provided for @languageModulePending.
  ///
  /// In en, this message translates to:
  /// **'Machine translation pending'**
  String get languageModulePending;

  /// No description provided for @languageNoMatches.
  ///
  /// In en, this message translates to:
  /// **'No languages match your search.'**
  String get languageNoMatches;

  /// No description provided for @languageCatalogDescription.
  ///
  /// In en, this message translates to:
  /// **'Languages marked as installed work offline. Other languages will be added as machine-translated modules.'**
  String get languageCatalogDescription;

  /// No description provided for @saveBookmarkSemantics.
  ///
  /// In en, this message translates to:
  /// **'Save bookmark'**
  String get saveBookmarkSemantics;

  /// No description provided for @couldNotLoadChapter.
  ///
  /// In en, this message translates to:
  /// **'Could not load the chapter. Please try again.'**
  String get couldNotLoadChapter;

  /// No description provided for @couldNotLoadChapters.
  ///
  /// In en, this message translates to:
  /// **'Could not load chapters. Please try again.'**
  String get couldNotLoadChapters;

  /// No description provided for @verseWithText.
  ///
  /// In en, this message translates to:
  /// **'Verse {verse}: {text}'**
  String verseWithText(Object text, Object verse);

  /// No description provided for @accentSwatchSemantics.
  ///
  /// In en, this message translates to:
  /// **'{name} accent colour{selected}'**
  String accentSwatchSemantics(Object name, Object selected);

  /// No description provided for @oldTestament.
  ///
  /// In en, this message translates to:
  /// **'Old Testament'**
  String get oldTestament;

  /// No description provided for @newTestament.
  ///
  /// In en, this message translates to:
  /// **'New Testament'**
  String get newTestament;

  /// No description provided for @deuterocanonApocrypha.
  ///
  /// In en, this message translates to:
  /// **'Deuterocanon / Apocrypha'**
  String get deuterocanonApocrypha;
}

class _AppLocalizationsDelegate
    extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) => <String>[
    'af',
    'am',
    'ar',
    'as',
    'az',
    'be',
    'bg',
    'bn',
    'bs',
    'ca',
    'cs',
    'da',
    'de',
    'en',
    'es',
    'et',
    'eu',
    'fa',
    'fi',
    'fil',
    'fr',
    'gl',
    'gu',
    'he',
    'hi',
    'hr',
    'hu',
    'hy',
    'id',
    'is',
    'it',
    'ja',
    'ka',
    'kk',
    'ko',
    'lo',
    'lt',
    'lv',
    'mk',
    'ml',
    'nl',
    'pl',
    'pt',
    'ru',
    'tr',
    'uk',
    'vi',
    'zh',
  ].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {
  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'af':
      return AppLocalizationsAf();
    case 'am':
      return AppLocalizationsAm();
    case 'ar':
      return AppLocalizationsAr();
    case 'as':
      return AppLocalizationsAs();
    case 'az':
      return AppLocalizationsAz();
    case 'be':
      return AppLocalizationsBe();
    case 'bg':
      return AppLocalizationsBg();
    case 'bn':
      return AppLocalizationsBn();
    case 'bs':
      return AppLocalizationsBs();
    case 'ca':
      return AppLocalizationsCa();
    case 'cs':
      return AppLocalizationsCs();
    case 'da':
      return AppLocalizationsDa();
    case 'de':
      return AppLocalizationsDe();
    case 'en':
      return AppLocalizationsEn();
    case 'es':
      return AppLocalizationsEs();
    case 'et':
      return AppLocalizationsEt();
    case 'eu':
      return AppLocalizationsEu();
    case 'fa':
      return AppLocalizationsFa();
    case 'fi':
      return AppLocalizationsFi();
    case 'fil':
      return AppLocalizationsFil();
    case 'fr':
      return AppLocalizationsFr();
    case 'gl':
      return AppLocalizationsGl();
    case 'gu':
      return AppLocalizationsGu();
    case 'he':
      return AppLocalizationsHe();
    case 'hi':
      return AppLocalizationsHi();
    case 'hr':
      return AppLocalizationsHr();
    case 'hu':
      return AppLocalizationsHu();
    case 'hy':
      return AppLocalizationsHy();
    case 'id':
      return AppLocalizationsId();
    case 'is':
      return AppLocalizationsIs();
    case 'it':
      return AppLocalizationsIt();
    case 'ja':
      return AppLocalizationsJa();
    case 'ka':
      return AppLocalizationsKa();
    case 'kk':
      return AppLocalizationsKk();
    case 'ko':
      return AppLocalizationsKo();
    case 'lo':
      return AppLocalizationsLo();
    case 'lt':
      return AppLocalizationsLt();
    case 'lv':
      return AppLocalizationsLv();
    case 'mk':
      return AppLocalizationsMk();
    case 'ml':
      return AppLocalizationsMl();
    case 'nl':
      return AppLocalizationsNl();
    case 'pl':
      return AppLocalizationsPl();
    case 'pt':
      return AppLocalizationsPt();
    case 'ru':
      return AppLocalizationsRu();
    case 'tr':
      return AppLocalizationsTr();
    case 'uk':
      return AppLocalizationsUk();
    case 'vi':
      return AppLocalizationsVi();
    case 'zh':
      return AppLocalizationsZh();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.',
  );
}
