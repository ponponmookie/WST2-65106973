class Person {
  late String _name; // private variable
  String get name => _name;
  set name(String value) => _name = value;
}

class Engine {
  late String _model; // private variable
  late int _speed; // private variable

  String get model => _model;
  set model(String value) => _model = value;

  int get speed => _speed;
  set speed(int value) => _speed = value;

  void displayEngineInfo() {
    print('Model $_model : $_speed km/h');
  }
}

class Car {
  late String brand; // private variable
  late Person owner; 
  late Engine engine; 

  Car() { // Constructor 
    engine = Engine();
    owner = Person();
  }

  void displayCarInfo() {
    print(
        'Brand:$brand, Model:${engine._model}, Owner:${owner._name}, Engine: Model:${engine._model}, Speed:${engine._speed} km/h');
  }

  void run() {
    print('Speed : ${engine._speed} km/h');
  }
}

class Honda extends Car {
  late String color; // private variable
  
  // override
  run() {
    print('Speed (modify) : 120 km/h');
  }

  void displayCarInfo() {
    print(
        'Brand:$brand\nColor:$color\nModel:${engine._model}\nOwner:${owner._name}\nEngine: Model:${engine._model}, Speed:${engine._speed} km/h');
  }
}

void main() {
  var myCar1 = Honda();
  var myCar2 = Car();
  var myCar3 = Engine();
  
  myCar2.brand = 'Yamaha';
  myCar2.engine.model = 'MT-03';
  myCar2.engine.speed = 250;
  myCar2.owner.name = 'Mutita Keereeruk';

  myCar2.displayCarInfo();
  myCar2.run();

  print('-------------------------------------------');

  myCar1.brand = 'Honda';
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
