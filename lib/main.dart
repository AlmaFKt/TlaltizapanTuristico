import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'Responsivo/layout_responsivo.dart';
import 'Responsivo/movil_body.dart';
import 'Responsivo/tablet_body.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Tlaltizapán turístico',
      debugShowCheckedModeBanner: false,
      //Se llaman los widgets responsivos
      home: ResponsiveLayout(
        MobileBody: MovilBody(),
        TabletBody: TabletBody(),
      ),
    );
  }
}
