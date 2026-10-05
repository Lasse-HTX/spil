Player player;

Level level = new Level();

ArrayList<Platform> platforms = new ArrayList<Platform>();
ArrayList<Pickup> pickups = new ArrayList<Pickup>();
// i kan ikke sætte gravity til at være 0,8 når det er en PVector
PVector gravity = new PVector(0, 0.8);
int score = 0;

// Keyboard input tracking
boolean keyLeft = false;
boolean keyRight = false;

// Runs once on startup
void setup() {
  // Defines size of window
  size(800, 600);
  //load the level
  level.loadLevel();
  player = new Player(level.getSpawnPosition());
}

// Draw loops infinitely
void draw() {
  // Sets background color
  background(150);
  // Display the level
  level.display();
  // Run the movement
  movement();
}

// Called automatically by Processing when a key is pressed
void keyPressed() {
  if (key == 'a' || key == 'A' || keyCode == LEFT) {
    keyLeft = true;
  }
  if (key == 'd' || key == 'D' || keyCode == RIGHT) {
    keyRight = true;
  }

  /*

   // Jump action (only allowed if the player is touching the ground!)
   if ((key == 'w' || key == 'W' || key == ' ' || keyCode == UP) && isOnGround) {
   player.velocity.y = jumpForce; // Set vertical velocity to a strong upward (negative Y) value
   isOnGround = false;
   }
   */
}

// Called automatically by Processing when a key is released
void keyReleased() {
  if (key == 'a' || key == 'A' || keyCode == LEFT) {
    keyLeft = false;
  }
  if (key == 'd' || key == 'D' || keyCode == RIGHT) {
    keyRight = false;
  }
}

void movement() {
  if (keyLeft) {
    println(player.position.x);
    player.position.add(player.runSpeed);
    println("Hallo");
  }
  if (keyRight) {
    player.position.x += player.runSpeed.x;
  }
}
