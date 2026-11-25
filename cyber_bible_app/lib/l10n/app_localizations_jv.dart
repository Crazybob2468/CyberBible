// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Javanese (`jv`).
class AppLocalizationsJv extends AppLocalizations {
  AppLocalizationsJv([String locale = 'jv']) : super(locale);

  @override
  String get settingsTitle => 'Setelan';

  @override
  String get languageSection => 'Basa';

  @override
  String get useSystemLanguage => 'Gunakake basa sistem';

  @override
  String get useSystemLanguageSubtitle => 'Cocokake basa piranti kanthi gawan.';

  @override
  String get currentLanguage => 'Basa saiki';

  @override
  String get appLanguage => 'Basa aplikasi';

  @override
  String get chooseLanguage => 'Pilih basa';

  @override
  String get theme => 'Tema';

  @override
  String get appearance => 'Penampilan';

  @override
  String get textSection => 'Teks';

  @override
  String get readingFormatSection => 'Format Wacan';

  @override
  String get displaySection => 'Tampilan';

  @override
  String get verseNumbers => 'Wilangan Ayat';

  @override
  String get sectionHeadings => 'Judhul bagean';

  @override
  String get redLetterText => 'Teks Aksara Abang';

  @override
  String get selectABook => 'Pilih Buku';

  @override
  String get traditionalOrder => 'Urutan tradhisional';

  @override
  String get alphabeticalOrder => 'Urutan abjad';

  @override
  String get bookmarks => 'Tetenger';

  @override
  String get retry => 'Coba maneh';

  @override
  String get chooseTheme => 'Pilih Tema';

  @override
  String get customisableThemes => 'Tema sing bisa disesuaikan';

  @override
  String get customisableThemesSubtitle =>
      'Tutul kertu kanggo milih warna aksen. \"Putih Klasik\" uga ndhukung mode Cahya, Gelap lan Sistem.';

  @override
  String get setThemes => 'SET TEMA';

  @override
  String get setThemesSubtitle =>
      'Palet sing tetep, digawe tangan. Ora perlu kustomisasi - mung tutul kanggo aplikasi.';

  @override
  String get deleteBookmarkQuestion => 'Mbusak tetenger?';

  @override
  String get cancel => 'Batal';

  @override
  String get delete => 'Mbusak';

  @override
  String get bookmarkSaved => 'Tetenger disimpen';

  @override
  String get couldNotDeleteBookmark => 'Ora bisa mbusak tetenger.';

  @override
  String couldNotNavigate(Object reference) {
    return 'Ora bisa navigasi menyang $reference.';
  }

  @override
  String get pageNotFound => 'Kaca Ora Ditemokake';

  @override
  String noRouteDefined(Object routeName) {
    return 'Ora ana rute sing ditetepake kanggo \"$routeName\"';
  }

  @override
  String get english => 'Inggris';

  @override
  String get spanish => 'Español';

  @override
  String get systemDefault => 'Sistem standar';

  @override
  String get languageStatusEnglish => 'Inggris fallback aktif';

  @override
  String get languageStatusSystem => 'Nggunakake basa sistem';

  @override
  String languageStatusSelected(Object languageName) {
    return 'Basa sing dipilih: $languageName';
  }

  @override
  String get themeLabel => 'Tema';

  @override
  String get notFoundTitle => 'Kaca Ora Ditemokake';

  @override
  String get loadingCyberBible => 'Loading Cyber ​​Bible...';

  @override
  String get couldNotOpenDatabase =>
      'Ora bisa mbukak database Alkitab. Coba maneh.';

  @override
  String get homeTagline => 'Aplikasi sinau Alkitab gratis lan mbukak sumber';

  @override
  String get readTheBible => 'Maca Alkitab';

  @override
  String get settingsTooltip => 'Setelan';

  @override
  String get themeChoose => 'Pilih Tema';

  @override
  String get customThemes => 'Tema sing bisa disesuaikan';

  @override
  String get customThemesSubtitle =>
      'Tutul kertu kanggo milih warna aksen. \"Putih Klasik\" uga ndhukung mode Cahya, Gelap lan Sistem.';

