// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Azerbaijani (`az`).
class AppLocalizationsAz extends AppLocalizations {
  AppLocalizationsAz([String locale = 'az']) : super(locale);

  @override
  String get settingsTitle => 'Parametrlər';

  @override
  String get languageSection => 'Dil';

  @override
  String get useSystemLanguage => 'Sistem dilini istifadə edin';

  @override
  String get useSystemLanguageSubtitle =>
      'Defolt olaraq cihaz dilini uyğunlaşdırın.';

  @override
  String get currentLanguage => 'Cari dil';

  @override
  String get appLanguage => 'Proqram dili';

  @override
  String get chooseLanguage => 'Dil seçin';

  @override
  String get theme => 'Mövzu';

  @override
  String get appearance => 'Görünüş';

  @override
  String get textSection => 'Mətn';

  @override
  String get readingFormatSection => 'Oxu Formatı';

  @override
  String get displaySection => 'Ekran';

  @override
  String get verseNumbers => 'Ayə Nömrələri';

  @override
  String get sectionHeadings => 'Bölmə başlıqları';

  @override
  String get redLetterText => 'Qırmızı hərfli mətn';

  @override
  String get selectABook => 'Kitab seçin';

  @override
  String get traditionalOrder => 'Ənənəvi nizam';

  @override
  String get alphabeticalOrder => 'Əlifba sırası';

  @override
  String get bookmarks => 'Əlfəcinlər';

  @override
  String get retry => 'Yenidən cəhd edin';

  @override
  String get chooseTheme => 'Mövzu seçin';

  @override
  String get customisableThemes => 'Özelleştirilebilir Mövzular';

  @override
  String get customisableThemesSubtitle =>
      'Vurğu rəngi seçmək üçün karta toxunun. \"Klassik Ağ\" həmçinin İşıq, Qaranlıq və Sistem rejimlərini dəstəkləyir.';

  @override
  String get setThemes => 'MÖVZULARI SAYIN';

  @override
  String get setThemesSubtitle =>
      'Sabit, əl ilə hazırlanmış palitralar. Fərdiləşdirmə tələb olunmur – tətbiq etmək üçün sadəcə toxunun.';

  @override
  String get deleteBookmarkQuestion => 'Əlfəcin silinsin?';

  @override
  String get cancel => 'Ləğv et';

  @override
  String get delete => 'Sil';

  @override
  String get bookmarkSaved => 'Əlfəcin saxlandı';

  @override
  String get couldNotDeleteBookmark => 'Əlfəcin silmək mümkün olmadı.';

  @override
  String couldNotNavigate(Object reference) {
    return '$reference ünvanına getmək mümkün olmadı.';
  }

  @override
  String get pageNotFound => 'Səhifə tapılmadı';

  @override
  String noRouteDefined(Object routeName) {
    return '\"$routeName\" üçün marşrut müəyyən edilməyib';
  }

  @override
  String get english => 'İngilis dili';

  @override
  String get spanish => 'ispanyol';

  @override
  String get systemDefault => 'Sistem standartı';

  @override
  String get languageStatusEnglish => 'İngilis dili geri qaytarılması aktivdir';

  @override
  String get languageStatusSystem => 'Sistem dilinin istifadəsi';

  @override
  String languageStatusSelected(Object languageName) {
    return 'Seçilmiş dil: $languageName';
  }

  @override
  String get themeLabel => 'Mövzu';

  @override
  String get notFoundTitle => 'Səhifə tapılmadı';

  @override
  String get loadingCyberBible => 'Kiber İncil yüklənir...';

  @override
  String get couldNotOpenDatabase =>
      'Müqəddəs Kitab bazasını açmaq mümkün olmadı. Yenidən cəhd edin.';

  @override
  String get homeTagline =>
      'Pulsuz və açıq mənbəli Müqəddəs Kitabı öyrənmə proqramı';

  @override
  String get readTheBible => 'Müqəddəs Kitabı oxuyun';

  @override
  String get settingsTooltip => 'Parametrlər';

  @override
  String get themeChoose => 'Mövzu seçin';

  @override
  String get customThemes => 'Özelleştirilebilir Mövzular';

  @override
  String get customThemesSubtitle =>
      'Vurğu rəngi seçmək üçün karta toxunun. \"Klassik Ağ\" həmçinin İşıq, Qaranlıq və Sistem rejimlərini dəstəkləyir.';

  @override
  String get setThemesLabel => 'MÖVZULARI SAYIN';

  @override
  String get deleteBookmarkDialog => 'Əlfəcin silinsin?';

