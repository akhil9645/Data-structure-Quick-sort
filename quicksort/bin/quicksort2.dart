import 'dart:math';

import 'quicksort.dart';

void main(List<String> args) {
  List<int> array = [14, 22, 45, 5, 55];
  for (int i = 0; i < array.length - 1; i++) {
    for (int j = 0; j < array.length - i - 1; j++) {
      if (array[j] > array[j + 1]) {
        int temp = array[j];
        array[j] = array[j + 1];
        array[j + 1] = temp;
      }
    }
  }
  print(array);
}
