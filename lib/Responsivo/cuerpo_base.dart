import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '../Componentes/variables.dart';

class CuerpoBase extends StatefulWidget {
  final Widget child;
  final int selectedIndex;
  final void Function(int) onItemTapped;

  const CuerpoBase({
    Key? key,
    required this.child,
    required this.selectedIndex,
    required this.onItemTapped,
  }) : super(key: key);

  @override
  State<CuerpoBase> createState() => _CuerpoBaseState();
}

class _CuerpoBaseState extends State<CuerpoBase> {
  int selectedIndex = 0; //para que el índice inicial sea 0 (Descubre)

  void onItemTapped(int index) {
    setState(() {
      selectedIndex = index; 
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar,
      backgroundColor: ColorFondo,
      body: Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 12.0),
          child: Text(
            'Busca en Tlaltizapan',
            style: H2, 
          ),
        ),
        Expanded(
          child: widget.child,
        ),
      ],
    ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.public),
            label: 'Descubre',
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.bed_double),
            label: 'Hoteles',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.restaurant),
            label: 'Restaurantes',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.square),//no encontre un icono representativo
            label: 'Artesanos',
          ),
        ],
        currentIndex: selectedIndex,
        unselectedItemColor: Color.fromARGB(255, 122,122,122), 
  selectedItemColor: Color.fromARGB(255, 4,35,62),
        onTap: onItemTapped,
      ),
    );
  }
}