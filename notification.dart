import 'package:flutter/material.dart';

class Notificaciones extends StatelessWidget {
  String textoboton ="Si";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Notificaciones"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children:[
            Column(
              children: [
                Text('   Activar notifcaciones', style: TextStyle(color:Colors.black, fontSize: 18),),
                RaisedButton(
                  child: Text(textoboton, style:TextStyle(fontSize:26),),
                  
                  onPressed: () {
                      textoboton = "No";  //NO FUNCIONA
                  },
                ),
              ],
            ),
          ],
        ), 
      ),
    );
  }
}