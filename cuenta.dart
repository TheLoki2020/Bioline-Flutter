import 'package:flutter/material.dart';


//PÁGINA PRINCIPAL
class Cuenta extends StatelessWidget {
  @override
  Widget build(BuildContext context_cuenta) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cuenta"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
                Row(
                  children: [
                    Align(alignment: Alignment.centerLeft),
                    TextButton.icon(
                      label: Text('Cambiar e-mail', style:TextStyle(fontSize:26)),
                      icon:Icon(Icons.phone_android),
                      onPressed: () {
                        Navigator.push(context_cuenta,MaterialPageRoute(builder: (context_cambiarcorreo) => FormularioCorreo()),);
                      },
                      ),
                  ],
                ),
                Row(
                  children:[
                    Align(alignment: Alignment.centerLeft),
                    TextButton.icon(
                      label: Text('Cambiar Contraseña',style:TextStyle(fontSize:26)),
                      icon: Icon(Icons.password),
                      onPressed:() {
                        Navigator.push(context_cuenta, MaterialPageRoute(builder:(context_cambiarcontr) => FormularioContr()));
                      },
                      ),
                  ],
                ),
          ],
        ),
      )
    );
  }
}

// PÁGINA DE CAMBIO DE CORREO
class FormularioCorreo extends StatefulWidget {
  const FormularioCorreo({Key? key}) : super(key: key);

  @override
  CambiarCorreo createState() => CambiarCorreo();
}

class CambiarCorreo extends State<FormularioCorreo>{
  String correo = ' ';

  @override 

  Widget build(BuildContext context_cambiarcorreo){
    return Scaffold(
      appBar: AppBar(title: Text("Cambiar e-mail"),titleTextStyle: TextStyle(fontSize: 30),),
      body: Center(
        child: Column(
          mainAxisAlignment:MainAxisAlignment.spaceEvenly, 
          children:[
            Column(
              children: [
                _crearCorreo(),
              ],
            ),

          ]
        )
      ) 
    );
  }


  Widget _crearCorreo(){
  return TextField(
    onChanged: (valor) => setState((){correo = valor; print(valor);}),   // Fijarse que podemos guardar una cadena vacía
    obscureText: false,
    maxLength: 20,
    decoration: InputDecoration(
        hintText: 'e-mail',
        labelText: 'Nuevo e-mail',
        suffixIcon: Icon(Icons.email),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
    ),
  );
}
}



//PÁGINA DE CAMBIO DE CONTRASEÑA
class FormularioContr extends StatefulWidget {
  const FormularioContr({Key? key}) : super(key: key);

  @override
  CambiarContr createState() => CambiarContr();
}
class CambiarContr extends State<FormularioContr>{
  String password = ' ';
  @override 

  Widget build(BuildContext context_cambiarcontr){
    return Scaffold(
      appBar: AppBar(title: Text("Cambiar Contraseña"),titleTextStyle: TextStyle(fontSize: 30),),
      body: Center(
        child: Column(
          mainAxisAlignment:MainAxisAlignment.spaceEvenly, 
          children:[
            Column(
              children: [
                _crearContr(),
              ],
            ),

          ]
        )
      ) 
    );
  }

  Widget _crearContr(){
  return TextField(
    onChanged: (valor) => setState((){password= valor;}),
    obscureText: true,
    obscuringCharacter: '*',
    maxLength: 20,
    decoration: InputDecoration(
        hintText: 'Contraseña',
        labelText: 'Nueva Contraseña',
        suffixIcon: Icon(Icons.password),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
    ),
  );
}
}


