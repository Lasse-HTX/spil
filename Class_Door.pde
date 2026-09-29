//Lasse og Mikkel

class Door {
  PVector position;
  float width; //width og height er reserveret i systemet, så det skal hedde noget andet
  float height;

  // Konstruktør
  Door(PVector pos, GameMaster gm) {
    position = pos.copy();

    // Dørens størrelse afhænger af canvasets størrelse
    
    // i har to konstanter i kan bruge, men de hedder det samme som i har kaldt jeres variabler - det bliver lidt bøvlet.
    //width = gm.canvasWidth * 0.05;
    //height = gm.canvasHeight * 0.15;
    this.width = width*0.05;
    this.height = height*0.15;
  }

  // Tegner døren
  void drawDoor() {
    fill(120); // rydder i ud skal i også rydde op!!
    rect(position.x, position.y, width, height);
  }
}