  @override
  String get setThemesLabel => 'SET TEMA';

  @override
  String get deleteBookmarkDialog => 'Mbusak tetenger?';

  @override
  String removeBookmarkMessage(Object details, Object reference) {
    return 'Copot \"$reference\"$details?\n\nIki ora bisa dibatalake.';
  }

  @override
  String get couldNotLoadBookmarks => 'Ora bisa mbukak tetenger. Coba maneh.';

  @override
  String get bookmarkSavedMessage => 'Tetenger disimpen';

  @override
  String get couldNotSaveBookmark => 'Ora bisa nyimpen tetenger.';

  @override
  String get noBookmarksMatchFilter =>
      'Ora ana tetenger sing cocog karo filter iki.';

  @override
  String get clearFilter => 'Filter sing cetha';

  @override
  String get traditionalOrderLabel => 'Urutan tradhisional';

  @override
  String get alphabeticalOrderLabel => 'Urutan abjad';

  @override
  String get bookmarksTabLabel => 'Tetenger';

  @override
  String get fullChapter => 'Bab lengkap';

  @override
  String get addBookmark => 'Tambah Bookmark';

  @override
  String get selectVerse => 'Pilih Verse';

  @override
  String get labelOptional => 'Label (opsional)';

  @override
  String get notesOptional => 'Cathetan (opsional)';

  @override
  String get save => 'Simpen';

  @override
  String get goToVerse => 'Pindhah menyang Verse';

  @override
  String verseTitle(Object verse) {
    return 'Ayat $verse';
  }

  @override
  String chapterTitle(Object chapter) {
    return 'Bab $chapter';
  }

  @override
  String get switchToFullChapter => 'Ngalih menyang tetenger bab lengkap';

  @override
  String get bookmarkSheetCancel => 'Batal, tutup lembar tetenger';

  @override
  String get pickCustomAccent => 'Pilih aksen khusus';

  @override
  String get apply => 'nglamar';

  @override
  String get custom => 'adat';

  @override
  String get brightnessSystem => 'Sistem';

  @override
  String get brightnessLight => 'cahya';

  @override
  String get brightnessDark => 'Peteng';

  @override
  String get selectBook => 'Pilih Buku';

  @override
  String get bookmarkFilterAll => 'Kabeh';

  @override
  String get bookmarkFilterUnlabeled => 'Ora dilabeli';

  @override
  String get bookmarkSortRecent => 'Paling anyar dhisik';

  @override
  String get bookmarkSortCanonical => 'Urutan kanonik';

  @override
  String get chapterRetry => 'Coba maneh';

  @override
  String get fontSize => 'Ukuran Font';

  @override
  String fontSizePixels(Object size) {
    return '$size px';
  }

  @override
  String get fontSizeSlider => 'Panggeser ukuran font';

  @override
  String get fontSizeSliderHint => 'Gesek kanggo nyetel saka 12 dadi 28';

  @override
  String get fontPreview =>
      '\"Ing wiwitan Gusti Allah nitahake langit lan bumi.\" — Purwaning Dumadi 1:1';

  @override
  String get showVerseNumbersSubtitle =>
      'Tampilake superskrip nomer ayat ing layar maca.';

  @override
  String get showSectionHeadingsSubtitle =>
      'Tampilake bagean lan judhul Jabur antarane perangan.';

  @override
  String get wordsOfChristSubtitle =>
      'Tampilake tembung Yesus nganggo warna abang. Pateni kanggo werna teks siji.';

  @override
  String get verseFormatTitle => 'Format Ayat';

  @override
  String get verseFormatSubtitle => 'Pilih carane teks Kitab Suci ditata.';

  @override
  String get paragraphMode => 'Paragraf';

  @override
  String get verseListMode => 'Dhaptar ayat';

  @override
  String get paragraphModeTooltip => 'Mode paragraf';

  @override
  String get verseListModeTooltip => 'Mode dhaptar ayat';

  @override
  String get paragraphModeDescription =>
      'Tèks terus-terusan nganggo paragraf indentasi, kaya Kitab Suci sing dicithak.';

