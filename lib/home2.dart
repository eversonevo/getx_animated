import 'package:flutter/material.dart';
import 'package:flutter_animation/controller2.dart';
import 'package:get/get.dart';

import 'bindings_home2.dart';

class Home2 extends StatelessWidget {
  const Home2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var _ = Get.put(ControllerHome2());
    
    return Scaffold(
      appBar: AppBar(title: Text('Home 2')),
      body: Center(
        child: Column(
          children: [
            /* Expanded(
          child: Obx(() => MouseRegion(
            onHover: (event) => print("mouseeee"),
            child: AnimatedPadding(
              padding: EdgeInsets.all(10),
              duration: const Duration(seconds: 1),
              curve: Curves.easeInCirc,
              child: Container(
                color: Colors.amber,
              ),
            ),
          )),
        ),*/
            Padding(
              padding: EdgeInsets.all(50),
              child: Center(
                  child: InkWell(
                onTap: () {
                    _.color = Colors.amber[800];
                    _.width = 100.0;
                    print("Value + ${_.width}");
                },                
                child: Obx(() => Container(
                      width: _.width,
                      height: 100,
                      color: _.color,
                      child: Text('${_.name}'),
                    )),
              )),
            ),
            SizedBox(height: 5,),
            Padding(
              padding: EdgeInsets.all(10),
              child: Center(
                  child: InkWell(
                onTap: () {
                    _.color = Colors.amber[800];
                    _.width = 100.0;
                    print("Value + ${_.width}");
                },                
                child: Obx(() => Container(
                      width: 300,
                      height: 200,
                      color: Colors.black,
                      child: Image.network(_.img[_.imagePosicioned]),
                    )),
              )),
            ),
            SizedBox(height: 5,),
            Padding(
              padding: EdgeInsets.all(10),
              child: Center(
                  child: InkWell(
                onTap: () {
                    //_.color = Colors.amber[800];
                    //_.width2 = 100.0;
                    print("Value + ${_.width2}");
                },                
                child: Obx(() => AnimatedContainer(                  
                      duration: Duration(milliseconds: 500),
                      width: _.width2,
                      height: 100,
                      color: _.color,
                      child: Text('${_.name}'),
                    )),
              )),
            ),
          ],
        ),
      ),
    );
  }
}
