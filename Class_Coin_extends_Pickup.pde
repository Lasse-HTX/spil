//kristoffer (og johan)

class Coin extends Pickup {
  PImage imgCoin;
  Coin(PVector pos) {
    super(pos);
    imgCoin = loadImage("Coin.png");
  }

  void drawCoin() {
    if (pickedUp == false) {
      image(imgCoin, position.x, position.y);
    }
  }
}
