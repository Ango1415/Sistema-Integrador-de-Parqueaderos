import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ComoLlegarPage extends StatelessWidget {

  final estiloTexto = new TextStyle(fontSize: 25);
  final estiloTextoTitulo = new TextStyle(fontSize: 28, color: Colors.grey[900]);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        elevation: 50,
        backgroundColor: Colors.lightGreen[600],
        title: Text("¿Cómo llegar?", style: estiloTextoTitulo,),
        //centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Número de Taps:", style: estiloTexto),
            Text("0", style: estiloTexto),
          ],
        )
      ),
    );
  }
}