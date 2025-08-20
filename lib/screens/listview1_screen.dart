import 'package:flutter/material.dart';

class Listview1Screen extends StatelessWidget {
  const Listview1Screen({Key? key}) : super(key: key);
  final options = const [
    'José Rodrigo Pérez',
    'Luis Miguel Chávez',
    'Aranza Regina Murguía',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 123, 150, 110),
        centerTitle: true,
        iconTheme: const IconThemeData(color: Colors.white),
        title: const Text(
          'Estudiantes',
          style: TextStyle(color: Colors.white, fontSize: 30),
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        children: [
          ...options
              .map(
                (e) => ListTile(
                  title: Text(e),
                  leading: Icon(
                    Icons.person,
                    color: const Color.fromARGB(255, 140, 144, 147),
                  ),
                  trailing: Icon(Icons.arrow_forward_ios, color: Colors.grey),
                ),
              )
              .toList(),
        ],
      ),
    );
  }
}
