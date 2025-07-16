import 'package:flutter/material.dart';
var text; // global variable for text
class MyTextstyle extends StatelessWidget {
 const MyTextstyle(this.text,{super.key}); 
  
final String text; // final variable to hold the text value
  @override
  Widget build(BuildContext context) {
    return  Text(
      text,
      style: TextStyle(
        fontSize: 30,
        color: Colors.white,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}