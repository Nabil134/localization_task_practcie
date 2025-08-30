import 'dart:ui';

import 'package:get/get.dart';

class LanguageController extends GetxController{
  var locale = const Locale('en','US');//default language set
  /*changeLanguage start here*/
  void changeLanguage(String langCode,String countryCode){
    locale = Locale(langCode,countryCode);//update language
    Get.updateLocale(locale);//refresh UI with new locale
  }
/*changeLanguage end here*/
}