import 'dart:math';

import 'package:flutter/material.dart';

class AnimatedScreen extends StatefulWidget {
  const AnimatedScreen({Key? key}) : super(key: key);

  @override
  State<AnimatedScreen> createState() => _AnimatedScreenState();
}

class _AnimatedScreenState extends State<AnimatedScreen> {

  //Properties
  double _width = 50;
  double _height = 50;
  Color _color = Colors.indigo;
  BorderRadiusGeometry _border = BorderRadius.circular(10);

  void changeShape(){

    final random = Random();

    _width = random.nextInt(200).toDouble() + 70;
    _height = random.nextInt(200).toDouble() + 70;
    _color = Color.fromRGBO(
        random.nextInt(255),
        random.nextInt(255),
        random.nextInt(255),
        1);
    _border = BorderRadius.circular(random.nextInt(100).toDouble()+10);
    setState(() {

    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Animated Container'),
        ),
        body: Center(
          // Se puede ver como un div en html
          child: AnimatedContainer(
            width: _width,
            height: _height,
            decoration: BoxDecoration(
              color: _color,
              borderRadius: _border
            ),
            duration: const Duration(milliseconds: 300),
            curve: Curves.bounceOut,
          ),
        ),
        floatingActionButton: FloatingActionButton(
        onPressed: changeShape ,
        child: const Icon(Icons.play_arrow, size: 40,),
    ),
    );
  }
}
