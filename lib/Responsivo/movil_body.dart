import 'package:flutter/material.dart';
import '../Componentes/variables.dart';

class MovilBody extends StatefulWidget {
  const MovilBody({super.key});

  @override
  State<MovilBody> createState() => _MovilBodyState();
}
//main
class _MovilBodyState extends State<MovilBody> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar,
      backgroundColor: ColorFondo,
      body: Column(
        children: [
          Text('Mobile Body'),
        ],
      ),
    );
  }
}
