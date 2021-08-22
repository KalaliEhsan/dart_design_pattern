
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
  var anotherTyler = Me();

  print('Creational: singleton =====> $Ehsan');
  print('Creational: singleton =====> $anotherTyler');

  var samenessCheck = identical(Ehsan, anotherTyler)
      ? "We are both the same ${Me.name}."
      : "We are NOT the same. I mean, just look at us.";
  print('Creational: singleton =====> $samenessCheck');
  print('\r\n');
}