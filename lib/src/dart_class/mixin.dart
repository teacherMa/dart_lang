// mixin应该是Dart继承的一个亮点，但是讲的内容很少，不知道为什么
mixin Musical {
  bool canPlayPiano = false;
  bool canCompose = false;
  bool canConduct = false;

  void play() {
    if (canPlayPiano) {
      print("play piano ");
    } else if (canCompose) {
      print("compose");
    } else if (canConduct) {
      print("conduct");
    }
  }
}

mixin Driver {
  int carNum;
}

// mixin继承的时候 要用on 不能用extend
mixin MusicalPerformer on Musical {}

class Me with Musical, Driver {}
