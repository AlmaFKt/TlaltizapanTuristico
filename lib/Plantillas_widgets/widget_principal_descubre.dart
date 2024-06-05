import 'package:flutter/material.dart';
import 'package:tlaltizapan_turistico/Componentes/variables.dart';

class WidgetDescubre extends StatelessWidget {
  final String imagePath;
  final String title;
  final String description;
  final VoidCallback onTap;

  WidgetDescubre({
    required this.imagePath,
    required this.title,
    required this.description,
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
            style: H1,
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
                borderRadius: BorderRadius.circular(10),
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
                  borderRadius: BorderRadius.circular(10),
                  gradient: LinearGradient(
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                    colors: [Colors.black.withOpacity(0.9), Colors.transparent],
                  ),
                ),
              ),
              Positioned(
                top: 48,
                left: 10,
                child: Text(
                  title,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 32,
                    fontWeight: FontWeight.w500,
                  ),
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
                  Text(
                    'Ver Todos',
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),

                  const SizedBox(width: 6),
//icono
                  Icon(Icons.chevron_right, color: Colors.white),
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
        ]),
      ),
    );
  }
}
