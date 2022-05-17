// // ignore_for_file: prefer_const_constructors
//
// import 'package:flutter/material.dart';
//
// import '../../util/Colors.dart';
//
// class InputTextField extends StatefulWidget {
//   InputTextField({
//     required this.hint,
//     required this.lable,
//     this.icons,
//     this.validates,
//     this.sufixIconColor,
//     this.lableColor,
//     required this.borderColorr,
//     this.function,
//     this.controllers,
//     required this.obsecure,
//     Key? key,
//     this.textType,
//   }) : super(key: key);
//   String hint;
//   TextInputType? textType = TextInputType.text;
//   String lable;
//   IconData? icons;
//   FormFieldValidator<String>? validates;
//
//   Color? sufixIconColor, lableColor;
//   Color borderColorr;
//
//   bool? obsecure;
//   VoidCallback? function;
//   TextEditingController? controllers;
//
//   @override
//   State<InputTextField> createState() => _OneLineTextFiledState();
// }
//
// class _OneLineTextFiledState extends State<InputTextField> {
//   bool locked = true;
//
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: EdgeInsets.only(top: 8.0),
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.start,
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Text(
//             widget.lable,
//             style: TextStyle(
//                 fontSize: 15,
//                 fontWeight: FontWeight.bold,
//                 color: widget.lableColor),
//           ),
//           Container(
//             width: double.infinity,
//             decoration: BoxDecoration(
//               border: Border.all(
//                   color: widget.borderColorr,
//                   width: 1,
//                   style: BorderStyle.solid),
//               color: shapeColor,
//               borderRadius: BorderRadius.circular(16),
//             ),
//             child: Padding(
//               padding: EdgeInsets.fromLTRB(10, 5, 10, 10),
//               child: TextFormField(
//                 validator: widget.validates,
//                 keyboardType: widget.textType,
//                 controller: widget.controllers,
//                 obscureText: widget.obsecure!,
//                 decoration: InputDecoration(
//                   border: InputBorder.none,
//                   hintText: widget.hint,
//                   hintStyle: TextStyle(
//                     color: Color(0xffBDBDBD),
//                     fontWeight: FontWeight.bold,
//                     fontSize: 16,
//                   ),
//                 ),
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
