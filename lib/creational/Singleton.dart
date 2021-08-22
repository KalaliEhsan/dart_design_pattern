
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