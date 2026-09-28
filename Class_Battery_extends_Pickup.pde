//kristoffer (og johan)

class Battery extends Pickup {
  float w;
  float h;


  Battery(PVector pos) {
    super(pos);
    w = 50;
    h = 20;
  }
}

void drawBattery() {
  if (pickedUp == false) {
    rect(position.x, position.y, w, h);
  }
}
}
