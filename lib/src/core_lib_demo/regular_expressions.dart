class RegularExpression {
  void printReg() {
    RegExp numbers = new RegExp(r"\d+");
    var howMuch = "It\'s cost me \$500 ";
    var howMuch2 = "It\'s cost me five hundred";
    var priceRange = "12 to 20 to 30 to 40";
    print(howMuch.replaceAll(numbers, howMuch));
    print(howMuch2.replaceAll(numbers, howMuch2));
    for(var price in numbers.allMatches(priceRange)) {
      print(price.group(0));
    }
  }
}

void main() {
  RegularExpression().printReg();
}