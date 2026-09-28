//johan (og kristoffer)

class Pickup {
  PVector position;
  boolean pickedUp;

  //konstruktør
  Pickup(PVector pos) {
    position = pos.copy();
  }

  //metoder
  PVector getPosition() {
    return position;
  }
  boolean getPickedUp() {
    return pickedUp;
  }

  void setPickedUp(boolean B) {
    pickedUp = B.copy();
  }
}


//get pickup, set pickup, get position

// i tvivl om det skal bruges
//  int collectedCoin = 0;
//  int collectedKey = 0;
//  int collectedBattery = 0;
