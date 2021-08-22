const adapteeMessage = 'Adaptee#method was called';

class Adaptee {
  String method() {
    print('structural: adapter =====> Adaptee#method is being called');

    return adapteeMessage;
  }
}

abstract class Target {
  String call();
}

class Adapter implements Target {
  String call() {
    var adaptee = Adaptee();
    print('structural: adapter =====> Adapter#call is being called');

    return adaptee.method();
  }
}

void adapterPattern(){
  var adapter = Adapter();
  var result = adapter.call();

  assert(result == adapteeMessage);
  print('\r\n');
}