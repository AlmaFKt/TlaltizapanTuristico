import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:tlaltizapan_turistico/Plantillas_widgets/widget_opiniones_imagen.dart';
import 'package:tlaltizapan_turistico/Plantillas_widgets/widget_principal_descubre.dart';
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
      body:
          //Solo el ejemplo de la utilización del widget carta customizable
          Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SB8,
          WidgetOpiniones(
            imagePath:
                'https://images.trvl-media.com/lodging/1000000/40000/34500/34477/896aa082.jpg',
            title: 'La selección del día',
            description: 'Basado en las opiniones de los usuarios',
            nombre: 'Hotel Santa Isabel',
            ubicacion: 'Tlaltizapán Centro',
            opiniones: '4.4(32 opiniones)',
            onTap: () {},
          ),
          SB16,
          WidgetDescubre(
            imagePath:
                'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/1b/e9/4e/c4/las-estacas-parque-natural.jpg',
            title: 'Tours',
            description:
                'Atrévete a vivir nuevas aventuras a través de recorridos guiados',
            onTap: () {},
          ),
        ],
      ),
      //arreglo[] de bottomNvaigation
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
            icon: Icon(Icons.square), //no encontre un icono representativo
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
