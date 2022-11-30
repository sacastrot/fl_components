//Flutter
import 'package:flutter/material.dart';

//Owner
import 'package:fl_components/widgets/widgets.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Card Widget'),
        ),
        body: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          children: const [
            CustomCardType1(),
            SizedBox(height: 10,),
            CustomCardType2(name: 'Windows',imageUrl: 'http://iso.500px.com/wp-content/uploads/2014/07/paint-sunset.jpg'),
            SizedBox(height: 10,),
            CustomCardType2(imageUrl: 'http://iso.500px.com/wp-content/uploads/2014/07/mesa-after.jpg'),
            SizedBox(height: 10,),
            CustomCardType2(imageUrl: 'http://iso.500px.com/wp-content/uploads/2014/07/before-processing.jpg',),
            SizedBox(height: 10,),
            CustomCardType2(imageUrl: 'http://iso.500px.com/wp-content/uploads/2014/07/after-orton1.jpg',),
            SizedBox(height: 10,),
            CustomCardType2(imageUrl: 'https://img.freepik.com/vector-gratis/paisaje-montana-diseno-plano-dibujado-mano_23-2149157287.jpg?w=740&t=st=1666391568~exp=1666392168~hmac=4809b2582d1dc20164d22a0d95fc3472afa7491d6f9b0e999b86267c5a521b17',),
          ],
        ),
    );
  }
}