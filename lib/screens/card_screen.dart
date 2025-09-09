import 'package:fl_components/widget/widgets.dart';
import 'package:flutter/material.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Eventos Culturales')),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        children: const [
          CustomCardType1(),
          SizedBox(height: 10),
          CustomCardType2(
            name: 'Mexicanísimo el musical',
            imageUrl:
                'https://www.ucol.mx/content/agenda/adjuntos/400x220_2_1910.jpg',
          ),
          SizedBox(height: 10),
          CustomCardType2(
            name: 'La magia del folclór',
            imageUrl:
                'https://www.ucol.mx/content/agenda/adjuntos//400x200_1888.jpg',
          ),
          SizedBox(height: 10),
          CustomCardType2(
            imageUrl:
                'https://www.ucol.mx/content/agenda/adjuntos//400x220_1892.jpg',
          ),
          SizedBox(height: 100),
        ],
      ),
    );
  }
}
