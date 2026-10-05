class Player {
  int liv=3;
  PVector position;
  PVector velocity;
  boolean grounded;
  int energi;
  float size;
  PVector jumpSpeed;
  PVector runSpeed;


Player(PVector pos,PVector vel,boolean ground){
  position = pos.copy();
  velocity = vel.copy();
  grounded = ground;
  energi = 50; // altid halvdelen (så 50%)
  size = 12; // kun hvis player er en cirkel ellers er det x,y
  jumpSpeed = new PVector(0, 5);
  // Sætter lige runSpeed til 2 for vi har brug for det
  runSpeed = new PVector(2, 0);
  }

  int getliv () {
    return liv;
  }


  PVector getPosition() {
    return position;
  }


  PVector getVelocity() {
    return velocity;
  }

  boolean getGrounded() {
    return grounded;
  }

  int getEnergi() {
    return energi;
  }

  float getSize() {
    return size;
  }

  PVector getJumpSpeed() {
    return jumpSpeed;
  }
  PVector getRunSpeed() {
    return runSpeed;
  }

  void setLiv(int L) {
    liv = liv + L;
  }

  void setPosition(PVector p) {
    position = p.copy();
  }
  void setVelocity(PVector V) {
    velocity = V.copy();
  }
  void setGrounded(boolean G) {
    grounded = G;
  }
  void setEnergi(int E) {
    energi = energi + E;
  }
  void setSize(float S) {
    size = size + S;
  }

  void setJumpSpeed(PVector J) {
    jumpSpeed = J.copy();
  }
  void setRunSpeed(PVector R) {
    runSpeed = R.copy();
  }
}
