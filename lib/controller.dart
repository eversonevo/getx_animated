
import 'package:get/get.dart';

class Controller extends GetxController {

   Rx<double> padValue = 0.0.obs;

   void aumentarValor(){
     print("aumentando");
     padValue = padValue + 10.0;
   }

 /* Rx<double> get padValue => this._padValue;

  set padValue(Rx<double> value){
    print("_padValue ${_padValue.value}");
    print("value ${value.value}");
    this._padValue = this._padValue + value.value;
  }*/
  
}