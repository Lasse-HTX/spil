//johan (og kristoffer)

class Pickup {
  PVector position;
  boolean pickedUp;

  //konstruktør
  Pickup(PVector pos) {
    position = pos.copy();
    //  hvad med jeres pickedUp? skal den ikke initialieres?
  }

  //metoder
  PVector getPosition() {
    return position;
  }
  boolean getPickedUp() {
    return pickedUp;
  }

  // pickedUp er en boolean - vi har brug for en metode som kan fortælle at vores pickUp er picked up ;)
  void setPickedUp() {
    pickedUp = true;
  }

// skal vi lige bruge til test
  void display() {
    // her skal den kun udskrive hvis pickedup er false
    fill(128);
    circle(position.x, position.y, 20);
    fill(227);
  }
}


//get pickup, set pickup, get position

// i tvivl om det skal bruges
//  int collectedCoin = 0;
//  int collectedKey = 0;
//  int collectedBattery = 0;
