abstract class Subject {
  void someMethod();
}

class ExpensiveClass implements Subject {
  String name;

  ExpensiveClass(this.name);

  void someMethod() {
    print("structural: proxy =====> someMethod of $name (an ExpensiveClass) is being called");
  }
}

class Proxy implements Subject {
  String _name;
  ExpensiveClass _sub;

  Proxy(this._name);

  void someMethod() {
    print("structural: proxy =====> someMethod of $_name (a Proxy) is being called");
    _subject().someMethod();
  }

  ExpensiveClass _subject() {
    if (_sub != null) return _sub;
    print("structural: proxy =====> Creating an instance of ExpensiveClass for the proxy...");
    _sub = ExpensiveClass(_name);
    return _sub;
  }
}

void proxyPattern(){
  var proxy = Proxy("yay");
  print("structural: proxy =====> With our handy proxy, we call someMethod...");
  proxy.someMethod();
  print("structural: proxy =====> Notice that the proxy did not have an instance of ExpensiveClass, so it made one when required.");
  print("structural: proxy =====> Now if we call someMethod again...");
  proxy.someMethod();
  print("structural: proxy =====> We reuse the instance we made above!");
  print('\r\n');
}