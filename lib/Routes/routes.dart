import 'package:get/get.dart';
import 'package:shopwithapi/pages/homescreen.dart';

class Routes {

  static List<GetPage> get pages => [
    GetPage(name: '/homescreen', page: () =>  HomeScreen())

  ];

}