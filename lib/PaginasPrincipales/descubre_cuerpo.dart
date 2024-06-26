import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:tlaltizapan_turistico/Plantillas_widgets/pantallas/plantilla_eventos.dart';
import 'package:tlaltizapan_turistico/Plantillas_widgets/widgets_grandes/widget_principal_descubre.dart';
import '../Componentes/variables.dart';

class CuerpoBase extends StatefulWidget {
  const CuerpoBase({
    Key? key,
  }) : super(key: key);


  @override
  State<CuerpoBase> createState() => _CuerpoBaseState();
}

class _CuerpoBaseState extends State<CuerpoBase> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorFondo,
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
                          'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/1b/e9/4e/c4/las-estacas-parque-natural.jpg',
                      title: 'Tours',
                      description:
                          'Atrévete a vivir nuevas aventuras a través de recorridos guiados',
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
                    SB16,
                    WidgetDescubre(
                      imagePath:
                          'https://insurgenciamagisterial.com/wp-content/uploads/2019/07/CTM.jpg',
                      title: 'Servicios Básicos',
                      description:
                          'Obtén la ubicación y números de contacto de los servicios básicos de la zona',
                      onTap: () {},
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
}
