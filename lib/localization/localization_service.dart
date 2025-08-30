import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class AppTranslations extends Translations {
  final Map<String, Map<String, String>> _keys = {};

  @override
  Map<String, Map<String, String>> get keys => _keys;

  /// Load JSON files dynamically
  Future<void> loadTranslations() async {
    final enJson = await rootBundle.loadString('assets/lang/en.json');
    final esJson = await rootBundle.loadString('assets/lang/es.json');

    _keys['en_US'] = Map<String, String>.from(json.decode(enJson));
    _keys['es_ES'] = Map<String, String>.from(json.decode(esJson));
  }
}
