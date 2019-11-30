import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'alumno_editar.dart';
import 'global.dart';

class AlumnoDetalle extends StatefulWidget {
  final List alumnos;
  final int index;

  AlumnoDetalle({this.alumnos, this.index});

  @override
  _AlumnoDetalleState createState() => _AlumnoDetalleState();
}

class _AlumnoDetalleState extends State<AlumnoDetalle> {
  String _docIdentidad;
  String _nombre;
  String _apellido;

  Future<String> obtenerAlumno() async {
    final response =
        await http.get('$URL_ALUMNOS/${widget.alumnos[widget.index]["id"]}');
    Map<String, dynamic> alumno = jsonDecode(response.body);
    this.setState(() {
      _docIdentidad = alumno['doc_identidad'];
      _nombre = alumno['nombres'];
      _apellido = alumno['apellidos'];
    });
    return 'OK';
  }

  eliminarAlumno() {
    var url = '$URL_ALUMNOS/${widget.alumnos[widget.index]["id"]}';
    http.delete(url);
  }

  @override
  void initState() {
    super.initState();
    this.obtenerAlumno();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Alumno: ${widget.alumnos[widget.index]["nombres"]}"),
      ),
      body: Container(
        height: 250.0,
        padding: const EdgeInsets.all(20.0),
        child: Card(
          child: Center(
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top: 30.0),
                ),
                Text(
                  "Id: ${widget.alumnos[widget.index]["id"]}",
                  style: TextStyle(fontSize: 18.0),
                ),
                Text(
                  "Nombres: ${_nombre}",
                  style: TextStyle(fontSize: 18.0),
                ),
                Text(
                  "Apellidos: ${_apellido}",
                  style: TextStyle(fontSize: 18.0),
                ),
                Text(
                  "Doc Identidad: $_docIdentidad",
                  style: TextStyle(fontSize: 18.0),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 30.0),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    RaisedButton(
                      child: Text("Editar"),
                      onPressed: () {
                        return Navigator.of(context)
                            .push(MaterialPageRoute(
                                builder: (BuildContext context) => AlumnoEditar(
                                      alumnos: widget.alumnos,
                                      index: widget.index,
                                    )))
                            .then((value) {
                                obtenerAlumno();
                        });
                      },
                    ),
                    RaisedButton(
                      child: Text(
                        "Eliminar",
                        style: TextStyle(color: Colors.white),
                      ),
                      color: Colors.red,
                      onPressed: () {
                        eliminarAlumno();
                        Navigator.pop(context);
                      },
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
