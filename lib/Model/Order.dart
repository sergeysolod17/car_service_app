import 'Car.dart';
import 'TypeOrder.dart';
import 'User.dart';

class Order {
  Order(this._car, this._typeOrder, this._user);
  final Car _car;
  List<TypeOrder> _typeOrder;
  final User _user;
  String typeOrderToString() {
    String result;
    for (var length in _typeOrder) {
      result = result + length.toString() + '\n';
    }
  }
}

class PreOrder {
  PreOrder(this._car, this._user,
      {TypeOrder order, this.desiredTime, this.isNotAccurace}) {
    _typeOrder = [order];
  }
  DateTime desiredTime;
  bool isNotAccurace;
  final Car _car;
  List<TypeOrder> _typeOrder;
  final User _user;
  Car get car => this._car;
  User get user => _user;
  List<TypeOrder> get typeOrder => _typeOrder;
  set typeOrder(TypeOrder) => this._typeOrder;
  String typeOrderToString() {
    String result;
    for (var length in _typeOrder) {
      result = result + length.toString() + '\n';
    }
  }
}
