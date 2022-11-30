import 'package:flutter/material.dart';

class Listview2Screen extends StatelessWidget {
  final options = const[
    'Futbol','Voley','Squash','Tennis','Baketball','Badminton','Tennis de mesa'
  ];
  const Listview2Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Listview Tipo 2'),
        ),
        body: ListView.separated(
          itemCount: options.length,
          // este construye algun elemento
          itemBuilder: (context, index) =>
            ListTile(
              title: Text(options[index]),
              trailing: const Icon(Icons.arrow_forward_ios_outlined),
              onTap: (){
                final sport = options[index];
                print(sport);
              },
            ),
          // Ponemos underscore para indiciar que loa parametros no sera usados
          separatorBuilder: (_,__) => const Divider(),
        )
    );
  }
}