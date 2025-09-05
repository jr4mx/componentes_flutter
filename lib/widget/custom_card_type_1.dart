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
            leading: Icon(Icons.music_note_rounded, color: Colors.indigo),
            title: Text('Concierto de Alientos'),
            subtitle: Text('Ensamble con estudiantes del IUBA'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: const [
              Icon(Icons.calendar_month, color: Colors.indigoAccent),
              Text('20 de Octubre 2023'),
              Icon(Icons.location_on, color: Colors.indigo),
              Text('Auditorio IUBA'),
            ],
          ), //horario
          Padding(
            padding: const EdgeInsets.only(right: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  //posicionado a la derecha
                  child: const Text('info'),
                  onPressed: () {
                    // Acción al presionar el botón de ver más
                  },
                ),
                TextButton(
                  //posicionado a la derecha
                  child: const Text('Editar'),
                  onPressed: () {
                    // Acción al presionar el botón de ver más
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
