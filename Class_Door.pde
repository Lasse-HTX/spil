//Lasse og Mikkel

class Door {
  PVector position;
  float doorWidth; 
  float doorHeight;

  // Konstruktør
  Door(PVector pos) {
    position = pos.copy();

    // Dørens størrelse afhænger af canvasets størrelse
    
    // i har to konstanter i kan bruge, men de hedder det samme som i har kaldt jeres variabler - det bliver lidt bøvlet.
    //width = gm.canvasWidth * 0.05;
    //height = gm.canvasHeight * 0.15;
    this.doorWidth = doorWidth*0.05;
    this.doorHeight = doorHeight*0.15;
  }

  // Tegner døren
  void drawDoor() {
    fill(120); 
    rect(position.x, position.y, doorWidth, doorHeight);
    noFill();
  }
}
