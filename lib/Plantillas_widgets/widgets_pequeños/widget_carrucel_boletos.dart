import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../Componentes/variables.dart';

class Widgetmediano extends StatelessWidget {
  final String imagePath;
  final String title;
  final String fecha;
  final VoidCallback onTap;

  Widgetmediano({
    required this.imagePath,
    required this.title,
    required this.fecha,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Flexible(
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.network(
                      imagePath,
                      height: 120,
                      width: 200,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Container(
                    height: 120,
                    width: 200,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        gradient: LinearGradient(
                          begin: Alignment.bottomLeft,
                          end: Alignment.bottomRight,
                          colors: [Colors.black, Colors.transparent],
                        )),
                  ),
                  Positioned(
                    top: 10,
                    left: 140,
                    child: Container(
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                      ),
                      child: Icon(
                        CupertinoIcons.heart,
                        color: Colors.black,
                        size: 18,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 45,
                    left: 10,
                    child: Text(
                      title,
                      style: GoogleFonts.roboto(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 70,
                    left: 10,
                    child: Text(
                      fecha,
                      style: GoogleFonts.roboto(
                        color: const Color.fromARGB(255, 246, 246, 246),
                        fontSize: 14,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 8),
              Flexible(
                child: Container(
                  width: 220,
                  child: ElevatedButton(
                    onPressed: onTap,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Flexible(
                          child: Text(
                            'Buscar boletos',
                             overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                        SizedBox(width: 7),
                        Icon(
                          CupertinoIcons.tickets,
                          size: 18,
                          color: Colors.white,
                        ),
                      ],
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: azulOscuro,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
