// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Malay (`ms`).
class AppLocalizationsMs extends AppLocalizations {
  AppLocalizationsMs([String locale = 'ms']) : super(locale);

  @override
  String get settingsTitle => 'tetapan';

  @override
  String get languageSection => 'Bahasa';

  @override
  String get useSystemLanguage => 'Gunakan bahasa sistem';

  @override
  String get useSystemLanguageSubtitle =>
      'Padankan bahasa peranti secara lalai.';

  @override
  String get currentLanguage => 'Bahasa semasa';

  @override
  String get appLanguage => 'Bahasa apl';

  @override
  String get chooseLanguage => 'Pilih bahasa';

  @override
  String get theme => 'Tema';

  @override
  String get appearance => 'Penampilan';

  @override
  String get textSection => 'Teks';

  @override
  String get readingFormatSection => 'Format Bacaan';

  @override
  String get displaySection => 'Paparan';

  @override
  String get verseNumbers => 'Nombor Ayat';

  @override
  String get sectionHeadings => 'Tajuk Bahagian';

  @override
  String get redLetterText => 'Teks Huruf Merah';

  @override
  String get selectABook => 'Pilih Buku';

  @override
  String get traditionalOrder => 'Perintah tradisional';

  @override
  String get alphabeticalOrder => 'Susunan abjad';

  @override
  String get bookmarks => 'Penanda buku';

  @override
  String get retry => 'Cuba semula';

  @override
  String get chooseTheme => 'Pilih Tema';

  @override
  String get customisableThemes => 'Tema Boleh Disesuaikan';

  @override
  String get customisableThemesSubtitle =>
      'Ketik kad untuk memilih warna aksen. \"Classic White\" juga menyokong mod Terang, Gelap dan Sistem.';

  @override
  String get setThemes => 'TETAPKAN TEMA';

  @override
  String get setThemesSubtitle =>
      'Palet tetap, buatan tangan. Tiada penyesuaian diperlukan — hanya ketik untuk memohon.';

  @override
  String get deleteBookmarkQuestion => 'Padamkan penanda halaman?';

  @override
  String get cancel => 'Batal';

  @override
  String get delete => 'Padam';

  @override
  String get bookmarkSaved => 'Penanda halaman disimpan';

  @override
  String get couldNotDeleteBookmark =>
      'Tidak dapat memadamkan penanda halaman.';

  @override
  String couldNotNavigate(Object reference) {
    return 'Tidak dapat menavigasi ke $reference.';
  }

  @override
  String get pageNotFound => 'Halaman Tidak Ditemui';

  @override
  String noRouteDefined(Object routeName) {
    return 'Tiada laluan ditentukan untuk \"$routeName\"';
  }

  @override
  String get english => 'Inggeris';

  @override
  String get spanish => 'Español';

  @override
  String get systemDefault => 'Sistem lalai';

  @override
  String get languageStatusEnglish => 'sandaran bahasa Inggeris aktif';

  @override
  String get languageStatusSystem => 'Menggunakan bahasa sistem';

  @override
  String languageStatusSelected(Object languageName) {
    return 'Bahasa yang dipilih: $languageName';
  }

  @override
  String get themeLabel => 'Tema';

  @override
  String get notFoundTitle => 'Halaman Tidak Ditemui';

  @override
  String get loadingCyberBible => 'Memuatkan Alkitab Siber...';

  @override
  String get couldNotOpenDatabase =>
      'Tidak dapat membuka pangkalan data Bible. Sila cuba lagi.';

  @override
  String get homeTagline =>
      'Aplikasi pembelajaran Alkitab sumber terbuka dan percuma';

  @override
  String get readTheBible => 'Baca Bible';

  @override
  String get settingsTooltip => 'tetapan';

  @override
  String get themeChoose => 'Pilih Tema';

  @override
  String get customThemes => 'Tema Boleh Disesuaikan';

  @override
  String get customThemesSubtitle =>
      'Ketik kad untuk memilih warna aksen. \"Classic White\" juga menyokong mod Terang, Gelap dan Sistem.';

  @override
  String get setThemesLabel => 'TETAPKAN TEMA';

  @override
  String get deleteBookmarkDialog => 'Padamkan penanda halaman?';

