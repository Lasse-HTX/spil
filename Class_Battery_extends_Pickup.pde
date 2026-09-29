//kristoffer (og johan)

class Battery extends Pickup {
  float w; // brug hele ord i stedet for bogstaver! width og height er reserveret i systemet, så det skal hedde noget andet - det gør det nemmere at læse!
  float h;


  Battery(PVector pos) {
    super(pos);
    w = 50;
    h = 20;
  }


  void drawBattery() {
    if (pickedUp == false) {
     // skal rektanglen ikke have en farve??? Husk! ryd op efter jer!
      rect(position.x, position.y, w, h);
    }
  }
}
