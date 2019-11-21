// Challenge
// Simplified Fractions
// Create a function that returns the simplified version of a fraction.
/// Examples
//  simplify("4/6") ➞ "2/3"

import 'dart:math';
//String simplify1(String input){
//  List numbers = input.split('/').toList();
//  int num1 = int.parse(numbers[0]);
//  int num2 = int.parse(numbers[1]);
//  int i = 1;
//  while((num1 % num2 == 0 || num2 % num1 == 0) && !isPrime(num1) || !isPrime(num2)){
//
//    if (num1 % i == 0 && num2 % i == 0){
//      num1 = (num1 / i).round();
//      num2 = (num2 / i).round();
//    }
//    i++;
//    if (i == 100){
//      break;
//    }
//  }
//  if (num1 == num2){
//    return '1';
//  }
//  else{
//    return '$num1/$num2';
//  }
//}

String simplify(String number){
  List numbers = (number.split('/'));
  int num = int.parse(numbers[0]);
  int den = int.parse(numbers[1]);
  int factor = calculateHcf(num, den);
  num = num~/factor;
  den = den~/factor;
  return('$num/$den');
}

int calculateHcf(int x, int y){
  int smaller = min(x, y);
  int hcf;
  for (int i = 1; i< smaller+1; i++){
    if(x%i == 0 && y%i == 0){
      hcf = i;
    }
  }
  return hcf;
}


main() {
  print(simplify("8646544864/8496874112"));
}
