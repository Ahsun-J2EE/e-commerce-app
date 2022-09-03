import 'package:flutter/material.dart';
class CustomHeading extends StatelessWidget {

  double height;
  double paddingLeft;
  double fontSize;
  String headingTitle;

  CustomHeading({
    required this.height,
    required this.paddingLeft,
    required this.fontSize,
    required this.headingTitle,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        height: height,
        width: double.infinity,
        padding: EdgeInsets.only(left: paddingLeft),
        alignment: Alignment.centerLeft,
        child: Text(headingTitle, style: TextStyle(color: Colors.red, fontSize: fontSize, fontWeight: FontWeight.bold))
    );
  }
}
