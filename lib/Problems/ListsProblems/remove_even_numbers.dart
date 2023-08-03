List<int> RemoveEvenNumbers(List<int> nums) {
  var evenRemove = nums.where((element) => element % 2 != 0).toList();
  return evenRemove;
}
