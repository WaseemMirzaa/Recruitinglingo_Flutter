import 'package:flutter/material.dart';
import 'package:recruitinglingo/src/ui/screens/camp_invitation_request_screen.dart';

class RecruitingLingo extends StatefulWidget {
  const RecruitingLingo({Key? key}) : super(key: key);

  @override
  State<RecruitingLingo> createState() => _RecruitingLingoState();
}

class _RecruitingLingoState extends State<RecruitingLingo> {
  final String title = "Camp Invitation Request";
  final String timeAndDate = "15 Apr, 2022 11:47 PM";
  final String description =
      "Lorem Ipsum is simply dummy text of the printing and typesetting "
      "industry. Lorem Ipsum has been the industry's standard dummy text ";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: const Text(
          "Completed Lingos",
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        centerTitle: true,
        elevation: 0.0,
      ),
      body: Container(
        height: double.infinity,
        color: Colors.white,
        child: ListView.builder(
          itemBuilder: (buildContext, index) {
            return GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const CampInvitationRequest()),
                );
              },
              child: Container(
                margin: const EdgeInsets.all(6.0),
                padding: const EdgeInsets.all(15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: const TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      timeAndDate,
                      style: const TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      description,
                      style: TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey[500]),
                    ),
                    const SizedBox(height: 10),
                    const Divider(
                      height: 2,
                      color: Colors.grey,
                    )
                  ],
                ),
              ),
            );
          },
          itemCount: 4,
          shrinkWrap: true,
          padding: const EdgeInsets.all(5),
          scrollDirection: Axis.vertical,
        ),
      ),
    );
  }
}
