import 'package:flutter/material.dart';

class L10n {
  static final all = [
    const Locale('en'),
    const Locale('ar'),
    const Locale('hi'),
    const Locale('es'),
    const Locale('de'),
    const Locale('nl'),
    const Locale('tr'),
  ];

  static String getFlag(String code) {
    switch (code) {
      case 'ar':
        return '🇦🇪';
      case 'hi':
        return '🇮🇳';
      case 'es':
        return '🇪🇸';
      case 'de':
        return '🇩🇪';
      case 'nl':
        return '🇳🇱';
      case 'tr':
        return '🇹🇷';
      case 'en':
      default:
        return '🇺🇸';
    }
  }
}
