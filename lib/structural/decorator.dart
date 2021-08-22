/*
  In object-oriented programming, the decorator pattern is a design pattern that allows behavior to be added to an individual object,
  dynamically, without affecting the behavior of other objects from the same class.
  The decorator pattern is often useful for adhering to the Single Responsibility Principle,
  as it allows functionality to be divided between classes with unique areas of concern.
  The decorator pattern is structurally nearly identical to the chain of responsibility pattern,
  the difference being that in a chain of responsibility, exactly one of the classes handles the request, while for the decorator, all classes handle the request.
*/
abstract class Beverage {
  double get cost;
  String get ingredients;
}

class Ingredient {
  double cost;
  String name;

  Ingredient(this.name, this.cost);

  @override
  String toString() => this.name;
}

var coffee = Ingredient("coffee", .25);
var milk = Ingredient("milk", .5);
var sugar = Ingredient("sugar", .1);

class Coffee implements Beverage {
  Set<Ingredient> _ingredients = Set.from([coffee, milk, sugar]);
  double get cost => _ingredients.fold(0, (total, i) => total + i.cost);
  String get ingredients {
    var stringIngredients = _ingredients.fold("", (str, i) => str + "${i.name}, ");
    var trimmedString = stringIngredients.substring(0, stringIngredients.length - 2);
    var lastComma = trimmedString.lastIndexOf(",");
    var replacement = ",".allMatches(trimmedString).length > 1 ? ", and" : " and";

    return trimmedString.replaceRange(lastComma, lastComma + 1, replacement);
  }
}

class StarbucksCoffeeDecorator implements Beverage {
  Beverage _coffee = Coffee();
  double get cost => _coffee.cost * 5;
  String get ingredients => _coffee.ingredients;
}

void decoratorPattern(){
  var coffee = Coffee();
  var starbucksCoffee = StarbucksCoffeeDecorator();

  print('structural: decorator =====> Coffee contains ${coffee.ingredients}. It costs \$${coffee.cost}');
  print("structural: decorator =====> Starbucks coffee contains ${starbucksCoffee.ingredients}. It costs \$${starbucksCoffee.cost}");
  print('\r\n');
}