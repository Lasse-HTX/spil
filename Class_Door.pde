//Lasse og Mikkel

class Door {
  PVector position;
  float width;
  float height;

  // Konstruktør
  Door(PVector pos, GameMaster gm) {
    position = pos.copy();

    // Dørens størrelse afhænger af canvasets størrelse
    width = gm.canvasWidth * 0.05;
    height = gm.canvasHeight * 0.15;
  }

  // Tegner døren
  void drawDoor() {
    fill(120);
    rect(position.x, position.y, width, height);
  }
}
