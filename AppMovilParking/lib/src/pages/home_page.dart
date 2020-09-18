import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {

  final estiloTexto = new TextStyle(fontSize: 25);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Titulo"),
        centerTitle: true,
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
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add, size:40),
        onPressed: (){
          print("Hola Mundo");
        },
      ),
    );
  }
}