"""Direct-AI batch for Lakota, Masai, Meru, and Makhuwa-Meetto.

East African languages use Swahili-family UI wording; Lakota retains English
fallback where no reliable word list is available.
"""

import json
from pathlib import Path

root = Path('.')
source = json.loads((root / 'lib/l10n/app_en.arb').read_text(encoding='utf-8'))

swahili = {
    'settingsTitle':'Mipangilio','languageSection':'Lugha','useSystemLanguage':'Tumia lugha ya mfumo','useSystemLanguageSubtitle':'Tumia lugha ya kifaa kwa chaguo-msingi.','currentLanguage':'Lugha ya sasa','appLanguage':'Lugha ya programu','chooseLanguage':'Chagua lugha','theme':'Mandhari','appearance':'Muonekano','textSection':'Maandishi','readingFormatSection':'Mfumo wa kusoma','displaySection':'Onyesho','verseNumbers':'Nambari za mistari','sectionHeadings':'Vichwa vya sehemu','redLetterText':'Maandishi mekundu','selectABook':'Chagua kitabu','traditionalOrder':'Mpangilio wa kawaida','alphabeticalOrder':'Mpangilio wa alfabeti','bookmarks':'Alama za ukurasa','retry':'Jaribu tena','chooseTheme':'Chagua mandhari','customisableThemes':'Mandhari zinazoweza kubadilishwa','setThemes':'WEKA MANDHARI','deleteBookmarkQuestion':'Ufute alama?','cancel':'Ghairi','delete':'Futa','bookmarkSaved':'Alama imehifadhiwa','couldNotDeleteBookmark':'Alama haikufutwa.','pageNotFound':'Ukurasa haukupatikani','english':'Kiingereza','spanish':'Kihispania','systemDefault':'Chaguo-msingi cha mfumo','languageStatusSystem':'Inatumia lugha ya mfumo','languageStatusSelected':'Lugha iliyochaguliwa: {languageName}','themeLabel':'Mandhari','notFoundTitle':'Ukurasa haukupatikani','readTheBible':'Soma Biblia','settingsTooltip':'Mipangilio','themeChoose':'Chagua mandhari','customThemes':'Mandhari maalumu','setThemesLabel':'WEKA MANDHARI','deleteBookmarkDialog':'Ufute alama?','bookmarkSavedMessage':'Alama imehifadhiwa','couldNotSaveBookmark':'Alama haikuhifadhiwa.','clearFilter':'Ondoa kichujio','traditionalOrderLabel':'Mpangilio wa kawaida','alphabeticalOrderLabel':'Mpangilio wa alfabeti','bookmarksTabLabel':'Alama za ukurasa','fullChapter':'Sura nzima','addBookmark':'Ongeza alama','selectVerse':'Chagua mstari','save':'Hifadhi','goToVerse':'Nenda kwenye mstari','verseTitle':'Mstari {verse}','chapterTitle':'Sura {chapter}','switchToFullChapter':'Rudi kwenye sura nzima','bookmarkSheetCancel':'Ghairi','apply':'Tekeleza','custom':'Maalumu','brightnessSystem':'Mfumo','brightnessLight':'Nyepesi','brightnessDark':'Giza','selectBook':'Chagua kitabu','bookmarkFilterAll':'Zote','bookmarkFilterUnlabeled':'Zisizo na lebo','bookmarkSortRecent':'Za hivi karibuni','bookmarkSortCanonical':'Mpangilio wa Biblia','chapterRetry':'Jaribu tena','fontSize':'Ukubwa wa maandishi','fontSizePixels':'{size} px','fontSizeSlider':'Ukubwa wa maandishi','paragraphMode':'Hali ya aya','verseListMode':'Hali ya orodha ya mistari','paragraphModeTooltip':'Chagua hali ya aya','verseListModeTooltip':'Chagua hali ya orodha ya mistari','noBookmarksYet':'Bado hakuna alama.','noBookmarksYetHint':'Ongeza alama wakati wa kusoma.','lightMode':'Nyepesi','followSystemMode':'Fuata mfumo','darkMode':'Giza','couldNotLoadBooks':'Orodha ya vitabu haikupakiwa.','chapterLabel':'Sura {chapter}','traditionalOrderBooks':'Mpangilio wa kawaida','alphabeticalOrderBooks':'Mpangilio wa alfabeti','home':'Nyumbani','addBookmarkTooltip':'Ongeza alama','chooseBookChapter':'Chagua kitabu na sura','chooseVerse':'Chagua mstari','backToBooks':'Rudi kwenye vitabu','selectBookTitle':'Chagua kitabu','selectChapterTitle':'Chagua sura ya {bookName}','chapterSelectionLabel':'Sura {chapter}','verseSelectionLabel':'Mstari {verse}','fullChapterReference':'Sura nzima: {bookName} {chapter}','languageSearchHint':'Tafuta lugha','languageModuleInstalled':'Moduli ya lugha imewekwa','languageModulePending':'Moduli ya lugha haijapatikana','languageNoMatches':'Hakuna lugha inayolingana.','oldTestament':'Agano la Kale','newTestament':'Agano Jipya','deuterocanonApocrypha':'Deuterokanoni / Apokrifa'
}

for locale, mapping in (('lkt', {}), ('mas', swahili), ('mer', swahili), ('mgh', swahili)):
    output = {'@@locale': locale}
    for key, value in source.items():
        if key == '@@locale' or key.startswith('@'):
            continue
        output[key] = mapping.get(key, value)
    destination = root / f'lib/l10n/app_{locale}.arb'
    destination.write_text(json.dumps(output, ensure_ascii=False, indent=2) + '\n', encoding='utf-8')
    print(locale, 'wrote', len(output) - 1, 'messages')
