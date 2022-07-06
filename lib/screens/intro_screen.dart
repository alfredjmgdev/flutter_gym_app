import 'package:flutter/material.dart';
import 'package:flutter_application_1/shared%20/menu_drawer.dart';
import '../shared /menu_bottom.dart';

class IntroScreen extends StatelessWidget {
  const IntroScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("App de test")),
      drawer: MenuDrawer(),
      bottomNavigationBar: MenuBottom(),
      body: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
            image: AssetImage("assets/forest.jpg"),
            fit: BoxFit.cover,
          )),
          child: Center(
              child: Container(
                  padding: EdgeInsets.all(24),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      color: Colors.white70),
                  child: Text(
                    "Testo es una priueba!!!",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 22,
                      shadows: [
                        Shadow(
                            offset: Offset(1.0, 1.0),
                            blurRadius: 2.0,
                            color: Colors.green)
                      ],
                    ),
                  )))),
    );
    ;
  }
}
