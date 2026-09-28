//kristoffer (og johan)

class Key extends Pickup {

  Key(PVector pos) {
    super(pos);
  }


  void drawKey() {
    if (pickedUp == false) {
      circle(position.x, position.y, 20);
    }
  }
}
