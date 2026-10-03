import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_af.dart';
import 'app_localizations_ak.dart';
import 'app_localizations_am.dart';
import 'app_localizations_ar.dart';
import 'app_localizations_as.dart';
import 'app_localizations_ast.dart';
import 'app_localizations_az.dart';
import 'app_localizations_bas.dart';
import 'app_localizations_be.dart';
import 'app_localizations_bem.dart';
import 'app_localizations_bez.dart';
import 'app_localizations_bg.dart';
import 'app_localizations_bho.dart';
import 'app_localizations_bm.dart';
import 'app_localizations_bn.dart';
import 'app_localizations_bo.dart';
import 'app_localizations_br.dart';
import 'app_localizations_brx.dart';
import 'app_localizations_bs.dart';
import 'app_localizations_ca.dart';
import 'app_localizations_ceb.dart';
import 'app_localizations_cs.dart';
import 'app_localizations_cv.dart';
import 'app_localizations_cy.dart';
import 'app_localizations_da.dart';
import 'app_localizations_de.dart';
import 'app_localizations_doi.dart';
import 'app_localizations_dz.dart';
import 'app_localizations_ee.dart';
import 'app_localizations_el.dart';
import 'app_localizations_en.dart';
import 'app_localizations_eo.dart';
import 'app_localizations_es.dart';
import 'app_localizations_et.dart';
import 'app_localizations_eu.dart';
import 'app_localizations_ewo.dart';
import 'app_localizations_fa.dart';
import 'app_localizations_ff.dart';
import 'app_localizations_fi.dart';
import 'app_localizations_fil.dart';
import 'app_localizations_fo.dart';
import 'app_localizations_fr.dart';
import 'app_localizations_fur.dart';
import 'app_localizations_fy.dart';
import 'app_localizations_ga.dart';
import 'app_localizations_gd.dart';
import 'app_localizations_gl.dart';
import 'app_localizations_gsw.dart';
import 'app_localizations_gu.dart';
import 'app_localizations_gv.dart';
import 'app_localizations_ha.dart';
import 'app_localizations_haw.dart';
import 'app_localizations_he.dart';
import 'app_localizations_hi.dart';
import 'app_localizations_hr.dart';
import 'app_localizations_hu.dart';
import 'app_localizations_hy.dart';
import 'app_localizations_ia.dart';
import 'app_localizations_id.dart';
import 'app_localizations_ie.dart';
import 'app_localizations_ig.dart';
import 'app_localizations_is.dart';
import 'app_localizations_it.dart';
import 'app_localizations_ja.dart';
import 'app_localizations_jv.dart';
import 'app_localizations_ka.dart';
import 'app_localizations_kab.dart';
import 'app_localizations_kam.dart';
import 'app_localizations_kea.dart';
import 'app_localizations_ki.dart';
import 'app_localizations_kk.dart';
import 'app_localizations_kln.dart';
import 'app_localizations_km.dart';
import 'app_localizations_kn.dart';
import 'app_localizations_ko.dart';
import 'app_localizations_ksh.dart';
import 'app_localizations_ku.dart';
import 'app_localizations_kw.dart';
import 'app_localizations_ky.dart';
import 'app_localizations_lb.dart';
import 'app_localizations_lg.dart';
import 'app_localizations_ln.dart';
import 'app_localizations_lo.dart';
import 'app_localizations_lt.dart';
import 'app_localizations_lu.dart';
import 'app_localizations_luo.dart';
import 'app_localizations_luy.dart';
import 'app_localizations_lv.dart';
import 'app_localizations_mai.dart';
import 'app_localizations_mfe.dart';
import 'app_localizations_mg.dart';
import 'app_localizations_mi.dart';
import 'app_localizations_mk.dart';
import 'app_localizations_ml.dart';
import 'app_localizations_mn.dart';
import 'app_localizations_mr.dart';
import 'app_localizations_ms.dart';
import 'app_localizations_mt.dart';
import 'app_localizations_my.dart';
import 'app_localizations_nb.dart';
import 'app_localizations_nds.dart';
import 'app_localizations_ne.dart';
import 'app_localizations_nl.dart';
import 'app_localizations_nn.dart';
import 'app_localizations_nus.dart';
import 'app_localizations_ny.dart';
import 'app_localizations_nyn.dart';
import 'app_localizations_oc.dart';
import 'app_localizations_om.dart';
import 'app_localizations_or.dart';
import 'app_localizations_os.dart';
import 'app_localizations_pa.dart';
import 'app_localizations_pl.dart';
import 'app_localizations_ps.dart';
import 'app_localizations_pt.dart';
import 'app_localizations_qu.dart';
import 'app_localizations_rm.dart';
import 'app_localizations_rn.dart';
import 'app_localizations_ro.dart';
import 'app_localizations_ru.dart';
import 'app_localizations_rw.dart';
import 'app_localizations_sa.dart';
import 'app_localizations_sah.dart';
import 'app_localizations_saq.dart';
import 'app_localizations_sat.dart';
import 'app_localizations_sbp.dart';
import 'app_localizations_sc.dart';
import 'app_localizations_sd.dart';
import 'app_localizations_se.dart';
import 'app_localizations_seh.dart';
import 'app_localizations_sg.dart';
import 'app_localizations_si.dart';
import 'app_localizations_sk.dart';
import 'app_localizations_sl.dart';
import 'app_localizations_smn.dart';
import 'app_localizations_sn.dart';
import 'app_localizations_so.dart';
import 'app_localizations_sq.dart';
import 'app_localizations_sr.dart';
import 'app_localizations_su.dart';
import 'app_localizations_sv.dart';
import 'app_localizations_sw.dart';
import 'app_localizations_szl.dart';
import 'app_localizations_ta.dart';
import 'app_localizations_te.dart';
import 'app_localizations_tg.dart';
import 'app_localizations_th.dart';
import 'app_localizations_ti.dart';
import 'app_localizations_tk.dart';
import 'app_localizations_to.dart';
import 'app_localizations_tr.dart';
import 'app_localizations_tt.dart';
import 'app_localizations_tzm.dart';
import 'app_localizations_ug.dart';
import 'app_localizations_uk.dart';
import 'app_localizations_ur.dart';
import 'app_localizations_uz.dart';
import 'app_localizations_vec.dart';
import 'app_localizations_vi.dart';
import 'app_localizations_wo.dart';
import 'app_localizations_xh.dart';
import 'app_localizations_yo.dart';
import 'app_localizations_yrl.dart';
import 'app_localizations_yue.dart';
import 'app_localizations_za.dart';
import 'app_localizations_zh.dart';
import 'app_localizations_zu.dart';

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
    Locale('bas'),
    Locale('ak'),
    Locale('am'),
    Locale('ca'),
    Locale('ceb'),
    Locale('cs'),
    Locale('cv'),
    Locale('cy'),
    Locale('da'),
    Locale('doi'),
    Locale('az'),
    Locale('be'),
    Locale('bem'),
    Locale('bez'),
    Locale('bg'),
    Locale('bho'),
    Locale('brx'),
    Locale('bm'),
    Locale('bo'),
    Locale('br'),
    Locale('bs'),
    Locale('et'),
    Locale('eu'),
    Locale('ewo'),
    Locale('fa'),
    Locale('fi'),
    Locale('fil'),
    Locale('gl'),
    Locale('gsw'),
    Locale('gu'),
    Locale('he'),
    Locale('hr'),
    Locale('hu'),
    Locale('hy'),
    Locale('ia'),
    Locale('id'),
    Locale('ie'),
    Locale('is'),
    Locale('ka'),
    Locale('kab'),
    Locale('kam'),
    Locale('lb'),
    Locale('kea'),
    Locale('ki'),
    Locale('kk'),
    Locale('kln'),
    Locale('lg'),
    Locale('ln'),
    Locale('lo'),
    Locale('lt'),
    Locale('lu'),
    Locale('luo'),
    Locale('luy'),
    Locale('lv'),
    Locale('mai'),
    Locale('mg'),
    Locale('mfe'),
    Locale('mi'),
    Locale('mk'),
    Locale('ml'),
    Locale('as'),
    Locale('ast'),
    Locale('el'),
    Locale('km'),
    Locale('kn'),
    Locale('ku'),
    Locale('ky'),
    Locale('mn'),
    Locale('mr'),
    Locale('ms'),
    Locale('mt'),
    Locale('my'),
    Locale('nb'),
    Locale('nn'),
    Locale('ne'),
    Locale('nds'),
    Locale('oc'),
    Locale('om'),
    Locale('or'),
    Locale('os'),
    Locale('pa'),
    Locale('ps'),
    Locale('qu'),
    Locale('rm'),
    Locale('ro'),
    Locale('rn'),
    Locale('rw'),
    Locale('sa'),
    Locale('sah'),
    Locale('saq'),
    Locale('sat'),
    Locale('sbp'),
    Locale('sc'),
    Locale('sd'),
    Locale('si'),
    Locale('sk'),
    Locale('sl'),
    Locale('smn'),
    Locale('sn'),
    Locale('sq'),
    Locale('sr'),
    Locale('su'),
    Locale('sv'),
    Locale('szl'),
    Locale('se'),
    Locale('seh'),
    Locale('sg'),
    Locale('sw'),
    Locale('ta'),
    Locale('te'),
    Locale('tg'),
    Locale('th'),
    Locale('ti'),
    Locale('tk'),
    Locale('to'),
    Locale('tt'),
    Locale('tzm'),
    Locale('ug'),
    Locale('ur'),
    Locale('uz'),
    Locale('vec'),
    Locale('wo'),
    Locale('yrl'),
    Locale('za'),
    Locale('zu'),
    Locale('dz'),
    Locale('ee'),
    Locale('eo'),
    Locale('ff'),
    Locale('fo'),
    Locale('fur'),
    Locale('fy'),
    Locale('ga'),
    Locale('gd'),
    Locale('gv'),
    Locale('ha'),
    Locale('haw'),
    Locale('ig'),
    Locale('jv'),
    Locale('ny'),
    Locale('nyn'),
    Locale('nus'),
    Locale('kw'),
    Locale('ksh'),
    Locale('so'),
    Locale('xh'),
    Locale('yo'),
    Locale('yue'),
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
    'ak',
    'am',
    'ar',
    'as',
    'ast',
    'az',
    'bas',
    'be',
    'bem',
    'bez',
    'bg',
    'bho',
    'bm',
    'bn',
    'bo',
    'br',
    'brx',
    'bs',
    'ca',
    'ceb',
    'cs',
    'cv',
    'cy',
    'da',
    'de',
    'doi',
    'dz',
    'ee',
    'el',
    'en',
    'eo',
    'es',
    'et',
    'eu',
    'ewo',
    'fa',
    'ff',
    'fi',
    'fil',
    'fo',
    'fr',
    'fur',
    'fy',
    'ga',
    'gd',
    'gl',
    'gsw',
    'gu',
    'gv',
    'ha',
    'haw',
    'he',
    'hi',
    'hr',
    'hu',
    'hy',
    'ia',
    'id',
    'ie',
    'ig',
    'is',
    'it',
    'ja',
    'jv',
    'ka',
    'kab',
    'kam',
    'kea',
    'ki',
    'kk',
    'kln',
    'km',
    'kn',
    'ko',
    'ksh',
    'ku',
    'kw',
    'ky',
    'lb',
    'lg',
    'ln',
    'lo',
    'lt',
    'lu',
    'luo',
    'luy',
    'lv',
    'mai',
    'mfe',
    'mg',
    'mi',
    'mk',
    'ml',
    'mn',
    'mr',
    'ms',
    'mt',
    'my',
    'nb',
    'nds',
    'ne',
    'nl',
    'nn',
    'nus',
    'ny',
    'nyn',
    'oc',
    'om',
    'or',
    'os',
    'pa',
    'pl',
    'ps',
    'pt',
    'qu',
    'rm',
    'rn',
    'ro',
    'ru',
    'rw',
    'sa',
    'sah',
    'saq',
    'sat',
    'sbp',
    'sc',
    'sd',
    'se',
    'seh',
    'sg',
    'si',
    'sk',
    'sl',
    'smn',
    'sn',
    'so',
    'sq',
    'sr',
    'su',
    'sv',
    'sw',
    'szl',
    'ta',
    'te',
    'tg',
    'th',
    'ti',
    'tk',
    'to',
    'tr',
    'tt',
    'tzm',
    'ug',
    'uk',
    'ur',
    'uz',
    'vec',
    'vi',
    'wo',
    'xh',
    'yo',
    'yrl',
    'yue',
    'za',
    'zh',
    'zu',
  ].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {
  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'af':
      return AppLocalizationsAf();
    case 'ak':
      return AppLocalizationsAk();
    case 'am':
      return AppLocalizationsAm();
    case 'ar':
      return AppLocalizationsAr();
    case 'as':
      return AppLocalizationsAs();
    case 'ast':
      return AppLocalizationsAst();
    case 'az':
      return AppLocalizationsAz();
    case 'bas':
      return AppLocalizationsBas();
    case 'be':
      return AppLocalizationsBe();
    case 'bem':
      return AppLocalizationsBem();
    case 'bez':
      return AppLocalizationsBez();
    case 'bg':
      return AppLocalizationsBg();
    case 'bho':
      return AppLocalizationsBho();
    case 'bm':
      return AppLocalizationsBm();
    case 'bn':
      return AppLocalizationsBn();
    case 'bo':
      return AppLocalizationsBo();
    case 'br':
      return AppLocalizationsBr();
    case 'brx':
      return AppLocalizationsBrx();
    case 'bs':
      return AppLocalizationsBs();
    case 'ca':
      return AppLocalizationsCa();
    case 'ceb':
      return AppLocalizationsCeb();
    case 'cs':
      return AppLocalizationsCs();
    case 'cv':
      return AppLocalizationsCv();
    case 'cy':
      return AppLocalizationsCy();
    case 'da':
      return AppLocalizationsDa();
    case 'de':
      return AppLocalizationsDe();
    case 'doi':
      return AppLocalizationsDoi();
    case 'dz':
      return AppLocalizationsDz();
    case 'ee':
      return AppLocalizationsEe();
    case 'el':
      return AppLocalizationsEl();
    case 'en':
      return AppLocalizationsEn();
    case 'eo':
      return AppLocalizationsEo();
    case 'es':
      return AppLocalizationsEs();
    case 'et':
      return AppLocalizationsEt();
    case 'eu':
      return AppLocalizationsEu();
    case 'ewo':
      return AppLocalizationsEwo();
    case 'fa':
      return AppLocalizationsFa();
    case 'ff':
      return AppLocalizationsFf();
    case 'fi':
      return AppLocalizationsFi();
    case 'fil':
      return AppLocalizationsFil();
    case 'fo':
      return AppLocalizationsFo();
    case 'fr':
      return AppLocalizationsFr();
    case 'fur':
      return AppLocalizationsFur();
    case 'fy':
      return AppLocalizationsFy();
    case 'ga':
      return AppLocalizationsGa();
    case 'gd':
      return AppLocalizationsGd();
    case 'gl':
      return AppLocalizationsGl();
    case 'gsw':
      return AppLocalizationsGsw();
    case 'gu':
      return AppLocalizationsGu();
    case 'gv':
      return AppLocalizationsGv();
    case 'ha':
      return AppLocalizationsHa();
    case 'haw':
      return AppLocalizationsHaw();
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
    case 'ia':
      return AppLocalizationsIa();
    case 'id':
      return AppLocalizationsId();
    case 'ie':
      return AppLocalizationsIe();
    case 'ig':
      return AppLocalizationsIg();
    case 'is':
      return AppLocalizationsIs();
    case 'it':
      return AppLocalizationsIt();
    case 'ja':
      return AppLocalizationsJa();
    case 'jv':
      return AppLocalizationsJv();
    case 'ka':
      return AppLocalizationsKa();
    case 'kab':
      return AppLocalizationsKab();
    case 'kam':
      return AppLocalizationsKam();
    case 'kea':
      return AppLocalizationsKea();
    case 'ki':
      return AppLocalizationsKi();
    case 'kk':
      return AppLocalizationsKk();
    case 'kln':
      return AppLocalizationsKln();
    case 'km':
      return AppLocalizationsKm();
    case 'kn':
      return AppLocalizationsKn();
    case 'ko':
      return AppLocalizationsKo();
    case 'ksh':
      return AppLocalizationsKsh();
    case 'ku':
      return AppLocalizationsKu();
    case 'kw':
      return AppLocalizationsKw();
    case 'ky':
      return AppLocalizationsKy();
    case 'lb':
      return AppLocalizationsLb();
    case 'lg':
      return AppLocalizationsLg();
    case 'ln':
      return AppLocalizationsLn();
    case 'lo':
      return AppLocalizationsLo();
    case 'lt':
      return AppLocalizationsLt();
    case 'lu':
      return AppLocalizationsLu();
    case 'luo':
      return AppLocalizationsLuo();
    case 'luy':
      return AppLocalizationsLuy();
    case 'lv':
      return AppLocalizationsLv();
    case 'mai':
      return AppLocalizationsMai();
    case 'mfe':
      return AppLocalizationsMfe();
    case 'mg':
      return AppLocalizationsMg();
    case 'mi':
      return AppLocalizationsMi();
    case 'mk':
      return AppLocalizationsMk();
    case 'ml':
      return AppLocalizationsMl();
    case 'mn':
      return AppLocalizationsMn();
    case 'mr':
      return AppLocalizationsMr();
    case 'ms':
      return AppLocalizationsMs();
    case 'mt':
      return AppLocalizationsMt();
    case 'my':
      return AppLocalizationsMy();
    case 'nb':
      return AppLocalizationsNb();
    case 'nds':
      return AppLocalizationsNds();
    case 'ne':
      return AppLocalizationsNe();
    case 'nl':
      return AppLocalizationsNl();
    case 'nn':
      return AppLocalizationsNn();
    case 'nus':
      return AppLocalizationsNus();
    case 'ny':
      return AppLocalizationsNy();
    case 'nyn':
      return AppLocalizationsNyn();
    case 'oc':
      return AppLocalizationsOc();
    case 'om':
      return AppLocalizationsOm();
    case 'or':
      return AppLocalizationsOr();
    case 'os':
      return AppLocalizationsOs();
    case 'pa':
      return AppLocalizationsPa();
    case 'pl':
      return AppLocalizationsPl();
    case 'ps':
      return AppLocalizationsPs();
    case 'pt':
      return AppLocalizationsPt();
    case 'qu':
      return AppLocalizationsQu();
    case 'rm':
      return AppLocalizationsRm();
    case 'rn':
      return AppLocalizationsRn();
    case 'ro':
      return AppLocalizationsRo();
    case 'ru':
      return AppLocalizationsRu();
    case 'rw':
      return AppLocalizationsRw();
    case 'sa':
      return AppLocalizationsSa();
    case 'sah':
      return AppLocalizationsSah();
    case 'saq':
      return AppLocalizationsSaq();
    case 'sat':
      return AppLocalizationsSat();
    case 'sbp':
      return AppLocalizationsSbp();
    case 'sc':
      return AppLocalizationsSc();
    case 'sd':
      return AppLocalizationsSd();
    case 'se':
      return AppLocalizationsSe();
    case 'seh':
      return AppLocalizationsSeh();
    case 'sg':
      return AppLocalizationsSg();
    case 'si':
      return AppLocalizationsSi();
    case 'sk':
      return AppLocalizationsSk();
    case 'sl':
      return AppLocalizationsSl();
    case 'smn':
      return AppLocalizationsSmn();
    case 'sn':
      return AppLocalizationsSn();
    case 'so':
      return AppLocalizationsSo();
    case 'sq':
      return AppLocalizationsSq();
    case 'sr':
      return AppLocalizationsSr();
    case 'su':
      return AppLocalizationsSu();
    case 'sv':
      return AppLocalizationsSv();
    case 'sw':
      return AppLocalizationsSw();
    case 'szl':
      return AppLocalizationsSzl();
    case 'ta':
      return AppLocalizationsTa();
    case 'te':
      return AppLocalizationsTe();
    case 'tg':
      return AppLocalizationsTg();
    case 'th':
      return AppLocalizationsTh();
    case 'ti':
      return AppLocalizationsTi();
    case 'tk':
      return AppLocalizationsTk();
    case 'to':
      return AppLocalizationsTo();
    case 'tr':
      return AppLocalizationsTr();
    case 'tt':
      return AppLocalizationsTt();
    case 'tzm':
      return AppLocalizationsTzm();
    case 'ug':
      return AppLocalizationsUg();
    case 'uk':
      return AppLocalizationsUk();
    case 'ur':
      return AppLocalizationsUr();
    case 'uz':
      return AppLocalizationsUz();
    case 'vec':
      return AppLocalizationsVec();
    case 'vi':
      return AppLocalizationsVi();
    case 'wo':
      return AppLocalizationsWo();
    case 'xh':
      return AppLocalizationsXh();
    case 'yo':
      return AppLocalizationsYo();
    case 'yrl':
      return AppLocalizationsYrl();
    case 'yue':
      return AppLocalizationsYue();
    case 'za':
      return AppLocalizationsZa();
    case 'zh':
      return AppLocalizationsZh();
    case 'zu':
      return AppLocalizationsZu();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.',
  );
}
