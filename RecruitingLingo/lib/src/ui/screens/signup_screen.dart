import 'package:flutter/material.dart';
import 'package:recruitinglingo/src/ui/screens/camp_invitation_request_screen.dart';

import '../../util/Colors.dart';
import '../widgets/rounded_button.dart';
import '../widgets/input_field.dart' as text;
import 'dart:io';



class SignUp extends StatefulWidget{
  const SignUp({Key? key}) : super(key: key);
  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  File? userImage;
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
        padding: const EdgeInsets.fromLTRB(0, 0, 0, 50),
        height: screenSize.height,
        width: double.infinity,
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            getUserImage(),
            const SizedBox(height: 10),
            const text.TextInput(labelText: "First Name", hintText: "Enter your name"),
            const SizedBox(height: 5),
            const text.TextInput(labelText: "Last Name", hintText: "Enter your last name"),
            const SizedBox(height: 5),
            const text.TextInput(labelText: "Email", hintText: "Enter your email"),
            const SizedBox(height: 5),
            const text.TextInput(labelText: "Password", hintText: "Enter your password"),
            const SizedBox(height: 10),
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: RoundedButton(onPress: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const CampInvitationRequest()),
                      );
                    },
                      color: appColor,
                      textColor: Colors.white,
                      title: 'SIGN UP',),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const[
                Text("Already have an account? "),
                Text("SIGN IN",style: TextStyle(color: appColor ,fontWeight: FontWeight.bold),)
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget getImage() {
    return Image.file(
      File(userImage!.path.toString()),
      fit: BoxFit.cover,
    );
  }

  Widget getUserImage(){
    return Container(
        width: 100,
        height: 90,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            border: Border.all(color: Colors.grey, width: 1, style: BorderStyle.solid)),
        child: userImage == null
            ? const Icon(Icons.person, size: 90, color: Colors.grey)
            : ClipRRect(
          borderRadius: BorderRadius.circular(20), // Image border
          child: SizedBox.fromSize(
            size: const Size.fromRadius(48), // Image radius
            child: getImage(),
          ),
        ));
  }
}