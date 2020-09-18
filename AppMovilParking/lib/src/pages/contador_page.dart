import 'package:flutter/material.dart';

//Parte Widget
class ContadorPage extends StatefulWidget {

  @override
  createState() => new _ContadorPageState();

}

//Parte State
//Es privada porque solo se usa acá
class _ContadorPageState extends State<ContadorPage> {
  
  final _estiloTexto = new TextStyle(fontSize: 25);

  int _conteo = 0;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Stateful"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Número de Taps:", style: _estiloTexto),
            Text("$_conteo", style: _estiloTexto),
          ],
        )
      ),
      floatingActionButton: this._crearBotones()
    );
  }

  Widget _crearBotones() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        SizedBox(width: 32.0),
        FloatingActionButton(child: Icon(Icons.exposure_zero, size:40), onPressed: this._reset),
        Expanded(child: SizedBox()), //Expande el tamaño normal del Widget

        FloatingActionButton(child: Icon(Icons.remove, size:40), onPressed: this._sustraer),
        SizedBox(width: 10.0),//Es para darle espaciado a los botonos

        FloatingActionButton(child: Icon(Icons.add, size:40), onPressed: this._agregar), //Dejo agregar sin () porque es solo la referencia al método, necesito que se ejecute cuando presionen el botón
      ],
    );
  }

  void _agregar() {
    setState(() => _conteo++);
  }

  void _sustraer() {
    setState(() => _conteo--);
  }

  void _reset() {
    setState(() => _conteo = 0);
  }

}