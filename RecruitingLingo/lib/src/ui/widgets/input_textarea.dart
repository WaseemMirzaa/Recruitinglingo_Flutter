import 'package:flutter/material.dart';

import '../../util/Colors.dart';

class TextArea extends StatefulWidget {
  const TextArea({
    required this.hintText,
    Key? key,
  }) : super(key: key);
  final String hintText;

  @override
  State<TextArea> createState() => _TextAreaState();
}

class _TextAreaState extends State<TextArea> {
  List<String> suggestions = [
    "demo text 1",
    "demo text 2",
    "demo text 3",
    "demo text 4",
    "demo text 5"
  ];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Autocomplete<String>(
        optionsBuilder: (TextEditingValue textEditingValue) {
          if (textEditingValue.text == '') {
            return const Iterable<String>.empty();
          }
          return suggestions.where((String option) {
            return option.contains(textEditingValue.text.toLowerCase());
          });
        },
        fieldViewBuilder: (BuildContext context,
            TextEditingController textEditingController,
            FocusNode focusNode,
            VoidCallback onFieldSubmitted) {
          return TextFormField(
            maxLines: 8,
            controller: textEditingController,
            decoration: InputDecoration(
                border: const OutlineInputBorder(),
                focusedBorder: const OutlineInputBorder(
                  borderSide: BorderSide(color: appColor, width: 2.0),
                ),
                hintText: widget.hintText,
                hintStyle: const TextStyle(color: Colors.grey)),
            focusNode: focusNode,
            onFieldSubmitted: (String value) {
              debugPrint('You just typed a new entry  $value');
            },
          );
        },
        onSelected: (String selection) {
          print('You just selected $selection');
        },
      ),
    );
  }
}
