//Lasse og Mikkel

class Platform {
  PVector position;
  float platformWidth; 
  float height;
  PVector velocity;

  Platform(PVector pos, float w, float h, PVector v) {
    position = pos.copy();
    height=h;
    platformWidth=w;
    velocity=v.copy();
  }

  void drawPlatform() {
    fill(0);
    rect(position.x, position.y, platformWidth, height);
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
