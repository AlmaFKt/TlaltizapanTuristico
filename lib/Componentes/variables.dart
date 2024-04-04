//File para definir las variables de estilo que se usaran y/o reutilizaran en la aplicacion
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../Sesion_Usuario/Inicio_sesion.dart';

//Estilos de texto
TextStyle H1 = GoogleFonts.roboto(
  textStyle: const TextStyle(
    color: Color.fromARGB(255, 0, 0, 0),
    fontSize: 26,
    fontWeight: FontWeight.bold,
  ),
);

TextStyle H2 = GoogleFonts.roboto(
  textStyle: const TextStyle(
    color: Color.fromARGB(255, 0, 0, 0),
    fontSize: 21,
    fontWeight: FontWeight.w500,
  ),
);

TextStyle H3 = GoogleFonts.roboto(
  textStyle: const TextStyle(
    color: Color.fromARGB(255, 95, 95, 95),
    fontSize: 18.5,
    fontWeight: FontWeight.w300,
  ),
);

TextStyle H4 = GoogleFonts.roboto(
  textStyle: const TextStyle(
    color: Color.fromARGB(255, 145, 145, 145),
    fontSize: 14,
    fontWeight: FontWeight.normal,
  ),
);
//Texto extra
TextStyle H5 = GoogleFonts.roboto(
  textStyle: const TextStyle(
    color: Color.fromARGB(255, 4, 35, 62),
    fontSize: 24,
    fontWeight: FontWeight.bold,
  ),
);
//Color de fondo (sin tema oscuro y claro por el momento)
Color ColorFondo = Color.fromARGB(255, 239, 243, 248);

//Color tono azul oscuro y gris
Color azulOscuro = Color.fromARGB(255, 4, 35, 62);
Color gris = Color.fromARGB(255, 122, 122, 122);

//Espacios con tamaños predefinidos considerando el diseño figma
final SB8 = const SizedBox(height: 8);
final SB16 = const SizedBox(height: 16);
final SB36 = const SizedBox(height: 36);

//Barra de navegación superior
PreferredSize appBar = PreferredSize(
  preferredSize: Size.fromHeight(100),
  child: Container(
    color: ColorFondo,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.asset(
            'imagenes/pueblos-magicos-png.png',
            height: 85,
            width: 85,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 35),
          child: GestureDetector(
            onTap: () {
              Get.to(InicioSesion());
            },
            child: Icon(
              Icons.menu,
              size: 30,
              color: gris,
            ),
          ),
        ),
      ],
    ),
  ),
);
