
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

import 'package:get/get.dart';

class ControllerHome2 extends GetxController {

  final _obj = ''.obs;
  set obj(value) => this._obj.value = value;
  get obj => this._obj.value;

  List<String> _img = <String>[
    'https://gizmodo.uol.com.br/wp-content/blogs.dir/8/files/2019/08/android-10-google.jpg',
    'https://mymob.com.br/uploads/hitoria-do-android-b3e7607c645b66089d1d2530e260b5651610567827.jpg',
    'https://www.alura.com.br/artigos/assets/uploads/2019/01/android-3383992_1280-e1548267843632.png'];
  set img(value) => this._img = value;
  List<String> get img => this._img;

  RxString _name = ''.obs;
  set name(value) => this._name.value = value;
  get name => this._name.value;

  RxInt _imagePosicioned = 0.obs;
  set imagePosicioned(value) => this._imagePosicioned.value = value;
  get imagePosicioned => this._imagePosicioned.value;

  RxDouble _width = 100.0.obs;
  set width(value) => this._width.value = this._width.value+value;
  get width => this._width.value;

  RxDouble _width2 = 20.0.obs;
  set width2(value) => this._width2.value = value;
  get width2 => this._width2.value;

  RxInt i = 0.obs;

  Rx<Color> _color = Color(0xff123456).obs;
  set color(value) => this._color.value = value;
  get color => this._color.value;

  bool isStopped = false; //global

  Color _cor = Colors.yellow;
  set cor(value) => this._cor = value;
  get cor => this._cor;

  @override
  void onInit() {
    super.onInit();    
  }

    @override
  void onReady() {
    sec3Timer();
    super.onReady();    
  }

  sec3Timer() {
  Timer.periodic(Duration(seconds: 3), (timer) {
    if (isStopped) {
      timer.cancel();
    }

    if (imagePosicioned > img.length){
      imagePosicioned = 0;
    }else{
          imagePosicioned +=1;
    }



     color = Colors.amberAccent;

    i++;

    if (width2 > 60.0)
    {
      print("iruuuu");
      width2 = 10.0;
    }

    width2 = width2 + 10.0;
    
    name = "aa  "+i.value.toString();
    print(name);
  });
}
}