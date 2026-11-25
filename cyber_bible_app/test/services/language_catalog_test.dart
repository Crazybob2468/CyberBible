// Unit tests for the local UI-language catalog.

import 'package:flutter_test/flutter_test.dart';

import 'package:cyber_bible_app/services/language_catalog.dart';

void main() {
  test('catalog includes all currently installed modules', () {
    expect(languageCatalogEntry('en').state, LanguageModuleState.installed);
    expect(languageCatalogEntry('es').state, LanguageModuleState.installed);
    for (final code in <String>[
      'fr',
      'de',
      'it',
      'pt',
      'hi',
      'zh',
      'ar',
      'bn',
      'ja',
      'ko',
      'ru',
      'tr',
      'uk',
      'vi',
      'pl',
      'nl',
      'af',
      'am',
      'ca',
      'cy',
      'cs',
      'da',
      'az',
      'be',
      'bem',
      'bg',
      'bho',
      'bm',
      'bo',
      'br',
      'bs',
      'chr',
      'csw',
      'dav',
      'dje',
      'et',
      'eu',
      'fa',
      'fi',
      'fil',
      'gl',
      'ne',
      'nn',
      'or',
      'pa',
      'ro',
      'si',
      'sk',
      'sl',
      'sq',
      'sr',
      'sv',
      'se',
      'sw',
      'ta',
      'te',
      'th',
      'ur',
      'uz',
      'zu',
      'yo',
      'dz',
      'ee',
      'eo',
      'ff',
      'fo',
      'fur',
      'fy',
      'ga',
      'gd',
      'gv',
      'ha',
      'haw',
      'ig',
      'jv',
      'ny',
      'lu',
      'luo',
      'luy',
      'ln',
      'kea',
      'ceb',
      'cgg',
      'ce',
      'su',
      'xh',
      'mai',
      'qu',
      'lij',
      'lmo',
      'bgc',
      'asa',
      'dsb',
      'dua',
      'dyo',
      'ebu',
      'guz',
      'hsb',
      'ii',
      'jgo',
      'jmc',
      'kde',
      'kgp',
      'khq',
      'kkj',
      'kl',
      'kok',
      'ks',
      'ksb',
      'ksf',
      'kxv',
      'lag',
      'lkt',
      'mgo',
      'mni',
      'mzn',
      'naq',
      'pcm',
      'prg',
      'raj',
      'rof',
      'rwk',
      'ses',
      'syr',
      'teo',
      'twq',
      'vmw',
      'vun',
      'wae',
      'xnr',
      'xog',
      'yav',
      'zgh',
    ]) {
      expect(languageCatalogEntry(code).state, LanguageModuleState.installed);
    }
  });

  test('catalog exposes a broad Android language roadmap', () {
    expect(androidLanguageCatalog.length, greaterThan(70));
    expect(androidLanguageCatalog.map((entry) => entry.code), containsAll(<String>['ar', 'fr', 'hi', 'ja', 'pt', 'sw', 'zh']));
  });

  test('language search matches code, English name, and native name', () {
    final spanish = languageCatalogEntry('es');

    expect(spanish.matches('es'), isTrue);
    expect(spanish.matches('Spanish'), isTrue);
    expect(spanish.matches('Español'), isTrue);
    expect(spanish.matches('Japanese'), isFalse);
  });

  test('newly installed languages expose their native display names', () {
    expect(languageCatalogEntry('bem').nativeName, 'Ichibemba');
    expect(languageCatalogEntry('bho').nativeName, 'भोजपुरी');
    expect(languageCatalogEntry('bm').nativeName, 'Bamanankan');
    expect(languageCatalogEntry('bo').nativeName, 'བོད་སྐད');
    expect(languageCatalogEntry('br').nativeName, 'Brezhoneg');
    expect(languageCatalogEntry('ceb').nativeName, 'Cebuano');
    expect(languageCatalogEntry('cy').nativeName, 'Cymraeg');
    expect(languageCatalogEntry('dz').nativeName, 'རྫོང་ཁ');
    expect(languageCatalogEntry('ee').nativeName, 'Eʋegbe');
    expect(languageCatalogEntry('eo').nativeName, 'Esperanto');
    expect(languageCatalogEntry('ff').nativeName, 'Fulfulde');
    expect(languageCatalogEntry('fo').nativeName, 'Føroyskt');
    expect(languageCatalogEntry('fur').nativeName, 'Furlan');
    expect(languageCatalogEntry('fy').nativeName, 'Frysk');
    expect(languageCatalogEntry('ga').nativeName, 'Gaeilge');
    expect(languageCatalogEntry('gd').nativeName, 'Gàidhlig');
    expect(languageCatalogEntry('gv').nativeName, 'Gaelg');
    expect(languageCatalogEntry('haw').nativeName, 'ʻŌlelo Hawaiʻi');
    expect(languageCatalogEntry('jv').nativeName, 'Basa Jawa');
    expect(languageCatalogEntry('kea').nativeName, 'Kabuverdianu');
    expect(languageCatalogEntry('ln').nativeName, 'Lingála');
    expect(languageCatalogEntry('lu').nativeName, 'Kiluba');
    expect(languageCatalogEntry('luo').nativeName, 'Dholuo');
    expect(languageCatalogEntry('luy').nativeName, 'Luluyia');
    expect(languageCatalogEntry('mai').nativeName, 'मैथिली');
    expect(languageCatalogEntry('ny').nativeName, 'Chichewa');
    expect(languageCatalogEntry('nn').nativeName, 'Norsk nynorsk');
    expect(languageCatalogEntry('se').nativeName, 'Davvisámegiella');
    expect(languageCatalogEntry('so').nativeName, 'Soomaali');
    expect(languageCatalogEntry('su').nativeName, 'Basa Sunda');
    expect(languageCatalogEntry('qu').nativeName, 'Runa Simi');
    expect(languageCatalogEntry('rn').nativeName, 'Ikirundi');
    expect(languageCatalogEntry('sd').nativeName, 'سنڌي');
    expect(languageCatalogEntry('szl').nativeName, 'ślůnski godka');
    expect(languageCatalogEntry('tzm').nativeName, isNotEmpty);
    expect(languageCatalogEntry('xh').nativeName, 'isiXhosa');
    expect(languageCatalogEntry('yo').nativeName, 'Yorùbá');
    expect(languageCatalogEntry('ce').nativeName, 'Нохчийн мотт');
    expect(languageCatalogEntry('lij').nativeName, 'Lìguru');
    expect(languageCatalogEntry('lmo').nativeName, 'Lumbaart');
    expect(languageCatalogEntry('bgc').nativeName, 'हरियाणवी');
    expect(languageCatalogEntry('asa').nativeName, 'Kipare');
    expect(languageCatalogEntry('agq').nativeName, 'Aghem');
    expect(languageCatalogEntry('blo').nativeName, 'Anii');
    expect(languageCatalogEntry('chr').nativeName, 'ᏣᎳᎩ');
    expect(languageCatalogEntry('csw').nativeName, 'Nēhinawēwin');
    expect(languageCatalogEntry('dav').nativeName, 'Kidawida');
    expect(languageCatalogEntry('dje').nativeName, 'Zarmaciine');
    expect(languageCatalogEntry('dsb').nativeName, 'Dolnoserbšćina');
    expect(languageCatalogEntry('dua').nativeName, 'Duala');
    expect(languageCatalogEntry('dyo').nativeName, 'Jola-Fonyi');
    expect(languageCatalogEntry('ebu').nativeName, 'Kiembu');
    expect(languageCatalogEntry('guz').nativeName, 'Ekegusii');
    expect(languageCatalogEntry('hsb').nativeName, 'Hornjoserbšćina');
    expect(languageCatalogEntry('ii').nativeName, 'ꆈꌠꉙ');
    expect(languageCatalogEntry('jgo').nativeName, 'Ndaꞌa');
    expect(languageCatalogEntry('jmc').nativeName, 'Kimachame');
    expect(languageCatalogEntry('kde').nativeName, 'Chimakonde');
    expect(languageCatalogEntry('kgp').nativeName, 'Kanhgág');
    expect(languageCatalogEntry('khq').nativeName, 'Koyra Chiini');
    expect(languageCatalogEntry('kkj').nativeName, 'Kako');
    expect(languageCatalogEntry('kl').nativeName, 'Kalaallisut');
    expect(languageCatalogEntry('kok').nativeName, 'कोंकणी');
    expect(languageCatalogEntry('ks').nativeName, 'کٲشُر');
    expect(languageCatalogEntry('ksb').nativeName, 'Kishambaa');
    expect(languageCatalogEntry('ksf').nativeName, 'Bafia');
    expect(languageCatalogEntry('kxv').nativeName, 'Kuvi');
    expect(languageCatalogEntry('lag').nativeName, 'Kɨlaangi');
    expect(languageCatalogEntry('lkt').nativeName, 'Lakȟótiyapi');
    expect(languageCatalogEntry('mas').nativeName, 'ɔl Maa');
    expect(languageCatalogEntry('mer').nativeName, 'Kimeru');
    expect(languageCatalogEntry('mgh').nativeName, 'Makhuwa-Meetto');
    expect(languageCatalogEntry('mgo').nativeName, 'Metaʼ');
    expect(languageCatalogEntry('mni').nativeName, 'মৈতৈলোন্');
    expect(languageCatalogEntry('mzn').nativeName, 'مازرونی');
    expect(languageCatalogEntry('naq').nativeName, 'Khoekhoegowab');
    expect(languageCatalogEntry('nd').nativeName, 'isiNdebele');
    expect(languageCatalogEntry('nnh').nativeName, 'Ngiemboon');
    expect(languageCatalogEntry('nqo').nativeName, 'ߒߞߏ');
    expect(languageCatalogEntry('pcm').nativeName, 'Naijá');
    expect(languageCatalogEntry('prg').nativeName, 'Prūsiskan');
    expect(languageCatalogEntry('raj').nativeName, 'राजस्थानी');
    expect(languageCatalogEntry('rof').nativeName, 'Kihoru');
    expect(languageCatalogEntry('rwk').nativeName, 'Kiruwa');
    expect(languageCatalogEntry('ses').nativeName, 'Koyraboro Senni');
    expect(languageCatalogEntry('syr').nativeName, 'ܣܘܪܝܝܐ');
    expect(languageCatalogEntry('teo').nativeName, 'Ateso');
    expect(languageCatalogEntry('twq').nativeName, 'Tasawaq');
    expect(languageCatalogEntry('vmw').nativeName, 'Emakhuwa');
    expect(languageCatalogEntry('vun').nativeName, 'Kivunjo');
    expect(languageCatalogEntry('wae').nativeName, 'Walser');
    expect(languageCatalogEntry('xnr').nativeName, 'कांगड़ी');
    expect(languageCatalogEntry('xog').nativeName, 'Lusoga');
    expect(languageCatalogEntry('yav').nativeName, 'Yangben');
    expect(languageCatalogEntry('zgh').nativeName, 'ⵜⴰⵎⴰⵣⵉⵖⵜ');
  });

  test('unknown language codes fall back to English metadata', () {
    expect(languageCatalogEntry('unknown').code, 'en');
  });

  test('questionable translation modules are listed as pending', () {
    for (final code in <String>[
      'agq',
      'blo',
      'mas',
      'mer',
      'mgh',
      'nd',
      'nnh',
      'nqo',
    ]) {
      expect(
        languageCatalogEntry(code).state,
        LanguageModuleState.machineTranslationPending,
      );
    }
  });
}
