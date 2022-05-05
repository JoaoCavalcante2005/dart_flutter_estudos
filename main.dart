import 'dart:html';

import 'package:flutter/material.dart';
import 'app_widget.dart';

main() {
  runApp(appwidget());
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