  @override
  String removeBookmarkMessage(Object details, Object reference) {
    return 'Alih keluar \"$reference\"$details?\n\nIni tidak boleh dibuat asal.';
  }

  @override
  String get couldNotLoadBookmarks =>
      'Tidak dapat memuatkan penanda halaman. Sila cuba lagi.';

  @override
  String get bookmarkSavedMessage => 'Penanda halaman disimpan';

  @override
  String get couldNotSaveBookmark => 'Tidak dapat menyimpan penanda halaman.';

  @override
  String get noBookmarksMatchFilter =>
      'Tiada penanda halaman yang sepadan dengan penapis ini.';

  @override
  String get clearFilter => 'Kosongkan penapis';

  @override
  String get traditionalOrderLabel => 'Perintah tradisional';

  @override
  String get alphabeticalOrderLabel => 'Susunan abjad';

  @override
  String get bookmarksTabLabel => 'Penanda buku';

  @override
  String get fullChapter => 'Bab penuh';

  @override
  String get addBookmark => 'Tambah Penanda Halaman';

  @override
  String get selectVerse => 'Pilih Ayat';

  @override
  String get labelOptional => 'Label (pilihan)';

  @override
  String get notesOptional => 'Nota (pilihan)';

  @override
  String get save => 'Jimat';

  @override
  String get goToVerse => 'Pergi ke Ayat';

  @override
  String verseTitle(Object verse) {
    return 'Ayat $verse';
  }

  @override
  String chapterTitle(Object chapter) {
    return 'Bab $chapter';
  }

  @override
  String get switchToFullChapter => 'Tukar kepada penanda halaman bab penuh';

  @override
  String get bookmarkSheetCancel => 'Batal, tutup helaian penanda halaman';

  @override
  String get pickCustomAccent => 'Pilih loghat tersuai';

  @override
  String get apply => 'Mohon';

  @override
  String get custom => 'Adat';

  @override
  String get brightnessSystem => 'Sistem';

  @override
  String get brightnessLight => 'Cahaya';

  @override
  String get brightnessDark => 'Gelap';

  @override
  String get selectBook => 'Pilih Buku';

  @override
  String get bookmarkFilterAll => 'Semua';

  @override
  String get bookmarkFilterUnlabeled => 'Tidak berlabel';

  @override
  String get bookmarkSortRecent => 'Terkini dahulu';

  @override
  String get bookmarkSortCanonical => 'Perintah kanonik';

  @override
  String get chapterRetry => 'Cuba semula';

  @override
  String get fontSize => 'Saiz Font';

  @override
  String fontSizePixels(Object size) {
    return '$size px';
  }

  @override
  String get fontSizeSlider => 'Gelangsar saiz fon';

  @override
  String get fontSizeSliderHint => 'Leret untuk melaraskan dari 12 hingga 28';

  @override
  String get fontPreview =>
      '\"Pada mulanya Tuhan menciptakan langit dan bumi.\" — Kej 1:1';

  @override
  String get showVerseNumbersSubtitle =>
      'Tunjukkan superskrip nombor ayat dalam skrin bacaan.';

  @override
  String get showSectionHeadingsSubtitle =>
      'Tunjukkan tajuk bahagian dan Mazmur antara petikan.';

  @override
  String get wordsOfChristSubtitle =>
      'Tunjukkan perkataan Yesus dengan warna merah. Lumpuhkan untuk satu warna teks.';

  @override
  String get verseFormatTitle => 'Format Ayat';

  @override
  String get verseFormatSubtitle =>
      'Pilih cara teks tulisan suci dibentangkan.';

  @override
  String get paragraphMode => 'Perenggan';

  @override
  String get verseListMode => 'Senarai ayat';

  @override
  String get paragraphModeTooltip => 'Mod perenggan';

  @override
  String get verseListModeTooltip => 'Mod senarai ayat';

  @override
  String get paragraphModeDescription =>
      'Teks mengalir secara berterusan dengan perenggan inden, seperti Bible bercetak.';

  @override
  String get verseListModeDescription =>
      'Setiap perenggan ayat bermula pada barisnya sendiri, menjadikan kumpulan ayat mudah dilihat.';

  @override
  String get deleteBookmarkTooltip => 'Padamkan penanda halaman';

