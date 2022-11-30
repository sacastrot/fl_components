import 'package:flutter/material.dart';

class Listview1Screen extends StatelessWidget {
  final options = const[
    'Iron Man', 'Bruja Scarlata', 'Hulk', 'Spiderman', 'Capitan America'
  ];
  const Listview1Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Listview Tipo 1'),
        ),
        body: ListView(
          children:[
            ...options.map((e) => ListTile(
              title: Text(e),
              trailing: const Icon(Icons.arrow_right),
            )).toList()
          ],
        )
    );
  }
}