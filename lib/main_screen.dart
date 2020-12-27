import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  String _email;
  String _password;
  final _sizeTextBlack = const TextStyle(fontSize: 20.0, color: Colors.black);

  MainScreen(String email, String password) {
    _email = email;
    _password = password;
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text("Second Screen"),
        ),
        body: new Center(
          child: new Text(
            "Email: $_email, password: $_password",
            style: _sizeTextBlack,
          ),
        ));
  }
}
