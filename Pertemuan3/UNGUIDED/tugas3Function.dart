import 'dart:io';
import 'dart:math';

bool isPrime(int number) {
  if (number <= 1) return false;
  if (number == 2) return true;
  if (number % 2 == 0) return false;

  for (int i = 3; i <= sqrt(number); i += 2) {
    if (number % i == 0) return false;
  }

  return true;
}

void main() {
  print("Masukkan sebuah bilangan bulat:");
  String? input = stdin.readLineSync();

  if (input == null) {
    print("Input tidak valid.");
    return;
  }

  int? number = int.tryParse(input);

  if (number == null) {
    print("Input harus berupa bilangan bulat.");
    return;
  }

  if (isPrime(number)) {
    print("$number adalah bilangan prima");
  } else {
    print("$number bukan bilangan prima");
  }
}
