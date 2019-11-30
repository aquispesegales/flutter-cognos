import 'dart:async';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import './editar.dart';

void main() {
  runApp(new MaterialApp(
    home: new HomePage(),
    routes: {
      'nuevo_alumno':(BuildContext context) => ProductoPage(),
    },
  ));
}

class HomePage extends StatefulWidget {
  @override
  HomePageState createState() => new HomePageState();
}

class HomePageState extends State<HomePage> {
  List data;

  Future<String> getData() async {
    var response = await http.get(
        Uri.encodeFull("http://192.168.3.122:3000/api-cognos/alumnos"),
        headers: {"Accept": "application/json"});
    this.setState(() {
      data = json.decode(response.body);
    });
    return "Success!";
  }

  @override
  void initState() {
    super.initState();
    this.getData();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Lista de Alumnos"),
        actions: <Widget>[
          IconButton(
            icon:Icon(Icons.photo_size_select_actual),
            onPressed: (){},
          ),
          IconButton(
            icon:Icon(Icons.camera_alt),
            onPressed: (){},
          )
        ],
      ),
      body: new ListView.builder(

        itemCount: data == null ? 0 : data.length,

        itemBuilder: (BuildContext context, int index) {
      
          return new Card(
            child: new Text(
                data[index]["nombres"] + " " + data[index]["apellidos"]),
               
          );

          
        },
      ),
      floatingActionButton: _crearBoton(),
    );
  }
  _crearBoton(){
    return FloatingActionButton(
      child: Icon(Icons.add),
      //backgroundColor: Colors.deepPurple,
      onPressed: ()=> Navigator.pushNamed(context,'nuevo_alumno'),
    );
  }
}
