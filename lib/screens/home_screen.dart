import 'package:fl_components/screens/listview1_screen.dart';
import 'package:fl_components/screens/listview2_screen%20.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 92, 112, 243),
        title: const Text(
          'Componentes en Flutter',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        elevation: 0,
      ),
      body: ListView.separated(
        itemBuilder: (context, index) => ListTile(
          leading: const Icon(Icons.access_alarm_outlined),
          title: const Text('Nombre de la ruta'),
          onTap: () {
            final ruta = MaterialPageRoute(
              builder: (context) => const Listview2Screen(),
            );
            Navigator.push(context, ruta);
          },
        ),
        separatorBuilder: (context, index) => Divider(),
        itemCount: 50,
      ),
    );
  }
}
