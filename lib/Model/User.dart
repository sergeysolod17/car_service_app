const String NONE_EMAIL = "None";
const String NONE_LOGIN = "None";
const String NONE_PASSWORD = "None";

class User {
  User({this.email = NONE_EMAIL, this.login = NONE_LOGIN, this.id = -1}) {
    _password = NONE_PASSWORD;
  }

  String login;
  String _password;
  String email;
  num id;

  bool _islogin;
  bool get islogin => _islogin;
  bool login_apply() {
    _islogin = true;
    return _islogin;
  }

  //geo data
  double long;
  double latit;
}
