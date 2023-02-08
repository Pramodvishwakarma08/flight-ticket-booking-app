import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
class AppLayout{


  static getSize(BuildContext context){
    return MediaQuery.of(context).size;
  }

  static getScreenHeghit(){
    return Get.height;
  }

  static getScreenWidth(){
    return Get.width;
  }
  static getHeghit(double pixels){
    double x =getScreenHeghit()/pixels;
    return getScreenHeghit()/x;

  }

  static getWidth(double pixels){
    double x =getScreenHeghit()/pixels;
    return getScreenWidth()/x;

  }
  
}