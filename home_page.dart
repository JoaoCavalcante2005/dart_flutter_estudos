import 'package:flutter/material.dart';
import 'package:flutter_teste/app_controller.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() {
    return HomePageState();
  }
}

class HomePageState extends State<HomePage> {
  int contador = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('aplicativo'),
      ),
      body: Center(
        /*child: GestureDetector(
        child: Text(
          "aperta $contador",
          style: TextStyle(fontSize: 50.0),
        ),
        onTap: () {
          setState(() {
            contador++;
          });
        },
      )*/
        child: Switch(
            value: App_controller.instance.isdark,
            onChanged: (value) {
              App_controller.instance.mudartema();
            }),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(
          Icons.network_check,
          size: 40.0,
          color: Color.fromARGB(255, 0, 0, 0),
        ),
        onPressed: () {
          setState(() {
            contador++;
          });
        },
      ),
    );
  }
}
