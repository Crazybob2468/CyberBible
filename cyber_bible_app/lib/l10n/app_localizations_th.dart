// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Thai (`th`).
class AppLocalizationsTh extends AppLocalizations {
  AppLocalizationsTh([String locale = 'th']) : super(locale);

  @override
  String get settingsTitle => 'การตั้งค่า';

  @override
  String get languageSection => 'ภาษา';

  @override
  String get useSystemLanguage => 'ใช้ภาษาของระบบ';

  @override
  String get useSystemLanguageSubtitle => 'จับคู่ภาษาของอุปกรณ์ตามค่าเริ่มต้น';

  @override
  String get currentLanguage => 'ภาษาปัจจุบัน';

  @override
  String get appLanguage => 'ภาษาของแอป';

  @override
  String get chooseLanguage => 'เลือกภาษา';

  @override
  String get theme => 'ธีม';

  @override
  String get appearance => 'รูปร่าง';

  @override
  String get textSection => 'ข้อความ';

  @override
  String get readingFormatSection => 'รูปแบบการอ่าน';

  @override
  String get displaySection => 'แสดง';

  @override
  String get verseNumbers => 'หมายเลขข้อ';

  @override
  String get sectionHeadings => 'ส่วนหัวของส่วน';

  @override
  String get redLetterText => 'ข้อความตัวอักษรสีแดง';

  @override
  String get selectABook => 'เลือกหนังสือ';

  @override
  String get traditionalOrder => 'การสั่งซื้อแบบดั้งเดิม';

  @override
  String get alphabeticalOrder => 'ลำดับตัวอักษร';

  @override
  String get bookmarks => 'บุ๊กมาร์ก';

  @override
  String get retry => 'ลองอีกครั้ง';

  @override
  String get chooseTheme => 'เลือกธีม';

  @override
  String get customisableThemes => 'ธีมที่ปรับแต่งได้';

  @override
  String get customisableThemesSubtitle =>
      'แตะการ์ดเพื่อเลือกสีเฉพาะจุด \"Classic White\" ยังรองรับโหมด Light, Dark และ System อีกด้วย';

  @override
  String get setThemes => 'ตั้งค่าธีม';

  @override
  String get setThemesSubtitle =>
      'จานสีแบบตายตัวที่ทำด้วยมือ ไม่จำเป็นต้องปรับแต่งใดๆ เพียงแตะเพื่อใช้';

  @override
  String get deleteBookmarkQuestion => 'ลบบุ๊กมาร์กใช่ไหม';

  @override
  String get cancel => 'ยกเลิก';

  @override
  String get delete => 'ลบ';

  @override
  String get bookmarkSaved => 'บันทึกบุ๊กมาร์กแล้ว';

  @override
  String get couldNotDeleteBookmark => 'ไม่สามารถลบบุ๊กมาร์กได้';

  @override
  String couldNotNavigate(Object reference) {
    return 'ไม่สามารถนำทางไปยัง $reference';
  }

  @override
  String get pageNotFound => 'ไม่พบเพจ';

  @override
  String noRouteDefined(Object routeName) {
    return 'ไม่มีการกำหนดเส้นทางสำหรับ \"$routeName\"';
  }

  @override
  String get english => 'ภาษาอังกฤษ';

  @override
  String get spanish => 'สเปน';

  @override
  String get systemDefault => 'ค่าเริ่มต้นของระบบ';

  @override
  String get languageStatusEnglish => 'ทางเลือกภาษาอังกฤษใช้งานอยู่';

  @override
  String get languageStatusSystem => 'การใช้ภาษาของระบบ';

  @override
  String languageStatusSelected(Object languageName) {
    return 'ภาษาที่เลือก: $languageName';
  }

  @override
  String get themeLabel => 'ธีม';

  @override
  String get notFoundTitle => 'ไม่พบเพจ';

  @override
  String get loadingCyberBible => 'กำลังโหลดพระคัมภีร์ไซเบอร์...';

  @override
  String get couldNotOpenDatabase =>
      'ไม่สามารถเปิดฐานข้อมูลพระคัมภีร์ได้ โปรดลองอีกครั้ง';

  @override
  String get homeTagline => 'แอปศึกษาพระคัมภีร์แบบโอเพ่นซอร์สฟรี';

  @override
  String get readTheBible => 'อ่านพระคัมภีร์';

  @override
  String get settingsTooltip => 'การตั้งค่า';

  @override
  String get themeChoose => 'เลือกธีม';

  @override
  String get customThemes => 'ธีมที่ปรับแต่งได้';

  @override
  String get customThemesSubtitle =>
      'แตะการ์ดเพื่อเลือกสีเฉพาะจุด \"Classic White\" ยังรองรับโหมด Light, Dark และ System อีกด้วย';

  @override
  String get setThemesLabel => 'ตั้งค่าธีม';

  @override
  String get deleteBookmarkDialog => 'ลบบุ๊กมาร์กใช่ไหม';

