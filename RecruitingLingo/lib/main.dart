import 'package:flutter/material.dart';
import 'package:recruitinglingo/src/ui/screens/landing_screen.dart';
import 'package:recruitinglingo/src/util/Colors.dart';

void main() {
  runApp(const MyApp());

}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Recruiting Lingo',
      theme: ThemeData(
        primaryColor: appColor,

      ),
      home: const HomePage(),
    );
  }
}

