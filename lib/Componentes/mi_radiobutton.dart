import 'package:flutter/material.dart';

//enum Sexo { mujer, hombre }
class Radiobutton extends StatelessWidget {
  final controller;
  final String hintText;
  const Radiobutton({
    super.key,
    required this.controller,
    required this.hintText,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.0),
      child: ListTile(
        title: Text(hintText),
      ),
    );
  }
}
