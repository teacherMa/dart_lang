// 主要讲的是dart中变量的作用域
int topLv = 0;

void main() {
  int lv2 = 1;
  int topLv = 1;
  print("$lv2 $topLv");

  void inMain() {
    //     print("$lv2 $topLv"); 报错，但是如果把接下来的两行删除就不会报错。
    int lv2 = 2;
    int topLv = 2;
    int lv3 = 2;
    print("$lv2 $topLv $lv3");
    // output: 2 2 2, 如何才能取得main函数中的lv2 topLv呢？
  }

  inMain();
}
