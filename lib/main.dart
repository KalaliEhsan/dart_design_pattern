import 'package:flutter_design_pattern/behavioral/chain_of_responsibility.dart';
import 'package:flutter_design_pattern/behavioral/command.dart';
import 'package:flutter_design_pattern/behavioral/interpreter.dart';
import 'package:flutter_design_pattern/behavioral/iterator.dart';
import 'package:flutter_design_pattern/behavioral/mediator.dart';
import 'package:flutter_design_pattern/behavioral/memento.dart';
import 'package:flutter_design_pattern/behavioral/observer.dart';
import 'package:flutter_design_pattern/behavioral/state.dart';
import 'package:flutter_design_pattern/behavioral/strategy.dart';
import 'package:flutter_design_pattern/behavioral/template_method.dart';
import 'package:flutter_design_pattern/behavioral/visitor.dart';
import 'package:flutter_design_pattern/creational/abstract_factory.dart';
import 'package:flutter_design_pattern/creational/factory_method.dart';
import 'package:flutter_design_pattern/creational/prototype.dart';
import 'package:flutter_design_pattern/structural/adapter.dart';
import 'package:flutter_design_pattern/structural/bridge.dart';
import 'package:flutter_design_pattern/structural/composite.dart';
import 'package:flutter_design_pattern/structural/decorator.dart';
import 'package:flutter_design_pattern/structural/facade.dart';
import 'package:flutter_design_pattern/structural/flyweight.dart';
import 'package:flutter_design_pattern/structural/proxy.dart';

import 'creational/Builder.dart';
import 'creational/Singleton.dart';

void main() {
  /// Creational //////////////////////////////////////////////////
  //singleton pattern
  singletonPattern();

  //builder pattern
  builderPattern();

  //factory method pattern
  factoryPattern();

  //abstract factory pattern
  abstractFactoryPattern();

  //prototype pattern
  prototypePattern();

  /// Creational //////////////////////////////////////////////////

  /// Structural //////////////////////////////////////////////////
  //adapter pattern
  adapterPattern();

  //bridge pattern
  bridgePattern();

  //composite pattern
  compositePattern();

  //decorator pattern
  decoratorPattern();

  //facade pattern
  facadePattern();

  //flyweight pattern
  flyweightPattern();

  //proxy pattern
  proxyPattern();

  /// Structural //////////////////////////////////////////////////

  /// Behavioral //////////////////////////////////////////////////
  //chain of responsibility pattern
  chainOfResponsibility();

  //command pattern
  commandPattern();

  //interpreter pattern
  interpreterPattern();

  //iterator pattern
  iteratorPattern();

  //mediator pattern
  mediatorPattern();

  //memento pattern
  mementoPattern();

  //observer pattern
  observerPattern();

  //state pattern
  statePattern();

  //strategy pattern
  strategyPattern();

  //template pattern
  templatePattern();

  //visitor pattern
  visitorPattern();

  /// Behavioral //////////////////////////////////////////////////
}
