/*
  The state pattern is used in computer programming to encapsulate varying behavior for the same object, based on its internal state.
  This can be a cleaner way for an object to change its behavior at runtime without resorting to conditional statements and thus improve maintainability.
*/

abstract class State {
  void handler(Stateful context);
  String toString();
}

class StatusOn implements State {
  handler(Stateful context) {
    print("behavioral: state =====> Handler of StatusOn is being called!");
    context.state = StatusOff();
  }

  @override String toString() {
    return "on";
  }
}

class StatusOff implements State {
  handler(Stateful context) {
    print("behavioral: state =====> Handler of StatusOff is being called!");
    context.state = StatusOn();
  }

  @override String toString() {
    return "off";
  }
}

class Stateful {
  State _state;

  Stateful(this._state);

  State get state => _state;
  set state(State newState) => _state = newState;

  void touch() {
    print("behavioral: state =====> Touching the Stateful...");
    _state.handler(this);
  }
}

void statePattern(){
  var lightSwitch = Stateful(StatusOff());
  print("behavioral: state =====> The light switch is ${lightSwitch.state}.");
  print("behavioral: state =====> Toggling the light switch...");
  lightSwitch.touch();
  print("behavioral: state =====> The light switch is ${lightSwitch.state}.");
  print('\r\n');
}