import 'package:flutter/material.dart';

import '../../util/Colors.dart';

class TextArea extends StatefulWidget {
  TextArea({

    required this.hintText,
    required this.textHandler,
    Key? key,
  }) : super(key: key);
  final String hintText;
  final TextEditingController textHandler;

  @override
  State<TextArea> createState() => _TextAreaState();
}

class _TextAreaState extends State<TextArea> {
  @override
  Widget build(BuildContext context) {
    return Padding(
          padding: const EdgeInsets.all(10.0),
          child: TextField(
            maxLines: 8,
            controller: widget.textHandler ,
            decoration: InputDecoration(
                border: const OutlineInputBorder(),
                focusedBorder: const OutlineInputBorder(
                  borderSide: BorderSide(color: appColor, width: 2.0),
                ),
                hintText: widget.hintText,
                hintStyle: const TextStyle(color: Colors.grey)),

          )

      );
  }
}
