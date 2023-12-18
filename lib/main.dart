import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shopwithapi/Routes/routes.dart';
import 'package:shopwithapi/binidings/mybindings.dart';

void main() {
  runApp(const MyApp());

}


class MyApp extends StatelessWidget {
  
  
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  GetMaterialApp(
      theme: ThemeData(
        primaryColor: Colors.lightBlue,
      ) ,      
      debugShowCheckedModeBanner: false,
       initialRoute: '/homescreen',
       initialBinding: MyBindings(),
       getPages: Routes.pages,

      
    );
  }
}
