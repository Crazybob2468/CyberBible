// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Sundanese (`su`).
class AppLocalizationsSu extends AppLocalizations {
  AppLocalizationsSu([String locale = 'su']) : super(locale);

  @override
  String get settingsTitle => 'Setélan';

  @override
  String get languageSection => 'Basa';

  @override
  String get useSystemLanguage => 'Paké basa sistem';

  @override
  String get useSystemLanguageSubtitle => 'Cocogkeun basa alat sacara standar.';

  @override
  String get currentLanguage => 'Basa ayeuna';

  @override
  String get appLanguage => 'Basa aplikasi';

  @override
  String get chooseLanguage => 'Pilih basa';

  @override
  String get theme => 'Téma';

  @override
  String get appearance => 'Penampilan';

  @override
  String get textSection => 'Téks';

  @override
  String get readingFormatSection => 'Format Bacaan';

  @override
  String get displaySection => 'tampilan';

  @override
  String get verseNumbers => 'Nomer Ayat';

  @override
  String get sectionHeadings => 'Judul Bagian';

  @override
  String get redLetterText => 'Beureum-Surat Téks';

  @override
  String get selectABook => 'Pilih Buku';

  @override
  String get traditionalOrder => 'Urutan tradisional';

  @override
  String get alphabeticalOrder => 'Susunan abjad';

  @override
  String get bookmarks => 'Tetengger';

  @override
  String get retry => 'Coba deui';

  @override
  String get chooseTheme => 'Pilih Téma';

  @override
  String get customisableThemes => 'Téma customizable';

  @override
  String get customisableThemesSubtitle =>
      'Ketok kartu pikeun milih warna aksen. \"Classic White\" ogé ngadukung modeu Light, Dark sareng System.';

  @override
  String get setThemes => 'SET TEMA';

  @override
  String get setThemesSubtitle =>
      'Dibereskeun, palettes leungeun-crafted. Teu perlu kustomisasi - ngan ketok pikeun nerapkeun.';

  @override
  String get deleteBookmarkQuestion => 'Hapus tetengger?';

  @override
  String get cancel => 'Ngabolaykeun';

  @override
  String get delete => 'Hapus';

  @override
  String get bookmarkSaved => 'Bookmark disimpen';

  @override
  String get couldNotDeleteBookmark => 'Teu bisa mupus tetengger.';

  @override
  String couldNotNavigate(Object reference) {
    return 'Teu bisa napigasi ka $reference.';
  }

  @override
  String get pageNotFound => 'Kaca Teu Kapanggih';

  @override
  String noRouteDefined(Object routeName) {
    return 'Teu aya jalur anu ditetepkeun pikeun \"$routeName\"';
  }

  @override
  String get english => 'Inggris';

  @override
  String get spanish => 'Español';

  @override
  String get systemDefault => 'Sistem standar';

  @override
  String get languageStatusEnglish => 'Inggris fallback aktip';

  @override
  String get languageStatusSystem => 'Ngagunakeun basa sistem';

  @override
  String languageStatusSelected(Object languageName) {
    return 'Basa nu dipilih: $languageName';
  }

  @override
  String get themeLabel => 'Téma';

  @override
  String get notFoundTitle => 'Kaca Teu Kapanggih';

  @override
  String get loadingCyberBible => 'Ngamuat Cyber ​​Bible...';

  @override
  String get couldNotOpenDatabase =>
      'Teu bisa muka database Alkitab. Mangga cobian deui.';

  @override
  String get homeTagline => 'Aplikasi ulikan Alkitab gratis sareng open source';

  @override
  String get readTheBible => 'Baca Alkitab';

  @override
  String get settingsTooltip => 'Setélan';

  @override
  String get themeChoose => 'Pilih Téma';

  @override
  String get customThemes => 'Téma customizable';

  @override
  String get customThemesSubtitle =>
      'Ketok kartu pikeun milih warna aksen. \"Classic White\" ogé ngadukung modeu Light, Dark sareng System.';

  @override
  String get setThemesLabel => 'SET TEMA';

