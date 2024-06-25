import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:tlaltizapan_turistico/Plantillas_widgets/plantilla_eventos.dart';
import 'package:tlaltizapan_turistico/Plantillas_widgets/widget_cambioImgs.dart';
import 'package:tlaltizapan_turistico/Plantillas_widgets/widget_carrucel.dart';
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
          Scrollbar(
        thumbVisibility: true,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SB8,
              WidgetDescubre(
                imagePath:
                    'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/1b/e9/4e/c4/las-estacas-parque-natural.jpg',
                title: 'Tours',
                description:
                    'Atrévete a vivir nuevas aventuras a través de recorridos guiados',
                onTap: () {},
              ),
              SB16,
              WidgetDescubre(
                imagePath:
                    'https://www.radioformula.com.mx/u/fotografias/m/2022/6/30/f1280x720-589144_720819_5050.png',
                title: 'Eventos',
                description: 'Vive experiencias inolvidables',
                onTap: () {
                  Get.to(PlantillaEventos());
                },
              ),
              SB16,
              WidgetDescubre(
                imagePath:
                    'https://insurgenciamagisterial.com/wp-content/uploads/2019/07/CTM.jpg',
                title: 'Servicios Básicos',
                description:
                    'Obtén la ubicación y números de contacto de los servicios básicos de la zona',
                onTap: () {},
              ),
              SB16,
              WidgetDescubre(
                imagePath:
                    'https://www.elsoldecuernavaca.com.mx/local/ftq7j0-balneario-santa-isabel-tlaltizapan-5.jpg/ALTERNATES/LANDSCAPE_768/balneario-santa-isabel-tlaltizapan%20(5).jpg',
                title: 'Sitios de Interés',
                description:
                    'Obtén la ubicación de los lugares más emblemáticos de la zona',
                onTap: () {},
              ),
              WidgetImagenes(
                  imagePaths: [
                    'https://www.elsoldecuernavaca.com.mx/local/ftq7j0-balneario-santa-isabel-tlaltizapan-5.jpg/ALTERNATES/LANDSCAPE_768/balneario-santa-isabel-tlaltizapan%20(5).jpg', 
                    'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/1b/e9/4e/c4/las-estacas-parque-natural.jpg'
                  ],
                  title: ("Próximos eventos"),
                  description: ("Viernes 9 - jueves 15"),
                  nombre: ("Gerardo Ortiz"),
                  ubicacion: ("Sábado 10 de julio"),
                  onTap: (){})
            ],
          ),
        ),
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
