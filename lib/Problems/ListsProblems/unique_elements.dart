List<int> UniqueElements(List<int> nums) {
  List<int> uniqueElements = [];

  for (var element in nums) {
    if (!uniqueElements.contains(element)) {
      uniqueElements.add(element);
    }
  }

  return uniqueElements;
}
