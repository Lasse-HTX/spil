//kristoffer (og johan)

class Coin extends Pickup {



  Coin(PVector pos) {
    super(pos);
  }
}
void drawCoin() {
  if (pickedUp == false) {
    circle(position.x, position.y, 20);
  }
}
}
