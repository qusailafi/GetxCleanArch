 import 'package:apps/presentation/controlers/categories/categories_binding.dart';
import 'package:apps/presentation/ui/categories.dart';

 import 'package:flutter/material.dart';
 import 'package:get/get.dart';
void main() {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(  MyApp());
}

 class MyApp extends StatelessWidget {
   @override
   Widget build(BuildContext context) {

     return GetMaterialApp(
       initialBinding: CategoriesBinding(),
       home: Home(),
     );


   }
 }