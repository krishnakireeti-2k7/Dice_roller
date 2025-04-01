import 'package:flutter/material.dart';

class FontStyle extends StatelessWidget {
  const FontStyle(this.text,{super.key});
  final String text;
  @override
  Widget build(context) {
    return Text(
      text, 
    style: TextStyle(
      fontSize: 35, 
      color: Colors.white
      ),
    );
  }
}
