// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Turkish (`tr`).
class AppLocalizationsTr extends AppLocalizations {
  AppLocalizationsTr([String locale = 'tr']) : super(locale);

  @override
  String get settingsTitle => 'Ayarlar';

  @override
  String get languageSection => 'Dil';

  @override
  String get useSystemLanguage => 'Sistem dilini kullan';

  @override
  String get useSystemLanguageSubtitle =>
      'Varsayılan olarak cihaz dilini kullan.';

  @override
  String get currentLanguage => 'Mevcut dil';

  @override
  String get appLanguage => 'Uygulama dili';

  @override
  String get chooseLanguage => 'Dil seç';

  @override
  String get theme => 'Tema';

  @override
  String get appearance => 'Görünüm';

  @override
  String get textSection => 'Metin';

  @override
  String get readingFormatSection => 'Okuma biçimi';

  @override
  String get displaySection => 'Görüntü';

  @override
  String get verseNumbers => 'Ayet numaraları';

  @override
  String get sectionHeadings => 'Bölüm başlıkları';

  @override
  String get redLetterText => 'Kırmızı metin';

  @override
  String get selectABook => 'Kitap seç';

  @override
  String get traditionalOrder => 'Geleneksel sıralama';

  @override
  String get alphabeticalOrder => 'Alfabetik sıralama';

  @override
  String get bookmarks => 'Yer imleri';

  @override
  String get retry => 'Tekrar dene';

  @override
  String get chooseTheme => 'Tema seç';

  @override
  String get customisableThemes => 'Özelleştirilebilir temalar';

  @override
  String get customisableThemesSubtitle =>
      'Vurgu rengini seçmek için bir karta dokunun. “Classic White” ayrıca Açık, Koyu ve Sistem modlarını destekler.';

  @override
  String get setThemes => 'TEMALARI AYARLA';

  @override
  String get setThemesSubtitle =>
      'Sabit, özenle hazırlanmış paletler. Özelleştirme gerekmez — uygulamak için dokunun.';

  @override
  String get deleteBookmarkQuestion => 'Yer imi silinsin mi?';

  @override
  String get cancel => 'İptal';

  @override
  String get delete => 'Sil';

  @override
  String get bookmarkSaved => 'Yer imi kaydedildi';

  @override
  String get couldNotDeleteBookmark => 'Yer imi silinemedi.';

  @override
  String couldNotNavigate(Object reference) {
    return '$reference konumuna gidilemedi.';
  }

  @override
  String get pageNotFound => 'Sayfa bulunamadı';

  @override
  String noRouteDefined(Object routeName) {
    return '“$routeName” için bir rota tanımlanmamış';
  }

  @override
  String get english => 'İngilizce';

  @override
  String get spanish => 'Español';

  @override
  String get systemDefault => 'Sistem varsayılanı';

  @override
  String get languageStatusEnglish => 'İngilizce yedek dil etkin';

  @override
  String get languageStatusSystem => 'Sistem dili kullanılıyor';

  @override
  String languageStatusSelected(Object languageName) {
    return 'Seçilen dil: $languageName';
  }

  @override
  String get themeLabel => 'Tema';

  @override
  String get notFoundTitle => 'Sayfa bulunamadı';

  @override
  String get loadingCyberBible => 'Cyber Bible yükleniyor…';

  @override
  String get couldNotOpenDatabase =>
      'Kutsal Kitap veritabanı açılamadı. Lütfen yeniden deneyin.';

  @override
  String get homeTagline =>
      'Ücretsiz ve açık kaynaklı bir Kutsal Kitap çalışma uygulaması';

  @override
  String get readTheBible => 'İncil’i oku';

  @override
  String get settingsTooltip => 'Ayarlar';

  @override
  String get themeChoose => 'Tema seç';

  @override
  String get customThemes => 'Özel temalar';

  @override
  String get customThemesSubtitle =>
      'Vurgu rengini seçmek için bir karta dokunun. “Classic White” ayrıca Açık, Koyu ve Sistem modlarını destekler.';

  @override
  String get setThemesLabel => 'TEMALARI AYARLA';

  @override
  String get deleteBookmarkDialog => 'Yer imi silinsin mi?';

  @override
  String removeBookmarkMessage(Object details, Object reference) {
    return '“$reference”$details kaldırılsın mı?\n\nBu işlem geri alınamaz.';
  }

  @override
  String get couldNotLoadBookmarks =>
      'Yer imleri yüklenemedi. Lütfen yeniden deneyin.';

