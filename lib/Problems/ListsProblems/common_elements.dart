List<int> CommonElements(List<int> list1, List<int> list2) {
  List<int> commonValue = [];

  for (var element1 in list1) {
    if (list2.contains(element1)) {
      commonValue.add(element1);
    }
  }

  return commonValue;
}
