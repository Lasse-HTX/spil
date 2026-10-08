//Lasse og Mikkel

class Platform {
  PVector position;
  float platformWidth; 
  float height;
  PVector velocity;

  Platform(PVector pos, float w, float h, PVector v) {
    // OPGAVE 13: Gem parametrene i klassens variabler. Brug copy() på de to PVector'er.
    // Spørgsmål: hvad kunne gå galt, hvis man skrev position = pos; uden copy()?
  }

  void drawPlatform() {
    // OPGAVE 14: Tegn platformen som et sort rektangel ud fra dens position, bredde og højde.
  }

  PVector getPosition() {
    return position;
  }

  float getplatformWidth() {
    return platformWidth;
  }

  float getHeight() {
    return height;
  }

  PVector getVelocity() {
    return velocity;
  }
}
