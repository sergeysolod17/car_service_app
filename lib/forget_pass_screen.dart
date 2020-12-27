import 'package:flutter/material.dart';

class ForgetPassScreen extends StatelessWidget {
  ForgetPassScreen(this._email);
  final String _email;
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Восстановление пароля"),
      ),
      body: new Center(
        child: new Column(
          children: <Widget>[
            new TextFormField(
              initialValue: _email,
            ),
            new MaterialButton(
              onPressed: requestRestorePassword,
              child: new Text("Восстановить пароль"),
            )
          ],
        ),
      ),
    );
  }

  void requestRestorePassword() {}
}
