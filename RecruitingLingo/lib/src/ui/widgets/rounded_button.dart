import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  const RoundedButton({
    required this.title,
    required this.color,
    required this.textColor,
    this.onPress,
    Key? key,
  }) : super(key: key);

  final String title;
  final Color color;
  final Color textColor;
  final VoidCallback? onPress;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
            primary: color,
            minimumSize: const Size(150, 55),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50),
            )),
        onPressed: onPress,
        child: Text(
          title,
          style: TextStyle(color: textColor, fontWeight: FontWeight.bold),
        ));
  }
}
