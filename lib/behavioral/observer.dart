/*
  The observer pattern is a software design pattern in which an object, called the subject,
  maintains a list of its dependents, called observers, and notifies them automatically of any state changes, usually by calling one of their methods.

  It is mainly used to implement distributed event handling systems, in "event driven" software.
  Most modern languages such as C# have built-in "event" constructs which implement the observer pattern components.

  The observer pattern is also a key part in the familiar model–view–controller (MVC) architectural pattern.
  The observer pattern is implemented in numerous programming libraries and systems, including almost all GUI toolkits.
*/
class Notification {
  String message;
  DateTime timestamp;
  Notification(this.message, this.timestamp);
  Notification.forNow(this.message) {
    timestamp = new DateTime.now();
  }
}

class Observable {
  List<Observer> _observers;

  Observable([List<Observer> observers]) {
    _observers = observers ?? [];
  }

  void registerObserver(Observer observer) {
    _observers.add(observer);
  }

  void notify_observers(Notification notification) {
    for (var observer in _observers) {
      observer.notify(notification);
    }
  }
}

class Observer {
  String name;

  Observer(this.name);

  void notify(Notification notification) {
    print("behavioral: observer =====> [${notification.timestamp.toIso8601String()}] Hey $name, ${notification.message}!");
  }
}

class CoffeeMaker extends Observable {
  CoffeeMaker([List<Observer> observers]) : super(observers);
  void brew() {
    print("behavioral: observer =====> Brewing the coffee...");
    notify_observers(Notification.forNow("coffee's done"));
  }
}

void observerPattern(){
  var me = Observer("Tyler");
  var mrCoffee = CoffeeMaker(List.from([me]));
  var myWife = Observer("Kate");
  mrCoffee.registerObserver(myWife);
  mrCoffee.brew();
  print('\r\n');
}