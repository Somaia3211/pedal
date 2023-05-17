import 'package:flutter/material.dart';

class CustomContainerOption extends StatelessWidget {
  final double height;
  CustomContainerOption({
    Key? key,
    required this.height,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: height / 2.6,
      decoration: const BoxDecoration(
        color: Color(0XFFDD2C00),
        borderRadius: BorderRadius.only(
            bottomRight: Radius.circular(85), bottomLeft: Radius.circular(85)),
      ),
    );
  }
}
