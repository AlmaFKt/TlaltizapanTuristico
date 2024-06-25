import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../Componentes/variables.dart';

class WidgetImagenes extends StatefulWidget {
  final List<String> imagePaths;
  final String title;
  final String description;
  final String nombre;
  final String ubicacion;
  final VoidCallback onTap;

  WidgetImagenes({
    required this.imagePaths,
    required this.title,
    required this.description,
    required this.nombre,
    required this.ubicacion,
    required this.onTap,
  });

  @override
  _WidgetImagenesState createState() => _WidgetImagenesState();
}

class _WidgetImagenesState extends State<WidgetImagenes> {
  PageController _pageController = PageController();
  Timer? _timer;
  int _currentPage = 0;

  @override
  void initState() {
    super.initState();
    _timer = Timer.periodic(Duration(seconds: 3), (Timer timer) {
      if (_currentPage < widget.imagePaths.length - 1) {
        _currentPage++;
      } else {
        _currentPage = 0;
      }

      if (_pageController.hasClients) {
        _pageController.animateToPage(
          _currentPage,
          duration: Duration(milliseconds: 350),
          curve: Curves.easeIn,
        );
      }
    });
  }

  @override
  void dispose() {
    _pageController.dispose();
    _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Container(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          // Titulo
          Text(
            widget.title,
            style: H6,
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
                  child: PageView.builder(
                    controller: _pageController,
                    itemCount: widget.imagePaths.length,
                    onPageChanged: (int page) {
                      setState(() {
                        _currentPage = page;
                      });
                    },
                    itemBuilder: (context, index) {
                      return Image.network(
                        widget.imagePaths[index],
                        height: 140,
                        width: double.infinity,
                        fit: BoxFit.fill,
                      );
                    },
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
                  children: List.generate(widget.imagePaths.length, (index) {
                    return Container(
                      width: 8.0,
                      height: 8.0,
                      margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: _currentPage == index ? Colors.white : Colors.grey,
                      ),
                    );
                  }),
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
                    bottom: 2,
                  ), // Add some padding if you want
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
                  widget.nombre,
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
                  widget.ubicacion,
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
