import 'dart:html';
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:alura/screens/transferencia/lista.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: ListaTransferencias(),
    );
  }
}

//     janela da lista de transferencias
