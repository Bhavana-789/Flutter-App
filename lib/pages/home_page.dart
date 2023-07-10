import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  String name = "Flutter";


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Catalog App")
      ),
      body: Center(
        child: Container(
          child: Text("Welcome to $name App"),

        ),
      ),
     drawer: Drawer(),
    );
  }
}
