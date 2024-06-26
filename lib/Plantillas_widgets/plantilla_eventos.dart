import 'package:flutter/material.dart';
import 'package:tlaltizapan_turistico/Componentes/incons.dart';
import 'package:tlaltizapan_turistico/Componentes/variables.dart';
import 'package:tlaltizapan_turistico/Plantillas_widgets/widget_carrucel.dart';
import 'package:tlaltizapan_turistico/PaginasPrincipales/descubre_cuerpo.dart';
import 'package:get/get.dart';
import 'widget_cambioImgs.dart';

class PlantillaEventos extends StatefulWidget {
  const PlantillaEventos({super.key});

  @override
  State<PlantillaEventos> createState() => _PlantillaEventosState();
}

class _PlantillaEventosState extends State<PlantillaEventos> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar,
      backgroundColor: ColorFondo,
      body: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Flexible(
            child: Row(
              children: [
                GestureDetector(
                  onTap: () {
                    Get.to(
                        () => CuerpoBase(
                              selectedIndex: 0,
                              onItemTapped: (int index) {},
                              child: Container(),
                            ),
                        arguments: {'index': 0});
                  },
                  child: Row(
                    children: [
                      Icon(
                        CupertinoIcons.chevron_left,
                        color: Colors.black,
                        size: 35,
                      ),
                      Text(
                        'Regresar',
                        style: H7,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SB8,
          Flexible(
            flex: 10,
            child: Scrollbar(
              thumbVisibility: true,
              child: SingleChildScrollView(
                  child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SB8,
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      WidgetImagenes(
                          imagenes: [
                            'https://www.billboard.com/wp-content/uploads/2024/02/gerardo-ortiz-la3c-2022-billboard-espanol-1548.jpg',
                            'https://www.gob.mx/cms/uploads/article/main_image/32528/comparsa-chinelos-tlaltizapan-morelos.jpg'
                          ],
                          title: ("Próximos eventos"),
                          description: ("Viernes 9 - jueves 15"),
                          nombres: ["Gerardo Ortiz", "Carnaval 2024"],
                          fechas: [
                            "Viernes 9 de febrero",
                            "Sábado 10 de febrero"
                          ],
                          onTap: () {}),
                      SB16,
                      Padding(
                        padding: const EdgeInsets.only(left: 15),
                        child: Text('Eventos recomendados', style: H2),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 15),
                        child: Text('Próximos a celebrarse', style: H3),
                      ),
                      SizedBox(
                        height: 210,
                        child: PageView(
                          controller: PageController(viewportFraction: 0.5),
                          scrollDirection: Axis.horizontal,
                          children: [
                            Widgetmediano(
                              imagePath:
                                  'https://www.elsoldecuernavaca.com.mx/local/ftq7j0-balneario-santa-isabel-tlaltizapan-5.jpg/ALTERNATES/LANDSCAPE_768/balneario-santa-isabel-tlaltizapan%20(5).jpg',
                              title: 'Chinelos',
                              fecha: 'Sabado 14 de Octubre',
                              onTap: () {},
                            ),
                            Widgetmediano(
                              imagePath:
                                  'https://www.elsoldecuernavaca.com.mx/local/ftq7j0-balneario-santa-isabel-tlaltizapan-5.jpg/ALTERNATES/LANDSCAPE_768/balneario-santa-isabel-tlaltizapan%20(5).jpg',
                              title: 'Danza Folclorica',
                              fecha: 'Sabado 14 de Octubre',
                              onTap: () {},
                            ),
                            Widgetmediano(
                              imagePath:
                                  'https://www.elsoldecuernavaca.com.mx/local/ftq7j0-balneario-santa-isabel-tlaltizapan-5.jpg/ALTERNATES/LANDSCAPE_768/balneario-santa-isabel-tlaltizapan%20(5).jpg',
                              title: 'Chinelos',
                              fecha: 'Sabado 14 de Octubre',
                              onTap: () {},
                            ),
                            Widgetmediano(
                              imagePath:
                                  'https://www.elsoldecuernavaca.com.mx/local/ftq7j0-balneario-santa-isabel-tlaltizapan-5.jpg/ALTERNATES/LANDSCAPE_768/balneario-santa-isabel-tlaltizapan%20(5).jpg',
                              title: 'Chinelos',
                              fecha: 'Sabado 14 de Octubre',
                              onTap: () {},
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SB16,
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 15),
                        child: Text('Eventos de danza', style: H2),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 15),
                        child: Text('Próximos a celebrarse', style: H3),
                      ),
                      SizedBox(
                        height: 210,
                        child: PageView(
                          controller: PageController(viewportFraction: 0.5),
                          scrollDirection: Axis.horizontal,
                          children: [
                            Widgetmediano(
                              imagePath:
                                  'https://www.elsoldecuernavaca.com.mx/local/ftq7j0-balneario-santa-isabel-tlaltizapan-5.jpg/ALTERNATES/LANDSCAPE_768/balneario-santa-isabel-tlaltizapan%20(5).jpg',
                              title: 'Chinelos',
                              fecha: 'Sabado 14 de Octubre',
                              onTap: () {},
                            ),
                            Widgetmediano(
                              imagePath:
                                  'https://www.elsoldecuernavaca.com.mx/local/ftq7j0-balneario-santa-isabel-tlaltizapan-5.jpg/ALTERNATES/LANDSCAPE_768/balneario-santa-isabel-tlaltizapan%20(5).jpg',
                              title: 'Danza Folclorica',
                              fecha: 'Sabado 14 de Octubre',
                              onTap: () {},
                            ),
                            Widgetmediano(
                              imagePath:
                                  'https://www.elsoldecuernavaca.com.mx/local/ftq7j0-balneario-santa-isabel-tlaltizapan-5.jpg/ALTERNATES/LANDSCAPE_768/balneario-santa-isabel-tlaltizapan%20(5).jpg',
                              title: 'Chinelos',
                              fecha: 'Sabado 14 de Octubre',
                              onTap: () {},
                            ),
                            Widgetmediano(
                              imagePath:
                                  'https://www.elsoldecuernavaca.com.mx/local/ftq7j0-balneario-santa-isabel-tlaltizapan-5.jpg/ALTERNATES/LANDSCAPE_768/balneario-santa-isabel-tlaltizapan%20(5).jpg',
                              title: 'Chinelos',
                              fecha: 'Sabado 14 de Octubre',
                              onTap: () {},
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 15),
                        child: Text('Eventos Gastronómicos', style: H2),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 15),
                        child: Text('Proximos a celebrarse', style: H3),
                      ),
                      SizedBox(
                        height: 210,
                        child: PageView(
                          controller: PageController(viewportFraction: 0.5),
                          scrollDirection: Axis.horizontal,
                          children: [
                            Widgetmediano(
                              imagePath:
                                  'https://www.elsoldecuernavaca.com.mx/local/ftq7j0-balneario-santa-isabel-tlaltizapan-5.jpg/ALTERNATES/LANDSCAPE_768/balneario-santa-isabel-tlaltizapan%20(5).jpg',
                              title: 'Chinelos',
                              fecha: 'Sabado 14 de Octubre',
                              onTap: () {},
                            ),
                            Widgetmediano(
                              imagePath:
                                  'https://www.elsoldecuernavaca.com.mx/local/ftq7j0-balneario-santa-isabel-tlaltizapan-5.jpg/ALTERNATES/LANDSCAPE_768/balneario-santa-isabel-tlaltizapan%20(5).jpg',
                              title: 'Danza Folclorica',
                              fecha: 'Sabado 14 de Octubre',
                              onTap: () {},
                            ),
                            Widgetmediano(
                              imagePath:
                                  'https://www.elsoldecuernavaca.com.mx/local/ftq7j0-balneario-santa-isabel-tlaltizapan-5.jpg/ALTERNATES/LANDSCAPE_768/balneario-santa-isabel-tlaltizapan%20(5).jpg',
                              title: 'Chinelos',
                              fecha: 'Sabado 14 de Octubre',
                              onTap: () {},
                            ),
                            Widgetmediano(
                              imagePath:
                                  'https://www.elsoldecuernavaca.com.mx/local/ftq7j0-balneario-santa-isabel-tlaltizapan-5.jpg/ALTERNATES/LANDSCAPE_768/balneario-santa-isabel-tlaltizapan%20(5).jpg',
                              title: 'Chinelos',
                              fecha: 'Sabado 14 de Octubre',
                              onTap: () {},
                            ),
                          ],
                        ),
                      ),
                    ],
                  )
                ],
              )),
            ),
          ),
        ],
      ),
      /*bottomNavigationBar: BottomNavigationBar(
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
      ),*/
    );
  }
}