  @override
  String removeBookmarkMessage(Object details, Object reference) {
    return 'ลบ \"$reference\"$details หรือไม่\n\nสิ่งนี้ไม่สามารถยกเลิกได้';
  }

  @override
  String get couldNotLoadBookmarks =>
      'ไม่สามารถโหลดบุ๊กมาร์กได้ โปรดลองอีกครั้ง';

  @override
  String get bookmarkSavedMessage => 'บันทึกบุ๊กมาร์กแล้ว';

  @override
  String get couldNotSaveBookmark => 'ไม่สามารถบันทึกบุ๊กมาร์กได้';

  @override
  String get noBookmarksMatchFilter => 'ไม่มีบุ๊กมาร์กที่ตรงกับตัวกรองนี้';

  @override
  String get clearFilter => 'ล้างตัวกรอง';

  @override
  String get traditionalOrderLabel => 'การสั่งซื้อแบบดั้งเดิม';

  @override
  String get alphabeticalOrderLabel => 'ลำดับตัวอักษร';

  @override
  String get bookmarksTabLabel => 'บุ๊กมาร์ก';

  @override
  String get fullChapter => 'บทเต็ม';

  @override
  String get addBookmark => 'เพิ่มบุ๊กมาร์ก';

  @override
  String get selectVerse => 'เลือก กลอน';

  @override
  String get labelOptional => 'ป้ายกำกับ (ไม่บังคับ)';

  @override
  String get notesOptional => 'หมายเหตุ (ไม่บังคับ)';

  @override
  String get save => 'บันทึก';

  @override
  String get goToVerse => 'ไปที่ข้อ';

  @override
  String verseTitle(Object verse) {
    return 'กลอน $verse';
  }

  @override
  String chapterTitle(Object chapter) {
    return 'บทที่ $chapter';
  }

  @override
  String get switchToFullChapter => 'สลับไปที่บุ๊กมาร์กบทเต็ม';

  @override
  String get bookmarkSheetCancel => 'ยกเลิก ปิดแผ่นบุ๊กมาร์ก';

  @override
  String get pickCustomAccent => 'เลือกสำเนียงที่กำหนดเอง';

  @override
  String get apply => 'นำมาใช้';

  @override
  String get custom => 'กำหนดเอง';

  @override
  String get brightnessSystem => 'ระบบ';

  @override
  String get brightnessLight => 'แสงสว่าง';

  @override
  String get brightnessDark => 'มืด';

  @override
  String get selectBook => 'เลือกหนังสือ';

  @override
  String get bookmarkFilterAll => 'ทั้งหมด';

  @override
  String get bookmarkFilterUnlabeled => 'ไม่มีป้ายกำกับ';

  @override
  String get bookmarkSortRecent => 'ล่าสุดก่อน';

  @override
  String get bookmarkSortCanonical => 'คำสั่งที่เป็นที่ยอมรับ';

  @override
  String get chapterRetry => 'ลองอีกครั้ง';

  @override
  String get fontSize => 'ขนาดตัวอักษร';

  @override
  String fontSizePixels(Object size) {
    return '$size พิกเซล';
  }

  @override
  String get fontSizeSlider => 'แถบเลื่อนขนาดตัวอักษร';

  @override
  String get fontSizeSliderHint => 'ปัดเพื่อปรับจาก 12 เป็น 28';

  @override
  String get fontPreview =>
      '“ในปฐมกาลพระเจ้าทรงสร้างชั้นฟ้าทั้งหลายและแผ่นดิน” — ปฐมกาล 1:1';

  @override
  String get showVerseNumbersSubtitle => 'แสดงตัวยกหมายเลขข้อในหน้าจอการอ่าน';

  @override
  String get showSectionHeadingsSubtitle =>
      'แสดงหัวข้อและบทเพลงสดุดีระหว่างข้อความ';

  @override
  String get wordsOfChristSubtitle =>
      'แสดงคำพูดของพระเยซูเป็นสีแดง ปิดการใช้งานสำหรับสีข้อความเดียว';

  @override
  String get verseFormatTitle => 'รูปแบบกลอน';

  @override
  String get verseFormatSubtitle => 'เลือกวิธีจัดวางข้อความพระคัมภีร์';

  @override
  String get paragraphMode => 'ย่อหน้า';

  @override
  String get verseListMode => 'รายการกลอน';

  @override
  String get paragraphModeTooltip => 'โหมดย่อหน้า';

  @override
  String get verseListModeTooltip => 'โหมดรายการกลอน';

  @override
  String get paragraphModeDescription =>
      'ข้อความไหลอย่างต่อเนื่องโดยมีย่อหน้าเยื้อง เช่นเดียวกับพระคัมภีร์ที่พิมพ์ออกมา';

  @override
  String get verseListModeDescription =>
      'พระคัมภีร์แต่ละย่อหน้าเริ่มต้นในบรรทัดของตัวเอง ทำให้มองเห็นกลุ่มข้อได้ง่าย';

