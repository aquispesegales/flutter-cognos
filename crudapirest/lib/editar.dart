import 'package:flutter/material.dart';
import './utils/utils.dart' as utils;

class ProductoPage extends StatefulWidget{
  @override
  _ProductoPageState createState() => _ProductoPageState();
}

class _ProductoPageState extends State<ProductoPage> {
  final formKey = GlobalKey<FormState>();

  @override
  Widget build (BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('Alumno'),
        actions: <Widget>[
          IconButton(
            icon:Icon(Icons.photo_size_select_actual)
          )
        ],
      ),
      body:SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(15.0),
          child: Form(
            key: formKey,
            child: Column(
              children: <Widget>[
                _crear_id(),
                _crear_nombre(),
                _crear_apellidos(),
                _crear_identidad(),
                _crear_boton()
              ],
            ),
          ),
        ),
      )
    );
  }

  Widget _crear_id(){
    return TextFormField(
      decoration: InputDecoration(
        labelText: 'Id'
      ),
      validator: (value){
        if(utils.isNUmeric(value)){
          return null;
        }else{
          return 'Solo números';
        }
      },
    );
  }

  Widget _crear_nombre(){
    return TextFormField(
      textCapitalization: TextCapitalization.sentences,
      decoration: InputDecoration(
        labelText: 'Nombre'
      ),
      validator: (value){
        if( value.length <= 0 ){
            return 'Ingrese Nombre';
          }
          else{
            return null;
          }
        }
    );
  }

  Widget _crear_apellidos(){
    return TextFormField(
      textCapitalization: TextCapitalization.sentences,
      decoration: InputDecoration(
        labelText: 'Apellidos'
      ),
        validator: (value){
        if( value.length <= 0 ){
            return 'Ingrese Apellido';
          }
          else{
            return null;
          }
        }
    );
  }

  Widget _crear_identidad(){
    return TextFormField(
      textCapitalization: TextCapitalization.sentences,
      decoration: InputDecoration(
        labelText: 'Identidad'
      ),
        validator: (value){
        if( value.length <= 0 ){
            return 'Ingrese Carnet Identidad';
          }
          else{
            return null;
          }
        }
    );
  }

  Widget _crear_boton(){
    return RaisedButton.icon(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0)
      ),
      color: Colors.blueAccent,
      textColor: Colors.white,
      label: Text('Guardar'),
      icon:Icon(Icons.save),
      onPressed: _submit,
    );
  }

  void _submit(){
    if(!formKey.currentState.validate()) return ;
    
  }
}