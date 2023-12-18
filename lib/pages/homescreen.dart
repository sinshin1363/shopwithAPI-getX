import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shopwithapi/api/fetchfromapi.dart';
import 'package:shopwithapi/productmodel.dart';

class HomeScreen extends StatelessWidget {
    final Rx<Future<List<Product>>>  futureListProduct = fetchProduct().obs;


   HomeScreen({super.key});

  @override

  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('RestAPI Example')
	),
        body:  Center(
          child: FutureBuilder<List<Product>> (
            future: futureListProduct.value,
             builder: (context, snapshot){

              if(snapshot.hasData) {
                return Text('print API');
              }else{

                return const Center(
                  child: CircularProgressIndicator(),
                );
                
              }


             },
             
             
             
             )

          ,
        ),

    );
  }
}