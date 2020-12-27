class Car {
  int id;
  BrandCar brand;
  ModelCar model;
  int year;
  int mileage;
  String photo;
  @override
  @override
  String toString() =>
      brand.toString() + " " + model.toString() + " " + year.toString();
}

class BrandCar {
  BrandCar(this.name, {this.id = -1}) {
    id = idbrandcar;
  }
  int id;
  final String name;
  @override
  String toString() => name;
  static int idbrandcar = 0;
}

int idmodelcar = 0;

class ModelCar {
  ModelCar(this.brand, this.name, {int id = -1}) {
    id = idmodelcar += idmodelcar;
  }
  int id;
  final BrandCar brand;
  final String name;
  @override
  String toString() => name;
  static int idmodelcar = 0;
}
