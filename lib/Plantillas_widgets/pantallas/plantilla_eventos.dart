import 'package:flutter/material.dart';
import 'package:tlaltizapan_turistico/Componentes/incons.dart';
import 'package:tlaltizapan_turistico/Componentes/variables.dart';
import 'package:tlaltizapan_turistico/Plantillas_widgets/widgets_peque%C3%B1os/widget_carrucel_boletos.dart';
import 'package:get/get.dart';
import '../../Responsivo/layout_responsivo.dart';
import '../../Responsivo/movil_body.dart';
import '../../Responsivo/tablet_body.dart';
import '../widgets_grandes/widget_cambioImgs.dart';

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
                    Get.to(() => ResponsiveLayout(
                          MobileBody: MovilBody(),
                          TabletBody: TabletBody(),
                        ));
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
                        padding: EdgeInsets.only(
                            left: MediaQuery.of(context).size.width < 350
                                ? 10
                                : 15),
                        child: Text('Eventos recomendados', style: H2),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 15),
                        child: Text('Próximos a celebrarse', style: H3),
                      ),
                      SizedBox(
                        height: 210,
                        child: PageView(
                          controller: PageController(
                            viewportFraction:
                                MediaQuery.of(context).size.width < 350
                                    ? 0.8
                                    : 0.5,
                          ),
                          scrollDirection: Axis.horizontal,
                          children: ListaEventos,
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
                          children: ListaEventos,
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
                          children: ListaEventos,
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
    );
  }

  List<Widget> ListaEventos = List.generate(5, (x) {
    return Widgetmediano(
      imagePath:
          'https://www.elsoldecuernavaca.com.mx/local/ftq7j0-balneario-santa-isabel-tlaltizapan-5.jpg/ALTERNATES/LANDSCAPE_768/balneario-santa-isabel-tlaltizapan%20(5).jpg',
      title: 'Chinelos',
      fecha: 'Sabado 14 de Octubre',
      onTap: () {},
    );
  });
}