  @override
  String removeBookmarkMessage(Object details, Object reference) {
    return '\"$reference\"$details silinsin?\n\nBu geri qaytarıla bilməz.';
  }

  @override
  String get couldNotLoadBookmarks =>
      'Əlfəcinləri yükləmək mümkün olmadı. Yenidən cəhd edin.';

  @override
  String get bookmarkSavedMessage => 'Əlfəcin saxlandı';

  @override
  String get couldNotSaveBookmark => 'Əlfəcin yadda saxlanıla bilmədi.';

  @override
  String get noBookmarksMatchFilter => 'Bu filtrə uyğun əlfəcin yoxdur.';

  @override
  String get clearFilter => 'Filtri təmizləyin';

  @override
  String get traditionalOrderLabel => 'Ənənəvi nizam';

  @override
  String get alphabeticalOrderLabel => 'Əlifba sırası';

  @override
  String get bookmarksTabLabel => 'Əlfəcinlər';

  @override
  String get fullChapter => 'Tam fəsil';

  @override
  String get addBookmark => 'Əlfəcin əlavə edin';

  @override
  String get selectVerse => 'Ayə seçin';

  @override
  String get labelOptional => 'Etiket (isteğe bağlı)';

  @override
  String get notesOptional => 'Qeydlər (isteğe bağlı)';

  @override
  String get save => 'Saxla';

  @override
  String get goToVerse => 'Ayəyə keçin';

  @override
  String verseTitle(Object verse) {
    return '$verse ayəsi';
  }

  @override
  String chapterTitle(Object chapter) {
    return 'Fəsil $chapter';
  }

  @override
  String get switchToFullChapter => 'Tam fəsil əlfəcininə keçin';

  @override
  String get bookmarkSheetCancel => 'Ləğv et, əlfəcin vərəqini bağla';

  @override
  String get pickCustomAccent => 'Fərdi vurğu seçin';

  @override
  String get apply => 'Müraciət edin';

  @override
  String get custom => 'Xüsusi';

  @override
  String get brightnessSystem => 'Sistem';

  @override
  String get brightnessLight => 'İşıq';

  @override
  String get brightnessDark => 'Qaranlıq';

  @override
  String get selectBook => 'Kitab seçin';

  @override
  String get bookmarkFilterAll => 'Hamısı';

  @override
  String get bookmarkFilterUnlabeled => 'Etiketsiz';

  @override
  String get bookmarkSortRecent => 'Son əvvəl';

  @override
  String get bookmarkSortCanonical => 'Kanonik sifariş';

  @override
  String get chapterRetry => 'Yenidən cəhd edin';

  @override
  String get fontSize => 'Şrift Ölçüsü';

  @override
  String fontSizePixels(Object size) {
    return '$size piksel';
  }

  @override
  String get fontSizeSlider => 'Şrift ölçüsü kaydırıcısı';

  @override
  String get fontSizeSliderHint =>
      '12 ilə 28 arasında tənzimləmək üçün sürüşdürün';

  @override
  String get fontPreview =>
      '“Əvvəlcə Allah göyləri və yeri yaratdı”. — Yar. 1:1';

  @override
  String get showVerseNumbersSubtitle =>
      'Oxu ekranında ayənin nömrəsinin yuxarı işarələrini göstərin.';

  @override
  String get showSectionHeadingsSubtitle =>
      'Keçidlər arasında bölmə və Zəbur başlıqlarını göstərin.';

  @override
  String get wordsOfChristSubtitle =>
      'İsanın sözlərini qırmızı rənglə göstərin. Tək mətn rəngi üçün deaktiv edin.';

  @override
  String get verseFormatTitle => 'Ayə formatı';

  @override
  String get verseFormatSubtitle =>
      'Kitab mətninin necə tərtib olunduğunu seçin.';

  @override
  String get paragraphMode => 'Paraqraf';

  @override
  String get verseListMode => 'Ayə siyahısı';

  @override
  String get paragraphModeTooltip => 'Paraqraf rejimi';

  @override
  String get verseListModeTooltip => 'Ayət siyahısı rejimi';

  @override
  String get paragraphModeDescription =>
      'Mətn çap olunmuş İncil kimi boşluqlu abzaslarla davamlı olaraq axır.';

  @override
  String get verseListModeDescription =>
      'Hər bir ayənin paraqrafı öz xətti ilə başlayır və bu, ayə qruplarını asanlıqla aşkar etməyə imkan verir.';

  @override
  String get deleteBookmarkTooltip => 'Əlfəcin silin';

