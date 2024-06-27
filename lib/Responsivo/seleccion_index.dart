import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:tlaltizapan_turistico/Componentes/variables.dart';
import 'package:tlaltizapan_turistico/PaginasPrincipales/descubre_cuerpo.dart';
import 'package:tlaltizapan_turistico/PaginasPrincipales/hoteles_cuerpo.dart';
import 'package:tlaltizapan_turistico/Plantillas_widgets/plantilla_eventos.dart';

import '../PaginasPrincipales/restaurantes_cuerpo.dart';

class SeleccionIndex extends StatefulWidget {
  final Widget child;
  final int selectedIndex;
  final void Function(int) onItemTapped;

  const SeleccionIndex({
    Key? key,
    required this.child,
    required this.selectedIndex,
    required this.onItemTapped,
  }) : super(key: key);

  @override
  _SeleccionIndexState createState() => _SeleccionIndexState();
}

class _SeleccionIndexState extends State<SeleccionIndex> {
  int selectedIndex = 0;

  final List<Widget> _widgetOptions = [
    PlantillaEventos(),
    //age2Widget(),
    // Add more widgets/pages here as needed
  ];

  void onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  Widget getPageWidget(int index) {
    switch (index) {
      case 0:
        return CuerpoBase();
      case 1:
        return HotelesPagina();
      case 2:
        return RestaurantesPagina();
      //case 3:
      // return ArtesanosPage();
      default:
        return CuerpoBase();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar,
      body: getPageWidget(selectedIndex),
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
            icon: Icon(
                Icons.square), // Consider finding a more representative icon
            label: 'Artesanos',
          ),
        ],
        currentIndex: selectedIndex,
        unselectedItemColor: gris,
        selectedItemColor: azulOscuro,
        onTap: onItemTapped,
      ),
    );
  }
}
