import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:contador/src/pages/plazas_page.dart';
import 'package:contador/src/pages/como_llegar_page.dart';
import 'package:contador/src/pages/informacion_page.dart';


class HomePage2 extends StatelessWidget {

  final estiloTexto = new TextStyle(fontSize: 28, color: Colors.white, fontStyle: FontStyle.italic, );
  final estiloTextoTituloOpciones = new TextStyle(fontSize: 21);
  final estiloTextoSubtituloOpciones = new TextStyle(fontSize: 15, color: Colors.green[900]);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 124, 179, 66),
      body: Center(
        //heightFactor: ,
        //widthFactor: ,

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 50,),
            Container(
              padding: EdgeInsets.symmetric(vertical: 20),
              child: Image(
                image: AssetImage('images/logoAppMovil.png'),
                alignment: Alignment.topCenter,
                fit: BoxFit.contain,
                width: 270,
                height: 270,
              ),
            ),

            Text("¿Te decimos dónde parquear?", style: estiloTexto,),
            SizedBox(height: 30,),
            Divider(thickness: 2,endIndent: 10,indent: 10,),
            ListTile(
              title: Text("Plazas Disponibles", style: this.estiloTextoTituloOpciones,),
              subtitle: Text("Estado actual de las plazas dentro del parqueadero.", style: this.estiloTextoSubtituloOpciones),
              leading: Icon(Icons.assistant_photo,size: 38,),
              //trailing: Icon(Icons.more_vert),
              onTap: (){

                final route = MaterialPageRoute(      
                  builder: (context) => PlazasPage(),
                );
                Navigator.push(context, route); 
              },
            ),
            Divider(thickness: 2, endIndent: 10,indent: 10,),
            ListTile(
              title: Text("¿Cómo llegar?", style: this.estiloTextoTituloOpciones,),
              subtitle: Text("Intrucciones de ubicación y guía GPS.", style: this.estiloTextoSubtituloOpciones),
              leading: Icon(Icons.map, size: 38,),
              //trailing: Icon(Icons.more_vert),
              onTap: (){

                final route = MaterialPageRoute(
                  builder: (context) => ComoLlegarPage(),
                );
                Navigator.push(context, route); 
              },

            ),
            Divider(thickness: 2, endIndent: 10,indent: 10,),
            ListTile(
              title: Text("Información Adicional", style: this.estiloTextoTituloOpciones,),
              subtitle: Text("Tarifas y horarios.", style: this.estiloTextoSubtituloOpciones),
              leading: Icon(Icons.info_outline, size: 38,),
              //trailing: Icon(Icons.more_vert),
              onTap: (){

                final route = MaterialPageRoute(
                  builder: (context) => InformacionPage(),
                  );
                Navigator.push(context, route); 

              },
            ),
            Divider(thickness: 2, endIndent: 10,indent: 10,),
            SizedBox(height: 30,),
            Container(
              alignment: Alignment.bottomCenter,
              child: Column(
                children: [
                  FlatButton(
                    child: Text("Cerrar App", style:TextStyle(fontSize: 20),),
                    color: Colors.lightGreen[700],
                    textColor: Colors.white,
                    onPressed: (){},
                  ),
                  Text("versión 1.0")
                ],
              ),
            ),
          ],
        ),
      ),

    );
  }
}