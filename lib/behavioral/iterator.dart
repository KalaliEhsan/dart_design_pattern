/*
  In object-oriented programming, the iterator pattern is a design pattern in which an iterator is used to traverse a container and access the container's elements.
  The iterator pattern decouples algorithms from containers; in some cases, algorithms are necessarily container-specific and thus cannot be decoupled.

  For example, the hypothetical algorithm SearchForElement can be implemented generally using a specified type of iterator
  rather than implementing it as a container-specific algorithm. This allows SearchForElement to be used on any container that supports the required type of iterator.
*/

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