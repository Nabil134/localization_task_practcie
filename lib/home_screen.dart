import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:localization_task/controller.dart';
class HomeScreen extends StatelessWidget {
  final languageController = Get.put(LanguageController(),);
   HomeScreen({super.key});

/*showLanguageDialog start here*/
  void showLanguageDialog(BuildContext context){
    Get.dialog(
      AlertDialog(
        title: const Text("Choose Language"),
        content: Column(children: [
          ListTile(
            title: Text('English'),
            onTap: (){
              Get.updateLocale(const Locale('en', 'US'),);
              Get.back();
            },
          ),
          ListTile(
            title: Text('Spanish'),
            onTap: (){
              Get.updateLocale(const Locale('es', 'ES'),);
              Get.back();
            },
          ),
        ],),
      ),
    );

  }
/*showLanguageDialog end here*/
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('Localization Task',style: TextStyle(color: Colors.white),),
        centerTitle: true,
      ),
      body:Align(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          Text('hi'.tr),
          Text('profession'.tr),
          Text('flutter'.tr),
          Text('code'.tr),
            SizedBox(height: 20,),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                foregroundColor: Colors.white,
                padding: EdgeInsets.symmetric(horizontal: 24, vertical: 14),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                elevation: 6,
              ),
              onPressed: () {
                showLanguageDialog(context);
              },
              child: Text(
                'change_language'.tr,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1.2,
                ),
              ),
            ),


          ],),
      ),
    );
  }
}
