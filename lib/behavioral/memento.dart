/*
  The memento pattern is a software design pattern that provides the ability to restore an object to its previous state (undo via rollback).

  The memento pattern is implemented with three objects: the originator, a caretaker and a memento.
  The originator is some object that has an internal state. The caretaker is going to do something to the originator,
  but wants to be able to undo the change. The caretaker first asks the originator for a memento object.
  Then it does whatever operation (or sequence of operations) it was going to do.
  To roll back to the state before the operations, it returns the memento object to the originator.
  The memento object itself is an opaque object (one which the caretaker cannot, or should not, change).
  When using this pattern, care should be taken if the originator may change other objects or resources - the memento pattern operates on a single object.
*/
class Memento {
  String _state;

  Memento(String s) {
    _state = s;
    print("behavioral: memento =====> [Memento] State \"$s\" has been saved!");
  }

  String get state {
    print("behavioral: memento =====> [Memento] Providing saved state \"$_state\"...");
    return _state;
  }
}

class Originator {
  String _state;

  // NOTE: This uses the state setter on init to get a handy print
  Originator(String s) {
    state = s;
  }

  String get state => _state;
  void set state(String newState) {
    _state = newState;
    print("behavioral: memento =====> [Originator] Set state to $newState");
  }

  Memento saveToMemento() {
    print("behavioral: memento =====> [Originator] Saving to memento...");
    return Memento(state);
  }

  void restoreFromMemento(Memento m) {
    print("behavioral: memento =====> [Originator] Restoring from memento...");
    _state = m.state;
    print("behavioral: memento =====> [Originator] Restored to $state.");
  }
}

class CareTaker {
  Memento memento;
}

void mementoPattern(){
  var me = Originator("Returned from store");
  me.state = "Placing car keys down";

  var locationOfKeys = me.saveToMemento();
  var memory = CareTaker();
  memory.memento = locationOfKeys;

  me.state = "Putting away groceries";
  me.state = "Noticed missing pickles";
  me.state = "Looking for car keys...";

  me.restoreFromMemento(memory.memento);
  me.state = "Going back to store for pickles";
  print('\r\n');
}