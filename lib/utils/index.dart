import 'package:collection/collection.dart';

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

List<List<int>> findSumNumberZero(List<int> nums) {
  nums.sort();
  late List<List<int>> result = [];
  /**pre check for performance */
  if (nums.length < 3) return result;

  for (var i = 0; i < nums.length; i++) {
    late int? nextItem;
    final currentItem = nums[i];
    final skipArray = nums.skip(i + 1).toList();
    if (skipArray.length >= 2) {
      for (var i2 = 0; i2 < skipArray.length; i2++) {
        nextItem = skipArray[i2];
        final sumTwo = currentItem + nextItem;
        final skipArray2 = skipArray.skip(i2 + 1);
        final findLastIndex =
            skipArray2.firstWhereOrNull((element) => element == (0 - sumTwo));
        if (findLastIndex != null) {
          final addData = [currentItem, nextItem, findLastIndex];
          final findDup =
              result.firstWhereOrNull((ck) => ck.join() == addData.join());
          if (findDup == null) {
            result = [
              ...result,
              [currentItem, nextItem, findLastIndex]
            ];
          }
        }
      }
    } else {
      break;
    }
  }
  return result;
}
