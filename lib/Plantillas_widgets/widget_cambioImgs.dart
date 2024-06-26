import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../Componentes/variables.dart';

class WidgetImagenes extends StatefulWidget {
  final List<String> imagenes;
  final String title;
  final String description;
  final List<String> nombres;
  final List<String> fechas;
  final VoidCallback onTap;

  WidgetImagenes({
    required this.imagenes,
    required this.title,
    required this.description,
    required this.nombres,
    required this.fechas,
    required this.onTap,
  });

  @override
  _WidgetImagenesState createState() => _WidgetImagenesState();
}

class _WidgetImagenesState extends State<WidgetImagenes> {
  Timer? _timer;
  int _currentPage = 0;

  @override
  void initState() {
    super.initState();
    _timer = Timer.periodic(Duration(seconds: 5), (Timer timer) {
      setState(() {
        if (_currentPage < widget.imagenes.length - 1) {
          _currentPage++;
        } else {
          _currentPage = 0;
        }
      });
    });
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          const EdgeInsets.only(top: 15.0, bottom: 15, left: 19, right: 19),
      child: Container(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          // Título
          Text(
            widget.title,
            style: H2,
          ),
          const SizedBox(height: 2),
          // Descripción
          Text(
            widget.description,
            style: H3,
          ),
          SB16,
          // Deslizador de imágenes con título
          Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(13),
                child: Container(
                  height: 140,
                  width: double.infinity,
                  child: AnimatedSwitcher(
                    duration: Duration(seconds: 1),
                    child: Image.network(
                      widget.imagenes[_currentPage],
                      key: ValueKey<int>(_currentPage),
                      height: 140,
                      width: double.infinity,
                      fit: BoxFit.fill,
                    ),
                  ),
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
                    colors: [
                      Colors.black.withOpacity(0.88),
                      Colors.transparent,
                    ],
                  ),
                ),
              ),
              Positioned(
                bottom: 10,
                left: 170,
                child: Row(
                  children: List.generate(widget.imagenes.length, (index) {
                    return Container(
                      width: 8.0,
                      height: 8.0,
                      margin:
                          EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: _currentPage == index
                            ? Color.fromARGB(255, 174, 67, 67)
                            : Colors.grey,
                      ),
                    );
                  }),
                ),
              ),
              Positioned(
                top: 15,
                left: 328,
                child: Container(
                  padding: EdgeInsets.only(
                    left: 10,
                    right: 10,
                    top: 5.5,
                    bottom: 2,
                  ),
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
                top: 60,
                left: 17,
                child: Text(
                  widget.nombres[_currentPage],
                  style: GoogleFonts.roboto(
                    color: Colors.white,
                    fontSize: 21,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              Positioned(
                top: 86,
                left: 17,
                child: Text(
                  widget.fechas[_currentPage],
                  style: GoogleFonts.roboto(
                    color: const Color.fromARGB(255, 246, 246, 246),
                    fontSize: 17,
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ),
            ],
          ),
          SB8,
          // Botón
          Container(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: widget.onTap,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Buscar boletos',
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                  const SizedBox(width: 6),
                  // Icono
                  Icon(CupertinoIcons.ticket, color: Colors.white),
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
