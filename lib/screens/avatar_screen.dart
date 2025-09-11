import 'package:flutter/material.dart';

class AvatarScreen extends StatelessWidget {
  const AvatarScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Rodrigo R4mx'),
        centerTitle: true,
        actions: const [
          CircleAvatar(
            backgroundImage: NetworkImage(
              'https://avatars.githubusercontent.com/u/81383568?v=4&size=64',
            ),
            radius: 20,
          ),
          SizedBox(width: 10),
        ],
      ),
      body: const Center(child: Text('Usuario Registrado')),
    );
  }
}
