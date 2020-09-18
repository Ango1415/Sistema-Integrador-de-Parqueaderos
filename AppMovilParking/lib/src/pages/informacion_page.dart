import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class InformacionPage extends StatelessWidget {

  final estiloTexto = new TextStyle(fontSize: 25);
  final estiloTextoTitulo = new TextStyle(fontSize: 28, color: Colors.grey[900]);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        backgroundColor: Colors.lightGreen[600],
        elevation: 50,
        title: Text("Información Adicional", style: estiloTextoTitulo,),
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