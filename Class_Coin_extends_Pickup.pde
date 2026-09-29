//kristoffer (og johan)

class Coin extends Pickup {



  Coin(PVector pos) {
    super(pos);
  }

  void drawCoin() {
    if (pickedUp == false) {
      // skal cirklen ikke have en gul farve??? Husk! ryd op efter jer!
      circle(position.x, position.y, 20);
    }
  }
}
