import 'dart:io';

void main() {
  try {
    try {
      throw new _expression1();
    } on _expression1 {
      print("on exception 1");
      throw new _expression2();
    } finally {
      print("in finally");
      exit(1);
    }
  } on _expression2 {
    print("on exception 2");
  }

}

class _expression1 implements Exception {}

class _expression2 implements Exception {}

class _expression3 implements Exception {}

class _expression4 implements Exception {}

class _expression5 implements Exception {}
