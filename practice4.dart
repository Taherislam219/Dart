import 'dart:io';

void main() {
  //Create a list of names and print all names using list
  List<String> names = ["Taher", "Nasim", "Prohor", "Rahul"];

  for (String name in names) {
    print(name);
  }
  print(" ");
  //Create a set of fruits and print all fruits using loop
  Set<String> fruits = {"Apple", "Orange", "Coconut", "Lemon"};

  for (String fruit in fruits) {
    print(fruit);
  }

  //Create a program thats reads list of expenses amount using user input and print total

  print("Enter the number of expenses:");
  int n = int.parse(stdin.readLineSync()!);

  double total = 0;

  for (int i = 1; i <= n; i++) {
    print("Enter expense $i:");
    double expense = double.parse(stdin.readLineSync()!);
    total += expense;
  }

  print("Total expenses: $total");

  //Create an empty list of type string called days. Use the add method to add names of 7 days and print all days
  List<String> days = [];

  days.add("Monday");
  days.add("Tuesday");
  days.add("Wednesday");
  days.add("Thursday");
  days.add("Friday");
  days.add("Saturday");
  days.add("Sunday");

  print(days);

  //Add your 7 friend names to the list. Use where to find a name that starts with alphabet a
  List<String> friends = [
    "Nasim",
    "Salehin",
    "Maruf",
    "Jahed",
    "Sayeed",
    "Adnan",
    "Rahul",
  ];

  var namesStartingWithA = friends.where((friend) => friend.startsWith("A"));
  print(namesStartingWithA);

  //Create a map with name, address, age, country keys and store values to it. Update country name to other country and print all keys and values

  Map<String, dynamic> person = {
    "name": "Rahim",
    "address": "Sylhet",
    "age": 25,
    "country": "Bangladesh",
  };

  person["country"] = "England";

  print(person.keys);
  print(person.values);

  //Create a map with name, phone keys and store some values to it. Use where to find all keys that have length 4

  Map<String, String> Info = {"Name": "Taher Islam", "Phone": "01601034405"};

  var find = Info.keys.where((n) => n.length == 4);
  print(find.toList());

  //Create a simple to-do application that allows user to add, remove, and view their task

  List<dynamic> tasks = [];
  bool isbool = true;

  do {
    print("\n1. Add Task");
    print("2. View Tasks");
    print("3. Remove Task");
    print("4. Exit");
    int choice = int.parse(stdin.readLineSync()!);

    switch (choice) {
      case 1:
        print("Enter task");
        dynamic task = stdin.readLineSync()!;
        tasks.add(task);
        break;
      case 2:
        if (tasks.isEmpty) {
          print("No tasks available.");
        } else {
          print("Tasks:");
          for (int i = 0; i < tasks.length; i++) {
            print("${i + 1}. ${tasks[i]}");
          }
        }
        break;
      case 3:
        print("Enter task to remove : ");
        dynamic task = stdin.readLineSync()!;
        tasks.remove(task);
        if (tasks.remove(task)) {
          print("Task removed.");
        } else {
          print("Task not found.");
        }
        break;
      case 4:
        print("----Exited----");
        isbool = false;
        break;
      default:
        print("Somthing wrong!");
        break;
    }
  } while (isbool);
}
