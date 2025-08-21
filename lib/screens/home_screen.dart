import 'package:fl_components/routes/app_routes.dart';
import 'package:fl_components/screens/listview1_screen.dart';
import 'package:fl_components/screens/listview2_screen%20.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 80, 86, 168),
        title: const Text(
          'Servicios Estudiantiles',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        elevation: 0,
      ),
      body: ListView.separated(
        itemBuilder: (context, index) => ListTile(
          leading: Icon(
            AppRoutes.menuOptions[index].icon,
            color: const Color.fromARGB(255, 71, 81, 172),
          ),
          title: Text(AppRoutes.menuOptions[index].name),
          /* onTap: () {
            final ruta = MaterialPageRoute(
              builder: (context) => const Listview2Screen(),
            );
            Navigator.push(context, ruta);
          },*/
          onTap: () {
            Navigator.pushNamed(context, AppRoutes.menuOptions[index].route);
          },
        ),
        separatorBuilder: (context, index) => Divider(),
        itemCount: AppRoutes.menuOptions.length,
      ),
    );
  }
}
