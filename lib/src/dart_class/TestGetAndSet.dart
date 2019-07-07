import 'dart_method.dart';

void main() {
  GetAndSet getAndSet = new GetAndSet();

  // 具有"_"前缀的变量不能自动生成getter和setter方法，在其他文件访问时必须通过额外提供的getter和setter方法。
  // print(getAndSet._canNotGet ++);

  // 这里调用的是set方法。为什么呢？
  print(getAndSet.canNotGet++);
  // 这里调用的是get方法。为什么呢？
  print(getAndSet.canNotGet);
}