  @override
  String get bookmarkSavedMessage => 'Yer imi kaydedildi';

  @override
  String get couldNotSaveBookmark => 'Yer imi kaydedilemedi.';

  @override
  String get noBookmarksMatchFilter => 'Bu filtreyle eşleşen yer imi yok.';

  @override
  String get clearFilter => 'Filtreyi temizle';

  @override
  String get traditionalOrderLabel => 'Geleneksel sıralama';

  @override
  String get alphabeticalOrderLabel => 'Alfabetik sıralama';

  @override
  String get bookmarksTabLabel => 'Yer imleri';

  @override
  String get fullChapter => 'Tam bölüm';

  @override
  String get addBookmark => 'Yer imi ekle';

  @override
  String get selectVerse => 'Ayet seç';

  @override
  String get labelOptional => 'Etiket (isteğe bağlı)';

  @override
  String get notesOptional => 'Notlar (isteğe bağlı)';

  @override
  String get save => 'Kaydet';

  @override
  String get goToVerse => 'Ayete git';

  @override
  String verseTitle(Object verse) {
    return 'Ayet $verse';
  }

  @override
  String chapterTitle(Object chapter) {
    return 'Bölüm $chapter';
  }

  @override
  String get switchToFullChapter => 'Tam bölüm yer imine geç';

  @override
  String get bookmarkSheetCancel => 'İptal et ve yer imi panelini kapat';

  @override
  String get pickCustomAccent => 'Özel vurgu rengi seç';

  @override
  String get apply => 'Uygula';

  @override
  String get custom => 'Özel';

  @override
  String get brightnessSystem => 'Sistem';

  @override
  String get brightnessLight => 'Açık';

  @override
  String get brightnessDark => 'Koyu';

  @override
  String get selectBook => 'Kitap seç';

  @override
  String get bookmarkFilterAll => 'Tümü';

  @override
  String get bookmarkFilterUnlabeled => 'Etiketsiz';

  @override
  String get bookmarkSortRecent => 'Önce en yeniler';

  @override
  String get bookmarkSortCanonical => 'Kutsal Kitap sırası';

  @override
  String get chapterRetry => 'Tekrar dene';

  @override
  String get fontSize => 'Yazı boyutu';

  @override
  String fontSizePixels(Object size) {
    return '$size piksel';
  }

  @override
  String get fontSizeSlider => 'Yazı tipi boyutu kaydırıcısı';

  @override
  String get fontSizeSliderHint => '12 ile 28 arasında ayarlamak için kaydırın';

  @override
  String get fontPreview =>
      '“Başlangıçta Tanrı göğü ve yeri yarattı.” — Yar. 1:1';

  @override
  String get showVerseNumbersSubtitle =>
      'Okuma ekranında ayet numaralarını üst simge olarak göster.';

  @override
  String get showSectionHeadingsSubtitle =>
      'Bölümler arasında kısım ve Mezmur başlıklarını göster.';

  @override
  String get wordsOfChristSubtitle =>
      'İsa’nın sözlerini kırmızı göster. Tek metin rengi için bu seçeneği kapatın.';

  @override
  String get verseFormatTitle => 'Ayet biçimi';

  @override
  String get verseFormatSubtitle =>
      'Kutsal Kitap metninin nasıl düzenleneceğini seçin.';

  @override
  String get paragraphMode => 'Paragraf';

  @override
  String get verseListMode => 'Ayet listesi';

  @override
  String get paragraphModeTooltip => 'Paragraf modu';

  @override
  String get verseListModeTooltip => 'Ayet listesi modu';

  @override
  String get paragraphModeDescription =>
      'Metin, basılı bir Kutsal Kitap gibi girintili paragraflarla kesintisiz akar.';

  @override
  String get verseListModeDescription =>
      'Her Kutsal Kitap paragrafı ayrı bir satırda başlar; böylece ayet gruplarını kolayca görebilirsiniz.';

  @override
  String get deleteBookmarkTooltip => 'Yer imini sil';

  @override
  String deleteBookmarkSemantics(Object reference) {
    return '$reference yer imini sil';
  }

  @override
  String sortBookmarksTooltip(Object sortOrder) {
    return 'Sıralama: $sortOrder';
  }

  @override
  String get noBookmarksYet => 'Henüz yer imi yok.';

  @override
  String get noBookmarksYetHint =>
      'Okurken bir konumu kaydetmek için yer imi simgesine dokunun.';

