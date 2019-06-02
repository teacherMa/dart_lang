// runes are the UTF-32 code points of a string.
// 实际上理解为一系列的编码值就可以了，然后用String的几个方法可以实现编码值到String的转换
void main() {
  Runes runes = new Runes(
      '\u2665  \u{1f605}  \u{1f60e}  \u{1f47b}  \u{1f596}  \u{1f44d}');
  print(new String.fromCharCodes(runes));

  var clapping = "\u{1F44F}";
  print(clapping);
  print(clapping.codeUnits);
  print(clapping.runes.toList());
}
