void main(List<String> args) {
  //set
  //Set như List nhưng mà các phần tử trong Set sẽ k trùng nhau
  //Set dùng ... = <datatype>{} or Set<datatype> ... =
  Set<int> setNum = {1, 2, 2, 3, 4, 56};
  var setNumString = {1, 2, 3, 4, 56, 'a', 'b', 'a'};
  var setNum1 = <int>{1, 2, 3, 3, 4};

  print(setNum);
  print(setNumString);
  print(setNum1);
}
