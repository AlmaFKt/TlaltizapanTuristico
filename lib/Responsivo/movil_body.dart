import 'package:flutter/material.dart';
import '../Plantillas_widgets/widget_principal_descubre.dart';
import '../Componentes/variables.dart';
import 'cuerpo_base.dart';

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
    return CuerpoBase(
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
