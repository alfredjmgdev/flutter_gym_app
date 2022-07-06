import 'package:flutter/material.dart';
import 'package:flutter_application_1/shared%20/menu_bottom.dart';
import 'package:flutter_application_1/shared%20/menu_drawer.dart';

class BmiScreen extends StatelessWidget {
  const BmiScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("BMI Calculator")),
      bottomNavigationBar: MenuBottom(),
      drawer: MenuDrawer(),
      body: Center(child: FlutterLogo()),
    );
  }
}
