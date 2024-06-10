import 'package:class_getx/controller/home_controller.dart';
import 'package:class_getx/view/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SecundScreen extends StatelessWidget {
  const SecundScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold( 
      appBar: AppBar(title: Text('Getx - Secund'),),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          MaterialButton(
          color: Colors.red,
          textColor: Colors.white,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
          onPressed: () {
            Get.offAll(HomeScreen());
          },
          child: Text('Home Screen'),
          ),

          GetBuilder<HomeController>(builder: (context){
            return Text(context.name);
          })
        ],
       ),
    );
  }
}