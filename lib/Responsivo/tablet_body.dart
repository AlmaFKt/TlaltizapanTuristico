import 'package:flutter/material.dart';
import '../Componentes/variables.dart';

class TabletBody extends StatefulWidget {
  const TabletBody({super.key});

  @override
  State<TabletBody> createState() => _TabletBodyState();
}

class _TabletBodyState extends State<TabletBody> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar,
      backgroundColor: ColorFondo,
      body: Column(
        children: [
          Text('Tablet Body'),
        ],
      ),
    );
  }
}
