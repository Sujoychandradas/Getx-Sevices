import 'package:get/route_manager.dart';

class Strings extends Translations {
  @override
  // TODO: implement keys
  Map<String, Map<String, String>> get keys => {
        'en_US': {
          'How are you?': 'How are you?',
          'Localization with GetX': 'Localization with GetX',
          'Bangla': 'Bangla',
          'English': 'English',
          'Hindi': 'Hindi'
        },
        'bn_BD': {
          'How are you?': 'আপনি কেমন আছেন?',
          'Localization with GetX': 'GetX দিয়ে লোকালাইজেশন',
          'Bangla': 'বাংলা',
          'English': 'ইংরেজি',
          'Hindi': 'হিন্দি'
        },
        'hi_IN': {
          'How are you?': 'आप कैसे हैं?',
          'Localization with GetX': 'GetX के साथ स्थानीयकरण',
          'Bangla': 'बांग्ला',
          'English': 'अंग्रेज़ी',
          'Hindi': 'हिंदी'
        },
      };
}
