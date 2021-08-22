abstract class Drinkable {
  void pour();
}

class Beer implements Drinkable {
  void pour() {
    print('creational: abstractFactory =====> Pouring a delicious beer!');
  }
}

class Coffee implements Drinkable {
  void pour() {
    print('creational: abstractFactory =====> Pouring a refreshing coffee!');
  }
}

abstract class DrinkFactory {
  Drinkable createDrink();
}

class Pub implements DrinkFactory {
  Drinkable createDrink() {
    return Beer();
  }
}

class CoffeeShop implements DrinkFactory {
  Drinkable createDrink() {
    return Coffee();
  }
}

void abstractFactoryPattern() {
  var mood = "sleepy";
  DrinkFactory destination;

  switch (mood) {
    case "sleepy":
      destination = CoffeeShop();
      break;
    case "done":
      destination = Pub();
      break;
    default:
      print('creational: abstractFactory =====> I only have two moods...');
  }

  var myBeverage = destination.createDrink();
  myBeverage.pour();
  print('\r\n');
}
