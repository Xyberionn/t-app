import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

const _kLocaleStorageKey = '__locale_key__';

class FFLocalizations {
  FFLocalizations(this.locale);

  final Locale locale;

  static FFLocalizations of(BuildContext context) =>
      Localizations.of<FFLocalizations>(context, FFLocalizations)!;

  static List<String> languages() => ['en', 'tr'];

  static late SharedPreferences _prefs;
  static Future initialize() async =>
      _prefs = await SharedPreferences.getInstance();
  static Future storeLocale(String locale) =>
      _prefs.setString(_kLocaleStorageKey, locale);
  static Locale? getStoredLocale() {
    final locale = _prefs.getString(_kLocaleStorageKey);
    return locale != null && locale.isNotEmpty ? createLocale(locale) : null;
  }

  String get languageCode => locale.toString();
  String? get languageShortCode =>
      _languagesWithShortCode.contains(locale.toString())
          ? '${locale.toString()}_short'
          : null;
  int get languageIndex => languages().contains(languageCode)
      ? languages().indexOf(languageCode)
      : 0;

  String getText(String key) =>
      (kTranslationsMap[key] ?? {})[locale.toString()] ?? '';

  String getVariableText({
    String? enText = '',
    String? trText = '',
  }) =>
      [enText, trText][languageIndex] ?? '';

  static const Set<String> _languagesWithShortCode = {
    'ar',
    'az',
    'ca',
    'cs',
    'da',
    'de',
    'dv',
    'en',
    'es',
    'et',
    'fi',
    'fr',
    'gr',
    'he',
    'hi',
    'hu',
    'it',
    'km',
    'ku',
    'mn',
    'ms',
    'no',
    'pt',
    'ro',
    'ru',
    'rw',
    'sv',
    'th',
    'uk',
    'vi',
  };
}

class FFLocalizationsDelegate extends LocalizationsDelegate<FFLocalizations> {
  const FFLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) {
    final language = locale.toString();
    return FFLocalizations.languages().contains(
      language.endsWith('_')
          ? language.substring(0, language.length - 1)
          : language,
    );
  }

  @override
  Future<FFLocalizations> load(Locale locale) =>
      SynchronousFuture<FFLocalizations>(FFLocalizations(locale));

  @override
  bool shouldReload(FFLocalizationsDelegate old) => false;
}

Locale createLocale(String language) => language.contains('_')
    ? Locale.fromSubtags(
        languageCode: language.split('_').first,
        scriptCode: language.split('_').last,
      )
    : Locale(language);

