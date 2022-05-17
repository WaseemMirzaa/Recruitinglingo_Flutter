
import 'package:flutter/material.dart';
import 'package:recruitinglingo/src/ui/screens/main_screen.dart';
import 'package:recruitinglingo/src/ui/screens/stat_update_screen.dart';
import 'package:recruitinglingo/src/ui/widgets/input_field.dart';
import '../../util/Colors.dart';
import '../widgets/rounded_button.dart';


class SignIn extends StatefulWidget{
  const SignIn({Key? key}) : super(key: key);
  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(color: Colors.black),
        elevation: 0.0,

      ),
      resizeToAvoidBottomInset: false,
      body: Container(
        height: screenSize.height,
        width: double.infinity,
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              child: Center(
                child: Image.asset("assets/graphics/applogo1.png"),
              ),
              height: screenSize.height * 0.40,
//             color: Colors.pink,
            ),
            SizedBox(
              height: screenSize.height * 0.50,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children:  [
                  const TextInput(labelText: "Email", hintText: "Enter your email"),
                  const SizedBox(height: 10),
                  const TextInput(labelText: "Password", hintText: "Enter your password"),
                  const SizedBox(height: 10),
                  Row(
                    children: [
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: RoundedButton(onPress: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const MainScreen()),
                          );
                        },
                            color: appColor,
                            textColor: Colors.white,
                            title: 'SIGN IN',),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const[
                      Text("Don't have an account? "),
                      Text("SIGN UP",style: TextStyle(color: appColor ,fontWeight: FontWeight.bold),)
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}