  @override
  String get verseListModeDescription =>
      'Saben paragraf ayat diwiwiti saka baris dhewe, nggawe klompok ayat gampang ditemokake.';

  @override
  String get deleteBookmarkTooltip => 'Busak tetenger';

  @override
  String deleteBookmarkSemantics(Object reference) {
    return 'Busak tetenger $reference';
  }

  @override
  String sortBookmarksTooltip(Object sortOrder) {
    return 'Urut: $sortOrder';
  }

  @override
  String get noBookmarksYet => 'Durung ana tetenger.';

  @override
  String get noBookmarksYetHint =>
      'Tutul lambang tetenger nalika maca kanggo nyimpen lokasi.';

  @override
  String bookmarkReferenceNavigationError(Object reference) {
    return 'Ora bisa navigasi menyang $reference.';
  }

  @override
  String themeCardSemantics(Object description, Object name, Object selected) {
    return '$name tema$selected. $description';
  }

  @override
  String get selectedThemeSuffix => ', saiki dipilih';

  @override
  String get customisableAccentDescription =>
      'Werna aksen sing bisa disesuaikan.';

  @override
  String get fixedPaletteDescription => 'Palet tetep.';

  @override
  String accentColourTitle(Object themeName) {
    return 'Warna aksen — $themeName';
  }

  @override
  String get brightnessMode => 'MODE padhang';

  @override
  String get lightMode => 'Mode cahya';

  @override
  String get followSystemMode => 'Tindakake mode sistem';

  @override
  String get darkMode => 'Mode peteng';

  @override
  String get customColourPicker => 'Pemilih warna khusus';

  @override
  String get customColourTooltip => 'Warna custom…';

  @override
  String get couldNotLoadBooks => 'Ora bisa mbukak dhaptar buku. Coba maneh.';

  @override
  String chapterLabel(Object chapter) {
    return 'Bab $chapter';
  }

  @override
  String get traditionalOrderBooks => 'Buku pesenan tradisional';

  @override
  String get alphabeticalOrderBooks => 'Buku urutan abjad';

  @override
  String get home => 'Ngarep';

  @override
  String get addBookmarkTooltip => 'Tambah tetenger';

  @override
  String get chooseBookChapter => 'Pilih buku lan bab';

  @override
  String get chooseVerse => 'Pilih ayat';

  @override
  String get bookChapterQuickNavigation => 'Book lan bab pandhu arah cepet';

  @override
  String get verseQuickNavigation => 'Pandhu arah cepet ayat';

  @override
  String get backToBooks => 'Bali menyang buku';

  @override
  String get selectBookTitle => 'Pilih Book';

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
    return 'Bab lengkap: $bookName $chapter';
  }

  @override
  String get memorizeHint => 'ngapalake';

  @override
  String get addNoteHint => 'Tambah cathetan...';

  @override
  String get languageSearchHint => 'Telusuri basa';

  @override
  String get languageModuleInstalled => 'Dipasang';

  @override
  String get languageModulePending => 'Terjemahan mesin ditundha';

  @override
  String get languageNoMatches =>
      'Ora ana basa sing cocog karo panelusuran sampeyan.';

  @override
  String get languageCatalogDescription =>
      'Basa sing ditandhani minangka karya sing diinstal ing offline. Basa liyane bakal ditambahake minangka modul sing diterjemahake mesin.';

  @override
  String get saveBookmarkSemantics => 'Simpen tetenger';

  @override
  String get couldNotLoadChapter => 'Ora bisa mbukak bab. Coba maneh.';

  @override
  String get couldNotLoadChapters => 'Ora bisa mbukak bab. Coba maneh.';

  @override
  String verseWithText(Object text, Object verse) {
    return 'Ayat $verse: $text';
  }

  @override
  String accentSwatchSemantics(Object name, Object selected) {
    return '$name warna aksen$selected';
  }

  @override
  String get oldTestament => 'Prajanjian Lawas';

  @override
  String get newTestament => 'Prajanjian Anyar';

  @override
  String get deuterocanonApocrypha => 'Deuterocanon / Apocrypha';
}
