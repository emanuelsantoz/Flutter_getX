<<<<<<< HEAD
=======
import 'package:class_getx/first_screen.dart';
>>>>>>> dcef056df9bb557535c6c6c4831eb6b32c7bd6a1
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
            Get.offAll(const HomeScreen());
          },
          child: Text('Home Screen'),
          )
        ],
       ),
    );
  }
}