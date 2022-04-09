import 'dart:html';

import 'package:flutter/material.dart';

main() {
  runApp(appwidget());
}

class appwidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.red),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() {
    return HomePageState();
  }
}

class HomePageState extends State<HomePage> {
  int contador = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
          child: GestureDetector(
        child: Text("top $contador"),
        onTap: () {
          setState(() {
            contador++;
          });
        },
      )),
    );
  }
}

class aplicativo_top extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Center(
      child: Text("massa",
          textDirection: TextDirection.ltr,
          style: TextStyle(color: Colors.black, fontSize: 80.0)),
    ));
  }
}
