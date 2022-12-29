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
  // Miscellaneous
  {
    'icc990f6': {
      'en': '',
      'ko': '',
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
      'en': '',
      'ko': '',
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
