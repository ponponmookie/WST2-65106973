class Person {
  late String _name;
  String get name => _name;
  set name(String value) => _name = value;
}

class Engine {
  late String _model;
  late int _speed;

  String get model => _model;
  set model(String value) => _model = value;

  int get speed => _speed;
  set speed(int value) => _speed = value;

  void displayEngineInfo() {
    print('Model $_model : $_speed km/h');
  }
}

class Car {
  late String brand;
  late String model;
  late Person owner;
  late Engine engine;

  Car(this.brand, this.model, this.owner, this.engine);

  void displayCarInfo() {
    print(
        'Brand:$brand, Model:${engine.model}, Owner:${owner.name}, Engine: Model:${engine.model}, Speed:${engine.speed} km/h');
  }

  void run() {
    print('Speed : ${engine.speed} km/h');
  }
}

class Honda extends Car {
  late String color;

  Honda(String brand, String model, Person owner, Engine engine)
      : super(brand, model, owner, engine);

  //override
  void run() {
    print('Speed (modified) : 120 km/h');
  }

  //override
  void displayCarInfo() {
    print(
        'Brand:$brand\nColor:$color\nModel:${engine.model}\nOwner:${owner.name}\nEngine: Model:${engine.model}, Speed:${engine.speed} km/h');
  }
}

void main() {
  var myCar1 = Honda('Honda', 'VTEC Turbo', Person(), Engine());
  var myCar2 = Car('Yamaha', 'MT-03', Person(), Engine());
  var myCar3 = Engine();

  myCar2.engine.model = 'MT-03';
  myCar2.engine.speed = 250;
  myCar2.owner.name = 'Mutita Keereeruk';

  myCar2.displayCarInfo();
  myCar2.run();

  print('-------------------------------------------');

  myCar1.color = 'Red';
  myCar1.engine.model = 'VTEC Turbo';
  myCar1.engine.speed = 250;
  myCar1.owner.name = 'John Doe';

  myCar1.displayCarInfo();
  myCar1.run();

  print('-------------------------------------------');

  myCar3.model ='Vios';
  myCar3.speed = 180;
  myCar3.displayEngineInfo();
}
