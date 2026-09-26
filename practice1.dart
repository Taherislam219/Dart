import 'dart:io';

void main() {
  // 1. Print your name
  print("1. My Name");
  print("Your Name");

  // 2. Print with single and double quotes
  print("\n2. Quotes");
  print('Hello I am "John Doe"');
  print("Hello I'am 'John Doe'");

  // 3. Constant integer
  print("\n3. Constant");
  const int number = 7;
  print("Constant value = $number");

  // 4. Simple Interest
  print("\n4. Simple Interest");
  stdout.write("Enter Principal: ");
  double p = double.parse(stdin.readLineSync()!);

  stdout.write("Enter Time: ");
  double t = double.parse(stdin.readLineSync()!);

  stdout.write("Enter Rate: ");
  double r = double.parse(stdin.readLineSync()!);

  double si = (p * t * r) / 100;
  print("Simple Interest = $si");

  // 5. Square of a number
  print("\n5. Square of a Number");
  stdout.write("Enter a number: ");
  int n = int.parse(stdin.readLineSync()!);
  print("Square = ${n * n}");

  // 6. Full name
  print("\n6. Full Name");
  stdout.write("Enter First Name: ");
  String firstName = stdin.readLineSync()!;

  stdout.write("Enter Last Name: ");
  String lastName = stdin.readLineSync()!;

  print("Full Name = $firstName $lastName");

  // 7. Quotient and Remainder
  print("\n7. Quotient and Remainder");
  stdout.write("Enter First Integer: ");
  int a = int.parse(stdin.readLineSync()!);

  stdout.write("Enter Second Integer: ");
  int b = int.parse(stdin.readLineSync()!);

  print("Quotient = ${a ~/ b}");
  print("Remainder = ${a % b}");

  // 8. Swap two numbers
  print("\n8. Swap Two Numbers");
  stdout.write("Enter First Number: ");
  int x = int.parse(stdin.readLineSync()!);

  stdout.write("Enter Second Number: ");
  int y = int.parse(stdin.readLineSync()!);

  int temp = x;
  x = y;
  y = temp;

  print("After Swapping:");
  print("First Number = $x");
  print("Second Number = $y");

  // 9. Remove whitespaces
  print("\n9. Remove Whitespaces");
  stdout.write("Enter a String: ");
  String text = stdin.readLineSync()!;
  String result = text.replaceAll(" ", "");
  print("Result = $result");

  // 10. String to int
  print("\n10. String to Int");
  stdout.write("Enter a Number as String: ");
  String str = stdin.readLineSync()!;
  int value = int.parse(str);
  print("Integer = $value");

  // 11. Split restaurant bill
  print("\n11. Split Bill");
  stdout.write("Enter Total Bill Amount: ");
  double bill = double.parse(stdin.readLineSync()!);

  stdout.write("Enter Number of People: ");
  int people = int.parse(stdin.readLineSync()!);

  double split = bill / people;
  print("Each Person Pays = $split");

  // 12. Time to reach office
  print("\n12. Time to Reach Office");
  double distance = 25;
  double speed = 40;

  double timeHours = distance / speed;
  double timeMinutes = timeHours * 60;

  print("Time Taken = $timeMinutes minutes");
}
