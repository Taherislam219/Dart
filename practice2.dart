import 'dart:io';

void main() {
  // 1. Check Odd or Even
  print("1. Odd or Even");
  stdout.write("Enter a number: ");
  int num = int.parse(stdin.readLineSync()!);

  if (num % 2 == 0) {
    print("$num is Even");
  } else {
    print("$num is Odd");
  }

  // 2. Check Vowel or Consonant
  print("\n2. Vowel or Consonant");
  stdout.write("Enter a character: ");
  String ch = stdin.readLineSync()!.toLowerCase();

  if (ch == "a" || ch == "e" || ch == "i" || ch == "o" || ch == "u") {
    print("$ch is a Vowel");
  } else {
    print("$ch is a Consonant");
  }

  // 3. Positive, Negative or Zero
  print("\n3. Positive, Negative or Zero");
  stdout.write("Enter a number: ");
  int n = int.parse(stdin.readLineSync()!);

  if (n > 0) {
    print("Positive");
  } else if (n < 0) {
    print("Negative");
  } else {
    print("Zero");
  }

  // 4. Print Name 100 Times
  print("\n4. Print Name 100 Times");
  stdout.write("Enter your name: ");
  String name = stdin.readLineSync()!;

  for (int i = 1; i <= 100; i++) {
    print("$i. $name");
  }

  // 5. Sum of Natural Numbers
  print("\n5. Sum of Natural Numbers");
  stdout.write("Enter a number: ");
  int limit = int.parse(stdin.readLineSync()!);

  int sum = 0;
  for (int i = 1; i <= limit; i++) {
    sum += i;
  }
  print("Sum = $sum");

  // 6. Multiplication Table of 5
  print("\n6. Table of 5");
  for (int i = 1; i <= 10; i++) {
    print("5 x $i = ${5 * i}");
  }

  // 7. Multiplication Tables of 1-9
  print("\n7. Tables of 1 to 9");
  for (int i = 1; i <= 9; i++) {
    print("\nTable of $i");
    for (int j = 1; j <= 10; j++) {
      print("$i x $j = ${i * j}");
    }
  }

  // 8. Simple Calculator
  print("\n8. Simple Calculator");

  stdout.write("Enter first number: ");
  double a = double.parse(stdin.readLineSync()!);

  stdout.write("Enter second number: ");
  double b = double.parse(stdin.readLineSync()!);

  stdout.write("Enter operator (+, -, *, /): ");
  String op = stdin.readLineSync()!;

  switch (op) {
    case "+":
      print("Result = ${a + b}");
      break;
    case "-":
      print("Result = ${a - b}");
      break;
    case "*":
      print("Result = ${a * b}");
      break;
    case "/":
      if (b != 0) {
        print("Result = ${a / b}");
      } else {
        print("Cannot divide by zero");
      }
      break;
    default:
      print("Invalid Operator");
  }

  // 9. Print 1 to 100 but not 41
  print("\n9. Print 1 to 100 Except 41");
  for (int i = 1; i <= 100; i++) {
    if (i == 41) {
      continue;
    }
    print(i);
  }
}
