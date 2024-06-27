import 'package:flutter/material.dart';
import 'package:tlaltizapan_turistico/Plantillas_widgets/widgets_peque%C3%B1os/widget_carrucel_info.dart';
import 'package:tlaltizapan_turistico/Plantillas_widgets/widgets_grandes/widget_opiniones_hoteles.dart';
import '../Componentes/variables.dart';

class ArtesanosPagina extends StatefulWidget {
  const ArtesanosPagina({super.key});

  @override
  State<ArtesanosPagina> createState() => _ArtesanosPaginaState();
}

class _ArtesanosPaginaState extends State<ArtesanosPagina> {
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
                          'https://www.24morelos.com/content/images/size/w1304/wp-content/uploads/2019/04/artesanias.jpg',
                      title: ("Artesano destacado"),
                      description: ("Basado en las opiniones de los usuarios"),
                      nombre: ("Artesanias Eclipse"),
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
                          child: Text('Artesanos populares', style: H2),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 15),
                          child: Text('Basado en las opiniones de los usuarios',
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
                            children: listaArtesanos(),
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
                          child: Text('Madera tallada', style: H2),
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
                            children: listaArtesanos(),
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
                          child: Text('Trajes de chinelo', style: H2),
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
                            children: listaArtesanos(),
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
                          child: Text('Talabartería', style: H2),
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
                            children: listaArtesanos(),
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

  List<Widget> listaArtesanos() {
    return List.generate(5, (x) {
      return WidgetMInfo(
          imagePath:
              ('https://tlaltizapandezapata.gob.mx/media/fotos/noticia/789-126813806_4049756128410409_7421297113215788760_n.jpg'),
          title: ('Mamai artesanias'),
          ubicacion: ('Tlaltizapán, Centro'),
          onTap: () {});
    });
  }
}
