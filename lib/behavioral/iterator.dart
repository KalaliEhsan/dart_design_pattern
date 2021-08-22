class RainbowIterator implements Iterator {
  var _colors = ["Red", "Orange", "Yellow", "Green", "Blue", "Indigo", "Violet"];
  var _index = 0;
  String get current => _colors[_index++];
  bool moveNext() => _index < _colors.length;
}

void iteratorPattern(){
  var rainbowColors = RainbowIterator();
  while(rainbowColors.moveNext()) {
    print('behavioral: iterator =====> ${rainbowColors.current}');
  }
  print('\r\n');
}