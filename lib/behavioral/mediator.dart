/*
  In software engineering, the mediator pattern defines an object that encapsulates how a set of objects interact.
  This pattern is considered to be a behavioral pattern due to the way it can alter the program's running behavior.

  Usually a program is made up of a large number of classes. Logic and computation are distributed among these classes.
  However, as more classes are added to a program, especially during maintenance and/or refactoring,
  the problem of communication between these classes may become more complex. This makes the program harder to read and maintain.
  Furthermore, it can become difficult to change the program, since any change may affect code in several other classes.

  With the mediator pattern, communication between objects is encapsulated within a mediator object.
  Objects no longer communicate directly with each other, but instead communicate through the mediator.
  This reduces the dependencies between communicating objects, thereby reducing coupling.
*/
abstract class Stateful {
  String _state;
  String get state => _state;
  set state(String newState) => _state = newState;
}

class Mediator {
  List<Stateful> _parties;
  Mediator(this._parties);
  void update(String state) {
    for (var party in _parties) {
      party.state = state;
    }
  }
}

class Attendee extends Stateful {
  String name;
  Attendee(this.name);
}

void mediatorPattern(){
  var curly = Attendee("Curly");
  var larry = Attendee("Larry");
  var moe = Attendee("I prefer not to disclose my name");
  var mixer = List<Attendee>.from([curly, larry, moe]);
  var publicAnnouncementSystem = Mediator(mixer);

  publicAnnouncementSystem.update("Do NOT eat the shrip tacos!");

  for (var person in mixer) {
    print("behavioral: mediator =====> ${person.name} heard \"${person.state}\".");
  }
  print('\r\n');
}