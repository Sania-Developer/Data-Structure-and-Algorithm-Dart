void main(List<String> args) {
  // Topic: Lists and List Operations

  // Basic list declaration and initialization
  var listNum = [1, 2, 3, 4, 5, 6];
  List<String> genericList = ['a', 'a', 'v', 'a', 'b', 'a'];

  // Filtering elements using 'where' and creating new lists
  var evenNumbers = listNum.where((number) => number % 2 == 0).toList();
  var alphabet = genericList.where((element) => element == 'a').toList();
  print("Even numbers: $evenNumbers"); // Output: Even numbers: [2, 4, 6]
  print("Alphabets 'a': $alphabet"); // Output: Alphabets 'a': [a, a, a, a]

  // Copying lists
  var copyList1 = listNum.toList();
  var copyList2 = [...listNum];
  var copyList3 = listNum;
  print("Copied list 1: $copyList1");
  print("Copied list 2: $copyList2");
  print("Original list: $copyList3");

  // Sorting a list
  var sortList = [4, 7, 3, 9, 5];
  sortList.sort();
  print("Sorted list: $sortList"); // Output: Sorted list: [3, 4, 5, 7, 9]

  // Mapping elements in a list
  var listMapping = listNum.map((e) => e * e).toList();
  print("Mapped list: $listMapping"); // Output: Mapped list: [1, 4, 9, 16, 25, 36]

  // Iterating over a list using 'for-in' loop
  print("Iterating using 'for-in' loop:");
  for (var element in listMapping) {
    print(element);
  }

  // Generating a list using 'List.generate'
  var generateList = List.generate(10, (index) => index);
  print("Generated list: $generateList"); // Output: Generated list: [0, 1, 2, ..., 9]

  // Combining two lists using spread operator
  var list2 = ['a', 'b', 'c'];
  var combLists = [...listNum, ...list2];
  print("Combined lists: $combLists");

  // Checking if an element exists in a list
  var contains5 = listNum.contains(5);
  var contains8 = listNum.contains(8);
  print("Contains 5: $contains5"); // Output: Contains 5: true
  print("Contains 8: $contains8"); // Output: Contains 8: false

  // Topic: List with Fixed Length

  // Creating a list with fixed length
  List<double> weeklyTemperatures = List<double>.filled(52, 0.0);

  // Initializing specific elements of the list
  weeklyTemperatures[0] = 25.5;
  weeklyTemperatures[1] = 27.0;
  weeklyTemperatures[50] = 23.5;
  weeklyTemperatures[51] = 20.0;

  // Accessing elements of the list
  double temperatureWeek8 = weeklyTemperatures[7];
  print("Temperature for Week 8: $temperatureWeek8");

  // Topic: List Manipulation

  // Adding elements to the list
  listNum.add(7); // Adding a single element
  listNum.addAll([1, 3, 5, 7]); // Adding multiple elements

  // Updating elements in the list
  listNum[0] = 6; // Updating the first element

  // Removing elements from the list
  listNum.removeAt(1); // Removing the element at index 1
  listNum.remove(6); // Removing the element '6' from the list

  // Accessing elements by index
  var secondElement = listNum[1];
  print("Second element: $secondElement"); // Output: Second element: 2

  // Iterating over a list using 'for' loop with index
  print("Iterating using 'for' loop with index:");
  for (var i = 0; i < listNum.length; i++) {
    print("Index $i: ${listNum[i]}");
  }

  // Iterating over a list using 'for-in' loop
  print("Iterating using 'for-in' loop:");
  for (var number in listNum) {
    print(number);
  }

  // Iterating over a list using 'forEach' method
  print("Iterating using 'forEach' method:");
  listNum.forEach((element) {
    print(element);
  });
}
