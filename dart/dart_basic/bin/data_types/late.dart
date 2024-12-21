void main(List<String> args) {
  late final num = 10;
  print('First num : $num');

  ///late variable is initialize when they are first used.
  late final num2 = getValue();
  print("First initialize");
  print('Second num2 : $num2');
}

int getValue() {
  return 10;
}