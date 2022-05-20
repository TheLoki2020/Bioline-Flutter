import 'package:flutter/material.dart';
import 'package:flutter_application_1/app/notification.dart';
import 'package:flutter_application_1/app/cuenta.dart';
import 'package:flutter_application_1/app/ayuda.dart';

class Configuracion extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Configuración', style:TextStyle(fontSize: 30)),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children:[
            Column(
              children: [
                Row(
                  children: [
                    Align(alignment: Alignment.centerLeft),
                    TextButton.icon(
                      label: Text('Notificaciones', style:TextStyle(fontSize:26)),
                      icon:Icon(Icons.notifications),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context_notificaciones) => Notificaciones()),
                          );
                      },
                      ),
                  ],
                ),
                Row(children: [Align(alignment: Alignment.centerLeft),Text('   (Des)activar notificaciones', style: TextStyle(color:Colors.grey[500]),textAlign: TextAlign.left),],)
              ],
            ),
            Column(
              children: [
                Row(
                  children:[
                    Align(alignment: Alignment.centerLeft),
                    TextButton.icon(
                      label: Text('Cuenta',style:TextStyle(fontSize:26)),
                      icon: Icon(Icons.account_box),
                      onPressed:() {
                        Navigator.push(context, MaterialPageRoute(builder:(context_cuenta) => Cuenta()));
                      },
                      ),
                  ],
                ),
                Row(children: [Align(alignment: Alignment.centerLeft),Text('   Seguridad, cambio de correo y cambio de contraseña', style: TextStyle(color:Colors.grey[500]),textAlign: TextAlign.left),],)
                  
              ],
            ),
            Column(
              children: [
                Row(
                  children:[
                    Align(alignment: Alignment.centerLeft),
                    TextButton.icon(
                      label: Text('Ayuda',style:TextStyle(fontSize:26)),
                      icon: Icon(Icons.help),
                      onPressed:() {
                        Navigator.push(context, MaterialPageRoute(builder:(context_ayuda) => Ayuda()));
                      },
                      ),
                  ],
                ),
                Row(children: [Align(alignment: Alignment.centerLeft),Text('   Centro de ayuda, contáctanos, política de privacidad', style: TextStyle(color:Colors.grey[500]),textAlign: TextAlign.left),],)
                  
              ],
            ),
          ],
      ),
    ));
  }
}






