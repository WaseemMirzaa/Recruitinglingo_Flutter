import 'dart:ui';
import 'package:flutter/services.dart';

void changeSystemColor(Color color){
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      systemNavigationBarColor: color,
      statusBarColor: color
  ));
}