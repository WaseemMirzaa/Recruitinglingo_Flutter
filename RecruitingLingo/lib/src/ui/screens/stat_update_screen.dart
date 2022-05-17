import 'package:flutter/material.dart';
import 'package:recruitinglingo/src/ui/widgets/input_textarea.dart';

import '../../util/Colors.dart';
import '../widgets/rounded_button.dart';

class StatUpdate extends StatefulWidget{
  const StatUpdate({Key? key}) : super(key: key);

  @override
  State<StatUpdate> createState() => _StatUpdateState();
}

class _StatUpdateState extends State<StatUpdate> {

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Column(
          children:const [
            Text("Stat Update", style: TextStyle(color: Colors.black),),
            Text("2 out 0f 8", style: TextStyle(color: Colors.grey, fontSize: 10),)
          ],
        ),

        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(color: Colors.black),
        elevation: 0.0,
        centerTitle: true,
      ),
      body: Container(
        padding: const EdgeInsets.fromLTRB(0, 0, 0, 50),
        height: screenSize.height,
        width: double.infinity,
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children:  [
            const Text("Lorem Ipsum is simply dummy text of the Printing" , style: TextStyle(color: Colors.black),),
            const SizedBox(height: 10),
            const TextArea(hintText: "Answer"),

            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: RoundedButton(onPress: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const StatUpdate()),
                      );
                    },
                      color: appColor,
                      textColor: Colors.white,
                      title: 'NEXT',),
                  ),
                ),
              ],
            ),


          ],
        ),
      ),
    );

  }
}