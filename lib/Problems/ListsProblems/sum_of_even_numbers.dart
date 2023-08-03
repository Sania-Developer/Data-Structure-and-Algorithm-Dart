int SumOfEvenNumbers(List<int> nums) {
  var sumEvenNum = 0;

  for (var element in nums) {
    if (element % 2 == 0) {
      sumEvenNum += element;
    }
  }

  return sumEvenNum;
}
