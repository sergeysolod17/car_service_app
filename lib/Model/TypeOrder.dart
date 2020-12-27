class TypeOrder {
  TypeOrder(this.name, {this.duration = -1}) {
    id = idtypeorder;
    idtypeorder += idtypeorder;
  }
  int id;
  final String name;
  final num duration;
  static int idtypeorder = 0;
}
