class GameMaster {
  Player player;
  ArrayList<Platform> platforms = new ArrayList<Platform>();
  ArrayList<Pickup> pickups = new ArrayList<Pickup>();
  PVector gravity;
  int score;

  void setup() {
    // Defines size of window
    size(800, 600);
  }

  // Draw loops infinitely
  void draw() {
    // Sets background color
    background(150);
  }
}
