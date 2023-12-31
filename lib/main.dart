import 'package:flutter/material.dart';
import 'package:my_first_flutter_app/core/store.dart';
import 'package:my_first_flutter_app/pages/cart_page.dart';
import 'package:my_first_flutter_app/pages/home_page.dart';
import 'package:my_first_flutter_app/pages/login_page.dart';
import 'package:my_first_flutter_app/utils/routes.dart';
import 'package:my_first_flutter_app/widgets/themes.dart';
import 'package:velocity_x/velocity_x.dart';

void main() {
  runApp(VxState(store: MyStore(), child: MyApp()));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: MyTheme.lightTheme(context),
      themeMode: ThemeMode.light,
      darkTheme: MyTheme.darkTheme(context),
      initialRoute: MyRoutes.homeRoute,
      routes: {
        "/": (context) => LoginPage(),
        MyRoutes.homeRoute: (context) => HomePage(),
        MyRoutes.loginRoute: (context) => LoginPage(),
        MyRoutes.cartRoute: (context) => CartPage(),
      },
    );
  }
}