  @override
  String get deleteBookmarkDialog => 'Hapus tetengger?';

  @override
  String removeBookmarkMessage(Object details, Object reference) {
    return 'Hapus \"$reference\"$details?\n\nIeu teu bisa dibolaykeun.';
  }

  @override
  String get couldNotLoadBookmarks =>
      'Teu bisa ngamuat tetengger. Mangga cobian deui.';

  @override
  String get bookmarkSavedMessage => 'Bookmark disimpen';

  @override
  String get couldNotSaveBookmark => 'Teu bisa nyimpen tetengger.';

  @override
  String get noBookmarksMatchFilter =>
      'Teu aya tetengger anu cocog sareng saringan ieu.';

  @override
  String get clearFilter => 'Hapus saringan';

  @override
  String get traditionalOrderLabel => 'Urutan tradisional';

  @override
  String get alphabeticalOrderLabel => 'Susunan abjad';

  @override
  String get bookmarksTabLabel => 'Tetengger';

  @override
  String get fullChapter => 'Bab lengkep';

  @override
  String get addBookmark => 'Tambahkeun Bookmark';

  @override
  String get selectVerse => 'Pilih Ayat';

  @override
  String get labelOptional => 'Label (opsional)';

  @override
  String get notesOptional => 'Catetan (opsional)';

  @override
  String get save => 'Simpen';

  @override
  String get goToVerse => 'Pindah ka Ayat';

  @override
  String verseTitle(Object verse) {
    return 'Ayat $verse';
  }

  @override
  String chapterTitle(Object chapter) {
    return 'Bab $chapter';
  }

  @override
  String get switchToFullChapter => 'Pindah ka tetengger bab pinuh';

  @override
  String get bookmarkSheetCancel => 'Ngabolaykeun, nutup lambar tetengger';

  @override
  String get pickCustomAccent => 'Pilih aksen khusus';

  @override
  String get apply => 'Larapkeun';

  @override
  String get custom => 'Adat';

  @override
  String get brightnessSystem => 'Sistem';

  @override
  String get brightnessLight => 'Caang';

  @override
  String get brightnessDark => 'Poek';

  @override
  String get selectBook => 'Pilih Buku';

  @override
  String get bookmarkFilterAll => 'Sadayana';

  @override
  String get bookmarkFilterUnlabeled => 'Teu dilabélan';

  @override
  String get bookmarkSortRecent => 'Anyar heula';

  @override
  String get bookmarkSortCanonical => 'Urutan kanonik';

  @override
  String get chapterRetry => 'Coba deui';

  @override
  String get fontSize => 'Ukuran Font';

  @override
  String fontSizePixels(Object size) {
    return '$size px';
  }

  @override
  String get fontSizeSlider => 'Ukuran font slaider';

  @override
  String get fontSizeSliderHint =>
      'Gesek pikeun nyaluyukeun tina 12 dugi ka 28';

  @override
  String get fontPreview =>
      '\"Dina mimiti Allah nyiptakeun langit jeung bumi.\" — Kajadian 1:1';

  @override
  String get showVerseNumbersSubtitle =>
      'Tampilkeun superskrip nomer ayat dina layar bacaan.';

  @override
  String get showSectionHeadingsSubtitle =>
      'Témbongkeun bagian jeung Jabur lulugu antara petikan.';

  @override
  String get wordsOfChristSubtitle =>
      'Témbongkeun kecap Yesus beureum. Nonaktipkeun pikeun warna téks tunggal.';

  @override
  String get verseFormatTitle => 'Format Ayat';

  @override
  String get verseFormatSubtitle => 'Pilih kumaha téks kitab suci disusun.';

  @override
  String get paragraphMode => 'Paragraf';

  @override
  String get verseListMode => 'Daptar ayat';

  @override
  String get paragraphModeTooltip => 'Mode paragraf';

  @override
  String get verseListModeTooltip => 'Mode daptar ayat';

  @override
  String get paragraphModeDescription =>
      'Téks ngalir terus kalawan paragraf indented, kawas Alkitab dicitak.';