final kTranslationsMap = <Map<String, Map<String, String>>>[
  // HomePage
  {
    'l7ewv22i': {
      'en': 'App Name',
      'tr': 'Uygulama Adı',
    },
    'u4mtojtu': {
      'en': 'Select a Class',
      'tr': 'Dersi Seç',
    },
    'ign8d6fg': {
      'en': 'Mathmatics Class',
      'tr': 'Matematik Dersi',
    },
    '1sww77kt': {
      'en': 'Let\'s Start!',
      'tr': 'Başlayalım!',
    },
    '1aebpusk': {
      'en': 'Biology Class',
      'tr': 'Biyoloji Dersi',
    },
    '1f67odz8': {
      'en': 'Let\'s Start!',
      'tr': 'Başlayalım!',
    },
    'u586tqre': {
      'en': 'Physics Class',
      'tr': 'Fizik Dersi',
    },
    '2e3jf1n7': {
      'en': 'Let\'s Start!',
      'tr': 'Başlayalım!',
    },
    'ogtavcjs': {
      'en': 'Chemistry Class',
      'tr': 'Kimya Dersi',
    },
    '168tsdk7': {
      'en': 'Let\'s Start!',
      'tr': 'Başlayalım!',
    },
    'brdmyx8o': {
      'en': 'History Class',
      'tr': 'Tarih Dersi',
    },
    'grqmkn9j': {
      'en': 'Let\'s Start!',
      'tr': 'Başlayalım!',
    },
    'u9jws4z8': {
      'en': 'Home',
      'tr': '',
    },
  },
  // math
  {
    '10tdemkc': {
      'en': 'Freshman Year',
      'tr': '9. Sınıf Konuları',
    },
    '3v2gm431': {
      'en': '',
      'tr': '',
    },
    '0e8yezw9': {
      'en': 'Sophomore Year',
      'tr': '10. Sınıf Konuları',
    },
    'hu4thx0f': {
      'en': '',
      'tr': '',
    },
    'z7wwg0c6': {
      'en': 'Junior Year',
      'tr': '11. Sınıf Konuları',
    },
    '3i4mfn8d': {
      'en': '',
      'tr': '',
    },
    '9j82cg0t': {
      'en': 'Senior Year',
      'tr': '12. Sınıf Konuları',
    },
    'l2ljvjdb': {
      'en': '',
      'tr': '',
    },
    'gsx2q2p5': {
      'en': 'F',
      'tr': '9. Sınıf Yeni Müfredat Konuları',
    },
    'c2bgrzt8': {
      'en': '',
      'tr': '',
    },
    'dgy99y36': {
      'en': 'Mathematics Course',
      'tr': 'Matematik Dersi',
    },
    'pcqppt6l': {
      'en': 'Home',
      'tr': '',
    },
  },
  // physics
  {
    '1htkqd5o': {
      'en': 'Freshman Year',
      'tr': '9. Sınıf Konuları',
    },
    'fcyqc3s1': {
      'en': '',
      'tr': '',
    },
    'o7fv0jpl': {
      'en': 'Sophomore Year',
      'tr': '10. Sınıf Konuları',
    },
    '2p741ciu': {
      'en': '',
      'tr': '',
    },
    '2hm0rfp2': {
      'en': 'Junior Year',
      'tr': '11. Sınıf Konuları',
    },
    '2qxjyoig': {
      'en': '',
      'tr': '',
    },
    'pnejpkvj': {
      'en': 'Senior Year',
      'tr': '12. Sınıf Konuları',
    },
    'licg37fs': {
      'en': '',
      'tr': '',
    },
    'd28ti6xp': {
      'en': 'F',
      'tr': '9. Sınıf Yeni Müfredat Konuları',
    },
    'evfm4m45': {
      'en': '',
      'tr': '',
    },
    'kkxnl325': {
      'en': 'Physics Course',
      'tr': 'Fizik Dersi',
    },
    '6g5q79of': {
      'en': 'Home',
      'tr': '',
    },
  },
  // Chemistry
  {
    'n5z8zgw6': {
      'en': 'Freshman Year',
      'tr': '9. Sınıf Konuları',
    },
    'm4rdu96g': {
      'en': '',
      'tr': '',
    },
    '31dky0jk': {
      'en': 'Sophomore Year',
      'tr': '10. Sınıf Konuları',
    },
    'u3pmxebw': {
      'en': '',
      'tr': '',
    },
    'fyyyl5xc': {
      'en': 'Junior Year',
      'tr': '11. Sınıf Konuları',
    },
    'rhkhg2s0': {
      'en': '',
      'tr': '',
    },
    'c7azsme7': {
      'en': 'Senior Year',
      'tr': '12. Sınıf Konuları',
    },
    'bcjazi30': {
      'en': '',
      'tr': '',
    },
    '0q23fmti': {
      'en': 'F',
      'tr': '9. Sınıf Yeni Müfredat Konuları',
    },
    'jjwca3zk': {
      'en': '',
      'tr': '',
    },
    'nq63pfry': {
      'en': 'Chemistry Course',
      'tr': 'Kimya Dersi',
    },
    'g7ycritq': {
      'en': 'Home',
      'tr': '',
    },
  },
  // Biology
  {
    'ditkuz4f': {
      'en': 'Freshman Year',
      'tr': '9. Sınıf Konuları',
    },
    'or1v4wvp': {
      'en': '',
      'tr': '',
    },
    'hgxxsrhr': {
      'en': 'Sophomore Year',
      'tr': '10. Sınıf Konuları',
    },
    'ptm4erjb': {
      'en': '',
      'tr': '',
    },
    'bgbynxfw': {
      'en': 'Junior Year',
      'tr': '11. Sınıf Konuları',
    },
    'nz6hir3w': {
      'en': '',
      'tr': '',
    },
    '3ufxvve7': {
      'en': 'Senior Year',
      'tr': '12. Sınıf Konuları',
    },
    'yn4l1aoy': {
      'en': '',
      'tr': '',
    },
    'ev9lg99b': {
      'en': 'F',
      'tr': '9. Sınıf Yeni Müfredat Konuları',
    },
    'uxpokam9': {
      'en': '',
      'tr': '',
    },
    'k8t7j68w': {
      'en': 'Biology Course',
      'tr': 'Biyoloji Dersi',
    },
    'ep7dh135': {
      'en': 'Home',
      'tr': '',
    },
  },
  // profile
  {
    'ahqj2lqa': {
      'en': 'Switch to Dark Mode',
      'tr': 'Dark modu aç',
    },
    'klr4zteg': {
      'en': 'Switch to Light Mode',
      'tr': 'Dark modu kapat',
    },
    '3kqgb5dn': {
      'en': 'Account Settings',
      'tr': 'Hesap Ayarları',
    },
    '2iyvt70t': {
      'en': 'Send Password Reset Email',
      'tr': 'Şifre Sıfırlama Maili Gönder',
    },
    'coo5ejyh': {
      'en': 'Change Your Email Adress',
      'tr': 'Email Adresini Değiştir',
    },
    'zb1w2b0f': {
      'en': 'Choose Your Education Program',
      'tr': 'Eğitim Programını Seç',
    },
    'mav2p22l': {
      'en': 'Log Out',
      'tr': 'Çıkış Yap',
    },
    '3dedj28f': {
      'en': 'Delete My Account',
      'tr': 'Hesabımı Sil',
    },
    'o83a1l36': {
      'en': 'Profile',
      'tr': 'Profil',
    },
    'h5xyodyf': {
      'en': '__',
      'tr': '',
    },
  },
  // Login_Signin
  {
    'ai3hvvoh': {
      'en': 'App Name',
      'tr': 'Uygulama Adı',
    },
    '7xfox2ib': {
      'en': 'Sign In',
      'tr': 'Giriş Yap',
    },
    'k91513n6': {
      'en': 'Let\'s get started by filling out the form below.',
      'tr': '',
    },
    'h80319ru': {
      'en': 'Email',
      'tr': 'Email',
    },
    'slvseded': {
      'en': 'Password',
      'tr': 'Şifre',
    },
    'teh6k0hp': {
      'en': 'Sign In',
      'tr': 'Giriş yap',
    },
    'mcseukag': {
      'en': 'Forgot Password',
      'tr': 'Şifremi unuttum',
    },
    '2x6d3oxb': {
      'en': 'Or sign up with',
      'tr': 'Veya',
    },
    'rbl75tp9': {
      'en': 'Continue with Google',
      'tr': 'Google hesabın ile giriş yap',
    },
    'v90cvqs0': {
      'en': 'Continue with Apple',
      'tr': 'Apple hesabın ile giriş yap',
    },
    'rv8r52xb': {
      'en': 'Sign Up',
      'tr': 'Üye Ol',
    },
    'pe4nz263': {
      'en': 'Let\'s get started by filling out the form below.',
      'tr': '',
    },
    '05h0v2gu': {
      'en': 'Name',
      'tr': 'Adınız',
    },
    'l2s353p8': {
      'en': 'Email',
      'tr': 'Email',
    },
    'xbmqc0ba': {
      'en': 'Password',
      'tr': 'Şifre',
    },
    'eynkfcho': {
      'en': 'Confirm Password',
      'tr': 'Şifreni Onayla',
    },
    'g4ku23eb': {
      'en': 'Create Account',
      'tr': 'Hesap Oluştur',
    },
    'l8iha1xw': {
      'en': 'Or sign up with',
      'tr': 'Veya',
    },
    'g8tipx20': {
      'en': 'Continue with Google',
      'tr': 'Google hesabın ile giriş yap',
    },
    'ts1iqw47': {
      'en': 'Continue with Apple',
      'tr': 'Apple hesabın ile giriş yap',
    },
    'xlqwqpue': {
      'en': 'Home',
      'tr': '',
    },
  },
  // grade_1
  {
    'iyj0t4a7': {
      'en': 'Numbers and Operations',
      'tr': '9.1 Mantık',
    },
    'ykfgol8i': {
      'en':
          '-Real numbers and their properties\n-Integers, rational numbers, irrational numbers',
      'tr': '9.1.1. Önermeler ve Bileşik Önermeler',
    },
    '8vgz91t1': {
      'en': 'Algebra',
      'tr': '9.2 Kümeler',
    },
    'a510pqv9': {
      'en':
          '-Linear equations and inequalities\n-Solving single-variable and multi-variable equations',
      'tr': '9.2.1. Kümelerde Temel Kavramlar\n9.2.2. Kümelerde İşlemler',
    },
    'gbdhkgxz': {
      'en': 'Functions',
      'tr': '9.3 Denklemler ve Eşitsizlikler',
    },
    '63p7yffv': {
      'en':
          '-Function definition and properties\n-Linear functions and their graphs',
      'tr':
          '9.3.1. Sayı Kümeleri\n9.3.2. Bölünebilme Kuralları\n9.3.3. Birince Dereceden Denklemler ve Eşitsizlikler\n9.3.4. Üslü İfadeler ve Denklemler\n9.3.5. Denklemler ve Eşitsizliklerle İlgili Uygulamalar',
    },
    '7rfkrnm2': {
      'en': 'Polynomials',
      'tr': '9.4 Üçgenler',
    },
    'gwtp0sm9': {
      'en':
          '-Operations with polynomials (addition, subtraction, multiplication, division)\n-Factoring polynomials',
      'tr':
          '9.4.1. Üçgenlerde Temel Kavramlar\n9.4.2. Üçgenlerde Eşlik ve Benzerlik\n9.4.3. Üçgenlerin Yardımcı Elemanları\n9.4.4. Dik Üçgen ve Trigonometri\n9.4.5. Üçgenin Alanı',
    },
    'ac5stgfm': {
      'en': 'Inequalities and Absolute Value',
      'tr': '9.5. Veri',
    },
    'bdf5bm04': {
      'en':
          '-Solving inequalities and graphing them\n-Absolute value equations and inequalities',
      'tr':
          '9.5.1. Merkezi Eğilim ve Yayılım Ölçüleri\n9.5.2. Verilerin Grafikle Gösterilmesi',
    },
    'vkvlgj32': {
      'en': 'Freshman Year',
      'tr': '9.Sınıf',
    },
    '08xej3mn': {
      'en': 'Home',
      'tr': '',
    },
  },
  // grade_2
  {
    'oca261j7': {
      'en': 'Geometric Concepts',
      'tr': '10.1. Sayma ve Olasılık',
    },
    'cp0sd7pu': {
      'en': '-Point, line, plane\n-Angles and types of angles',
      'tr': '10.1.1. Sıralama ve Seçme\n10.2.2. Basit Olayların Olasılığı',
    },
    'lofhhuqi': {
      'en': 'Triangles',
      'tr': '10.2. Fonksiyonlar',
    },
    'lk2dj3ci': {
      'en':
          '-Classification of triangles\n-Triangle properties (Pythagorean theorem, trigonometric ratios)',
      'tr':
          '10.2.1.Fonksiyon Kavramı ve Gösterimi\n10.2.2. İki Fonksiyonun Bileşkesi ve Bir Fonksiyonun Tersi ',
    },
    '25t0w17y': {
      'en': 'Polygons and Quadrilaterals',
      'tr': '10.3. Polinomlar',
    },
    'xe2i389n': {
      'en':
          '-Properties of polygons and angle calculations\n-Special quadrilaterals (square, rectangle, parallelogram, trapezoid)',
      'tr':
          '10.3.1. Polinom Kavramı ve Polinomlarla İşlemler\n10.3.2. Polinomların Çarpanlara Ayırılması',
    },
    'f56hem4i': {
      'en': 'Circles',
      'tr': '10.4. İkinci Dereceden Denklemler',
    },
    'x0d8gxs4': {
      'en':
          '-Elements of a circle (chord, tangent, diameter)\n-Angle and arc measures in circles',
      'tr': '10.4.1. İkinci Dereceden Bir Bilinmeyenli Denklemler',
    },
    'x1zrjb0g': {
      'en': 'Solid Figures',
      'tr': '10.5. Dörtgenler ve Çokgenler',
    },
    'tnhfx1gx': {
      'en':
          '-Prisms, pyramids, cylinders, cones, spheres\n-Volume and surface area calculations',
      'tr':
          '10.5.1. Çokgenler\n10.5.2. Dörtgenler ve Özellikleri\n10.5.3. Özel Dörtgenler',
    },
    'ky6ghjvr': {
      'en': 'Sophomore Year',
      'tr': '10.Sınıf',
    },
    '2p62kx75': {
      'en': 'Home',
      'tr': '',
    },
  },
  // grade_3
  {
    'bjf2ozrh': {
      'en': 'Title',
      'tr': '11.Sınıf Temel Düzey',
    },
    'ys3ht0yu': {
      'en': 'Subtitle goes here...',
      'tr': 'Sayılar ve Cebir\nGeometri',
    },
    'pnwhgb5v': {
      'en': 'Polynomials',
      'tr': '11.1. Trigonometri',
    },
    'ym2j5hu0': {
      'en':
          '-Polynomial functions and graphs\n-Factoring polynomials and roots',
      'tr': '11.1.1. Yönlü Açılar\n11.1.2. Trigonometrik Fonksiyonlar',
    },
    'gl4r644c': {
      'en': 'Exponential and Logarithmic Functions',
      'tr': '11.2. Analitik Geometri',
    },
    'pwfv02sj': {
      'en':
          '-Exponential growth and decay\n-Properties and equations of logarithms',
      'tr': '11.2.1. Doğrunun Analitik İncelenmesi',
    },
    '1ks3hfjd': {
      'en': 'Rational Functions',
      'tr': '11.3. Fonksiyonlarda Uygulamalar',
    },
    '2hnbtaa4': {
      'en': '-Rational expressions and fractions\n-Asymptotes and graphing',
      'tr':
          '11.3.1. Fonksiyonlarla İlgili Uygulamalar\n11.3.2 .İkinci Dereceden Fonksiyonlar ve Grafikleri\n11.3.3. Fonksiyonların Dönüşümleri',
    },
    'f3eshqz8': {
      'en': 'Trigonometry',
      'tr': '11.4. Denklem ve Eşitizlik Sistemleri',
    },
    '0mcgfj86': {
      'en':
          '-Trigonometric functions and graphs\n-Trigonometric identities and equations',
      'tr':
          '11.4.1. İkinci Dereceden İki Bilinmeyenli Denklem Sistemleri\n11.4.2. İkinci Dereceden Bir Bilinmeyenli Eşitsizlikler ve Eşitsizlik Sistemleri',
    },
    '7zk68erv': {
      'en': 'Sequences and Series',
      'tr': '11.5. Çember ve Daire',
    },
    'hezzolaz': {
      'en': '-Arithmetic and geometric sequences\n-Summation of series',
      'tr':
          '11.5.1. Çemberin Temel Elemanları\n11.5.2. Çemberde Açı\n11.5.3. Çemberde Teğet\n11.5.4. Dairenin Çevresi ve Alanı',
    },
    'nzoj7ovi': {
      'en': 'Title',
      'tr': '11.6. Uzay Geometri',
    },
    'w252mi6c': {
      'en': 'Subtitle goes here...',
      'tr': '11.6.1. Katı Cisimler',
    },
    '6hmrgp76': {
      'en': 'Title',
      'tr': '11.7. Olasılık',
    },
    'qal1qk9m': {
      'en': 'Subtitle goes here...',
      'tr': '11.7.1. Koşullu Olasılık\n11.7.2. Deneysel ve Teorik Olasılık',
    },
    'rglogpdm': {
      'en': 'Junior Year',
      'tr': '11.Sınıf',
    },
    '0iluxhh6': {
      'en': 'Home',
      'tr': '',
    },
  },
  // grade_4
  {
    'tvdynn8k': {
      'en': 'Title',
      'tr': '12.Sınıf Temel Düzey',
    },
    'tx50xi2c': {
      'en': 'Subtitle goes here...',
      'tr': 'Sayılar ve Cebir\nVeri, Sayma ve Olasılık\nGeometri',
    },
    '37dudfvq': {
      'en': 'Limits and Continuity',
      'tr': '12.1. Üstel ve Logaritmik Fonksiyonlar',
    },
    'vf6mxjlm': {
      'en':
          '-Definition and calculations of limits\n-Continuity and discontinuities',
      'tr':
          '12.1.1. Üstel Fonksiyon\n12.1.2. Logaritma Fonksiyonu\n12.1.3. Üstel, Logaritmik Denklemler ve Eşitsizlikler',
    },
    'jysi9ntn': {
      'en': 'Derivatives',
      'tr': '12.2. Diziler',
    },
    '6xbd8i2b': {
      'en':
          '-Derivative rules and applications\n-Maxima and minima problems\n-Slope of curves and motion problems',
      'tr': '12.2.1. Gerçek Sayı Dizileri',
    },
    'dcoao9v3': {
      'en': 'Integrals',
      'tr': '12.3. Trigonometri',
    },
    'nsy6jf65': {
      'en':
          '-Definite and indefinite integrals\n-Area and volume calculations\n-Applications of integrals',
      'tr':
          '12.3.1. Toplam-Fark ve İki Kat Açı Formülleri\n12.3.2. Trigonometrik Denklemler',
    },
    '0fhevzw8': {
      'en': 'Differential Equations',
      'tr': '12.4. Dönüşümler',
    },
    'jxcb8qor': {
      'en':
          '-First-order differential equations\n-Separable and linear differential equations',
      'tr': '12.4.1. Analitik Düzlemde Temel Dönüşümler',
    },
    'r762vn0h': {
      'en': 'Title',
      'tr': '12.5. Türev',
    },
    '2xltyeqv': {
      'en': 'Subtitle goes here...',
      'tr':
          '12.5.1. Limit ve Süreklilik\n12.5.2. Anlık Değişim Oranı ve Türev\n12.5.3. Türev Uygulamaları',
    },
    'bjqphecz': {
      'en': 'Title',
      'tr': '12.6. İntegral',
    },
    'b40mehr6': {
      'en': 'Subtitle goes here...',
      'tr':
          '12.6.1. Belirsiz İntegral\n12.6.2. Belirli İntegral ve Uygulamaları',
    },
    'fgib9u13': {
      'en': 'Title',
      'tr': '12.7. Analitik Geometri',
    },
    'se9ncvw0': {
      'en': 'Subtitle goes here...',
      'tr': '12.7.1. Çemberin Analitik İncelenmesi',
    },
    '2uemy44b': {
      'en': 'Senior Year',
      'tr': '12.Sınıf',
    },
    'ovc465sv': {
      'en': 'Home',
      'tr': '',
    },
  },
  // Temel11
  {
    'dvuds1b0': {
      'en': 'Title',
      'tr': 'TD.11.1 Sayılar',
    },
    'ihoyl1bc': {
      'en': 'Subtitle goes here...',
      'tr': 'TD.11.1.1. Sayı Kümeleri\nTD.11.1.2. Bölünebilme',
    },
    'djcenpgy': {
      'en': 'Title',
      'tr': 'TD.11.2. Üçgenler',
    },
    'gypze4fk': {
      'en': 'Subtitle goes here...',
      'tr': 'TD.11.2.1. Dik Üçgen',
    },
    '5ppze14g': {
      'en': 'Title',
      'tr': 'TD.11.3. Denklemler ve Eşitsizlikler',
    },
    '44s8hlp7': {
      'en': 'Subtitle goes here...',
      'tr':
          'TD.11.3.1. Birinci Dereceden Denklemler ve Eşitsizlikler\nTD.11.3.2. Bilinçli Tüketici Aritmetiği',
    },
    '3oslf8fh': {
      'en': 'Title',
      'tr': 'TD.11.4. Çember ve Daire',
    },
    'vtgn8p4c': {
      'en': 'Subtitle goes here...',
      'tr':
          'TD.11.4.1. Çemberin Temel Elemanları\nTD.11.4.2. Çemberde Açılar\nTD.11.4.3. Dairenin Çevresi ve Alanı',
    },
    '3ntqcbfl': {
      'en': 'Page Title',
      'tr': '11.Sınıf Temel Düzey',
    },
    's64mqe53': {
      'en': 'Home',
      'tr': '',
    },
  },
  // Temel12
  {
    'dumepjgm': {
      'en': 'Title',
      'tr': 'TD.12.1 Denklem ve Eşitsizlikler',
    },
    '2ywf0mu8': {
      'en': 'Subtitle goes here...',
      'tr':
          'TD.12.1.1. Üslü ve Köklü İfadeler\nTD.12.1.2. Bilinçli Tüketici Aritmetiği',
    },
    'qpqijsq2': {
      'en': 'Title',
      'tr': 'TD.12.2. Veri',
    },
    '4p45uevq': {
      'en': 'Subtitle goes here...',
      'tr': 'TD.12.2.1. Veri Analizi',
    },
    'mj9hw1md': {
      'en': 'Title',
      'tr': 'TD.12.3. Ölçme',
    },
    'j5xygoz6': {
      'en': 'Subtitle goes here...',
      'tr': 'TD.12.3.1. Çevre, Alan ve Hacim Ölçme',
    },
    'db0x5jbg': {
      'en': 'Title',
      'tr': 'TD.12.4. Katı Cisimler',
    },
    't2wprivu': {
      'en': 'Subtitle goes here...',
      'tr': 'TD.12.4.1. Küre ve Silindir',
    },
    'k1qwuu8g': {
      'en': 'Page Title',
      'tr': '12.Sınıf Temel Düzey',
    },
    'xts07c7f': {
      'en': 'Home',
      'tr': '',
    },
  },
  // phygrade_1
  {
    'oew3550u': {
      'en': 'Introduction to Physics',
      'tr': 'Fiziğin Doğası',
    },
    'ulvbegln': {
      'en': '-Scientific method\n-Measurement and units',
      'tr':
          '-Fizik bilimine giriş\n-Fiziksel büyüklükler ve birimler\n-Vektörler ve skaler büyüklükler',
    },
    'pqhdpb1d': {
      'en': 'Force and Motion',
      'tr': 'Madde ve Özellikleri',
    },
    '59plpdc4': {
      'en':
          '-Newton\'s Laws of Motion\n-Velocity, acceleration, force calculations',
      'tr':
          '-Maddelerin sınıflandırılması\n-Katı, sıvı ve gazların özellikleri\n-Yoğunluk ve basınç',
    },
    'roq5yu3f': {
      'en': 'Energy',
      'tr': 'Hareket ve Kuvvet',
    },
    '8ov0ts1p': {
      'en':
          '-Work, power, types of energy (kinetic, potential)\n-Energy transformations and conservation',
      'tr':
          '-Hareket çeşitleri (düzgün doğrusal, değişen doğrusal)\n-Kuvvet ve hareket ilişkisi\n-Newton\'un hareket yasaları\n-Denge ve denge şartları',
    },
    'v8k9q1eg': {
      'en': 'Mechanics',
      'tr': 'Enerji',
    },
    'gdixmk67': {
      'en':
          '-Simple machines (lever, pulley, inclined plane)\n-Momentum and collisions',
      'tr':
          '-Enerji çeşitleri ve dönüşümleri\n-İş ve enerji ilişkisi\n-Mekanik enerji (potansiyel ve kinetik enerji)\n-Enerjinin korunumu',
    },
    '6ir61133': {
      'en': 'Thermodynamics',
      'tr': 'Isı ve Sıcaklık',
    },
    '32spxx03': {
      'en':
          '-Heat, temperature, thermal equilibrium\n-Heat transfer (conduction, convection, radiation)',
      'tr':
          '-Isı ve sıcaklık kavramları\n-Isı iletim yolları (iletim, konveksiyon, radyasyon)\n-Termodinamiğin temel prensipleri',
    },
    'mj6ip52p': {
      'en': 'Freshman Year',
      'tr': '10. Sınıf',
    },
    '1uc14dlm': {
      'en': 'Home',
      'tr': '',
    },
  },
  // phygrade_2
  {
    '1zkw35sk': {
      'en': 'Human Body Systems',
      'tr': 'Elektrik ve Manyetizma',
    },
    'hj1jpddq': {
      'en':
          '-Skeletal and muscular systems\n-Circulatory system\n-Digestive system\n-Respiratory system\n-Nervous system',
      'tr':
          '-Elektrik yükleri ve Coulomb yasası\n-Elektrik alan ve potansiyel\n-Akım, direnç ve Ohm yasası\n-Devre elemanları ve elektrik devreleri\n-Manyetik alan ve manyetik kuvvet\n-Elektromıknatıs ve elektromanyetik indüksiyon',
    },
    'xiootwd8': {
      'en': 'Homeostasis',
      'tr': 'Dalga ve Optik',
    },
    '0cpp51wt': {
      'en': '-Definition and importance of homeostasis\n-Feedback mechanisms',
      'tr':
          '-Dalga kavramı ve dalga çeşitleri (mekanik, elektromanyetik)\n-Dalga özellikleri (genlik, frekans, dalga boyu, hız)\n-Işığın yayılması ve kırılması\n-Aynalar ve mercekler\n-Prizmalar ve renkler',
    },
    '2tjk69qj': {
      'en': 'Genetics and Evolution',
      'tr': 'Mekanik',
    },
    'ejkq548m': {
      'en': '-Modern genetic principles\n-Theory of evolution and evidence',
      'tr':
          '-Kuvvet, hareket ve Newton yasaları\n-Dairesel hareket ve merkezcil kuvvet\n-Basit harmonik hareket\n-Enerji ve iş\n-İtme ve momentum',
    },
    '3qmkl9bx': {
      'en': 'Ecology',
      'tr': 'Basınç ve Kaldırma Kuvveti',
    },
    'atbvq2bm': {
      'en': 'Subtitle goes here...',
      'tr':
          '-Katı, sıvı ve gaz basıncı\n-Basınç hesaplamaları ve uygulamaları\n-Archimedes prensibi ve kaldırma kuvveti',
    },
    'alfpx4f1': {
      'en': 'Sophomore Year',
      'tr': '11. Sınıf',
    },
    '1t54i8vn': {
      'en': 'Home',
      'tr': '',
    },
  },
  // phygrade_3
  {
    'ez348hzg': {
      'en': 'Electricity and Magnetism',
      'tr': 'Mekanik',
    },
    '6f5hl77b': {
      'en':
          '-Electric charges, electric field and potential\n-Ohm\'s Law and electric circuits\n-Magnetic field and electromagnetism',
      'tr':
          '-İtme ve momentum\n-Çarpışmalar (esnek ve esnek olmayan)\n-Dönme hareketi ve açısal momentum\n-Kütle merkezi ve denge\n-İtme-momentum teoremi',
    },
    '8gjyga32': {
      'en': 'Optics',
      'tr': 'Elektromanyetizma',
    },
    '41ng9zvw': {
      'en':
          '-Light waves and properties\n-Reflection and refraction\n-Lenses and mirrors',
      'tr':
          '-Elektrik akımı ve devreler\n-Direnç, kapasitans ve indüktans\n-Manyetik alan ve kuvvetler\n-Elektromıknatıslar ve endüksiyon\n-Alternatif akım devreleri',
    },
    '8mxy1v44': {
      'en': 'Modern Physics',
      'tr': 'Modern Fizik',
    },
    '88z4d38s': {
      'en':
          '-Basics of quantum mechanics\n-Atomic models and spectra\n-Radioactivity and nuclear physics',
      'tr':
          '-Atom modelleri ve kuantum teorisi\n-Fotoelektrik olay ve Compton olayı\n-Atomun yapısı ve çekirdek reaksiyonları\n-Radyoaktivite ve yarı ömür\n-Nükleer enerji ve uygulamaları',
    },
    'zpmvn8ru': {
      'en': 'Junior Year',
      'tr': '12. Sınıf',
    },
    'trpcta01': {
      'en': 'Home',
      'tr': '',
    },
  },
  // phygrade_4
  {
    'cwh3z2dh': {
      'en': 'Modern Physics',
      'tr': 'Modern Fizik',
    },
    'ot66vbkd': {
      'en':
          '-Theory of relativity\n-Quantum mechanics and wave-particle duality\n-Atomic and nuclear physics',
      'tr':
          '-Özel görelilik teorisi\n-Kuantum mekaniği ve temel prensipler\n-Atom modelleri ve atom spektrumları\n-Çekirdek fiziği ve nükleer reaksiyonlar\n-Parçacık fiziği ve temel kuvvetler',
    },
    '39hyx45g': {
      'en': 'Applied Physics',
      'tr': 'Dalga ve Optik',
    },
    'kih0r4hk': {
      'en':
          '-Electronic circuits and semiconductors\n-Mechatronics and robotics\n-Energy systems and renewable energy',
      'tr':
          '-Dalga hareketi ve dalga denklemi\n-Girişim ve kırınım\n-Polarizasyon ve çift kırılma\n-Lazerler ve uygulamaları',
    },
    'vetpjwb7': {
      'en': 'Astrophysics',
      'tr': 'Termodinamik',
    },
    '9hqn888h': {
      'en':
          '-Stars and galaxies\n-Cosmology and structure of the universe\n-Black holes and Big Bang theory',
      'tr':
          '-Termodinamiğin birinci ve ikinci yasaları\n-Isı makineleri ve verimlilik\n-Entropi kavramı\n-Termodinamik süreçler (izotermal, izobarik, izokorik, adyabatik)',
    },
    '0rc2n0rc': {
      'en': 'Title',
      'tr': 'Mekanik',
    },
    'nw346pth': {
      'en': 'Subtitle goes here...',
      'tr':
          '-Statik denge ve denge koşulları\n-Elastikiyet ve gerilme\n-Akışkanlar mekaniği\n-Hidrostatik ve hidrodinamik prensipler\n-Çembersel Hareket:\n   Açısal hız ve ivme\n   Merkezcil kuvvet ve ivme\n   Çembersel hareketin dinamikleri\n-Basit Harmonik Hareket:\n   Yaylar ve sarkaçlar\n   Hooke Yasası\n   Harmonik hareketin matematiksel tanımı\n',
    },
    'qbuu8ww2': {
      'en': 'Senior Year',
      'tr': '12.Sınıf',
    },
    'itaj0tfl': {
      'en': 'Home',
      'tr': '',
    },
  },
  // chemgrade_1
  {
    '5jn0nq79': {
      'en': 'Introduction to Chemistry',
      'tr': 'Kimya Bilimi',
    },
    'xmd5aikp': {
      'en': '-Chemical and physical changes\n-Mixtures and pure substances',
      'tr':
          '-Kimyanın doğası ve tarihçesi\n-Kimyanın alt dalları ve günlük yaşamdaki önemi\n-Temel kimyasal terimler ve kavramlar',
    },
    's9wi79iy': {
      'en': 'Atom and Periodic Table',
      'tr': 'Atom ve Periyodik Sistem',
    },
    'klblnw1c': {
      'en':
          '-Atomic models and structure\n-Periodic table organization and element properties',
      'tr':
          '-Atomun yapısı (proton, nötron, elektron)\n-Atom modelleri (Dalton, Thomson, Rutherford, Bohr)\n-Periyodik cetvel ve elementlerin sınıflandırılması\n-Periyodik özellikler (iyonlaşma enerjisi, elektronegatiflik)',
    },
    '2o1olzhi': {
      'en': 'Chemical Bonds',
      'tr': 'Kimyasal Türler Arası Etkileşimler',
    },
    'mdz3b6cc': {
      'en':
          '-Ionic, covalent, and metallic bonds\n-Molecular geometry and polarity',
      'tr':
          '-Moleküler ve iyonik bağlar\n-Van der Waals kuvvetleri, hidrojen bağları\n-Kimyasal formüller ve adlandırma',
    },
    '25wftsyp': {
      'en': 'Chemical Reactions',
      'tr': 'Kimyasal Tepkimeler',
    },
    'ljf1a2ah': {
      'en':
          '-Types of reactions (synthesis, decomposition, displacement)\n-Chemical equations and balancing',
      'tr':
          '-Kimyasal tepkime çeşitleri (sentez, ayrışma, yer değiştirme, çift yer değiştirme)\n-Denkleştirilmiş kimyasal denklemler\n-Tepkime hızı ve katalizörler',
    },
    '0jkc8pad': {
      'en': 'States of Matter',
      'tr': 'Maddenin Halleri',
    },
    'a2113ler': {
      'en':
          '-Properties of solids, liquids, gases, plasmas\n-Phase changes and energy relationship',
      'tr':
          '-Katı, sıvı ve gazlar\n-Faz değişimleri ve faz diyagramları\n-Gaz yasaları (Boyle, Charles, Avogadro)',
    },
    '04skkwvq': {
      'en': 'Freshman Year',
      'tr': '9.Sınıf',
    },
    'xkjf4t2b': {
      'en': 'Home',
      'tr': '',
    },
  },
  // chemgrade_2
  {
    'lj6eilor': {
      'en': 'Chemical Reactions',
      'tr': 'Maddenin Yapısı',
    },
    '60mu7cqu': {
      'en':
          '-Types of reactions and examples\n-Factors affecting reaction rate',
      'tr':
          '-Kimyasal bağlar (iyonik, kovalent, metalik)\n-Molekül geometrisi ve VSEPR teorisi\n-Hibritleşme ve moleküler orbitaller',
    },
    'ivnbrmpm': {
      'en': 'States of Matter and Properties',
      'tr': 'Kimyasal Hesaplamalar',
    },
    'zvkmp2i4': {
      'en':
          '-Properties of solids, liquids, gases\n-Phase changes and energy relationships',
      'tr':
          '-Mol kavramı ve Avogadro sayısı\n-Mol-kütle hesaplamaları\n-Kimyasal denklemler ve stoikiyometri\n-Yüzde verim ve limit reaktör hesaplamaları',
    },
    'ex9onfhj': {
      'en': 'Solutions',
      'tr': 'Çözeltiler',
    },
    '13v123ze': {
      'en':
          '-Solubility and components of solutions\n-Molality, molarity, concentration calculations',
      'tr':
          '-Çözünürlük ve çözünme olayları\n-Çözelti derişimi (mol kesri, molarite, molalite)\n-Koligatif özellikler (donma noktası alçalması, kaynama noktası yükselmesi)',
    },
    '57s6et5l': {
      'en': 'Acids and Bases',
      'tr': 'Asitler ve Bazlar',
    },
    'hgi9p5bf': {
      'en':
          '-Acid-base theories (Arrhenius, Brønsted-Lowry, Lewis)\n-pH and pOH concepts\n-Neutralization reactions',
      'tr':
          '-Asit-baz teorileri (Arrhenius, Brønsted-Lowry, Lewis)\n-pH ve pOH hesaplamaları\n-Asit-baz denge ve tampon çözeltiler\n-Titrasyon ve nötralleşme tepkimeleri',
    },
    'll96mnys': {
      'en': 'Chemical Equilibrium',
      'tr': '9.5. Veri',
    },
    'bvkp7glt': {
      'en':
          '-Equilibrium constant and calculations\n-Le Chatelier\'s principle',
      'tr':
          '9.5.1. Merkezi Eğilim ve Yayılım Ölçüleri\n9.5.2. Verilerin Grafikle Gösterilmesi',
    },
    'gqevfy4e': {
      'en': 'Sophomore Year',
      'tr': '10.Sınıf',
    },
    'spc40kk3': {
      'en': 'Home',
      'tr': '',
    },
  },
  // chemgrade_3
  {
    'lp70oaoc': {
      'en': 'Chemical Thermodynamics',
      'tr': 'Kimyasal Termodinamik',
    },
    'svxkmkow': {
      'en': '-Energy changes and enthalpy\n-Entropy and free energy',
      'tr':
          '-Enerji kavramı ve termodinamiğin birinci yasası\n-Entalpi, entropi ve Gibbs serbest enerjisi\n-Isı ve iş ilişkisi',
    },
    'x6f8lbzk': {
      'en': 'Chemical Kinetics',
      'tr': 'Kimyasal Kinetik',
    },
    '3v55hq1t': {
      'en': '-Reaction rates and mechanisms\n-Activation energy and catalysts',
      'tr':
          '-Tepkime hızı ve hız denklemleri\n-Aktivasyon enerjisi ve katalizörlerin etkisi\n-Tepkime mekanizmaları ve hız belirleyici adımlar',
    },
    'vhu6jb4e': {
      'en': 'Chemical Bonds',
      'tr': 'Kimyasal Denge',
    },
    'b7e43v8r': {
      'en':
          '-Ionic, covalent, and metallic bonds\n-Molecular geometry and polarity',
      'tr':
          '-Denge kavramı ve denge sabiti (Kc, Kp)\n-Le Chatelier ilkesi ve dengeye etki eden faktörler\n-Heterojen ve homojen dengeler',
    },
    'loconupd': {
      'en': 'Chemical Reactions',
      'tr': 'Elektrokimya',
    },
    'z44aimd6': {
      'en':
          '-Types of reactions (synthesis, decomposition, displacement)\n-Chemical equations and balancing',
      'tr':
          '-Oksidasyon ve indirgenme tepkimeleri\n-Galvanik ve elektrolitik hücreler\n-Elektrokimyasal seri ve pil potansiyelleri',
    },
    'mgc4rie9': {
      'en': 'States of Matter',
      'tr': '9.5. Veri',
    },
    'bph2f0nv': {
      'en':
          '-Properties of solids, liquids, gases, plasmas\n-Phase changes and energy relationship',
      'tr':
          '9.5.1. Merkezi Eğilim ve Yayılım Ölçüleri\n9.5.2. Verilerin Grafikle Gösterilmesi',
    },
    '5rw0x0wt': {
      'en': 'Junior Year',
      'tr': '11.Sınıf',
    },
    'l22yo4qm': {
      'en': 'Home',
      'tr': '',
    },
  },
  // chemgrade_4
  {
    'ff4rv9ge': {
      'en': 'Atomic Structure and Properties',
      'tr': '12.Sınıf Temel Düzey',
    },
    'wjozxg5p': {
      'en':
          '-Quantum mechanical model of the atom\n-Electron configurations and periodic trends\n-Photoelectron spectroscopy',
      'tr': 'Sayılar ve Cebir\nVeri, Sayma ve Olasılık\nGeometri',
    },
    'dt7ic8aj': {
      'en': 'Molecular and Ionic Compound Structure and Properties',
      'tr': '12.1. Üstel ve Logaritmik Fonksiyonlar',
    },
    'zhgm3vwt': {
      'en':
          '-Lewis structures, VSEPR theory, and molecular shapes\n-Intermolecular forces and properties of solids and liquids\n-Ionic and covalent bonding',
      'tr':
          '12.1.1. Üstel Fonksiyon\n12.1.2. Logaritma Fonksiyonu\n12.1.3. Üstel, Logaritmik Denklemler ve Eşitsizlikler',
    },
    '45k824nb': {
      'en': 'Intermolecular Forces and Properties',
      'tr': '12.2. Diziler',
    },
    'xcbklkot': {
      'en':
          '-Types of intermolecular forces (dipole-dipole, London dispersion, hydrogen bonding)\n-Properties of solutions and colligative properties',
      'tr': '12.2.1. Gerçek Sayı Dizileri',
    },
    '43e70hpn': {
      'en': 'Chemical Reactions',
      'tr': '12.3. Trigonometri',
    },
    'bjsq93lm': {
      'en':
          '-Balancing chemical equations\n-Types of reactions (synthesis, decomposition, single replacement, double replacement, combustion)\n-Stoichiometry and limiting reactants',
      'tr':
          '12.3.1. Toplam-Fark ve İki Kat Açı Formülleri\n12.3.2. Trigonometrik Denklemler',
    },
    '086d5q87': {
      'en': 'Kinetics',
      'tr': '12.4. Dönüşümler',
    },
    'l3jqn2us': {
      'en':
          '-Reaction rates and rate laws\n-Activation energy and reaction mechanisms\n-Catalysts and their effect on reaction rates',
      'tr': '12.4.1. Analitik Düzlemde Temel Dönüşümler',
    },
    '3dt83s7z': {
      'en': 'Thermodynamics',
      'tr': '12.5. Türev',
    },
    'xve1z38m': {
      'en':
          '-Laws of thermodynamics\n-Enthalpy, entropy, and Gibbs free energy\n-Heat transfer and calorimetry',
      'tr':
          '12.5.1. Limit ve Süreklilik\n12.5.2. Anlık Değişim Oranı ve Türev\n12.5.3. Türev Uygulamaları',
    },
    'zpdivn8r': {
      'en': 'Equilibrium',
      'tr': '12.6. İntegral',
    },
    'no6e8tva': {
      'en':
          '-Dynamic equilibrium and the equilibrium constant\n-Le Chatelier\'s principle\n-Solubility product constant (Ksp)',
      'tr':
          '12.6.1. Belirsiz İntegral\n12.6.2. Belirli İntegral ve Uygulamaları',
    },
    'zc5pxq60': {
      'en': 'Acids and Bases',
      'tr': '12.7. Analitik Geometri',
    },
    'ptdz4zq5': {
      'en':
          '-Acid-base theories (Arrhenius, Brønsted-Lowry, Lewis)\n-pH, pOH, and the pH scale\n-Titrations and buffer solutions',
      'tr': '12.7.1. Çemberin Analitik İncelenmesi',
    },
    'ik1evwj3': {
      'en': 'Senior Year',
      'tr': '12.Sınıf',
    },
    'bz4bobj9': {
      'en': 'Home',
      'tr': '',
    },
  },
  // biograde_1
  {
    'hg3er833': {
      'en': 'Cell Structure and Function',
      'tr': 'Canlıların Ortak Özellikleri',
    },
    '1evk7f4c': {
      'en':
          '-Cell theory\n-Prokaryotic and eukaryotic cells\n-Cell organelles and functions',
      'tr':
          '-Canlıların temel özellikleri\n-Hücre teorisi\n-Prokaryot ve ökaryot hücreler',
    },
    'ox8f3d5r': {
      'en': 'Cell Membranes and Transport',
      'tr': 'Hücre Yapısı ve İşlevi',
    },
    '1t9rfblu': {
      'en':
          '-Passive transport (diffusion, osmosis)\n-Active transport (pumps, endocytosis, exocytosis)',
      'tr':
          '-Hücre zarının yapısı ve işlevi\n-Hücre organelleri ve görevleri\n-Hücre bölünmesi (mitoz ve mayoz)',
    },
    'shtesutj': {
      'en': 'Energy Transformations',
      'tr': 'Metabolizma',
    },
    'dfjuus5i': {
      'en': '-Photosynthesis and cellular respiration\n-Role of ATP',
      'tr':
          '-Enzimler ve enzimatik tepkimeler\n-Fotosentez ve kemosentez\n-Hücresel solunum',
    },
    'go8nrzt2': {
      'en': 'Genetics',
      'tr': 'Ekoloji',
    },
    'iumxm45h': {
      'en':
          '-DNA and RNA structure\n-Genetic code and protein synthesis\n-Mendelian genetics and inheritance rules',
      'tr':
          '-Ekosistemler ve biyomlar\n-Popülasyon dinamikleri\n-Madde döngüleri (karbon, azot, su döngüsü)',
    },
    'kjkqdwgg': {
      'en': 'Freshman Year',
      'tr': '9.Sınıf',
    },
    'u323x9s1': {
      'en': 'Home',
      'tr': '',
    },
  },
  // biograde_2
  {
    'c9v0v2ea': {
      'en': 'Human Body Systems',
      'tr': 'Genetik ve Kalıtım',
    },
    '7ib0p6qm': {
      'en':
          '-Skeletal and muscular systems\n-Circulatory system\n-Digestive system\n-Respiratory system\n-Nervous system',
      'tr':
          '-Mendel genetiği ve temel kavramlar\n-Genetik çaprazlamalar ve kalıtım kuralları\n-Genetik çeşitlilik ve mutasyonlar',
    },
    'ks7ay3ql': {
      'en': 'Homeostasis',
      'tr': 'Moleküler Biyoloji',
    },
    '4kcdrqqk': {
      'en': '-Definition and importance of homeostasis\n-Feedback mechanisms',
      'tr':
          '-DNA\'nın yapısı ve işlevi\n-RNA ve protein sentezi\n-Genetik mühendisliği ve biyoteknoloji',
    },
    'fi68i72l': {
      'en': 'Genetics and Evolution',
      'tr': 'Bitki Biyolojisi',
    },
    'olusbhsv': {
      'en': '-Modern genetic principles\n-Theory of evolution and evidence',
      'tr':
          '-Bitkilerin yapısı ve işlevi\n-Bitki hormonları ve büyüme\n-Bitki üreme sistemleri',
    },
    'tehkieus': {
      'en': 'Ecology',
      'tr': 'Hayvan Biyolojisi',
    },
    'u6gc1ols': {
      'en':
          '-Ecosystem dynamics\n-Population dynamics and environmental factors',
      'tr':
          '-Hayvanların yapısı ve işlevi\n-Hayvan fizyolojisi (dolaşım, sindirim, solunum, sinir sistemi)\n-Hayvan davranışları ve adaptasyonlar',
    },
    '1tqbs9bj': {
      'en': 'Sophomore Year',
      'tr': '10.Sınıf',
    },
    'tgkcp3fc': {
      'en': 'Home',
      'tr': '',
    },
  },
  // biograde_3
  {
    '0nv3wgul': {
      'en': 'Cell Biology',
      'tr': 'İnsan Biyolojisi',
    },
    'qcr4f2fc': {
      'en':
          '-Cell theory and cell structures\n-Structure and function of cell membranes',
      'tr':
          '-İnsanın anatomisi ve fizyolojisi\n-İnsanın sinir sistemi ve duyu organları\n-İnsanın hormon sistemi ve endokrinoloji\n-Üreme ve gelişim',
    },
    '8v50ybe8': {
      'en': 'Genetics and Molecular Biology',
      'tr': 'Ekoloji ve Çevre Biyolojisi',
    },
    '9iv0gyg0': {
      'en':
          '-DNA replication and repair\n-Gene expression and control\n-Recombinant DNA technology',
      'tr':
          '-Popülasyon ekolojisi ve ekosistem dinamikleri\n-Biyolojik çeşitlilik ve korunması\n-Çevre sorunları ve sürdürülebilirlik',
    },
    'qcbajxju': {
      'en': 'Cellular Respiration and Photosynthesis',
      'tr': 'Mikrobiyoloji ve Biyoteknoloji',
    },
    '9vf5mhgp': {
      'en':
          '-Metabolic pathways and energy transformations\n-ATP synthesis and usage',
      'tr':
          '-Mikroorganizmalar ve insan sağlığı\n-Mikrobiyal genetik ve biyoteknoloji uygulamaları\n-Antibiyotikler ve bağışıklık',
    },
    'pgnuudyb': {
      'en': 'Acids and Bases',
      'tr': 'Başlık',
    },
    'j7u6dpkc': {
      'en':
          '-Acid-base theories (Arrhenius, Brønsted-Lowry, Lewis)\n-pH and pOH concepts\n-Neutralization reactions',
      'tr': '',
    },
    'g41g56rj': {
      'en': 'Molecular Genetics',
      'tr': '',
    },
    'blcuq7lb': {
      'en':
          '-Genetic code and protein synthesis\n-Genetic engineering and applications',
      'tr': '',
    },
    '7j5sb70j': {
      'en': 'Junior Year',
      'tr': '11.Sınıf',
    },
    'nabiwqoo': {
      'en': 'Home',
      'tr': '',
    },
  },
  // biograde_4
  {
    'tj2hgt4b': {
      'en': 'Biotechnology and Genetic Engineering',
      'tr': 'Nörobiyoloji',
    },
    '27ty56qn': {
      'en':
          '-DNA technology and gene therapy\n-Bioinformatics and genomics\n-Ethical and social issues',
      'tr':
          '-Sinir sistemi yapısı ve işlevi\n-Nöronlar ve sinaptik iletim\n-Beyin ve davranışlar',
    },
    'xuzwmswi': {
      'en': 'Human Physiology',
      'tr': 'Gelişim Biyolojisi',
    },
    '2e68ipwu': {
      'en':
          '-Advanced anatomy and physiology\n-Nervous system and neurobiology\n-Hormonal systems and homeostasis',
      'tr':
          '-Gelişim biyolojisinin temel prensipleri\n-Embriyonik gelişim ve farklılaşma\n-Genetik kontrol mekanizmaları',
    },
    '5alyxsoo': {
      'en': 'Ecology and Environmental Science',
      'tr': 'Ekoloji ve Çevre Biyolojisi',
    },
    'ukjbf1je': {
      'en':
          '-Ecosystem dynamics\n-Conservation biology and biodiversity\n-Environmental issues and sustainability',
      'tr':
          '-İleri ekosistem dinamikleri\n-Çevre sorunları ve ekosistem hizmetleri\n-Küresel değişim ve biyolojik etkileri',
    },
    'smfmgu6t': {
      'en': 'Senior Year',
      'tr': '12.Sınıf',
    },
    'udy7gja0': {
      'en': 'Home',
      'tr': '',
    },
  },
  // Password_reset
  {
    'xdwvk8lh': {
      'en': 'Back',
      'tr': '',
    },
    'ooifohuk': {
      'en': 'Forgot Password',
      'tr': 'Şifremi Unuttum',
    },
    'pc12py7q': {
      'en':
          'We will send you an email with a link to reset your password, please enter the email associated with your account below.',
      'tr':
          'Hesabınızla ilişkilendirilen e-posta adresini aşağıya girin, şifrenizi sıfırlamak için size bir bağlantı içeren e-posta göndereceğiz.',
    },
    'qhl47qow': {
      'en': 'Your email address...',
      'tr': 'Email adresiniz...',
    },
    'plz0n6jc': {
      'en': 'Enter your email...',
      'tr': 'Email adresinizi girin...',
    },
    'zr99c3tb': {
      'en': 'Send Link',
      'tr': 'Maili Gönder',
    },
    '248lyikw': {
      'en': 'Home',
      'tr': '',
    },
  },
  // History
  {
    'dub0cdlh': {
      'en': 'History Class',
      'tr': 'Tarih Dersi',
    },
    '22uq2x57': {
      'en': 'Freshman Year',
      'tr': '9. Sınıf Konuları',
    },
    '7fi47dp4': {
      'en': '',
      'tr': '',
    },
    'k03j3gxy': {
      'en': 'Sophomore Year',
      'tr': '10. Sınıf Konuları',
    },
    'hotbw91z': {
      'en': '',
      'tr': '',
    },
    '1nnubl94': {
      'en': 'Junior Year',
      'tr': '11. Sınıf Konuları',
    },
    'dcsmp2fp': {
      'en': '',
      'tr': '',
    },
    'xaxj1nqk': {
      'en': 'Senior Year',
      'tr': 'İnkılap Tarihi ve ATATÜRKÇÜLÜK',
    },
    '8lve3sua': {
      'en': '',
      'tr': '',
    },
    'qk8k5a6w': {
      'en': 'F',
      'tr': '9. Sınıf Yeni Müfredat Konuları',
    },
    'a4d75e5l': {
      'en': '',
      'tr': '',
    },
    '9b5o6tk0': {
      'en': 'Home',
      'tr': '',
    },
  },
  // history_grade1
  {
    '2qs1xz5h': {
      'en': 'Freshman Year',
      'tr': '9. Sınıf',
    },
    'cny94ilz': {
      'en': 'Pre-Columbian to Colonial America',
      'tr': 'Tarih ve Zaman',
    },
    't3rv8yjg': {
      'en':
          '-Indigenous Peoples of North America\n-European Exploration and the Columbian Exchange\n-Colonization and Settlement of the Americas',
      'tr': '-',
    },
    'xzvs3o76': {
      'en': 'The American Revolution',
      'tr': 'İnsanlığın İlk Dönemleri',
    },
    '6djbh363': {
      'en':
          '-Causes of the Revolution\n-Key Figures and Battles\n-Declaration of Independence and Outcomes',
      'tr': '-',
    },
    'vs5zxz4e': {
      'en': 'Founding the New Nation',
      'tr': 'Orta Çağ\'da Dünya',
    },
    'omy1ck8x': {
      'en':
          '-Articles of Confederation\n-The Constitutional Convention\n-Ratification of the Constitution and the Bill of Rights',
      'tr': '-',
    },
    'qplv84bq': {
      'en': 'The Early Republic',
      'tr': 'İlk ve Orta Çağlarda Türk Dünyası',
    },
    'mzbm0mfk': {
      'en':
          '-Washington’s Presidency and the New Government\n-Expansion and the War of 1812\n-Economic and Political Developments',
      'tr': '-',
    },
    'gdfq61u3': {
      'en': '',
      'tr': 'İslam Medeniyetinin Doğuşu',
    },
    '03ti7bhw': {
      'en': '',
      'tr': '-',
    },
    'bdst88ms': {
      'en': '',
      'tr': 'Türklerin İslamiyet\'i Kabulü ve İlk Türk İslam Devletleri',
    },
    'mh0ol965': {
      'en': '',
      'tr': '-',
    },
    'rmm7cf66': {
      'en': 'Home',
      'tr': '',
    },
  },
  // history_grade2
  {
    'squn3cjx': {
      'en': 'Sophomore Year',
      'tr': '10. Sınıf',
    },
    'zrzbvfpd': {
      'en': 'Westward Expansion and Manifest Destiny',
      'tr': 'Yerleşme ve Devletleşme Sürecinde Selçuklu Türkiyesi',
    },
    '6n0waog2': {
      'en':
          '-Louisiana Purchase and Lewis and Clark Expedition\n-Indian Removal Act and the Trail of Tears\n-The Concept of Manifest Destiny',
      'tr': '-',
    },
    'eq6b9nvu': {
      'en': 'The Civil War and Reconstruction',
      'tr': 'Beylikten Devlete Osmanlı Siyaseti (1302-1453)',
    },
    'en30pos5': {
      'en':
          '-Causes of the Civil War, including\n-Sectionalism and Slavery\n-Major Battles and Strategies\n-Reconstruction Policies and their Impact',
      'tr': '-',
    },
    'ehft4xq3': {
      'en': 'Industrialization and the Gilded Age',
      'tr': 'Devletleşme Sürecinde Savaşçılar ve Askerler',
    },
    'estvp24n': {
      'en':
          '-Rise of Industrial America\n-Labor Movements and Social Changes\n-Political Corruption and Reform Movements',
      'tr': '-',
    },
    '84jqj89i': {
      'en': '',
      'tr': 'Beylikten Devlete Osmanlı Devleti',
    },
    'g5ta8yxl': {
      'en': '',
      'tr': '-',
    },
    'p904huzp': {
      'en': '',
      'tr': 'Dünya Gücü Osmanlı (1453-1595)',
    },
    'rodins0z': {
      'en': '',
      'tr': '-',
    },
    '44g3d4q3': {
      'en': '',
      'tr': 'Sultan ve Osmanlı Merkez Teşkilatı',
    },
    'omilyzdg': {
      'en': '',
      'tr': '-',
    },
    'm315vtqr': {
      'en': '',
      'tr': 'Klasik Çağda Osmanlı Toplum Düzeni',
    },
    '3qj6qj4e': {
      'en': '',
      'tr': '-',
    },
    'oezwi8yn': {
      'en': 'Home',
      'tr': '',
    },
  },
  // history_grade3
  {
    '51252lk1': {
      'en': 'Junior Year',
      'tr': '11. Sınıf',
    },
    '4sb3fypm': {
      'en': 'The Progressive Era and Imperialism',
      'tr': 'Değişen Dünya Dengeleri Karşısında Osmanlı Siyaseti (1595-1774)',
    },
    'ecmn35pm': {
      'en':
          '-Progressive Reforms and Key Figures\n-U.S. Expansion Overseas\n-The Spanish-American War',
      'tr': '-',
    },
    'pbz9zxz9': {
      'en': 'World War I and the Roaring Twenties',
      'tr': 'Değişim Çağında Osmanlı ve Avrupa',
    },
    'asvv0cbd': {
      'en':
          '-Causes and Consequences of World War I\n-The Treaty of Versailles and its Impact\n-Social and Cultural Changes of the 1920s',
      'tr': '-',
    },
    '591j3cvk': {
      'en': 'The Great Depression and New Deal',
      'tr': 'Devrimler Çağında Değişen Devlet-Toplum İlişkileri',
    },
    '2ykmf7fs': {
      'en':
          '-Causes of the Great Depression\n-Major New Deal Programs\n-Effects on American Society',
      'tr': '-',
    },
    '1n848shx': {
      'en': '',
      'tr': 'Uluslararası İlişkilerde Denge Stratejisi (1774-1914)',
    },
    'a0twvwwr': {
      'en': '',
      'tr': '-',
    },
    'j48f1ypv': {
      'en': '',
      'tr': 'XIX ve XX. Yüzyılda Değişen Sosyo-Ekonomik Hayat',
    },
    'bqjjvn7m': {
      'en': '',
      'tr': '-',
    },
    'z3k04pug': {
      'en': 'Home',
      'tr': '',
    },
  },
  // history_grade4
  {
    'yeg87sn1': {
      'en': 'Senior Year',
      'tr': 'İnkılap Tarihi ve Atatürkçülük',
    },
    'h07v0asd': {
      'en': 'Introduction to Physics',
      'tr': 'XX. Yüzyıl Başlarında Osmanlı Devleti ve Dünya',
    },
    'fgkuo6ir': {
      'en': '-Scientific method\n-Measurement and units',
      'tr':
          '-Mustafa Kemal\'in Eğitim ve Askerlik Hayatı\n-XX. Yüzyıl Başlarında Osmanlı Devleti\n-I. Dünya Savaşı ve Osmanlı Devleti\n-I. Dünya Savaşı\'nın Sonuçları',
    },
    'a132whxa': {
      'en': 'Force and Motion',
      'tr': 'Milli Mücadele',
    },
    '962su3yu': {
      'en':
          '-Newton\'s Laws of Motion\n-Velocity, acceleration, force calculations',
      'tr':
          '-Kuva-yi Milliye\'nin Oluşumundan Büyük Millet Meclisine\n-Büyük Millet Meclisinin Açılış Süreci ve Sonrasındaki Gelişmeler\n-Sevr Antlaşması\n-Milli Mücadele\'de Doğu ve Güney Cephesi\n-Milli Mücadele\'de Batı Cephesi\n-Mudanya Ateşkes Antlaşması ve Lozan Barış Antlaşması\n-Milli Mücadele Kahramanları',
    },
    'bnbcymrj': {
      'en': 'Energy',
      'tr': 'Atatürkçülük ve Türk İnkılabı',
    },
    'mt0k4zxn': {
      'en':
          '-Work, power, types of energy (kinetic, potential)\n-Energy transformations and conservation',
      'tr':
          '-Atatürk İlkeleri\n-Siyasi Alanda Meydana Gelen Gelişmeler\n-Hukuk Alanında Meydana Gelen Gelişmeler\n-Eğitim ve Kültür Alanlarında İnkılaplar ve Gelişmeler\n-Toplumsal Alanda İnkılaplar ve Gelişmeler\n-Ekonomi Alanında Meydana Gelen Gelişmeler\n-Sağlık Alanında Meydana Gelen Gelişmeler\n-Atatürk İlke ve İnkılaplarını Oluşturan Temel Esaslar',
    },
    'q0nuh51p': {
      'en': 'Mechanics',
      'tr': 'İki Savaş Arasındaki Dönemde Türkiye ve Dünya',
    },
    'lfy0yd2u': {
      'en':
          '-Simple machines (lever, pulley, inclined plane)\n-Momentum and collisions',
      'tr':
          '-Atatürk Dönemi\'nde İç Politikadaki Gelişmeler\n-Atatürk Dönemi Türk Dış Politikasında Başlıca Gelişmeler\n-İki Dünya Savaşı Arasındaki Dönemde\nDünyada Meydana Gelen Gelişmeler\n-İki Savaş Arasındaki Dönemde Türkiye ve Dünya\n-Atatürk Dönemi\'nde İç Politikadaki Gelişmeler\n-Atatürk Dönemi Türk Dış Politikasında Başlıca Gelişmeler\n-İki Dünya Savaşı Arasındaki Dönemde Dünyada Meydana Gelen Gelişmeler',
    },
    '5iriv7no': {
      'en': '',
      'tr': 'II. Dünya Savaşı Sürecinde Türkiye ve Dünya',
    },
    'mt23ilp7': {
      'en': '',
      'tr':
          'II. Dünya Savaşı\nII. Dünya Savaşı\'nda Türkiye\nII. Dünya Savaşı\'nın Sonuçları',
    },
    '5b0v8e14': {
      'en': '',
      'tr': 'II. Dünya Savaşı Sonrasında Türkiye ve Dünya',
    },
    'k4g898ah': {
      'en': '',
      'tr':
          '-II. Dünya Savaşı Sonrası Türkiye\n-İki Kutuplu Dünya ve Türkiye\n-1950’li Yıllarda Türkiye',
    },
    'q7a9z233': {
      'en': '',
      'tr': 'Toplumsal Devrim Çağında Dünya ve Türkiye',
    },
    '6swl9uvh': {
      'en': '',
      'tr':
          '-1960 Sonrası Dünyadaki Gelişmeler\n-1960 Sonrası Türk Dış Politikasını Etkileyen Gelişmeler\n-1960 Sonrası Türkiye’de Yaşanan Siyasi, Ekonomik ve Sosyal Gelişmeler',
    },
    '4rpfk6sj': {
      'en': '',
      'tr': 'XXI. Yüzyılın Eşiğinde Türkiye ve Dünya',
    },
    'g7ein3es': {
      'en': '',
      'tr':
          '-1960 Sonrası Dünyadaki Gelişmeler\n-1960 Sonrası Türk Dış Politikasını Etkileyen Gelişmeler\n-1960 Sonrası Türkiye’de Yaşanan Siyasi, Ekonomik ve Sosyal Gelişmeler',
    },
    'ghcs3eye': {
      'en': 'Home',
      'tr': '',
    },
  },
  // change_language
  {
    'zpv0on5g': {
      'en': 'Select Language',
      'tr': 'Dili Seç',
    },
    'sm3bt8gd': {
      'en': 'English',
      'tr': 'English',
    },
    '3cmsbqkt': {
      'en': 'Türkçe',
      'tr': 'Türkçe',
    },
  },
  // Delete_account
  {
    'o8nsut1r': {
      'en': 'Are you sure?',
      'tr': 'Hesabını silmek istediğine emin misin?',
    },
    'b5ixqz8j': {
      'en': 'Yes',
      'tr': 'Evet',
    },
    'r3t78v74': {
      'en': 'Cancel',
      'tr': 'İptal',
    },
  },
  // Reser_sure
  {
    '3i0convu': {
      'en': 'Are you sure?',
      'tr': 'Emin misin?',
    },
    'yxi8052x': {
      'en':
          'Important Note: Please make sure that you receive the password reset email in your inbox. If you don\'t find the email in your inbox, please check your spam/junk folder as well. There is a possibility that the email might end up in the spam/junk folder.',
      'tr':
          'Önemli Not: Şifre sıfırlama e-postanızın gelen kutunuza ulaştığından emin olun. Eğer e-postayı gelen kutunuzda bulamazsanız, lütfen spam/junk klasörünüzü de kontrol edin. E-postanın spam/junk klasörüne düşme ihtimali bulunmaktadır.',
    },
    'ztwgjpw3': {
      'en': 'Yes',
      'tr': 'Evet',
    },
    'rgiv0wxk': {
      'en': 'Cancel',
      'tr': 'İptal',
    },
  },
  // change_name
  {
    'r3qiodj8': {
      'en': 'Edit Email',
      'tr': 'Emailini Değiştir',
    },
    '5xpu6guu': {
      'en': 'Email',
      'tr': 'Email',
    },
    'xfd75fz6': {
      'en': 'Confirm Email',
      'tr': 'Emailini Onayla',
    },
    'f48v6hl3': {
      'en': '',
      'tr': '',
    },
    'cdia7lu3': {
      'en': 'Done',
      'tr': 'Onayla',
    },
    'ewaj80tf': {
      'en': 'Cancel',
      'tr': 'İptal',
    },
  },
  // Miscellaneous
  {
    '5d7mvnp9': {
      'en': '',
      'tr': '',
    },
    'nnrawu3q': {
      'en': '',
      'tr': '',
    },
    'jcaat5ic': {
      'en': '',
      'tr': '',
    },
    'mfcd4463': {
      'en': '',
      'tr': '',
    },
    'gsqre4k8': {
      'en': '',
      'tr': '',
    },
    'th39r81r': {
      'en': '',
      'tr': '',
    },
    'pypfydx5': {
      'en': '',
      'tr': '',
    },
    'vim3gtnk': {
      'en': '',
      'tr': '',
    },
    'pk13kphn': {
      'en': '',
      'tr': '',
    },
    'rtg8skfc': {
      'en': '',
      'tr': '',
    },
    'u7p5b7ky': {
      'en': '',
      'tr': '',
    },
    '6ogwh19t': {
      'en': '',
      'tr': '',
    },
    'vgfblpgi': {
      'en': '',
      'tr': '',
    },
    '3p4sengd': {
      'en': '',
      'tr': '',
    },
    '0qurynhf': {
      'en': '',
      'tr': '',
    },
    'n6cmehwe': {
      'en': '',
      'tr': '',
    },
    'awisidup': {
      'en': '',
      'tr': '',
    },
    'am740k5j': {
      'en': '',
      'tr': '',
    },
    'jen00ga4': {
      'en': '',
      'tr': '',
    },
    'zg73z3bo': {
      'en': '',
      'tr': '',
    },
    '2r2i4fex': {
      'en': '',
      'tr': '',
    },
    '961b5xtm': {
      'en': '',
      'tr': '',
    },
    '7ve0xx9o': {
      'en': '',
      'tr': '',
    },
    'ipy29uu4': {
      'en': '',
      'tr': '',
    },
    'db0pfv53': {
      'en': '',
      'tr': '',
    },
  },
].reduce((a, b) => a..addAll(b));
