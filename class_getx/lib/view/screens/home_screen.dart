<<<<<<< HEAD
import 'package:class_getx/view/screens/first_screen.dart';
=======
import 'package:class_getx/first_screen.dart';
import 'package:class_getx/models/home_controller.dart';
>>>>>>> dcef056df9bb557535c6c6c4831eb6b32c7bd6a1
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
<<<<<<< HEAD
        backgroundColor: Colors.amberAccent,
        actions: [
          TextButton(
              onPressed: () {
                Get.to( () => const FirstScreen());
              },
              child: const Text(
                'Next',
                style: TextStyle(color: Colors.black),
              ))
        ],
=======
>>>>>>> dcef056df9bb557535c6c6c4831eb6b32c7bd6a1
        title: Text(
          'Getx - Home',
          style: Theme.of(context).textTheme.headlineMedium,
          textAlign: TextAlign.center,
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
<<<<<<< HEAD
          
               Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Center(child: Text(controller.index.value.toString())),
                  Padding(
                    padding: const EdgeInsets.only(top: 15, left: 26, bottom: 15, right: 26),
                    child: MaterialButton(
                      color: Colors.red,
                      textColor: Colors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25)),
                      onPressed: () {
                        // controller.contador();
                        Get.to(() => FirstScreen());
                      },
                      child: const Text('Display name'),
                    ),
                  ),
                  // Text(controller.name,
                  //     style: Theme.of(context).textTheme.headlineMedium,
                  //     textAlign: TextAlign.center),
                ],
              )
            
=======
          GetBuilder<HomeController>(
            init: HomeController(),
            builder: (controller) {
              return Column(
                children: [
                  Text(controller.index.toString()),
                  MaterialButton(
                    child: Text('Clique aqui!'),
                    color: Colors.red,
                    textColor: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25)),
                    onPressed: () {
                      controller.contador();
                      // Get.to(const FirstScreen());
                    },
                  ),
                  Text(controller.name,
                      style: Theme.of(context).textTheme.headlineMedium,
                      textAlign: TextAlign.center),
                ],
              );
            },
          ),
>>>>>>> dcef056df9bb557535c6c6c4831eb6b32c7bd6a1
        ],
      ),
    );
  }
}