  @override
  String deleteBookmarkSemantics(Object reference) {
    return 'Padamkan penanda halaman $reference';
  }

  @override
  String sortBookmarksTooltip(Object sortOrder) {
    return 'Isih: $sortOrder';
  }

  @override
  String get noBookmarksYet => 'Tiada penanda halaman lagi.';

  @override
  String get noBookmarksYetHint =>
      'Ketik ikon penanda halaman semasa membaca untuk menyimpan lokasi.';

  @override
  String bookmarkReferenceNavigationError(Object reference) {
    return 'Tidak dapat menavigasi ke $reference.';
  }

  @override
  String themeCardSemantics(Object description, Object name, Object selected) {
    return '$name tema$selected. $description';
  }

  @override
  String get selectedThemeSuffix => ', dipilih pada masa ini';

  @override
  String get customisableAccentDescription =>
      'Warna aksen yang boleh disesuaikan.';

  @override
  String get fixedPaletteDescription => 'Palet tetap.';

  @override
  String accentColourTitle(Object themeName) {
    return 'Warna Aksen — $themeName';
  }

  @override
  String get brightnessMode => 'MOD KECERAHAN';

  @override
  String get lightMode => 'Mod cahaya';

  @override
  String get followSystemMode => 'Ikut mod sistem';

  @override
  String get darkMode => 'Mod gelap';

  @override
  String get customColourPicker => 'Pemilih warna tersuai';

  @override
  String get customColourTooltip => 'Warna tersuai…';

  @override
  String get couldNotLoadBooks =>
      'Tidak dapat memuatkan senarai buku. Sila cuba lagi.';

  @override
  String chapterLabel(Object chapter) {
    return 'Bab $chapter';
  }

  @override
  String get traditionalOrderBooks => 'Buku pesanan tradisional';

  @override
  String get alphabeticalOrderBooks => 'Buku susunan abjad';

  @override
  String get home => 'Rumah';

  @override
  String get addBookmarkTooltip => 'Tambah penanda halaman';

  @override
  String get chooseBookChapter => 'Pilih buku dan bab';

  @override
  String get chooseVerse => 'Pilih ayat';

  @override
  String get bookChapterQuickNavigation => 'Navigasi pantas buku dan bab';

  @override
  String get verseQuickNavigation => 'Navigasi pantas ayat';

  @override
  String get backToBooks => 'Kembali kepada buku';

  @override
  String get selectBookTitle => 'Pilih Buku';

  @override
  String selectChapterTitle(Object bookName) {
    return 'Pilih Bab ($bookName)';
  }

  @override
  String chapterSelectionLabel(Object chapter) {
    return 'Bab $chapter';
  }

  @override
  String verseSelectionLabel(Object verse) {
    return 'Ayat $verse';
  }

  @override
  String fullChapterReference(Object bookName, Object chapter) {
    return 'Bab penuh: $bookName $chapter';
  }

  @override
  String get memorizeHint => 'Menghafal';

  @override
  String get addNoteHint => 'Tambah nota...';

  @override
  String get languageSearchHint => 'Cari bahasa';

  @override
  String get languageModuleInstalled => 'Dipasang';

  @override
  String get languageModulePending => 'Terjemahan mesin belum selesai';

  @override
  String get languageNoMatches =>
      'Tiada bahasa yang sepadan dengan carian anda.';

  @override
  String get languageCatalogDescription =>
      'Bahasa yang ditandakan sebagai kerja yang dipasang di luar talian. Bahasa lain akan ditambah sebagai modul terjemahan mesin.';

  @override
  String get saveBookmarkSemantics => 'Simpan penanda halaman';

  @override
  String get couldNotLoadChapter =>
      'Tidak dapat memuatkan bab. Sila cuba lagi.';

  @override
  String get couldNotLoadChapters =>
      'Tidak dapat memuatkan bab. Sila cuba lagi.';

  @override
  String verseWithText(Object text, Object verse) {
    return 'Ayat $verse: $text';
  }

  @override
  String accentSwatchSemantics(Object name, Object selected) {
    return '$name warna loghat$selected';
  }

  @override
  String get oldTestament => 'Perjanjian Lama';

  @override
  String get newTestament => 'Perjanjian Baru';

  @override
  String get deuterocanonApocrypha => 'Deuterocanon / Apokrifa';
}