  @override
  String get deleteBookmarkTooltip => 'ลบบุ๊กมาร์ก';

  @override
  String deleteBookmarkSemantics(Object reference) {
    return 'ลบบุ๊กมาร์ก $reference';
  }

  @override
  String sortBookmarksTooltip(Object sortOrder) {
    return 'เรียงลำดับ: $sortOrder';
  }

  @override
  String get noBookmarksYet => 'ยังไม่มีบุ๊กมาร์ก';

  @override
  String get noBookmarksYetHint => 'แตะไอคอนบุ๊กมาร์กขณะอ่านเพื่อบันทึกตำแหน่ง';

  @override
  String bookmarkReferenceNavigationError(Object reference) {
    return 'ไม่สามารถนำทางไปยัง $reference';
  }

  @override
  String themeCardSemantics(Object description, Object name, Object selected) {
    return '$name ธีม$selected. $description';
  }

  @override
  String get selectedThemeSuffix => 'ที่เลือกอยู่ในขณะนี้';

  @override
  String get customisableAccentDescription => 'สีเน้นที่ปรับแต่งได้';

  @override
  String get fixedPaletteDescription => 'จานสีคงที่';

  @override
  String accentColourTitle(Object themeName) {
    return 'สีเน้น — $themeName';
  }

  @override
  String get brightnessMode => 'โหมดความสว่าง';

  @override
  String get lightMode => 'โหมดแสง';

  @override
  String get followSystemMode => 'ติดตามโหมดระบบ';

  @override
  String get darkMode => 'โหมดมืด';

  @override
  String get customColourPicker => 'ตัวเลือกสีที่กำหนดเอง';

  @override
  String get customColourTooltip => 'สีที่กำหนดเอง...';

  @override
  String get couldNotLoadBooks =>
      'ไม่สามารถโหลดรายการหนังสือได้ โปรดลองอีกครั้ง';

  @override
  String chapterLabel(Object chapter) {
    return 'บทที่ $chapter';
  }

  @override
  String get traditionalOrderBooks => 'หนังสือสั่งซื้อแบบดั้งเดิม';

  @override
  String get alphabeticalOrderBooks => 'หนังสือตามลำดับตัวอักษร';

  @override
  String get home => 'บ้าน';

  @override
  String get addBookmarkTooltip => 'เพิ่มบุ๊กมาร์ก';

  @override
  String get chooseBookChapter => 'เลือกหนังสือและบท';

  @override
  String get chooseVerse => 'เลือกข้อ';

  @override
  String get bookChapterQuickNavigation => 'หนังสือและการนำทางอย่างรวดเร็วบท';

  @override
  String get verseQuickNavigation => 'การนำทางที่รวดเร็วของข้อ';

  @override
  String get backToBooks => 'กลับไปที่หนังสือ';

  @override
  String get selectBookTitle => 'เลือกหนังสือ';

  @override
  String selectChapterTitle(Object bookName) {
    return 'เลือกบท ($bookName)';
  }

  @override
  String chapterSelectionLabel(Object chapter) {
    return 'บทที่ $chapter';
  }

  @override
  String verseSelectionLabel(Object verse) {
    return 'กลอน $verse';
  }

  @override
  String fullChapterReference(Object bookName, Object chapter) {
    return 'บทเต็ม: $bookName $chapter';
  }

  @override
  String get memorizeHint => 'จดจำ';

  @override
  String get addNoteHint => 'เพิ่มบันทึก...';

  @override
  String get languageSearchHint => 'ค้นหาภาษา';

  @override
  String get languageModuleInstalled => 'ติดตั้งแล้ว';

  @override
  String get languageModulePending => 'รอการแปลด้วยเครื่อง';

  @override
  String get languageNoMatches => 'ไม่มีภาษาที่ตรงกับการค้นหาของคุณ';

  @override
  String get languageCatalogDescription =>
      'ภาษาที่ทำเครื่องหมายว่าติดตั้งแล้วทำงานแบบออฟไลน์ ภาษาอื่นๆ จะถูกเพิ่มเป็นโมดูลที่แปลด้วยเครื่อง';

  @override
  String get saveBookmarkSemantics => 'บันทึกบุ๊กมาร์ก';

  @override
  String get couldNotLoadChapter => 'ไม่สามารถโหลดบทได้ โปรดลองอีกครั้ง';

  @override
  String get couldNotLoadChapters => 'ไม่สามารถโหลดบทได้ โปรดลองอีกครั้ง';

  @override
  String verseWithText(Object text, Object verse) {
    return 'กลอน $verse: $text';
  }

  @override
  String accentSwatchSemantics(Object name, Object selected) {
    return '$name สีเน้น$selected';
  }

  @override
  String get oldTestament => 'พันธสัญญาเดิม';

  @override
  String get newTestament => 'พันธสัญญาใหม่';

  @override
  String get deuterocanonApocrypha => 'ดิวเทอโรคานอน/คัมภีร์นอกสารบบ';
}
