// ignore_for_file: file_names


import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:shopwithapi/productmodel.dart';

Future <List<Product>> fetchProduct() async {
 final response =await http.get(Uri.parse('https://fakestoreapi.com/products'));

if(response.statusCode ==  200) {
final parsed = json.decode(response.body).cast<Map<String, dynamic>>();
return parsed.map<Product>((json) => Product.fromJson(json)).toList;


}else{

return throw Exception('اتصال خود به اینترنت را چک کنید');
}

}