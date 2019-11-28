import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'DetalleScreen.dart';
import 'Tarea.dart';



void main (){
  runApp(MaterialApp(
    title: 'Pasar Datos',
    home: TareasScreen(
      tareas:List.generate(20,(i)=> Tarea('Tarea $i', 'Una descripcion'))
    ),
  ));
}

class TareasScreen extends StatelessWidget{
  final List<Tarea> tareas;

  TareasScreen({Key key,@required this.tareas }) : super(key: key);
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("Tareas"),
      ),
      body: ListView.builder(
        itemCount: tareas.length,
        itemBuilder: (context,index){
          return ListTile(
            title: Text(tareas[index].titulo),
            onTap: (){
              Navigator.push(context, 
              MaterialPageRoute(
                builder: (context)=> DetalleScreen(tarea:tareas[index])
              )
              );
            },
          );
        },
      ),
    );
  }  

}


