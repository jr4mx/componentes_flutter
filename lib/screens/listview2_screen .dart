import 'package:flutter/material.dart';

class Listview2Screen extends StatelessWidget {
  final options = const [
    'José Rodrigo Pérez',
    'Luis Miguel Chávez',
    'Aranza Regina Murguía',
    'María Fernanda López',
    'Carlos Alberto Hernández',
    'Ana Sofía Martínez',
    'Diego Alejandro Torres',
  ];
  const Listview2Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        iconTheme: const IconThemeData(color: Colors.white),
        title: const Text(
          'Estudiantes List2',
          style: TextStyle(color: Colors.white, fontSize: 30),
        ),
      ),
      body: ListView.separated(
        itemBuilder: (context, i) => ListTile(
          title: Text(options[i]),
          trailing: const Icon(Icons.arrow_forward_ios, color: Colors.green),
          onTap: () {
            final NombreEstudiante = options[i];
            print(NombreEstudiante);
            // Here you can navigate to another screen or perform an action
          },
        ),
        separatorBuilder: (context, index) => const Divider(),
        itemCount: options.length,
      ),
    );
  }
}
