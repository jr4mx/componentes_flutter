import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fl_components/widget/widgets.dart';

class AlertScreen extends StatelessWidget {
  const AlertScreen({Key? key}) : super(key: key);
  void displayDialogIOS(BuildContext context) {
    showCupertinoDialog(
      context: context,
      builder: (context) {
        return CupertinoAlertDialog(
          title: Text('últimos lugares'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text('Ingresa tus datos para reservar tu lugar'),
              SizedBox(height: 30),
              Image.network(
                'https://www.ucol.mx/content/agenda/adjuntos//400x220_1892.jpg',
                width: 100,
                height: 100,
              ),
            ],
          ),
          actions: [
            TextButton(
              style: TextButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50),
                ),
              ),
              onPressed: () => Navigator.pop(context),
              child: Text('Salir'),
            ),
          ],
        );
      },
    );
  }

  void displayDialog(BuildContext context) {
    showDialog(
      barrierDismissible: false,
      context: context,
      builder: (context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          title: Text('últimos lugares'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text('Ingresa tus datos para reservar tu lugar'),
              SizedBox(height: 10),
              Image.network(
                'https://www.ucol.mx/content/agenda/adjuntos//400x220_1892.jpg',
              ),
            ],
          ),
          actions: [
            TextButton(
              style: TextButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50),
                ),
              ),
              onPressed: () => Navigator.pop(context),
              child: Text('Salir'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          child: Text(
            'Mostrar mensaje',
            style: TextStyle(color: Color.fromARGB(255, 236, 234, 234)),
          ),
          onPressed: () => Platform.isAndroid
              ? displayDialog(context)
              : displayDialogIOS(context),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.close),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
    );
  }
}
