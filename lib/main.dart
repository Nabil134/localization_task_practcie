import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'home_screen.dart';
import 'localization/localization_service.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final appTranslations = AppTranslations();
  await appTranslations.loadTranslations();


  runApp(MyApp(translations: appTranslations));
}

class MyApp extends StatelessWidget {
  final AppTranslations translations;
  const MyApp({super.key, required this.translations});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      translations: translations,
      locale: const Locale('en', 'US'),
      fallbackLocale: const Locale('en', 'US'),
      home: HomeScreen(),
    );
  }
}
