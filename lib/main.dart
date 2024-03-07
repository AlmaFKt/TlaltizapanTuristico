import 'package:flutter/material.dart';
import 'package:tlaltizapan_turistico/Sesion_Usuario/Inicio_sesion.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tlaltizapán turístico',
      debugShowCheckedModeBanner: false,
      home: InicioSesion(),
    );
  }
}

