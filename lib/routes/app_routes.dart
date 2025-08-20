import 'package:fl_components/models/models.dart';
import 'package:flutter/material.dart';

import '../screens/screens.dart';

class AppRoutes {
  static const initialRoute = 'home';
  static final menuOptions = <MenuOption>[
    MenuOption(
      route: 'home',
      name: 'Home Screen',
      screen: const HomeScreen(),
      icon: Icons.home,
    ),
    MenuOption(
      route: 'listview1',
      name: 'Listview tipo 1',
      icon: Icons.list_alt,
      screen: const Listview1Screen(),
    ),
    MenuOption(
      route: 'listview2',
      name: 'Listview tipo 2',
      icon: Icons.list_outlined,
      screen: const Listview2Screen(),
    ),
    MenuOption(
      route: 'alert',
      name: 'Alertas - Alerts',
      icon: Icons.add_alert,
      screen: const AlertScreen(),
    ),
    MenuOption(
      route: 'card',
      name: 'Tarjetas - Cards',
      icon: Icons.credit_card,
      screen: const CardScreen(),
    ),
  ];

  static Map<String, Widget Function(BuildContext)> routes = {
    'home': (BuildContext context) => const HomeScreen(),
    'listview1': (BuildContext context) => const Listview1Screen(),
    'listview2': (BuildContext context) => const Listview2Screen(),
    'alert': (BuildContext context) => const AlertScreen(),
    'card': (BuildContext context) => const CardScreen(),
  };
  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    return MaterialPageRoute(
      builder: (BuildContext context) => const AlertScreen(),
    );
  }
}
