// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Indonesian (`id`).
class AppLocalizationsId extends AppLocalizations {
  AppLocalizationsId([String locale = 'id']) : super(locale);

  @override
  String get settingsTitle => '[\"Pengaturan\"]';

  @override
  String get languageSection => '[\"Bahasa\"]';

  @override
  String get useSystemLanguage => '[\"Gunakan bahasa sistem\"]';

  @override
  String get useSystemLanguageSubtitle =>
      '[\"Cocokkan bahasa perangkat secara default.\"]';

  @override
  String get currentLanguage => '[\"Bahasa saat ini\"]';

  @override
  String get appLanguage => '[\"Bahasa aplikasi\"]';

  @override
  String get chooseLanguage => '[\"Pilih bahasa\"]';

  @override
  String get theme => '[\"Tema\"]';

  @override
  String get appearance => '[\"Penampilan\"]';

  @override
  String get textSection => '[\"Teks\"]';

  @override
  String get readingFormatSection => '[\"Format Bacaan\"]';

  @override
  String get displaySection => '[\"Menampilkan\"]';

  @override
  String get verseNumbers => '[\"\"]';

  @override
  String get sectionHeadings => '[\"\"]';

  @override
  String get redLetterText => '[\"\"]';

  @override
  String get selectABook => '[\"Pilih Buku\"]';

  @override
  String get traditionalOrder => '[\"\"]';

  @override
  String get alphabeticalOrder => '[\"\"]';

  @override
  String get bookmarks => '[\"Bookmark\"]';

  @override
  String get retry => '[\"Mencoba kembali\"]';

  @override
  String get chooseTheme => '[\"Pilih Tema\"]';

  @override
  String get customisableThemes => '[\"Tema yang Dapat Disesuaikan\"]';

  @override
  String get customisableThemesSubtitle =>
      '[\"Ketuk kartu untuk memilih warna aksen. \\\"Klasik Putih\\\" juga mendukung mode Terang, Gelap, dan Sistem.\"]';

  @override
  String get setThemes => '[\"TETAPKAN TEMA\"]';

  @override
  String get setThemesSubtitle =>
      '[\"Memperbaiki palet buatan tangan. Tidak perlu penyesuaian — cukup ketuk untuk mendaftar.\"]';

  @override
  String get deleteBookmarkQuestion => '[\"Hapus penanda?\"]';

  @override
  String get cancel => '[\"Membatalkan\"]';

  @override
  String get delete => '[\"Menghapus\"]';

  @override
  String get bookmarkSaved => '[\"Penanda disimpan\"]';

  @override
  String get couldNotDeleteBookmark => '[\"Tidak dapat menghapus bookmark.\"]';

  @override
  String couldNotNavigate(Object reference) {
    return '[\"Tidak dapat menavigasi ke $reference.\"]';
  }

  @override
  String get pageNotFound => '[\"Halaman Tidak Ditemukan\"]';

  @override
  String noRouteDefined(Object routeName) {
    return '[\"Tidak ada rute yang ditentukan untuk \\\"$routeName\\\"\"]';
  }

  @override
  String get english => '[\"Bahasa inggris\"]';

  @override
  String get spanish => '[\"Spanyol\"]';

  @override
  String get systemDefault => '[\"Bawaan sistem\"]';

  @override
  String get languageStatusEnglish => '[\"Pengganti bahasa Inggris aktif\"]';

  @override
  String get languageStatusSystem => '[\"Menggunakan bahasa sistem\"]';

  @override
  String languageStatusSelected(Object languageName) {
    return '[\"Bahasa yang dipilih: $languageName\"]';
  }

  @override
  String get themeLabel => '[\"Tema\"]';

  @override
  String get notFoundTitle => '[\"Halaman Tidak Ditemukan\"]';

  @override
  String get loadingCyberBible => '[\"Memuat Alkitab Cyber...\"]';

  @override
  String get couldNotOpenDatabase =>
      '[\"Tidak dapat membuka database Alkitab. Silakan coba lagi.\"]';

  @override
  String get homeTagline =>
      '[\"Aplikasi pembelajaran Alkitab sumber terbuka dan gratis\"]';

  @override
  String get readTheBible => '[\"Baca Alkitab\"]';

  @override
  String get settingsTooltip => '[\"Pengaturan\"]';

  @override
  String get themeChoose => '[\"Pilih Tema\"]';

  @override
  String get customThemes => '[\"Tema yang Dapat Disesuaikan\"]';

  @override
  String get customThemesSubtitle =>
      '[\"Ketuk kartu untuk memilih warna aksen. \\\"Klasik Putih\\\" juga mendukung mode Terang, Gelap, dan Sistem.\"]';

  @override
  String get setThemesLabel => '[\"TETAPKAN TEMA\"]';

  @override
  String get deleteBookmarkDialog => '[\"Hapus penanda?\"]';

