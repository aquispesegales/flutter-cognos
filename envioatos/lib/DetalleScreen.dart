import 'package:flutter/material.dart';
import 'Tarea.dart';

class DetalleScreen extends StatelessWidget {
  final Tarea tarea;

  DetalleScreen({Key key,@required this.tarea}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text(tarea.titulo),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Text(tarea.descripcion),
      ),
    );
  }
}