class Calculator{
  int digit1;
  int digit2;

  Calculator(this.digit1, this.digit2); 

  int add() {
    return digit1 + digit2;
  }

  int sutstract() { 
    return digit1 - digit2;
  }

  int multiply() => digit1 * digit2;

  double divide() => digit1/digit2; 
}