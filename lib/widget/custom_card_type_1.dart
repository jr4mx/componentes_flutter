import 'package:fl_components/theme/app_theme.dart';
import 'package:flutter/material.dart';

class CustomCardType1 extends StatelessWidget {
  const CustomCardType1({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(10),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ListTile(
            leading: Icon(Icons.person, color: AppTheme.primaryC),
            title: Text('José Rodrigo Pérez'),
            subtitle: Text('Estudiante de Ingeniería en Sistemas'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextButton(
                //posicionado a la derecha
                child: const Text('Ver más'),
                onPressed: () {
                  // Acción al presionar el botón de ver más
                },
              ),
              TextButton.icon(
                //posicionado a la derecha
                icon: Icon(Icons.edit, color: AppTheme.primaryC),
                label: const Text('Editar'),
                onPressed: () {
                  // Acción al presionar el botón de ver más
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
