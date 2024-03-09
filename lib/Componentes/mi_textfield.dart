import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  final controller; //this is to have acces to what the user typed in the textField
  final String hintText;
  final bool obscureText;

  const MyTextField({
    super.key,
    required this.controller, //required means that needs a default value, it can't be null
    required this.hintText,
    required this.obscureText,
  });

  @override
Widget build(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 25.0),
    child: TextField(
      controller: controller,
      obscureText: obscureText,
      decoration: InputDecoration(
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Color.fromARGB(255, 163,163,163)),
          borderRadius: BorderRadius.circular(10.0), // Add this line
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Color.fromARGB(255, 163,163,163)),
          borderRadius: BorderRadius.circular(10.0), // And this line
        ),
        fillColor: Theme.of(context).colorScheme.surface,
        filled: true,
        hintText: hintText,
        hintStyle: TextStyle(color: Color.fromARGB(211, 146, 145, 145))
      ),
    ),
  );
}
}