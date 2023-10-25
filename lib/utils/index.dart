logic1(List<int> arr) {
  int totalSum = arr.fold(0, (a, b) => a + b);
  int leftSum = 0;

  for (int index = 0; index < arr.length; index++) {
    if (leftSum == totalSum - leftSum - arr[index]) {
      return "middle index is $index";
    }

    leftSum += arr[index];
  }

  return "index not found";
}

bool checkPalindrome(String data) {
  final defaultText = data.trim().toLowerCase();
  final textReverse = defaultText.split('').reversed.join();
  return defaultText == textReverse;
}

findSumNumberZero(List<int> nums) {}
