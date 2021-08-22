/*
  In object-oriented programming, the template method is one of the behavioral design patterns identified by Gamma et al.
  in the book Design Patterns. The template method is a method in a superclass, usually an abstract superclass,
  and defines the skeleton of an operation in terms of a number of high-level steps.
  These steps are themselves implemented by additional helper methods in the same class as the template method.

  The helper methods may be either abstract methods, for which case subclasses are required to provide concrete implementations,
  or hook methods, which have empty bodies in the superclass. Subclasses can (but are not required to) customize the operation by overriding the hook methods.
  The intent of the template method is to define the overall structure of the operation, while allowing subclasses to refine, or redefine, certain steps.
*/
abstract class Abstract {
  String abstractMethod();
  String hookMethod() => "OMG I am a hook!";
  void templateMethod() {
    print('behavioral: template =====> ${abstractMethod()}');
    print('behavioral: template =====> ${hookMethod()}');
  }
}

class Concrete extends Abstract {
  String abstractMethod() => "This is a boring example...";
}

class ConcreteOverridingHook extends Abstract {
  String abstractMethod() => "So, so boring...";
  @override
  String hookMethod() => "I'm an overriden hook method!";
}

void templatePattern(){
  var con1 = Concrete();
  var con2 = ConcreteOverridingHook();
  con1.templateMethod();
  con2.templateMethod();
  print('\r\n');
}