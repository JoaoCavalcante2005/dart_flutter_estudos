import 'dart:html';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: ListaTransferencias(),
        ),
    );
  }
}

class ListaTransferencias extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        ItemTransferencia(Transferencia(200,123456)),
        ItemTransferencia(Transferencia(500,213745)),
        ItemTransferencia(Transferencia(420,837583)),
        ItemTransferencia(Transferencia(760,321732)),
      ]
    );
  }
}

class ItemTransferencia extends StatelessWidget{
  final Transferencia _transferencia;

  ItemTransferencia(this._transferencia);

  @override
  Widget build(BuildContext context){
    return Card(child: ListTile(
      leading: Icon(Icons.monetization_on),
      title: Text( _transferencia.valor.toString() ),
      subtitle: Text( _transferencia.numeroConta.toString() ),
    ),);
  }
}

class Transferencia{
  final double valor;
  final int numeroConta;

  Transferencia(this.valor,this.numeroConta);
}