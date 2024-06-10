import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tlaltizapan_turistico/Componentes/variables.dart';

class Widgetmediano extends StatelessWidget {
  final String imagePath;
  final String title;
  final String fecha;
  final String mensaje;
  final Icon icono;
  final VoidCallback onTap;

  Widgetmediano({
    required this.imagePath,
    required this.title,
    required this.fecha,
    required this.onTap,
    required this.mensaje,
    required this.icono,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(13),
                  child: Image.network(
                    imagePath,
                    height: 140,
                    width: 250,
                    fit: BoxFit.fill,
                  ),
                ),
                Container(
                  height: 140,
                  width: 250,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(13),
                      gradient: LinearGradient(
                        begin: Alignment.bottomLeft,
                        end: Alignment.bottomRight,
                        colors: [Colors.black, Colors.transparent],
                      )),
                ),
                Positioned(
                  top: 15,
                  left: 200,
                  child: Container(
                    padding: EdgeInsets.only(
                        left: 10,
                        right: 10,
                        top: 5.5,
                        bottom: 2), // Add some padding if you want
                    decoration: BoxDecoration(
                      color: Colors.white, // Change this to your desired color
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
                    title,
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
                    fecha,
                    style: GoogleFonts.roboto(
                      color: const Color.fromARGB(255, 246, 246, 246),
                      fontSize: 18,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ),
              ],
            ),
            SB8,
            Container(
              width: 250,
              child: ElevatedButton(
                onPressed: onTap,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      mensaje,
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                    //icono
                    icono,
                    const SizedBox(width: 6),
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
          ],
        ),
      ),
    );
  }
}
