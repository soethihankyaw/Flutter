import 'package:ep01_hello_world/calculate/calculate.dart';

void main(List<String> args) {
  print("Hello World");

  var calculator = Calculator(9, 3);
  print("${calculator.digit1} + ${calculator.digit2} = ${calculator.add()}");
  print("${calculator.digit1} - ${calculator.digit2} = ${calculator.sutstract()}");
  print("${calculator.digit1} * ${calculator.digit2} = ${calculator.multiply()}");
   print("${calculator.digit1} / ${calculator.digit2} = ${calculator.divide()}");
}

