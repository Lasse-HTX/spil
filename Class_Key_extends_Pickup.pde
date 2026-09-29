//kristoffer (og johan)

class Key extends Pickup {

  Key(PVector pos) {
    super(pos);
  }


  void drawKey() {
    if (pickedUp == false) {
            // skal cirklen ikke have en farve??? Husk! ryd op efter jer!

      circle(position.x, position.y, 20);
    }
  }
}
