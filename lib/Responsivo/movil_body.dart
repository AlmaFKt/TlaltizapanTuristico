import 'package:flutter/material.dart';
import '../Responsivo/seleccion_index.dart';

class MovilBody extends StatefulWidget {
  const MovilBody({super.key});

  @override
  State<MovilBody> createState() => _MovilBodyState();
}
//main
class _MovilBodyState extends State<MovilBody> {
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SeleccionIndex(
      child: Column(
        children: [
          
        ],
      ),
      selectedIndex: _selectedIndex,
      onItemTapped: (index) {
        setState(() {
          _selectedIndex = index;
        });
      },
    );
  }
}
