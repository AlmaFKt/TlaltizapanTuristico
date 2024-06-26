import 'package:flutter/material.dart';
import 'package:tlaltizapan_turistico/Plantillas_widgets/widgets_peque%C3%B1os/widget_carrucel_info.dart';
import 'package:tlaltizapan_turistico/Plantillas_widgets/widgets_grandes/widget_opiniones_hoteles.dart';
import '../Componentes/variables.dart';

class HotelesPagina extends StatefulWidget {
  const HotelesPagina({super.key});

  @override
  State<HotelesPagina> createState() => _HotelesPaginaState();
}

class _HotelesPaginaState extends State<HotelesPagina> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SB16,
          Expanded(
            child: Scrollbar(
              thumbVisibility: true,
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    WidgetOpiniones(
                      imagePath:
                          'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/1b/e9/4e/c4/las-estacas-parque-natural.jpg',
                      title: ("La selección del día"),
                      description: ("Basado en las opiniones de los usuarios"),
                      nombre: ("Hotel Santa Isabel"),
                      ubicacion: ("Tlaltizapán, Morelos"),
                      opiniones: ("4.4(32 opiniones)"),
                      onTap: () {},
                    ),
                    SB16,
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                              left: MediaQuery.of(context).size.width < 350
                                  ? 10
                                  : 15),
                          child: Text('Hoteles en tendencia', style: H2),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 15),
                          child: Text(
                              'Selecciones basadas en las opiniones de los usaurios',
                              style: H3),
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
                            children: listaHoteles(),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                              left: MediaQuery.of(context).size.width < 350
                                  ? 10
                                  : 15),
                          child: Text('Hoteles con 5 estrellas', style: H2),
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
                            children: listaHoteles(),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                              left: MediaQuery.of(context).size.width < 350
                                  ? 10
                                  : 15),
                          child: Text('Hoteles con piscina', style: H2),
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
                            children: listaHoteles(),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  List<Widget> listaHoteles() {
    return List.generate(5, (x){
     return WidgetMInfo(
          imagePath:
              ('https://x.cdrst.com/foto/hotel-sf/366aa/granderesp/hotel-piedras-de-sol-solaris-morelos-servicios-127bf8cd.jpg'),
          title: ('Hotel solaris'),
          ubicacion: ('Tlaltizapán, Centro'),
          onTap: () {});
    });
  }
}
