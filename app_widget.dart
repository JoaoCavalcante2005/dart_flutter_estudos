import 'package:flutter/material.dart';
import 'package:flutter_teste/app_controller.dart';
import 'home_page.dart';

class appwidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: App_controller.instance,
      builder: (context, child) {
        return MaterialApp(
          theme: ThemeData(
            primarySwatch: Colors.red,
            brightness: App_controller.instance.isdark
                ? Brightness.dark
                : Brightness.light,
          ),
          home: HomePage(),
        );
      },
    );
  }
}
