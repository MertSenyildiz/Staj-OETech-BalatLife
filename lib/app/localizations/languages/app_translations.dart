import 'en_US/en_US_translations.dart';
import 'tr_TR/tr_TR_translations.dart';
abstract class AppTranslation {
  static Map<String, Map<String, String>>
  translations =
  {
    'en_US' : enUs,
    'tr_TR' : trTR
  };

}