/*
  The facade pattern (also spelled façade) is a software-design pattern commonly used in object-oriented programming.
  Analogous to a facade in architecture, a facade is an object that serves as a front-facing interface masking more complex underlying or structural code.

  The facade pattern is typically used when:

  a simple interface is required to access a complex system,
  a system is very complex or difficult to understand,
  an entry point is needed to each level of layered software, or
  the abstractions and implementations of a subsystem are tightly coupled.
*/
class Grinder {
  String _type;

  Grinder(this._type);

  void grind() {
    print("structural: facade =====> Grinding $_type!");
  }
}

class Maker {
  String _type;

  Maker(this._type);

  void fill() {
    print("structural: facade =====> Filling the $_type maker!");
  }

  void retrieve() {
    print("structural: facade =====> Retrieving the $_type!");
  }

  void start() {
    print("structural: facade =====> Starting the $_type maker!");
  }
}

class Imbiber {
  String _beverage;

  Imbiber(this._beverage);

  void drink() {
    print("structural: facade =====> Mmmmm...drinking $_beverage!");
  }
}

class MorningFacade {
  final _coffeeDrinker = Imbiber("coffee");
  final _coffeeGrinder = Grinder("coffee beans");
  final _coffeeMaker = Maker("coffee");

  void prepareCoffee() {
    print("structural: facade =====> Preparing the coffee...");
    _coffeeGrinder.grind();
    _coffeeMaker
      ..fill()
      ..start();
    print("structural: facade =====> Coffee is brewing!");
  }

  void drinkCoffee() {
    print("structural: facade =====> Must...have...coffee...");
    _coffeeMaker.retrieve();
    _coffeeDrinker.drink();
    print("structural: facade =====> This is damn fine coffee!");
  }
}

void facadePattern(){
  var typicalMorning = MorningFacade();

  print('structural: facade =====> Wake up! Grab a brush and put on a little makeup...');
  print('structural: facade =====> Stumble to the kitchen...');

  typicalMorning.prepareCoffee();

  print('structural: facade =====> Oh my...that smells good...');

  typicalMorning.drinkCoffee();

  print("structural: facade =====> I'm ready to attack the day!");
  print('\r\n');
}