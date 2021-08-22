/*
  The prototype pattern is a creational design pattern in software development.
  It is used when the type of objects to create is determined by a prototypical instance, which is cloned to produce new objects.

  This pattern is used to:

  avoid subclasses of an object creator in the client application, like the factory method pattern does.
  avoid the inherent cost of creating a new object in the standard way (e.g., using the 'new' keyword) when it is prohibitively expensive for a given application.
  To implement the pattern, declare an abstract base class that specifies a pure virtual clone() method.
  Any class that needs a "polymorphic constructor" capability derives itself from the abstract base class, and implements the clone() operation.
*/
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