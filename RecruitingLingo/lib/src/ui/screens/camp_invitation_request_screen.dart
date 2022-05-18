import 'package:flutter/material.dart';
import 'package:recruitinglingo/src/util/Colors.dart';
import 'package:share_plus/share_plus.dart';
import 'package:toast/toast.dart';

class CampInvitationRequest extends StatelessWidget {
  const CampInvitationRequest({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ToastContext().init(context);
    return Scaffold(
      resizeToAvoidBottomInset: false,
      floatingActionButton: _getFAB(context),
      appBar: AppBar(
        title: Column(
          children: const [
            Text(
              "Camp Invitation Request",
              style: TextStyle(color: Colors.black),
            ),
            Text(
              "16 Apr, 2022 11:47 PM",
              style: TextStyle(color: Colors.grey, fontSize: 10),
            )
          ],
        ),
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(color: Colors.black),
        elevation: 0.0,
      ),
      body: Container(
        color: Colors.white,
        padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: const [
            Text(
                "Lorem Ipsum is simply dummy text of the printing and typesetting "
                "industry. Lorem Ipsum has been the industry's standard dummy text "
                "ever since the 1500s, when an unknown printer took a galley of type "
                "and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum")
          ],
        ),
      ),
    );
  }

  void _onShare(BuildContext context) async {
    final box = context.findRenderObject() as RenderBox?;

// subject is optional but it will be used
// only when sharing content over email
    await Share.share("Lorem ipsum",
        subject: "Invitation Request",
        sharePositionOrigin: box!.localToGlobal(Offset.zero) & box.size);
  }

  Widget _getFAB(context) {
    return Wrap(
      direction: Axis.vertical, //use vertical to show  on vertical axis
      children: <Widget>[
        Container(
            margin: const EdgeInsets.all(5),
            child: FloatingActionButton(
              elevation: 5.0,
              onPressed: () {
                Toast.show("Copied", gravity: Toast.lengthLong);
              },
              backgroundColor: Color.fromARGB(255, 185, 183, 183),
              child: const Icon(
                Icons.copy,
                color: appColor,
                size: 30,
              ),
            )), //button first

        Container(
            margin: const EdgeInsets.all(5),
            child: FloatingActionButton(
              elevation: 5.0,
              onPressed: () {
                _onShare(context);
              },
              backgroundColor: Color.fromARGB(255, 185, 183, 183),
              child: const Icon(
                Icons.share,
                color: appColor,
                size: 30,
              ),
            )), // button third
      ],
    );
  }
}
