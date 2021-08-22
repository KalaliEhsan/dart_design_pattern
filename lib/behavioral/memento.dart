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