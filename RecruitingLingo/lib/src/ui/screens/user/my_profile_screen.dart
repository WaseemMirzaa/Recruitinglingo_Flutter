import 'dart:io';
import 'package:flutter/material.dart';
import 'package:recruitinglingo/src/ui/screens/landing_screen.dart';
import 'package:recruitinglingo/src/ui/screens/terms_and_privacy_policy_screen.dart';
import 'package:recruitinglingo/src/ui/screens/user/my_account_screen.dart';
import 'package:recruitinglingo/src/ui/widgets/rounded_buttom_profile.dart';
import 'package:recruitinglingo/src/util/Colors.dart';

import '../main_screen.dart';



class MyProfile extends StatefulWidget{
  const MyProfile({Key? key}) : super(key: key);

  @override
  State<MyProfile> createState() => _MyProfileState();
}

class _MyProfileState extends State<MyProfile> {
  File? userImage;
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title:const Text("Profile", style: TextStyle(color: Colors.black),),
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        centerTitle: true,
        elevation: 0.0,
      ),
      body: Container(
        color: Colors.white,
        padding: const EdgeInsets.fromLTRB(10, 40, 10, 0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children:  [
            getUserImage(),
            const SizedBox(height: 30),
            const Text("Marinus Labuschanged"),
            const SizedBox(height: 10),
            const Text("marinuslabuschanged@gmail.com",style: TextStyle(fontSize: 10, color:Colors.grey, fontWeight: FontWeight.bold),),
            const SizedBox(height: 50),
            RoundedButtonProfile(
                title: "Account",
                preTextIcon: const Icon(Icons.person, color: Colors.grey),
                postTextIcon: const Icon(Icons.navigate_next,color: appColor,size: 30,),
                onPress: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const MyAccount()),
                );
              }),
            const SizedBox(height: 20),
            RoundedButtonProfile(
                title: "Terms and privacy policy",
                preTextIcon: const Icon(Icons.copy, color: Colors.grey),
                postTextIcon:const Icon(null),
                onPress: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const TermsAndPrivacyPolicy()),
                  );
                }),
            const SizedBox(height: 20),
            RoundedButtonProfile(
                title: "Logout",
                preTextIcon: const Icon(Icons.logout, color: Colors.grey),
                postTextIcon:const Icon(null),
                onPress: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const HomePage()),
                  );
                }),
            const SizedBox(height: 20),

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