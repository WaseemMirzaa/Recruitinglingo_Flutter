import 'package:flutter/material.dart';

class RoundedButtonProfile extends StatelessWidget {
  const RoundedButtonProfile({
    required this.title,
    required this.preTextIcon,
    this.postTextIcon,
    this.onPress,
    Key? key,
  }) : super(key: key);
  final String title;
  final VoidCallback? onPress;
  final Icon preTextIcon;
  final Icon? postTextIcon;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        padding: const EdgeInsets.all(20),
        height: 80,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            border: Border.all(color: Colors.grey, width: 1, style: BorderStyle.solid)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                preTextIcon, Padding(
                    padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                    child: Text(title, style: const TextStyle(color: Colors.black,fontWeight: FontWeight.bold),)),
              ],
            ), postTextIcon!
          ],
        ),
      ),
        onTap: onPress,
    );
  }
}
