//File para definir las variables de estilo que se usaran y/o reutilizaran en la aplicacion
import 'package:flutter/cupertino.dart';
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
TextStyle H6 = GoogleFonts.roboto(
  textStyle: const TextStyle(
    color: Color.fromARGB(255, 0, 0, 0),
    fontSize: 24,
    fontWeight: FontWeight.bold,
  ),
);

TextStyle H7 = GoogleFonts.roboto(
  textStyle: const TextStyle(
    color: Color.fromARGB(255, 0, 0, 0),
    fontSize: 16,
    fontWeight: FontWeight.w500,
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
            'imagenes/pueblos_magicos.png',
            height: 85,
            width: 85,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 35),
          child: GestureDetector(
            onTap: () {
              Get.to(() => InicioSesion());
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

final BarraBusqueda =  Padding(
            padding: const EdgeInsets.symmetric(horizontal: 19.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Busca en Tlaltizapan",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 8),
                Row(
                  children: [
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: "Buscar...",
                          prefixIcon: Icon(Icons.search),
                          contentPadding: EdgeInsets.symmetric(vertical: 8.0),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            borderSide: BorderSide.none,
                          ),
                          filled: true,
                          fillColor: Color.fromARGB(255, 226, 228, 236),
                        ),
                      ),
                    ),
                    Container(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          IconButton(
                            icon: Icon(CupertinoIcons.slider_horizontal_3),
                            onPressed: () {},
                          ),
                          Text("Filtrar", style: TextStyle(fontSize: 13)),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          );
