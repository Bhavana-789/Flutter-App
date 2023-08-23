import 'package:flutter/material.dart';
import 'package:my_first_flutter_app/utils/routes.dart';
import 'package:my_first_flutter_app/widgets/drawer.dart';

class HomePage extends StatelessWidget {
  String name = "Flutter";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Catalog App")),
      body: Center(
        child: Container(
          child: Text("Welcome to $name App"),
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}
