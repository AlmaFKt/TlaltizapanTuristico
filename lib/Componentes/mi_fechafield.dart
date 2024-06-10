import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

// ignore: must_be_immutable
class FechaField extends StatelessWidget {
  final controller;
  final String hintText;
  final bool obscureText;
  FechaField({
    super.key,
    required this.controller,
    required this.hintText,
    required this.obscureText,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      margin: const EdgeInsets.symmetric(horizontal: 25.0),
      child: TextField(
        controller: datePickerController,
        obscureText: obscureText,
        decoration: InputDecoration(
          prefix: Icon(Icons.calendar_today),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Color.fromARGB(255, 163, 163, 163)),
            borderRadius: BorderRadius.circular(10.0),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Color.fromARGB(255, 163, 163, 163)),
            borderRadius: BorderRadius.circular(10.0),
          ),
          fillColor: Theme.of(context).colorScheme.surface,
          filled: true,
          hintText: hintText,
          hintStyle: TextStyle(color: Color.fromARGB(255, 151, 151, 151)),
        ),
        readOnly: true,
        onTap: () => onTapFunction(context: context),
      ),
    );
  }

  TextEditingController datePickerController = TextEditingController();
  onTapFunction({required BuildContext context}) async {
    DateTime? pickedDate = await showDatePicker(
      context: context,
      lastDate: DateTime.now(),
      firstDate: DateTime(1950),
      initialDate: DateTime.now(),
    );
    if (pickedDate == null) return;
    datePickerController.text = DateFormat('yyyy-MM-dd').format(pickedDate);
  }
}
