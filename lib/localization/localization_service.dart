import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class AppTranslations extends Translations {
  final Map<String, Map<String, String>> _keys = {};

  @override
  Map<String, Map<String, String>> get keys => _keys;

  /*loadTranslations start here*/
  Future<void> loadTranslations() async {
    // Load English JSON
    final enJson = await rootBundle.loadString('assets/lang/en.json');
    // Load Spanish JSON
    final esJson = await rootBundle.loadString('assets/lang/es.json');

    // Convert Json dynamic values to String for GetX because translation accept Map value in String
    _keys['en_US'] = Map<String, String>.from(json.decode(enJson).map((key,value)=>MapEntry(key, value.toString(),),),);
    _keys['es_ES'] = Map<String, String>.from(json.decode(esJson).map((key,value)=>MapEntry(key, value.toString(),),),);
    // Convert Json dynamic values to String for GetX because translation accept Map value in String
  }
/*loadTranslations end here*/
}
