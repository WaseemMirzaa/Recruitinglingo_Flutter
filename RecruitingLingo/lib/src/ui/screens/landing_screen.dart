
import 'package:flutter/material.dart';
import 'package:recruitinglingo/src/ui/screens/signin_screen.dart';
import 'package:recruitinglingo/src/ui/screens/signup_screen.dart';
import 'package:recruitinglingo/src/ui/screens/user/my_profile_screen.dart';
import 'package:recruitinglingo/src/util/Colors.dart';
import '../widgets/rounded_button.dart';

class HomePage extends StatefulWidget{
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();

}

class _HomePageState extends State<HomePage> {


  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        height: screenSize.height,
        width: double.infinity,
        color: appColor,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
           SizedBox(
             child: Center(
               child: Image.asset("assets/graphics/applogo2.png"),
             ),
             height: screenSize.height * 0.70,
//             color: Colors.pink,
           ),
            SizedBox(
              height: screenSize.height * 0.30,
              child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      RoundedButton(onPress: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const SignIn()),
                        );
                      }, title: 'SIGN IN', color: Colors.white, textColor: Colors.black,),
                      RoundedButton(onPress: () {

                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const MyProfile()),
                        );
                      }, title: 'SIGN UP', color: Colors.black, textColor: Colors.white),
                    ],
                  )),
  //            color: Colors.blue,
            )
          ],
        ),
      ),
    );
  }


}