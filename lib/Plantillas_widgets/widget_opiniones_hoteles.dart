import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../Componentes/variables.dart';

class WidgetOpiniones extends StatelessWidget {
  final String imagePath;
  final String title;
  final String description;
  final String nombre;
  final String ubicacion;
  final String opiniones;
  final VoidCallback onTap;

  WidgetOpiniones({
    required this.imagePath,
    required this.title,
    required this.description,
    required this.nombre,
    required this.ubicacion,
    required this.opiniones,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Container(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          //Titulo
          Text(
            title,
            style: H6,
          ),
          const SizedBox(height: 2),
          //Descripción
          Text(
            description,
            style: H3,
          ),
          SB16,
          //Imagen con titulo
          Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(13),
                child: Image.network(
                  imagePath,
                  height: 140,
                  width: double.infinity,
                  fit: BoxFit.fill,
                ),
              ),
              Container(
                height: 140,
                width: 380,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(13),
                  gradient: LinearGradient(
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                    colors: [Colors.black.withOpacity(0.88), Colors.transparent],
                  ),
                ),
              ),
              Positioned(
                top: 15,
                left: 312,
                child: Container(
                  padding: EdgeInsets.only(
                      left: 10,
                      right: 10,
                      top: 5.5,
                      bottom: 2), 
                  decoration: BoxDecoration(
                    color: Colors.white, 
                    shape: BoxShape.circle,
                  ),
                  child: Icon(
                    CupertinoIcons.heart,
                    color: Colors.black,
                    size: 22,
                  ),
                ),
              ),
              Positioned(
                top: 55,
                left: 17,
                child: Text(
                  nombre,
                  style: GoogleFonts.roboto(
                    color: Colors.white,
                    fontSize: 18.5,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              Positioned(
                top: 83,
                left: 17,
                child: Text(
                  ubicacion,
                  style: GoogleFonts.roboto(
                    color: const Color.fromARGB(255, 246, 246, 246),
                    fontSize: 18,
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ),
              Positioned(
                top: 106,
                left: 17,
                child: Row(
                  children: [
                    Icon(Icons.star_rate_rounded,
                        color: Colors.white, size: 26),
                    const SizedBox(width: 6),
                    Text(
                      opiniones,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 19,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SB8,
          //Botón
          Container(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: onTap,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  //icono
                  Icon(Icons.info, color: Colors.white),
                  const SizedBox(width: 6),
                  Text(
                    'Más información',
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                ],
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: azulOscuro,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(12)),
                ),
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
