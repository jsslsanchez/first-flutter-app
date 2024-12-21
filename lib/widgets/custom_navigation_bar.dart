import 'package:flutter/material.dart';

class CustomNavigationBar extends StatelessWidget {
  const CustomNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(elevation: 0.0, items: const [
      BottomNavigationBarItem(label: 'Balance', icon: Icon(Icons.home)),
      BottomNavigationBarItem(label: 'Graficos', icon: Icon(Icons.graphic_eq)),
      BottomNavigationBarItem(
          label: 'Configuracion', icon: Icon(Icons.settings)),
    ]);
  }
}
