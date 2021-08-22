/*
  In software engineering, the singleton pattern is a software design pattern that restricts the instantiation of a class to one "single" instance.
  This is useful when exactly one object is needed to coordinate actions across the system. The term comes from the mathematical concept of a singleton.

  The abstract factory, builder, and prototype patterns can use singletons in their implementation.
  Facade objects are often singletons because only one facade object is required.
  State objects are often singletons.
  Singletons are often preferred to global variables because:

  They do not pollute the global namespace (or, in languages with nested namespaces, their containing namespace) with unnecessary variables.[4]
  They permit lazy allocation and initialization, whereas global variables in many languages will always consume resources.
*/
class Me {
  static final Me _singleton = new Me._internal();
  static final String _name = "Ehsan";

  factory Me() {
    return _singleton;
  }

  static String get name => _name;

  @override
  String toString() => "Hello, my name is $name.";

  Me._internal();
}

void singletonPattern(){
  var Ehsan = Me();
  var anotherPeople = Me();

  print('creational: singleton =====> $Ehsan');
  print('creational: singleton =====> $anotherPeople');

  var samenessCheck = identical(Ehsan, anotherPeople)
      ? "We are both the same ${Me.name}."
      : "We are NOT the same. I mean, just look at us.";
  print('creational: singleton =====> $samenessCheck');
  print('\r\n');
}