import 'package:flutter/material.dart';
import 'package:flutter_animation/controller.dart';
import 'package:get/get.dart';


class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);
  

  @override
  Widget build(BuildContext context) {

    var controller = Get.put(Controller());
    return Column(
      children: [
        Expanded(
          child: Obx(() => GestureDetector(
            onTap: (){
              controller.padValue = controller.padValue + 10.0;
              print("Valor "+controller.padValue.toString());
              print("cliquei");
            },
            child: AnimatedPadding(
              padding: EdgeInsets.all(controller.padValue.value),
              duration: const Duration(seconds: 1),
              curve: Curves.easeInCirc,
              child: Container(
                color: Colors.amber,
              ),
            ),
          )),
        ),
        Expanded(
          child: Container(
            color: Colors.black,
          ),
        ),
        Expanded(
          child: Container(
            color: Colors.blue,
          ),
        ),
      ],
      
    );
  }
}