  @override
  String removeBookmarkMessage(Object details, Object reference) {
    return '[\"Hapus \\\"$reference\\\"$details?\\n\\nHal ini tidak dapat dibatalkan.\"]';
  }

  @override
  String get couldNotLoadBookmarks =>
      '[\"Tidak dapat memuat bookmark. Silakan coba lagi.\"]';

  @override
  String get bookmarkSavedMessage => '[\"Penanda disimpan\"]';

  @override
  String get couldNotSaveBookmark => '[\"Tidak dapat menyimpan bookmark.\"]';

  @override
  String get noBookmarksMatchFilter =>
      '[\"Tidak ada bookmark yang cocok dengan filter ini.\"]';

  @override
  String get clearFilter => '[\"Hapus penyaring\"]';

  @override
  String get traditionalOrderLabel => '[\"Tatanan tradisional\"]';

  @override
  String get alphabeticalOrderLabel => '[\"Urutan abjad\"]';

  @override
  String get bookmarksTabLabel => '[\"Bookmark\"]';

  @override
  String get fullChapter => '[\"Bab penuh\"]';

  @override
  String get addBookmark => '[\"Tambahkan Penanda\"]';

  @override
  String get selectVerse => '[\"Pilih Ayat\"]';

  @override
  String get labelOptional => '[\"Label (opsional)\"]';

  @override
  String get notesOptional => '[\"Catatan (opsional)\"]';

  @override
  String get save => '[\"Menyimpan\"]';

  @override
  String get goToVerse => '[\"Pergi ke Ayat\"]';

  @override
  String verseTitle(Object verse) {
    return '[\"Ayat $verse\"]';
  }

  @override
  String chapterTitle(Object chapter) {
    return '[\"Bab $chapter\"]';
  }

  @override
  String get switchToFullChapter => '[\"Beralih ke penanda bab penuh\"]';

  @override
  String get bookmarkSheetCancel => '[\"Batal, tutup lembar penanda\"]';

  @override
  String get pickCustomAccent => '[\"Pilih aksen khusus\"]';

  @override
  String get apply => '[\"Menerapkan\"]';

  @override
  String get custom => '[\"Kebiasaan\"]';

  @override
  String get brightnessSystem => '[\"Sistem\"]';

  @override
  String get brightnessLight => '[\"Lampu\"]';

  @override
  String get brightnessDark => '[\"Gelap\"]';

  @override
  String get selectBook => '[\"Pilih Buku\"]';

  @override
  String get bookmarkFilterAll => '[\"Semua\"]';

  @override
  String get bookmarkFilterUnlabeled => '[\"Tidak berlabel\"]';

  @override
  String get bookmarkSortRecent => '[\"Baru-baru ini dulu\"]';

  @override
  String get bookmarkSortCanonical => '[\"Urutan kanonik\"]';

  @override
  String get chapterRetry => '[\"Mencoba kembali\"]';

  @override
  String get fontSize => '[\"Ukuran Huruf\"]';

  @override
  String fontSizePixels(Object size) {
    return '[\"$size piksel\"]';
  }

  @override
  String get fontSizeSlider => '[\"Penggeser ukuran font\"]';

  @override
  String get fontSizeSliderHint =>
      '[\"Gesek untuk menyesuaikan dari 12 hingga 28\"]';

  @override
  String get fontPreview =>
      '[\"“Pada mulanya Allah menciptakan langit dan bumi.” — Kejadian 1:1\"]';

  @override
  String get showVerseNumbersSubtitle =>
      '[\"Tampilkan superskrip nomor ayat di layar bacaan.\"]';

  @override
  String get showSectionHeadingsSubtitle =>
      '[\"Perlihatkan bagian dan judul Mazmur di antara bagian-bagiannya.\"]';

  @override
  String get wordsOfChristSubtitle =>
      '[\"Tunjukkan kata-kata Yesus dengan warna merah. Nonaktifkan untuk satu warna teks.\"]';

  @override
  String get verseFormatTitle => '[\"Format Ayat\"]';

  @override
  String get verseFormatSubtitle =>
      '[\"Pilih bagaimana teks tulisan suci disusun.\"]';

  @override
  String get paragraphMode => '[\"Ayat\"]';

  @override
  String get verseListMode => '[\"Daftar ayat\"]';

  @override
  String get paragraphModeTooltip => '[\"Modus paragraf\"]';

  @override
  String get verseListModeTooltip => '[\"Mode daftar ayat\"]';

  @override
  String get paragraphModeDescription =>
      '[\"Teks mengalir terus-menerus dengan paragraf menjorok ke dalam, seperti Alkitab yang dicetak.\"]';

  @override
  String get verseListModeDescription =>
      '[\"Setiap paragraf tulisan suci dimulai pada barisnya sendiri, menjadikan kelompok ayat mudah dikenali.\"]';

  @override
  String get deleteBookmarkTooltip => '[\"Hapus penanda\"]';