  @override
  String bookmarkReferenceNavigationError(Object reference) {
    return '$reference konumuna gidilemedi.';
  }

  @override
  String themeCardSemantics(Object description, Object name, Object selected) {
    return '$name teması$selected. $description';
  }

  @override
  String get selectedThemeSuffix => ', şu anda seçili';

  @override
  String get customisableAccentDescription => 'Özelleştirilebilir vurgu rengi.';

  @override
  String get fixedPaletteDescription => 'Sabit palet.';

  @override
  String accentColourTitle(Object themeName) {
    return 'Vurgu rengi — $themeName';
  }

  @override
  String get brightnessMode => 'PARLAKLIK MODU';

  @override
  String get lightMode => 'Açık mod';

  @override
  String get followSystemMode => 'Sistemi izle';

  @override
  String get darkMode => 'Koyu mod';

  @override
  String get customColourPicker => 'Özel renk seçici';

  @override
  String get customColourTooltip => 'Özel renk…';

  @override
  String get couldNotLoadBooks =>
      'Kitap listesi yüklenemedi. Lütfen yeniden deneyin.';

  @override
  String chapterLabel(Object chapter) {
    return 'Bölüm $chapter';
  }

  @override
  String get traditionalOrderBooks => 'Geleneksel sıradaki kitaplar';

  @override
  String get alphabeticalOrderBooks => 'Alfabetik sıradaki kitaplar';

  @override
  String get home => 'Ana sayfa';

  @override
  String get addBookmarkTooltip => 'Yer imi ekle';

  @override
  String get chooseBookChapter => 'Kitap ve bölüm seç';

  @override
  String get chooseVerse => 'Ayet seç';

  @override
  String get bookChapterQuickNavigation => 'Kitap ve bölüme hızlı git';

  @override
  String get verseQuickNavigation => 'Ayete hızlı git';

  @override
  String get backToBooks => 'Kitaplara dön';

  @override
  String get selectBookTitle => 'Kitap seç';

  @override
  String selectChapterTitle(Object bookName) {
    return 'Bölüm seç ($bookName)';
  }

  @override
  String chapterSelectionLabel(Object chapter) {
    return 'Bölüm $chapter';
  }

  @override
  String verseSelectionLabel(Object verse) {
    return 'Ayet $verse';
  }

  @override
  String fullChapterReference(Object bookName, Object chapter) {
    return 'Tam bölüm: $bookName $chapter';
  }

  @override
  String get memorizeHint => 'Ezberle';

  @override
  String get addNoteHint => 'Not ekle...';

  @override
  String get languageSearchHint => 'Dilleri ara';

  @override
  String get languageModuleInstalled => 'Yüklü';

  @override
  String get languageModulePending => 'Makine çevirisi bekleniyor';

  @override
  String get languageNoMatches => 'Aramanızla eşleşen dil yok.';

  @override
  String get languageCatalogDescription =>
      'Yüklü diller çevrimdışı çalışır. Diğer diller daha sonra makine çevirisi modülleri olarak eklenecektir.';

  @override
  String get saveBookmarkSemantics => 'Yer imini kaydet';

  @override
  String get couldNotLoadChapter =>
      'Bölüm yüklenemedi. Lütfen yeniden deneyin.';

  @override
  String get couldNotLoadChapters =>
      'Bölümler yüklenemedi. Lütfen yeniden deneyin.';

  @override
  String verseWithText(Object text, Object verse) {
    return 'Ayet $verse: $text';
  }

  @override
  String accentSwatchSemantics(Object name, Object selected) {
    return '$name vurgu rengi örneği$selected';
  }

  @override
  String get oldTestament => 'Eski Ahit';

  @override
  String get newTestament => 'Yeni Ahit';

  @override
  String get deuterocanonApocrypha => 'Deuterokanon / Apokrifa';

  @override
  String footnoteTitle(Object caller) {
    return 'Dipnot $caller';
  }

  @override
  String get closeFootnote => 'Dipnotu kapat';

  @override
  String couldNotOpenFootnote(Object reference) {
    return '$reference dipnotu açılamadı.';
  }

  @override
  String get chapterFootnotesTitle => 'Footnotes';

  @override
  String openScriptureReference(Object reference) {
    return 'Open $reference';
  }

  @override
  String get couldNotLoadFootnotes =>
      'Could not load footnotes. Please try again.';
}
