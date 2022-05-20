import 'package:flutter/material.dart';
import 'package:recruitinglingo/src/ui/screens/signin_screen.dart';
import '../../util/Colors.dart';
import '../widgets/custom_dropdown.dart';
import '../widgets/rounded_button.dart';
import '../widgets/input_field.dart' as text;
import 'dart:io';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);
  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  File? userImage;

   List<CustDropdownMenuItem<dynamic>> sportsList = [
    const CustDropdownMenuItem(
      value: "Boys Basketball",
      child: Text("Boys Basketball"),
    ),
    const CustDropdownMenuItem(
      value: "Girls Basketball",
      child: Text("Girls Basketball"),
    ),
    const CustDropdownMenuItem(
      value: "Football",
      child: Text("Football"),
    ),
    const CustDropdownMenuItem(
      value: "Volleyball",
      child: Text("Volleyball"),
    ),
    const CustDropdownMenuItem(
      value: "Baseball",
      child: Text("Baseball"),
    ),
    const CustDropdownMenuItem(
      value: "Softball",
      child: Text("Softball"),
    ),
    const CustDropdownMenuItem(
      value: "Track and Field",
      child: Text("Track and Field"),
    ),
    const CustDropdownMenuItem(
      value: "Boys Lacrosse",
      child: Text("Boys Lacrosse"),
    ),
    const CustDropdownMenuItem(
      value: "Girls Lacrosse",
      child: Text("Girls Lacrosse"),
    ),
    const CustDropdownMenuItem(
      value: "Gold",
      child: Text("Golf"),
    ),
    const CustDropdownMenuItem(
      value: "Boys Soccer",
      child: Text("Boys Soccer"),
    ),
    const CustDropdownMenuItem(
      value: "Girls Soccer",
      child: Text("Girls Soccer"),
    ),
    const CustDropdownMenuItem(
      value: "Boys Tennis",
      child: Text("Boys Tennis"),
    ),
    const CustDropdownMenuItem(
      value: "Girls Tennis",
      child: Text("Girls Tennis"),
    ),
    const CustDropdownMenuItem(
      value: "Others",
      child: Text("Others"),
    ),
  ];
  List<CustDropdownMenuItem<dynamic>> yearsList = [
    const CustDropdownMenuItem(
      value: "2022",
      child: Text("2022"),
    ),
    const CustDropdownMenuItem(
      value: "2023",
      child: Text("2023"),
    ),
    const CustDropdownMenuItem(
      value: "2024",
      child: Text("2024"),
    ),
    const CustDropdownMenuItem(
      value: "2025",
      child: Text("2025"),
    ),
    const CustDropdownMenuItem(
      value: "2026",
      child: Text("2026"),
    ),
    const CustDropdownMenuItem(
      value: "2027",
      child: Text("2027"),
    ),
    const CustDropdownMenuItem(
      value: "2028",
      child: Text("2028"),
    ),

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(color: Colors.black),
        elevation: 0.0,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.fromLTRB(0, 0, 0, 50),

          width: double.infinity,
          color: Colors.white,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              getUserImage(),
              const SizedBox(height: 10),
              const text.TextInput(
                  labelText: "First Name", hintText: "Enter your name"),

              const text.TextInput(
                  labelText: "Last Name", hintText: "Enter your last name"),

              Center(
                child: Container(
                  width: double.infinity,
                  height: 60,
                  margin: const EdgeInsets.fromLTRB(15, 10, 15, 10),
                  decoration: BoxDecoration(
                      color: Colors.white, borderRadius: BorderRadius.circular(5), border: Border.all(color: Colors.grey)),
                  child: CustDropDown(
                    items: yearsList,
                    hintText: "Graduation year",
                    borderRadius: 5,
                    onChanged: (val) {
                      setState(() {
                      });
                    },
                  ),
                ),
              ),

              Center(
                child: Container(
                  width: double.infinity,
                  margin: const EdgeInsets.fromLTRB(15, 10, 15, 10),
                  height: 60,
                  decoration: BoxDecoration(
                      color: Colors.white, borderRadius: BorderRadius.circular(5), border: Border.all(color: Colors.grey)),
                  child: CustDropDown(
                    items: sportsList,
                    hintText: "Sports",
                    borderRadius: 5,
                    onChanged: (val) {
                      setState(() {
                      });
                    },
                  ),
                ),
              ),

              const text.TextInput(
                  labelText: "Cell Phone Number (International)", hintText: "Enter phone number"),
              const text.TextInput(
                  labelText: "Parents Cell Phone Number", hintText: "Enter phone number"),
              const text.TextInput(
                  labelText: "High School", hintText: "Enter high School"),
              const text.TextInput(
                  labelText: "Email", hintText: "Enter your email"),
              const text.TextInput(
                  labelText: "Password", hintText: "Enter your password"),
              const SizedBox(height: 10),
              Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: RoundedButton(
                        onPress: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const SignIn()),
                          );
                        },
                        color: appColor,
                        textColor: Colors.white,
                        title: 'SIGN UP',
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text("Already have an account? "),
                  Text(
                    "SIGN IN",
                    style:
                        TextStyle(color: appColor, fontWeight: FontWeight.bold),
                  )
                ],
              )
            ],
          ),
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

  Widget getUserImage() {
    return Container(
        width: 100,
        height: 90,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            border: Border.all(
                color: Colors.grey, width: 1, style: BorderStyle.solid)),
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
