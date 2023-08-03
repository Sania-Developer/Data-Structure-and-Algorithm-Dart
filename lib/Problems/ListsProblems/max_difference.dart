int MaxDifference(List<int> nums) {
  var minValue = nums[0];
  var maxValue = nums[0];

  for (var element in nums) {
    if (maxValue < element) {
      maxValue = element;
    }
    if (minValue > element) {
      minValue = element;
    }
  }

  return maxValue - minValue;
}
