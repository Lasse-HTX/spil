//kristoffer (og johan)

class Key extends Pickup {

  PImage imgKey;
  Key(PVector pos) {
    super(pos);
    imgKey = loadImage("key.png");
  }


  void drawKey() {
    if (pickedUp == false) {
      image(imgKey, position.x, position.y);
    }
  }
}
