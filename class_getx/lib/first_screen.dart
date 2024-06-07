import 'package:class_getx/view/screens/home_screen.dart';
import 'package:class_getx/second_screend.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold( 
      appBar: AppBar(title: Text('Getx - First'),),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          MaterialButton(
          color: Colors.red,
          textColor: Colors.white,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
          onPressed: () {
            Get.back(result: const HomeScreen());
            Get.to(const SecundScreen());
          },
          child: Text('Second Screen'),
          )
        ],
       ),
    );
  }
}