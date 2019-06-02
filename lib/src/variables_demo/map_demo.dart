void main() {
  // map literals
  var a = const {
    "benz":"奔驰",
    "bmw":"宝马",
    "audi":"奥迪"
  };

  Map<String,String> nickName = new Map();

  nickName["lp"] = "liupeng";   // equals nickName.add("lp", "liupeng"); in Java

  nickName["lypeer"] = "luoyang";
  nickName["lumiaXu"] = "xurui";

  print(nickName["lp"]);  // equals nickName.get("lp");

  print(nickName["teacherMa"]);

  print(nickName.length);

  // maps support spread operators (... and ...?) and collection if and for, just like lists do.

}