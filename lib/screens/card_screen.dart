import 'package:fl_components/widget/custom_card_type_1.dart';
import 'package:flutter/material.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        iconTheme: const IconThemeData(color: Colors.white),
        title: const Text(
          'Eventos Culturales',
          style: TextStyle(color: Colors.white, fontSize: 30),
        ),
      ),
      body: ListView(children: const [CustomCardType1()]),
    );
  }
}
