import 'dart:ui';

extension Helper on Locale {
  String toLanguage() {
    switch (languageCode) {
      case 'en':
        return 'English';
      case 'hi':
        return 'Hindi';
      case 'ta':
        return 'Tamil';
      default:
        return 'English';
    }
  }
}
