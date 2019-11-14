// Challenge
// Simplified Fractions
// Create a function that returns the simplified version of a fraction.
import 'package:starfruit/starfruit.dart';

/// Examples
//  simplify("4/6") ➞ "2/3"

String simplify(String input){
  List numbers = input.split('/').toList();
  int num1 = int.parse(numbers[0]);
  int num2 = int.parse(numbers[1]);
  int i = 1;
  while((num1 % num2 == 0 || num2 % num1 == 0) && !mUtils.isPrime(num1) || !mUtils.isPrime(num2)){

    if (num1 % i == 0 && num2 % i == 0){
      num1 = (num1 / i).round();
      num2 = (num2 / i).round();
    }
    i++;
    if (i == 1000){
      break;
    }
  }
  if (num1 == num2){
    return '1';
  }
  else{
    return '$num1/$num2';
  }
}
main() {
  print(simplify("1000/52"));
}
