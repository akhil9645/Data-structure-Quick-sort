import 'package:quicksort/quicksort.dart' as quicksort;

List<int> sort(List<int> arr) {
  if (arr.length <= 1) {
    return arr;
  }
  int pivot = arr[arr.length - 1];
  List<int> left = [];
  List<int> right = [];
  for (int i = 0; i < arr.length - 1; i++) {
    if (arr[i] < pivot) {
      left.add(arr[i]);
    } else {
      right.add(arr[i]);
    }
  }
  return [...sort(left), pivot, ...sort(right)];
}

void main() {
  List<int> arry = [5, 55, 6, 1, -9, -2, 7];
  print(sort(arry));
}
