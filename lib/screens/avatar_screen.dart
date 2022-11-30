import 'package:flutter/material.dart';

class AvatarScreen extends StatelessWidget {
  const AvatarScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Avatars'),
          actions: [
            Container(
              // External separation of the element
              margin: const EdgeInsets.only(right: 5),
              child: CircleAvatar(
                backgroundColor: Colors.indigo[900],
                child: const Text('SL'),
              ),
            )
          ],
        ),
        body: const Center(
          child: CircleAvatar(
            maxRadius: 80,
            backgroundImage: NetworkImage('https://cdn.pixabay.com/photo/2020/12/09/11/29/stan-lee-5817167_960_720.png')
          ),
        )
    );
  }
}
