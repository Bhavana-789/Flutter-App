import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
        child: Padding(
      padding: const EdgeInsets.fromLTRB(14.0, 40.0, 14.0, 20.0),
      child: Center(
        child: Column(
          children: [
            Image.asset("assets/images/login_image.png",
                fit: BoxFit.contain, width: 300),
            SizedBox(
              height: 20.0,
            ),
            const Text(
              "Welcome",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0),
              child: Column(
                children: [
                  TextFormField(
                    decoration: const InputDecoration(
                        hintText: "Enter username",
                        labelText: "Username",
                        focusedBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.black, width: 1.0))),
                  ),
                  TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: "Enter password",
                      labelText: "Password",
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      print("Welcome to flutter App");
                    },
                    child: Text("Login"),
                    style: TextButton.styleFrom(),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    ));
  }
}
