import 'package:flutter/material.dart';

class AlertScreen extends StatelessWidget {
  const AlertScreen({Key? key}) : super(key: key);

  void displayDialog(BuildContext context){
    showDialog(
      barrierDismissible: false,
      context: context,
      builder: (context) {
      return AlertDialog(
        elevation: 5,
        title: const Text('Titulo Alarm'),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        content: Column(
          // Permitir que los hijos determinen el tamaño del column
          mainAxisSize: MainAxisSize.min,
          children: const [
            Text('this is the content'),
            SizedBox(height: 10,),
            FlutterLogo(size: 100,)
          ],
        ),
        actions: [
          TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Cancel')
          )
        ],
      );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
            onPressed: (){ displayDialog(context);},
            child: const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text('Show alert',style: TextStyle(fontSize: 16),),
            )
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.close),
        onPressed: (){
          Navigator.pop(context);
        },
      ),
    );
  }
}
