void main() {

  // All below codes only run on Dart 2.3 and later

  var list1 = [1, 2, 3, 4];
  var list2 = [...list1, 5, 6, 7, 8];
  print(list2);

  var list3;
  list2 = [...list2, ...?list3];

  // list2 = [...list2, ...list3];
  // NoSuchMethodError: The getter 'iterator' was called on null.

  print(list2);

  var list4 = ["1","2","3","4", if(true)"5"];
  print(list4);


  list4 = [for(var v in list1) "$v"];
  print(list4);
}
