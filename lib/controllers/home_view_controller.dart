import 'dart:math';

import 'package:get/get.dart';
import 'package:topjoy/constants.dart' as constants;
class HomeViewController extends GetxController{
  int bottlecapState=0;
  int random=0;
  String giveMeMessage(){
    
    return  (bottlecapState==10)?constants.messages[random].toUpperCase():"";

  }
  void flipTheBottlecap()async{
    bool condition = (bottlecapState==0);
    for(int i=(condition)?0:10; (condition)? i<11 : i>=0; (condition)? i++: i--){
       random = Random().nextInt(constants.messages.length);
      bottlecapState=i;
      await Future.delayed(Duration(milliseconds: 15));
      update();
    }
  }
}