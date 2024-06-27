import 'package:flutter/material.dart';
import 'package:tlaltizapan_turistico/Plantillas_widgets/widget_carrucel_info.dart';
import '../Componentes/variables.dart';
import '../Plantillas_widgets/widget_opiniones_restaurantes.dart';

class RestaurantesPagina extends StatefulWidget {
  const RestaurantesPagina({super.key});

  @override
  State<RestaurantesPagina> createState() => _RestaurantesPaginaState();
}

class _RestaurantesPaginaState extends State<RestaurantesPagina> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SB8,
          BarraBusqueda,
          SB16,
          Expanded(
            child: Scrollbar(
              thumbVisibility: true,
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    WidgetOpinionesR(
                      imagePath:
                          'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/1b/e9/4e/c4/las-estacas-parque-natural.jpg',
                      title: ("La selección del día"),
                      description: ("Basado en las opiniones de los usuarios"),
                      nombre: ("Restaurant Santa Isabel"),
                      ubicacion: ("Cocina mediterránea"),
                      opiniones: ("4.4 (32)"),
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
                            children: listaRestaurantes(),
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
                            children: listaRestaurantes(),
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
                            children: 
                              listaRestaurantes() 
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

  List<Widget> listaRestaurantes() {
    return List.generate(5, (x) {
      return WidgetMInfo(
          imagePath:
              ('https://img.carta.menu/storage/media/company_gallery/39212499/conversions/contribution_gallery.jpg'),
          title: ('Hotel solaris'),
          ubicacion: ('Tlaltizapán, Centro'),
          onTap: () {});
    });
  }
}
