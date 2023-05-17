
import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  final String? lableText;
  final String? hintText;
  const CustomTextFormField({
    Key? key,
    this.lableText,
    this.hintText
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        labelText: lableText,
        labelStyle: TextStyle(
            fontSize: 16,
            color: Colors.grey
        ),
        hintStyle: TextStyle(
          color: Colors.grey,
          fontSize: 13,
        ),
        hintText: hintText,

        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color:  Color(0XFFDD2C00),
            width: 2,
          ),
        ) ,
      ),
    );
  }
}