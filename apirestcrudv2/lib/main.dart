import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'alumno_add.dart';
import 'alumno_detalle.dart';
import 'global.dart';

void main() {
  runApp(
    new MaterialApp(title: 'Alumnos App', home: Home()),
  );
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Future<List> obtenerAlumnos() async {
    final response = await http.get('$URL_ALUMNOS');
    return json.decode(response.body);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lista de Alumnos'),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.person_add),
        onPressed: () => Navigator.of(context).push(MaterialPageRoute(
          builder: (BuildContext context) {
            return AlumnoAdd();
          },
        )),
      ),
      body: FutureBuilder<List>(
        future: obtenerAlumnos(),
        builder: (context, snapshot) {
          if (snapshot.hasError) print(snapshot.error);
          return snapshot.hasData
              ? AlumnosLista(alumnos: snapshot.data)
              : Center(
                  child: CircularProgressIndicator(),
                );
        },
      ),
    );
  }
}

class AlumnosLista extends StatelessWidget {
  final List alumnos;
  AlumnosLista({this.alumnos});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: alumnos == null ? 0 : alumnos.length,
      itemBuilder: (context, i) {
        return Padding(
          padding: const EdgeInsets.all(10.0),
          child: GestureDetector(
            child: Card(
              child: ListTile(
                title: Text(alumnos[i]["nombres"]),
                leading: Icon(Icons.person),
                subtitle: Text("Id: ${alumnos[i]['id']}"),
              ),
            ),
            onTap: () => Navigator.of(context).push(
              MaterialPageRoute(
                builder: (BuildContext context) => AlumnoDetalle(
                  alumnos: alumnos,
                  index: i,
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
