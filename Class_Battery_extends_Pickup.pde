//kristoffer (og johan)

class Battery extends Pickup {
  float w; // brug hele ord i stedet for bogstaver! width og height er reserveret i systemet, så det skal hedde noget andet - det gør det nemmere at læse!
  float h;
  PImage imgBattery;

  Battery(PVector pos) {
    super(pos);
    w = 50;
    h = 20;
    imgBattery = loadImage("Battery.png");
  }


  void drawBattery() {
    if (pickedUp == false) {
      image(imgBattery, position.x, position.y);
    }
  }
}
