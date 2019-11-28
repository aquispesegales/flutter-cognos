import 'dart:math';

import 'package:flutter/material.dart';

class RuletaPagina extends StatefulWidget {
  RuletaPagina({Key key}) : super(key: key);

  @override
  _RuletaPaginaState createState() => _RuletaPaginaState();
}

class _RuletaPaginaState extends State<RuletaPagina> {

  // numero de intento
  int _intento = 0;

  // es ganador ?
  bool _esGanador = false;

  // numero de frutas
  int _numeroFrutas = 8;

  // posisicones de frutas
  int _posicionFrutaUno = 0;
  int _posicionFrutaDos = 1;
  int _posicionFrutaTres = 2;

  final List<String> _frutas = [
    'cereza.png',
    'frambuesa.png',
    'frutilla.png',
    'manzana.png',
    'naranja.png',
    'pinia.png',
    'sandia.png',
    'uva.png'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ruleta de frutas'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        //crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          _mostrarIntentos(),
          SizedBox(
            height: 10.0,
          ),
          _mostrarFrutas(),
          _girarRuleta(),
          _determinarGanador()
        ],
      ),
    );
  }

  // mostrar intentos
  Widget _mostrarIntentos() {
    return Text('Nro. Intentos: $_intento', textAlign: TextAlign.center, style: TextStyle(fontSize: 30.0),);
  }

  // ruleta de frutas
  Widget _mostrarFrutas() {

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Expanded(
          child: Image(
            image: AssetImage('assets/frutas/${_frutas[_posicionFrutaUno]}'),
          ),
        ),
        Expanded(
          child: Image(
            image: AssetImage('assets/frutas/${_frutas[_posicionFrutaDos]}'),
          ),
        ),
        Expanded(
          child: Image(
            image: AssetImage('assets/frutas/${_frutas[_posicionFrutaTres]}'),
          ),
        ),

      ],
    );
  }

  // girar ruleta de frutas
  Widget _girarRuleta() {
    return IconButton(
      icon: Icon(Icons.autorenew, color: Colors.blue,),
      iconSize: 50.0,
      onPressed: () {
        setState(() {
          _intento++;
          final random = new Random();
          _posicionFrutaUno = random.nextInt(_numeroFrutas);
          _posicionFrutaDos = random.nextInt(_numeroFrutas);
          _posicionFrutaTres = random.nextInt(_numeroFrutas);
          _esGanador = false;
          if (_posicionFrutaUno == _posicionFrutaDos &&
              _posicionFrutaUno == _posicionFrutaTres &&
              _posicionFrutaDos == _posicionFrutaTres) {
            _esGanador = true;
            _intento = 0;
          }
        });
      },
    );
  }

  // determinarGanador
  Widget _determinarGanador() {
    return Text(_esGanador ? 'Ganador!!!': 'Juega', style: TextStyle(fontSize: 30.0),);
  }
}
