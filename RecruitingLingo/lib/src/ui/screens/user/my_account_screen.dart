import 'dart:io';

import 'package:flutter/material.dart';
import '../../../util/Colors.dart';
import '../../widgets/rounded_button.dart';
import '../../widgets/input_field.dart' as text;
import '../camp_invitation_request_screen.dart';


class MyAccount extends StatefulWidget{
  const MyAccount({Key? key}) : super(key: key);

  @override
  State<MyAccount> createState() => _MyAccountState();
}

class _MyAccountState extends State<MyAccount> {
  File? userImage;
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title:const Text("My Account", style: TextStyle(color: Colors.black),),
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(color: Colors.black),
        elevation: 0.0,
      ),
      body: Container(
        color: Colors.white,
        padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children:  [
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
                      title: 'SAVE'),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10,),

         ],
        ),
      ),
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
  Widget getImage() {
    return Image.file(
      File(userImage!.path.toString()),
      fit: BoxFit.cover,
    );
  }
}