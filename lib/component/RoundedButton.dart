import 'package:flutter/material.dart';

class RoundButton extends StatelessWidget {
  final String? title;
  final VoidCallback? onPress;

  const RoundButton({
    Key? key,
    this.title,
    this.onPress,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Text(title!,style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold
        ),),
      ),
      onPressed: onPress,
      style: TextButton.styleFrom(
          primary: Colors.black,
          backgroundColor: Colors.white,
          shape:RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(40),

          )
      ),
    );
  }
}
