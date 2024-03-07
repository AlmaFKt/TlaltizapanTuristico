import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class InicioSesion extends StatefulWidget {
  InicioSesion({super.key});

  @override
  State<InicioSesion> createState() => _InicioSesionState();
}

class _InicioSesionState extends State<InicioSesion> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null,
      backgroundColor: Color.fromARGB(255, 246, 246, 246),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              //Botón de regreso
              Padding(
                padding: const EdgeInsets.only(
                    top: 16, bottom: 16, left: 10, right: 10),
                child: Align(
                  alignment: Alignment.topLeft,
                  //button
                  child: IconButton(
                    onPressed: () {
                      // Get.to(HomePage());
                    },
                    icon: const Icon(
                      Icons.arrow_back,
                      color: Color.fromARGB(255, 0, 0, 0),
                    ),
                  ),
                ),
              ),

              Center(
                child: Column(
                  children: [
                    //Titulo y logo
                    Padding(
                      padding: EdgeInsets.only(left: 30, right: 5),
                      child: Row(
                        children: [
                          Transform.rotate(
                            angle: 90 * pi / 180,
                            child: SvgPicture.asset(
                              'imagenes/2070573.svg',
                              height: 50,
                            ),
                          ),
                          Text(
                            'Tlaltizapán turístico',
                            style: TextStyle(
                                fontSize: 30,
                                color: Color.fromARGB(255, 0, 0, 0),
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),

                    
                    //formulario de inicio de sesión
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
