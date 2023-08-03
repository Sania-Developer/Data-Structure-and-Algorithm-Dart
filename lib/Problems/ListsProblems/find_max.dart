int FindMax(List<int> nums) {
  var maxNum = nums[0];
  for (var element in nums) {
    if (maxNum < element) {
      maxNum = element;
    }
  }
  return maxNum;
}
