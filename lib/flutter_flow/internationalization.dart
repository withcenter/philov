import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

const _kLocaleStorageKey = '__locale_key__';

class FFLocalizations {
  FFLocalizations(this.locale);

  final Locale locale;

  static FFLocalizations of(BuildContext context) =>
      Localizations.of<FFLocalizations>(context, FFLocalizations)!;

  static List<String> languages() => ['en', 'ko'];

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
  int get languageIndex => languages().contains(languageCode)
      ? languages().indexOf(languageCode)
      : 0;

  String getText(String key) =>
      (kTranslationsMap[key] ?? {})[locale.toString()] ?? '';

  String getVariableText({
    String? enText = '',
    String? koText = '',
  }) =>
      [enText, koText][languageIndex] ?? '';
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
  // Entry
  {
    'ydc10k3v': {
      'en': 'PHILOV',
      'ko': '필러브',
    },
    'g0cwm93r': {
      'en': 'Home',
      'ko': '홈',
    },
  },
  // Home
  {
    'geucan20': {
      'en': 'PHILOV',
      'ko': '필러브',
    },
    'hwte7jtf': {
      'en': 'Home',
      'ko': '',
    },
  },
  // Login
  {
    '0sy4hdd2': {
      'en': 'Login',
      'ko': '로그인',
    },
    '2ajbg1vt': {
      'en': 'Input email address',
      'ko': '메일 주소를 입력하세요.',
    },
    'p27py12t': {
      'en': 'Email',
      'ko': '이메일',
    },
    '0o2c84bp': {
      'en': 'Input password',
      'ko': '비밀번호를 입력하세요.',
    },
    'juh70sqi': {
      'en': 'Password',
      'ko': '비밀번호',
    },
    '7ylxxpp3': {
      'en': 'Register',
      'ko': '회원 가입',
    },
    'dwkzl2u5': {
      'en': 'Input email address',
      'ko': '메일 주소를 입력하세요.',
    },
    'tl5b7rm3': {
      'en': 'Email',
      'ko': '이메일',
    },
    'wi50v8lb': {
      'en': 'Input password',
      'ko': '비밀번호를 입력하세요.',
    },
    'actxjkb3': {
      'en': 'Password',
      'ko': '비밀번호',
    },
    'sfgm06rq': {
      'en': 'Login',
      'ko': '로그인',
    },
    'rehegqhf': {
      'en': 'Phone Number\nEx) +82 10 1234 5678',
      'ko': '전화번호\n예) +82 10 1234 5678',
    },
    'i5kmdfzw': {
      'en': 'Phone Number',
      'ko': '전화번호',
    },
    'jhn6lc0p': {
      'en': 'Verify Phone Number',
      'ko': '전화번호 인증',
    },
    'm0d3wdqy': {
      'en': 'Home',
      'ko': '',
    },
  },
  // SmsVerification
  {
    'kw8rchyl': {
      'en': 'SMS Verification',
      'ko': '문자 인증',
    },
    '4gszsorg': {
      'en': 'Input SMS code.',
      'ko': '인증 코드를 입력하세요.',
    },
    'sng7k0kr': {
      'en': 'Home',
      'ko': '',
    },
  },
  // UserSearch
  {
    'q0b19o3s': {
      'en': 'User Search',
      'ko': '사용자 검색',
    },
    '0b6z289j': {
      'en': 'Chat',
      'ko': '채팅',
    },
    'nvo7t3k7': {
      'en': 'Home',
      'ko': '',
    },
  },
  // ChatRoom
  {
    'i22zh3xb': {
      'en': 'Input message',
      'ko': '메세지를 입력하세요.',
    },
    'ekk0em2s': {
      'en': 'Home',
      'ko': '',
    },
  },
  // Profile
  {
    'a812b9l5': {
      'en': 'Input name.',
      'ko': '이름을 입력하세요.',
    },
    'j6hvf1gz': {
      'en': 'Name',
      'ko': '이름',
    },
    '52buidnl': {
      'en': 'Select gender.',
      'ko': '성별을 선택하세요.',
    },
    '8wle9o9h': {
      'en': 'Male',
      'ko': '남자',
    },
    '5j3tk4id': {
      'en': 'Female',
      'ko': '여자',
    },
    'i0t6x9mz': {
      'en': 'gender',
      'ko': '성별',
    },
    '3qylmpep': {
      'en': 'Update profile',
      'ko': '회원 정보 수정',
    },
    'k527nnv0': {
      'en': 'Home',
      'ko': '',
    },
  },
  // Main
  {
    'u4s3i1gm': {
      'en': 'Logged in? ',
      'ko': '로그인 했나요?',
    },
    'h47rmugw': {
      'en': 'Register',
      'ko': '회원 가입 / 로그인',
    },
    '89czqcbo': {
      'en': 'Logout',
      'ko': '로그아웃',
    },
    'l0ejydpc': {
      'en': 'User List',
      'ko': '사용자 목록',
    },
    '1neh66ue': {
      'en': 'Profile',
      'ko': '프로필',
    },
  },
  // Miscellaneous
  {
    'icc990f6': {
      'en': 'Error: [error]',
      'ko': '에러: [error]',
    },
    '6wt343lf': {
      'en': '',
      'ko': '',
    },
    'k2djqr58': {
      'en': '',
      'ko': '',
    },
    'iyyq8tpi': {
      'en': '',
      'ko': '',
    },
    'ozqr3hpx': {
      'en': '',
      'ko': '',
    },
    'll98wnua': {
      'en': 'Enter SMS verification code.',
      'ko': '인증 번호를 입력하세요.',
    },
    'i960fcaz': {
      'en': '',
      'ko': '',
    },
    'mitoz7y5': {
      'en': '',
      'ko': '',
    },
    '0amdsor3': {
      'en': '',
      'ko': '',
    },
    'o6z2valk': {
      'en': '',
      'ko': '',
    },
    'si1rcwq5': {
      'en': '',
      'ko': '',
    },
    'awbuu6dh': {
      'en': '',
      'ko': '',
    },
    'g8ye3vt9': {
      'en': '',
      'ko': '',
    },
    'w9e2eq28': {
      'en': '',
      'ko': '',
    },
    'c1g4eq6m': {
      'en': '',
      'ko': '',
    },
    'z6q9pwx4': {
      'en': '',
      'ko': '',
    },
    'pkoiymyr': {
      'en': '',
      'ko': '',
    },
    '6varbxxs': {
      'en': '',
      'ko': '',
    },
    'nni14v46': {
      'en': '',
      'ko': '',
    },
    'jskeep1m': {
      'en': '',
      'ko': '',
    },
  },
].reduce((a, b) => a..addAll(b));
