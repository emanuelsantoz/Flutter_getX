import 'package:class_getx/controller/home_controller.dart';
import 'package:class_getx/second_screend.dart';
import 'package:class_getx/view/screens/first_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final controller = Get.lazyPut(() => HomeController());
  final controller1 = Get.put(HomeController(), permanent: true);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amberAccent,
        actions: [
          TextButton(
              onPressed: () {
                Get.to(() => const FirstScreen());
              },
              child: const Text(
                'Next',
                style: TextStyle(color: Colors.black),
              ))
        ],
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
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Center(child: Text(controller.index.value.toString())),
              Padding(
                padding: const EdgeInsets.only(
                    top: 15, left: 26, bottom: 5, right: 26),
                child: MaterialButton(
                  color: Colors.red,
                  textColor: Colors.white,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25)),
                  onPressed: () {
                    // controller.contador();
                    Get.to(() => FirstScreen());
                  },
                  child: const Text('Primeira Tela'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    top: 15, left: 26, bottom: 15, right: 26),
                child: MaterialButton(
                  color: Colors.red,
                  textColor: Colors.white,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25)),
                  onPressed: () {
                    // controller.contador();
                    Get.to(() => SecundScreen());
                  },
                  child: const Text('Segunda Tela'),
                ),
              ),
              // Text(controller.name,
              //     style: Theme.of(context).textTheme.headlineMedium,
              //     textAlign: TextAlign.center),
            ],
          ),
          // GetBuilder<HomeController>(
          //   init: HomeController(),
          //   builder: (controller) {
          //     return Column(
          //       children: [
          //         Text(controller.index.toString()),
          //         MaterialButton(
          //           child: Text('Primeira Tela'),
          //           color: Colors.red,
          //           textColor: Colors.white,
          //           shape: RoundedRectangleBorder(
          //               borderRadius: BorderRadius.circular(25)),
          //           onPressed: () {
          //             Get.to(const FirstScreen());
          //           },
          //         ),
          //         MaterialButton(
          //           child: Text('Segunda tela'),
          //           color: Colors.red,
          //           textColor: Colors.white,
          //           shape: RoundedRectangleBorder(
          //               borderRadius: BorderRadius.circular(25)),
          //           onPressed: () {
          //             // controller.contador();
          //             Get.to(const SecundScreen());
          //           },
          //         ),
          //         //   Text('Segunda tela',
          //         //       style: Theme.of(context).textTheme.headlineMedium,
          //         //       textAlign: TextAlign.center),
          //       ],
          //     );
          //   },
          // ),
        ],
      ),
    );
  }
}
