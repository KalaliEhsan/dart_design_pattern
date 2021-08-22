/*
  In computer programming, the interpreter pattern is a design pattern that specifies how to evaluate sentences in a language.
  The basic idea is to have a class for each symbol (terminal or nonterminal) in a specialized computer language.
  The syntax tree of a sentence in the language is an instance of the composite pattern and is used to evaluate (interpret) the sentence for a client.
  See also Composite pattern.
*/

abstract class Expression {
  Number number;
  void interpret(int value);
}

class Add implements Expression {
  Number number;
  Add(this.number);
  void interpret(int value) {
    print("behavioral: interpreter =====> Adding $value...");
    number.value += value;
  }
}

class Subtract implements Expression {
  Number number;
  Subtract(this.number);
  void interpret(int value) {
    print("behavioral: interpreter =====> Subtracting $value...");
    number.value -= value;
  }
}

class Number {
  int value;
  Number(int value) {
    print("behavioral: interpreter =====> Starting with $value...");
    this.value = value;
  }
}

void interpreterPattern(){
  var number = Number(0);
  var adder = Add(number);
  var subtracter = Subtract(number);

  adder.interpret(100);
  subtracter.interpret(60);
  adder.interpret(2);

  assert(number.value == 42);
  print("behavioral: interpreter =====> And the result is ${number.value}!");
  print('\r\n');
}