import 'dart:math';

// 1. Print your own name using function
void printName() {
  print("My Name is John Doe");
}

// 2. Print even numbers between intervals
void printEvenNumbers(int start, int end) {
  print("Even numbers between $start and $end:");
  for (int i = start; i <= end; i++) {
    if (i % 2 == 0) {
      print(i);
    }
  }
}

// 3. Greet function
void greet(String name) {
  print("Hello, $name");
}

// 4. Generate random password
String generatePassword(int length) {
  const chars =
      'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789@#\$%&*';
  Random random = Random();

  return List.generate(
    length,
    (index) => chars[random.nextInt(chars.length)],
  ).join();
}

// 5. Find area of a circle
double areaOfCircle(double radius) {
  return pi * radius * radius;
}

// 6. Reverse a String
String reverseString(String text) {
  return text.split('').reversed.join();
}

// 7. Calculate power of a number
num power(num base, int exponent) {
  return pow(base, exponent);
}

// 8. Add two numbers
num add(num a, num b) {
  return a + b;
}

// 9. Find the largest of three numbers
num maxNumber(num a, num b, num c) {
  num max = a;

  if (b > max) max = b;
  if (c > max) max = c;

  return max;
}

// 10. Check if a number is even
bool isEven(int number) {
  return number % 2 == 0;
}

// 11. Create user with default parameter
void createUser(String name, int age, {bool isActive = true}) {
  print("User Information:");
  print("Name: $name");
  print("Age: $age");
  print("Active: $isActive");
}

// 12. Calculate area of a rectangle
double calculateArea({double length = 1, double width = 1}) {
  return length * width;
}

void main() {
  // 1
  print("1. Print Name");
  printName();

  // 2
  print("\n2. Even Numbers");
  printEvenNumbers(1, 20);

  // 3
  print("\n3. Greeting");
  greet("John");

  // 4
  print("\n4. Random Password");
  print(generatePassword(10));

  // 5
  print("\n5. Area of Circle");
  print(areaOfCircle(5));

  // 6
  print("\n6. Reverse String");
  print(reverseString("Dart"));

  // 7
  print("\n7. Power");
  print(power(5, 3));

  // 8
  print("\n8. Add Two Numbers");
  print(add(10, 20));

  // 9
  print("\n9. Maximum Number");
  print(maxNumber(12, 25, 18));

  // 10
  print("\n10. Is Even?");
  print(isEven(8));

  // 11
  print("\n11. Create User");
  createUser("Alice", 22);
  createUser("Bob", 30, isActive: false);

  // 12
  print("\n12. Area of Rectangle");
  print(calculateArea(length: 5, width: 4));
  print(calculateArea()); // Uses default values
}
