import 'package:flutter/material.dart' show IconData, Widget;

class MenuOption {
  // ruta del item del menu
  final String route;
  // icono de tipo IconData
  final IconData icon;
  // Nombre en el ListView
  final String name;
  // Pantalla (Widget) que sera mostrado
  final Widget screen;

  MenuOption({
    required this.route,
    required this.icon,
    required this.name,
    required this.screen,
  });
}