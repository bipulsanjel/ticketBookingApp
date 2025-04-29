import 'package:flutter/widgets.dart';

class AppLayout {
  static getSize(BuildContext context){
    return MediaQuery.of(context).size;
  }
  static double getScreenHeight(BuildContext context){
    return getSize(context).height;
  }
  static getScreenWidth(BuildContext context){
    return getSize(context).width;
  }
  static double getHeight(BuildContext context, double pixels) {
    double x = getScreenHeight(context) / pixels;
    return getScreenHeight(context) / x;
  }

  static double getWidth(BuildContext context, double pixels) {
    double x = getScreenWidth(context) / pixels;
    return getScreenWidth(context) / x;
  }
}