  @override
  String deleteBookmarkSemantics(Object reference) {
    return '$reference əlfəcinini silin';
  }

  @override
  String sortBookmarksTooltip(Object sortOrder) {
    return 'Çeşidləmə: $sortOrder';
  }

  @override
  String get noBookmarksYet => 'Hələ əlfəcin yoxdur.';

  @override
  String get noBookmarksYetHint =>
      'Məkanı saxlamaq üçün oxuyarkən əlfəcin işarəsinə toxunun.';

  @override
  String bookmarkReferenceNavigationError(Object reference) {
    return '$reference ünvanına getmək mümkün olmadı.';
  }

  @override
  String themeCardSemantics(Object description, Object name, Object selected) {
    return '$name mövzusu$selected. $description';
  }

  @override
  String get selectedThemeSuffix => ', hazırda seçilmişdir';

  @override
  String get customisableAccentDescription =>
      'Fərdiləşdirilə bilən vurğu rəngi.';

  @override
  String get fixedPaletteDescription => 'Sabit palitrası.';

  @override
  String accentColourTitle(Object themeName) {
    return 'Vurğu Rəngi ​​— $themeName';
  }

  @override
  String get brightnessMode => 'PARLAKLIK REJIMI';

  @override
  String get lightMode => 'İşıq rejimi';

  @override
  String get followSystemMode => 'Sistem rejiminə əməl edin';

  @override
  String get darkMode => 'Qaranlıq rejim';

  @override
  String get customColourPicker => 'Fərdi rəng seçici';

  @override
  String get customColourTooltip => 'Fərdi rəng…';

  @override
  String get couldNotLoadBooks =>
      'Kitablar siyahısını yükləmək mümkün olmadı. Yenidən cəhd edin.';

  @override
  String chapterLabel(Object chapter) {
    return 'Fəsil $chapter';
  }

  @override
  String get traditionalOrderBooks => 'Ənənəvi sifariş kitabları';

  @override
  String get alphabeticalOrderBooks => 'Əlifba sırası ilə kitablar';

  @override
  String get home => 'Ev';

  @override
  String get addBookmarkTooltip => 'Əlfəcin əlavə edin';

  @override
  String get chooseBookChapter => 'Kitab və fəsil seçin';

  @override
  String get chooseVerse => 'Ayə seçin';

  @override
  String get bookChapterQuickNavigation => 'Kitab və fəsil sürətli naviqasiya';

  @override
  String get verseQuickNavigation => 'Sürətli naviqasiya';

  @override
  String get backToBooks => 'Kitablara qayıt';

  @override
  String get selectBookTitle => 'Kitab seçin';

  @override
  String selectChapterTitle(Object bookName) {
    return 'Fəsil seçin ($bookName)';
  }

  @override
  String chapterSelectionLabel(Object chapter) {
    return 'Fəsil $chapter';
  }

  @override
  String verseSelectionLabel(Object verse) {
    return '$verse ayəsi';
  }

  @override
  String fullChapterReference(Object bookName, Object chapter) {
    return 'Tam fəsil: $bookName $chapter';
  }

  @override
  String get memorizeHint => 'Yadda saxla';

  @override
  String get addNoteHint => 'Qeyd əlavə edin...';

  @override
  String get languageSearchHint => 'Dilləri axtarın';

  @override
  String get languageModuleInstalled => 'Quraşdırılıb';

  @override
  String get languageModulePending => 'Maşın tərcüməsi gözlənilir';

  @override
  String get languageNoMatches => 'Axtarışınıza uyğun dil yoxdur.';

  @override
  String get languageCatalogDescription =>
      'Quraşdırılmış kimi qeyd olunan dillər oflayn işləyir. Digər dillər maşınla tərcümə edilmiş modullar kimi əlavə olunacaq.';

  @override
  String get saveBookmarkSemantics => 'Əlfəcin saxla';

  @override
  String get couldNotLoadChapter =>
      'Bölməni yükləmək mümkün olmadı. Yenidən cəhd edin.';

  @override
  String get couldNotLoadChapters =>
      'Fəsilləri yükləmək mümkün olmadı. Yenidən cəhd edin.';

  @override
  String verseWithText(Object text, Object verse) {
    return '$verse beyt: $text';
  }

  @override
  String accentSwatchSemantics(Object name, Object selected) {
    return '$name vurğu rəngi$selected';
  }

  @override
  String get oldTestament => 'Əhdi-Ətiq';

  @override
  String get newTestament => 'Əhdi-Cədid';

  @override
  String get deuterocanonApocrypha => 'Deuterocanon / Apocrypha';
}
