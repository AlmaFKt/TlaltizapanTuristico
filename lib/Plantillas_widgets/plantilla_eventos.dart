import 'package:flutter/material.dart';
import 'package:tlaltizapan_turistico/Componentes/incons.dart';
import 'package:tlaltizapan_turistico/Componentes/variables.dart';
import 'package:tlaltizapan_turistico/Plantillas_widgets/widget_carrucel.dart';

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
                Icon(
                  CupertinoIcons.chevron_left,
                  color: Colors.black,
                ),
                Text(
                  'Regresar',
                  style: H2,
                  selectionColor: Colors.black,
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
                          controller: PageController(viewportFraction: 0.7),
                          scrollDirection: Axis.horizontal,
                          children: [
                            Widgetmediano(
                              imagePath:
                                  'https://www.elsoldecuernavaca.com.mx/local/ftq7j0-balneario-santa-isabel-tlaltizapan-5.jpg/ALTERNATES/LANDSCAPE_768/balneario-santa-isabel-tlaltizapan%20(5).jpg',
                              title: 'Chinelos',
                              fecha: 'Sabado 14 de Octubre',
                              onTap: () {},
                              mensaje: 'Buscar Boletos',
                              icono: Icon(CupertinoIcons.tickets,
                                  color: Colors.white),
                            ),
                            Widgetmediano(
                              imagePath:
                                  'https://www.elsoldecuernavaca.com.mx/local/ftq7j0-balneario-santa-isabel-tlaltizapan-5.jpg/ALTERNATES/LANDSCAPE_768/balneario-santa-isabel-tlaltizapan%20(5).jpg',
                              title: 'Danza Folclorica',
                              fecha: 'Sabado 14 de Octubre',
                              onTap: () {},
                              mensaje: 'Buscar Boletos',
                              icono: Icon(CupertinoIcons.tickets,
                                  color: Colors.white),
                            ),
                            Widgetmediano(
                              imagePath:
                                  'https://www.elsoldecuernavaca.com.mx/local/ftq7j0-balneario-santa-isabel-tlaltizapan-5.jpg/ALTERNATES/LANDSCAPE_768/balneario-santa-isabel-tlaltizapan%20(5).jpg',
                              title: 'Chinelos',
                              fecha: 'Sabado 14 de Octubre',
                              onTap: () {},
                              mensaje: 'Buscar Boletos',
                              icono: Icon(CupertinoIcons.tickets,
                                  color: Colors.white),
                            ),
                            Widgetmediano(
                              imagePath:
                                  'https://www.elsoldecuernavaca.com.mx/local/ftq7j0-balneario-santa-isabel-tlaltizapan-5.jpg/ALTERNATES/LANDSCAPE_768/balneario-santa-isabel-tlaltizapan%20(5).jpg',
                              title: 'Chinelos',
                              fecha: 'Sabado 14 de Octubre',
                              onTap: () {},
                              mensaje: 'Buscar Boletos',
                              icono: Icon(CupertinoIcons.tickets,
                                  color: Colors.white),
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
                          controller: PageController(viewportFraction: 0.7),
                          scrollDirection: Axis.horizontal,
                          children: [
                            Widgetmediano(
                              imagePath:
                                  'https://www.elsoldecuernavaca.com.mx/local/ftq7j0-balneario-santa-isabel-tlaltizapan-5.jpg/ALTERNATES/LANDSCAPE_768/balneario-santa-isabel-tlaltizapan%20(5).jpg',
                              title: 'Chinelos',
                              fecha: 'Sabado 14 de Octubre',
                              onTap: () {},
                              mensaje: 'Buscar Boletos',
                              icono: Icon(CupertinoIcons.tickets,
                                  color: Colors.white),
                            ),
                            Widgetmediano(
                              imagePath:
                                  'https://www.elsoldecuernavaca.com.mx/local/ftq7j0-balneario-santa-isabel-tlaltizapan-5.jpg/ALTERNATES/LANDSCAPE_768/balneario-santa-isabel-tlaltizapan%20(5).jpg',
                              title: 'Danza Folclorica',
                              fecha: 'Sabado 14 de Octubre',
                              onTap: () {},
                              mensaje: 'Buscar Boletos',
                              icono: Icon(CupertinoIcons.tickets,
                                  color: Colors.white),
                            ),
                            Widgetmediano(
                              imagePath:
                                  'https://www.elsoldecuernavaca.com.mx/local/ftq7j0-balneario-santa-isabel-tlaltizapan-5.jpg/ALTERNATES/LANDSCAPE_768/balneario-santa-isabel-tlaltizapan%20(5).jpg',
                              title: 'Chinelos',
                              fecha: 'Sabado 14 de Octubre',
                              onTap: () {},
                              mensaje: 'Buscar Boletos',
                              icono: Icon(CupertinoIcons.tickets,
                                  color: Colors.white),
                            ),
                            Widgetmediano(
                              imagePath:
                                  'https://www.elsoldecuernavaca.com.mx/local/ftq7j0-balneario-santa-isabel-tlaltizapan-5.jpg/ALTERNATES/LANDSCAPE_768/balneario-santa-isabel-tlaltizapan%20(5).jpg',
                              title: 'Chinelos',
                              fecha: 'Sabado 14 de Octubre',
                              onTap: () {},
                              mensaje: 'Buscar Boletos',
                              icono: Icon(CupertinoIcons.tickets,
                                  color: Colors.white),
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
                          controller: PageController(viewportFraction: 0.7),
                          scrollDirection: Axis.horizontal,
                          children: [
                            Widgetmediano(
                              imagePath:
                                  'https://www.elsoldecuernavaca.com.mx/local/ftq7j0-balneario-santa-isabel-tlaltizapan-5.jpg/ALTERNATES/LANDSCAPE_768/balneario-santa-isabel-tlaltizapan%20(5).jpg',
                              title: 'Chinelos',
                              fecha: 'Sabado 14 de Octubre',
                              onTap: () {},
                              mensaje: 'Buscar Boletos',
                              icono: Icon(CupertinoIcons.tickets,
                                  color: Colors.white),
                            ),
                            Widgetmediano(
                              imagePath:
                                  'https://www.elsoldecuernavaca.com.mx/local/ftq7j0-balneario-santa-isabel-tlaltizapan-5.jpg/ALTERNATES/LANDSCAPE_768/balneario-santa-isabel-tlaltizapan%20(5).jpg',
                              title: 'Danza Folclorica',
                              fecha: 'Sabado 14 de Octubre',
                              onTap: () {},
                              mensaje: 'Buscar Boletos',
                              icono: Icon(CupertinoIcons.tickets,
                                  color: Colors.white),
                            ),
                            Widgetmediano(
                              imagePath:
                                  'https://www.elsoldecuernavaca.com.mx/local/ftq7j0-balneario-santa-isabel-tlaltizapan-5.jpg/ALTERNATES/LANDSCAPE_768/balneario-santa-isabel-tlaltizapan%20(5).jpg',
                              title: 'Chinelos',
                              fecha: 'Sabado 14 de Octubre',
                              onTap: () {},
                              mensaje: 'Buscar Boletos',
                              icono: Icon(CupertinoIcons.tickets,
                                  color: Colors.white),
                            ),
                            Widgetmediano(
                              imagePath:
                                  'https://www.elsoldecuernavaca.com.mx/local/ftq7j0-balneario-santa-isabel-tlaltizapan-5.jpg/ALTERNATES/LANDSCAPE_768/balneario-santa-isabel-tlaltizapan%20(5).jpg',
                              title: 'Chinelos',
                              fecha: 'Sabado 14 de Octubre',
                              onTap: () {},
                              mensaje: 'Buscar Boletos',
                              icono: Icon(CupertinoIcons.tickets,
                                  color: Colors.white),
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
