import 'package:flutter/material.dart';

class ResponsiveLayout extends StatelessWidget {
  final Widget MobileBody;
  final Widget TabletBody;

  ResponsiveLayout({required this.MobileBody, required this.TabletBody});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      //Medidas para app responsiva
      if (constraints.maxWidth < 430) {
        return MobileBody;
      } else {
        return TabletBody;
      }
    });
  }
}
