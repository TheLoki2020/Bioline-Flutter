import 'package:flutter/material.dart';

class Ayuda extends StatelessWidget {
  @override
  Widget build(BuildContext context_ayuda) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Ayuda"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Align(alignment: Alignment.center),
            Text('Bioine AgroScience Ltd.', style: TextStyle(fontSize: 18),),
            Text('Teléfono de contacto +44 1255 863200', style: TextStyle(fontSize: 18))

        ],)
      ),
    );
  }
}