  @override
  String get verseListModeDescription =>
      'Tiap paragraf kitab suci dimimitian dina baris sorangan, sahingga grup ayat gampang titik.';

  @override
  String get deleteBookmarkTooltip => 'Pupus tetengger';

  @override
  String deleteBookmarkSemantics(Object reference) {
    return 'Hapus tetengger $reference';
  }

  @override
  String sortBookmarksTooltip(Object sortOrder) {
    return 'Susun: $sortOrder';
  }

  @override
  String get noBookmarksYet => 'Teu acan aya tetengger.';

  @override
  String get noBookmarksYetHint =>
      'Ketok ikon tetengger bari maca pikeun nyimpen hiji lokasi.';

  @override
  String bookmarkReferenceNavigationError(Object reference) {
    return 'Teu bisa napigasi ka $reference.';
  }

  @override
  String themeCardSemantics(Object description, Object name, Object selected) {
    return '$name téma$selected. $description';
  }

  @override
  String get selectedThemeSuffix => ', ayeuna dipilih';

  @override
  String get customisableAccentDescription =>
      'Warna aksen anu tiasa disaluyukeun.';

  @override
  String get fixedPaletteDescription => 'palette tetep.';

  @override
  String accentColourTitle(Object themeName) {
    return 'Warna Aksen — $themeName';
  }

  @override
  String get brightnessMode => 'Modeu kacaangan';

  @override
  String get lightMode => 'Modeu lampu';

  @override
  String get followSystemMode => 'Turutan mode sistem';

  @override
  String get darkMode => 'Modeu poék';

  @override
  String get customColourPicker => 'Pamilih warna khusus';

  @override
  String get customColourTooltip => 'Warna custom…';

  @override
  String get couldNotLoadBooks =>
      'Teu tiasa ngamuat daptar buku. Mangga cobian deui.';

  @override
  String chapterLabel(Object chapter) {
    return 'Bab $chapter';
  }

  @override
  String get traditionalOrderBooks => 'Buku pesenan tradisional';

  @override
  String get alphabeticalOrderBooks => 'Buku urutan abjad';

  @override
  String get home => 'Imah';

  @override
  String get addBookmarkTooltip => 'Tambahkeun tetengger';

  @override
  String get chooseBookChapter => 'Pilih buku sareng bab';

  @override
  String get chooseVerse => 'Pilih ayat';

  @override
  String get bookChapterQuickNavigation => 'Buku sareng bab navigasi gancang';

  @override
  String get verseQuickNavigation => 'Napigasi gancang ayat';

  @override
  String get backToBooks => 'Balik deui ka buku';

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
    return 'Bab lengkep: $bookName $chapter';
  }

  @override
  String get memorizeHint => 'Ngapalkeun';

  @override
  String get addNoteHint => 'Tambahkeun catetan...';

  @override
  String get languageSearchHint => 'Pilarian basa';

  @override
  String get languageModuleInstalled => 'Dipasang';

  @override
  String get languageModulePending => 'Tarjamahan mesin pending';

  @override
  String get languageNoMatches =>
      'Teu aya basa anu cocog sareng pamilarian anjeun.';

  @override
  String get languageCatalogDescription =>
      'Basa anu ditandaan salaku karya offline anu dipasang. Basa séjén bakal ditambahkeun salaku modul tarjamah mesin.';

  @override
  String get saveBookmarkSemantics => 'Simpen tetengger';

  @override
  String get couldNotLoadChapter => 'Teu bisa ngamuat bab. Mangga cobian deui.';

  @override
  String get couldNotLoadChapters =>
      'Teu bisa ngamuat bab. Mangga cobian deui.';

  @override
  String verseWithText(Object text, Object verse) {
    return 'Ayat $verse: $text';
  }

  @override
  String accentSwatchSemantics(Object name, Object selected) {
    return '$name warna aksen$selected';
  }

  @override
  String get oldTestament => 'Perjanjian Old';

  @override
  String get newTestament => 'Perjanjian Anyar';

  @override
  String get deuterocanonApocrypha => 'Deuterocanon / Apocrypha';
}