  @override
  String deleteBookmarkSemantics(Object reference) {
    return '[\"Hapus penanda $reference\"]';
  }

  @override
  String sortBookmarksTooltip(Object sortOrder) {
    return '[\"Urutkan: $sortOrder\"]';
  }

  @override
  String get noBookmarksYet => '[\"Belum ada bookmark.\"]';

  @override
  String get noBookmarksYetHint =>
      '[\"Ketuk ikon bookmark saat membaca untuk menyimpan lokasi.\"]';

  @override
  String bookmarkReferenceNavigationError(Object reference) {
    return '[\"Tidak dapat menavigasi ke $reference.\"]';
  }

  @override
  String themeCardSemantics(Object description, Object name, Object selected) {
    return '[\"Tema $name$selected. $description\"]';
  }

  @override
  String get selectedThemeSuffix => '[\", saat ini dipilih\"]';

  @override
  String get customisableAccentDescription =>
      '[\"Warna aksen yang dapat disesuaikan.\"]';

  @override
  String get fixedPaletteDescription => '[\"Memperbaiki palet.\"]';

  @override
  String accentColourTitle(Object themeName) {
    return '[\"Warna Aksen — $themeName\"]';
  }

  @override
  String get brightnessMode => '[\"MODE KECERAHAN\"]';

  @override
  String get lightMode => '[\"Modus ringan\"]';

  @override
  String get followSystemMode => '[\"Ikuti mode sistem\"]';

  @override
  String get darkMode => '[\"Mode gelap\"]';

  @override
  String get customColourPicker => '[\"Pemilih warna khusus\"]';

  @override
  String get customColourTooltip => '[\"Warna khusus…\"]';

  @override
  String get couldNotLoadBooks =>
      '[\"Tidak dapat memuat daftar buku. Silakan coba lagi.\"]';

  @override
  String chapterLabel(Object chapter) {
    return '[\"Bab $chapter\"]';
  }

  @override
  String get traditionalOrderBooks => '[\"Buku pesanan tradisional\"]';

  @override
  String get alphabeticalOrderBooks => '[\"Buku urutan abjad\"]';

  @override
  String get home => '[\"Rumah\"]';

  @override
  String get addBookmarkTooltip => '[\"Tambahkan penanda\"]';

  @override
  String get chooseBookChapter => '[\"Pilih buku dan bab\"]';

  @override
  String get chooseVerse => '[\"Pilih ayat\"]';

  @override
  String get bookChapterQuickNavigation => '[\"Navigasi cepat buku dan bab\"]';

  @override
  String get verseQuickNavigation => '[\"Navigasi cepat ayat\"]';

  @override
  String get backToBooks => '[\"Kembali ke buku\"]';

  @override
  String get selectBookTitle => '[\"Pilih Buku\"]';

  @override
  String selectChapterTitle(Object bookName) {
    return '[\"Pilih Bab ($bookName)\"]';
  }

  @override
  String chapterSelectionLabel(Object chapter) {
    return '[\"Bab $chapter\"]';
  }

  @override
  String verseSelectionLabel(Object verse) {
    return '[\"Ayat $verse\"]';
  }

  @override
  String fullChapterReference(Object bookName, Object chapter) {
    return '[\"Bab penuh: $bookName $chapter\"]';
  }

  @override
  String get memorizeHint => '[\"Menghafal\"]';

  @override
  String get addNoteHint => '[\"Tambahkan catatan...\"]';

  @override
  String get languageSearchHint => '[\"Cari bahasa\"]';

  @override
  String get languageModuleInstalled => '[\"Dipasang\"]';

  @override
  String get languageModulePending => '[\"Terjemahan mesin tertunda\"]';

  @override
  String get languageNoMatches =>
      '[\"Tidak ada bahasa yang cocok dengan penelusuran Anda.\"]';

  @override
  String get languageCatalogDescription =>
      '[\"Bahasa yang ditandai sebagai terinstal berfungsi offline. Bahasa lain akan ditambahkan sebagai modul yang diterjemahkan mesin.\"]';

  @override
  String get saveBookmarkSemantics => '[\"Simpan penanda\"]';

  @override
  String get couldNotLoadChapter =>
      '[\"Tidak dapat memuat bab ini. Silakan coba lagi.\"]';

  @override
  String get couldNotLoadChapters =>
      '[\"Tidak dapat memuat bab. Silakan coba lagi.\"]';

  @override
  String verseWithText(Object text, Object verse) {
    return '[\"Ayat $verse: $text\"]';
  }

  @override
  String accentSwatchSemantics(Object name, Object selected) {
    return '[\"$name aksen warna$selected\"]';
  }

  @override
  String get oldTestament => '[\"Perjanjian Lama\"]';

  @override
  String get newTestament => '[\"Perjanjian Baru\"]';

  @override
  String get deuterocanonApocrypha => '[\"Deuterokanon / Apokrifa\"]';
}
