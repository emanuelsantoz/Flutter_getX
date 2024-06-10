import 'package:class_getx/controller/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(HomeController(), permanent: true);

    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.amberAccent,
          title: const Text('Getx - First'),
        ),
        body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              GetBuilder<HomeController>(builder: (controller) {
                return Text(
                  controller.name,
                  style: Theme.of(context).textTheme.headlineLarge,
                  textAlign: TextAlign.center,
                );
              }),
              Padding(
                padding: const EdgeInsets.only(
                    top: 15, left: 26, bottom: 15, right: 26),
                child: MaterialButton(
                  color: Colors.red,
                  textColor: Colors.white,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25)),
                  onPressed: () {
                    controller.displayNome();
                  },
                  child: const Text('Display Nome'),
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
                    controller.getTheSavedName();
                  },
                  child: const Text('Pegar Nome'),
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
                    controller.deleteSavedName();
                  },
                  child: const Text('Apagar Nome'),
                ),
              ),


            ]));
  }
}
