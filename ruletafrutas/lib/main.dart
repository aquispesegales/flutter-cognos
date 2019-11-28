import 'package:flutter/material.dart';
import 'package:ruletafrutas/paginas/ruleta_pagina.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: RuletaPagina(),
    );
  }
}