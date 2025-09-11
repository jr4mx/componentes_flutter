import 'package:fl_components/models/models.dart';
import 'package:flutter/material.dart';

import '../screens/screens.dart';

class AppRoutes {
  static const initialRoute = 'home';
  static final menuOptions = <MenuOption>[
    MenuOption(
      route: 'home',
      name: 'Inicio',
      screen: const HomeScreen(),
      icon: Icons.home,
    ),
    MenuOption(
      route: 'listview1',
      name: 'Estudiantes Activos',
      icon: Icons.list_alt,
      screen: const Listview1Screen(),
    ),
    MenuOption(
      route: 'listview2',
      name: 'Estudiantes Inactivos',
      icon: Icons.list_outlined,
      screen: const Listview2Screen(),
    ),
    MenuOption(
      route: 'alert',
      name: 'Notificaciones - Alertas',
      icon: Icons.add_alert,
      screen: const AlertScreen(),
    ),
    MenuOption(
      route: 'card',
      name: 'Actividades Culturales',
      icon: Icons.music_note_outlined,
      screen: const CardScreen(),
    ),
    MenuOption(
      route: 'avatar',
      name: 'Perfil de Usuario',
      icon: Icons.supervised_user_circle,
      screen: const AvatarScreen(),
    ),
  ];

  static Map<String, Widget Function(BuildContext)> routes = {
    'home': (BuildContext context) => const HomeScreen(),
    'listview1': (BuildContext context) => const Listview1Screen(),
    'listview2': (BuildContext context) => const Listview2Screen(),
    'alert': (BuildContext context) => const AlertScreen(),
    'card': (BuildContext context) => const CardScreen(),
  };
  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    final Map<String, Widget Function(BuildContext)> appRoutes = {};
    for (final option in menuOptions) {
      appRoutes.addAll({option.route: (BuildContext context) => option.screen});
    }
    return appRoutes;
  }

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    return MaterialPageRoute(
      builder: (BuildContext context) => const AlertScreen(),
    );
  }
}
