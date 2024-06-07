import 'package:class_getx/first_screen.dart';
import 'package:class_getx/models/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
        ],
      ),
    );
  }
}
