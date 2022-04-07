import 'dart:ui';

import 'package:flutter/material.dart';

main() {
   runApp(App_flutter(titulo: 'texto'));
}

class App_flutter extends StatelessWidget{
  final String titulo;

  const App_flutter({Key? key, required this.titulo}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Container(
     child: Center(child: Text(
       titulo,
       textDirection: TextDirection.ltr,
       style: TextStyle(color: Colors.black, fontSize: 100.0)
     )),
   );
  }
}