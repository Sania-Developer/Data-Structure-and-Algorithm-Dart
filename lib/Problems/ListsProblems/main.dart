import 'sum_list.dart';
import 'length_of_countries.dart';
import 'reverse_list.dart';
import 'remove_even_numbers.dart';
import 'find_max.dart';
import 'max_difference.dart';
import 'common_elements.dart';
import 'sum_of_even_numbers.dart';
import 'unique_elements.dart';

void main(List<String> args) {
  // Problem 1: Calculate the sum of elements in a list
  var sumList = SumList([1, 2, 3, 4, 5]);
  print("Sum of list: $sumList");

  // Problem 2: Print the length of each country name in the list
  List<String> countries = ['USA', 'Pakistan', 'India', 'Australia', 'Germany'];
  LengthOfCountries(countries);

  // Problem 3: Reverse a list of integers
  var reverseList = ReverseList([1, 2, 3, 4, 5]);
  print("Reversed list: $reverseList");

  // Problem 4: Remove even numbers from the list
  List<int> numbers = [1, 2, 3, 4, 5];
  var evenRemove = RemoveEvenNumbers(numbers);
  print("List with even numbers removed: $evenRemove");

  // Problem 5: Find the maximum value in a list of integers
  var maxNum = FindMax([1, 2, 3, 4, 5]);
  print("Max value in the list: $maxNum");

  // Problem 6: Find the maximum difference between any two elements in the list
  var maxDiffer = MaxDifference([1, 2, 3, 4, 5, 6, 7, 10]);
  print("Max difference between elements: $maxDiffer");

  // Problem 7: Find the common elements between two lists
  var commonElements = CommonElements([1, 2, 3, 4, 5], [1, 3, 5, 6, 7]);
  print("Common elements: $commonElements");

  // Problem 8: Find the sum of all even numbers in the list
  var sumOfEvenNumbers = SumOfEvenNumbers([1, 2, 3, 4, 5]);
  print("Sum of even numbers: $sumOfEvenNumbers");

  // Problem 9: Find the unique elements in the list
  var uniqueElements = UniqueElements([1, 2, 3, 4, 5, 1, 3, 5, 7, 9, 10]);
  print("Unique elements: $uniqueElements");
}
