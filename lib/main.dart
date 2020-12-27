import 'package:car_service_app/main2.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'main_screen.dart';
import 'forget_pass_screen.dart';

void main(List<String> args) {
  runApp(new LoginScreen());
}

class LoginScreen extends StatelessWidget {
  final _sizeTextBlack = const TextStyle(fontSize: 20.0, color: Colors.black);
  final _sizeTextWhite = const TextStyle(fontSize: 20.0, color: Colors.white);
  String _email;
  String _password;
  final formKey = new GlobalKey<FormState>();
  BuildContext _context;

  @override
  Widget build(BuildContext context) {
    return (new MaterialApp(
        home: new Scaffold(
          body: new Center(
            child: new Form(
                key: formKey,
                child: new Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    new Container(
                      child: new TextFormField(
                        decoration: new InputDecoration(labelText: "Email"),
                        keyboardType: TextInputType.emailAddress,
                        style: _sizeTextBlack,
                      ),
                      width: 300,
                    ),
                    new Container(
                      child: new TextFormField(
                        decoration: new InputDecoration(labelText: "Password"),
                        obscureText: true,
                        style: _sizeTextBlack,
                        onSaved: (val) => _email = val,
                        validator: (val) =>
                            val.contains("@") ? 'Not a valid email.' : null,
                      ),
                      width: 300,
                      padding: new EdgeInsets.only(top: 10.0),
                    ),
                    new Padding(
                      padding: new EdgeInsets.only(top: 25.0),
                      child: new MaterialButton(
                        onPressed: submit,
                        color: Colors.blueAccent,
                        height: 50.0,
                        minWidth: 150.0,
                        child: new Text(
                          "LOGIN",
                          style: _sizeTextWhite,
                        ),
                      ),
                    ),
                    new GestureDetector(
                      child: new Text("Забыли пароль?"),
                      onTap: forgetPassword,
                    )
                  ],
                )),
          ),
        ),
        routes: <String, WidgetBuilder>{
          '/forg_pass': (BuildContext context) => ForgetPassScreen(this._email),
        }));
  }

  void submit() {
    final form = formKey.currentState;
    if (form.validate()) {
      form.save();
      performLogin();
    }
  }

  void performLogin() {
    hideKeyboard();
    Navigator.push(
        _context,
        new MaterialPageRoute(
            builder: (context) => new MainScreen(_email, _password)));
  }

  void hideKeyboard() {
    SystemChannels.textInput.invokeMethod('TextInput.hide');
  }

  void forgetPassword() {
    //hideKeyboard();
    final form = formKey.currentState;
    form.save();

    //Navigator.pushNamed(context, '/forg_pass');
    /*Navigator.push(_context,
        new MaterialPageRoute<void>(builder: (BuildContext context) {
      return new ForgetPassScreen(this._email);
    }));*/
  }
}
