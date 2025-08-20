import 'package:flutter/material.dart' show IconData;
import 'package:flutter/widgets.dart';

class MenuOption {
  final String route;
  final String name;
  final IconData icon;
  final Widget screen;

  const MenuOption({
    required this.route,
    required this.icon,
    required this.name,
    required this.screen,
  });
}
