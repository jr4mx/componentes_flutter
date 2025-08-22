import 'package:flutter/material.dart';
import 'package:fl_components/widget/widgets.dart';

class AlertScreen extends StatelessWidget {
  const AlertScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        children: [CustomCardType1()], // Add your alert widgets here
      ),
    );
  }
}
