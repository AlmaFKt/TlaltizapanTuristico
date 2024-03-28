import 'package:flutter/material.dart';
import 'cuerpo_base.dart';

class TabletBody extends StatefulWidget {
  const TabletBody({super.key});

  @override
  State<TabletBody> createState() => _TabletBodyState();
}

class _TabletBodyState extends State<TabletBody> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return CuerpoBase(
      child: Column(
        children: [
          // Add specific content for tablet layout
        ],
      ),
      selectedIndex: _selectedIndex,
      onItemTapped: (index) {
        setState(() {
          _selectedIndex = index;
        });
      },
    );
  }
}
