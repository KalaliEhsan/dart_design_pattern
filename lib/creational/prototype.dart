abstract class Shape {
  int x;
  int y;
  Shape clone();
}

class Rectangle implements Shape {
  int height;
  int width;
  int x;
  int y;

  int _hashCode;
  bool isClone = false;
  String get cloneStatus => isClone ? "is a clone" : "is an original gangster";

  Rectangle(this.height, this.width, this.x, this.y);

  Rectangle.fromSource(Rectangle source) {
    height = source.height;
    width = source.width;
    x = source.x;
    y = source.y;
    _hashCode = source.hashCode;
    isClone = true;
  }

  @override
  Rectangle clone() {
    return Rectangle.fromSource(this);
  }

  @override
  int get hashCode {
    if (_hashCode != null) return _hashCode;
    _hashCode = DateTime.now().millisecondsSinceEpoch;
    return _hashCode;
  }

  @override
  bool operator ==(dynamic other) {
    if (other is! Rectangle) return false;
    Rectangle rect = other;
    return rect.isClone && rect.hashCode == hashCode;
  }
}

void prototypePattern(){
  var ogRect = Rectangle(0, 0, 100, 100);
  var cloneRect = ogRect.clone();
  var someOtherRect = Rectangle(0, 0, 100, 100);

  print('creational: prototype =====> ogRect ${ogRect.cloneStatus}.');
  print('creational: prototype =====> cloneRect ${cloneRect.cloneStatus}.');
  print('creational: prototype =====> someOtherRect ${someOtherRect.cloneStatus}.');

  String cloneIsClone = ogRect == cloneRect ? "is a clone of" : "is not a clone of";
  print('creational: prototype =====> cloneRect $cloneIsClone ogRect.');

  String someRectIsClone = ogRect == someOtherRect ? "is a clone of" : "is not a clone of";
  print('creational: prototype =====> someOtherRect $someRectIsClone ogRect.');
  print('\r\n');
}