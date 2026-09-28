//Finn og Sebastian
class GameMaster {
  Player player;
  ArrayList<Platform> platforms = new ArrayList<Platform>();
  ArrayList<Pickup> pickups = new ArrayList<Pickup>();
  PVector gravity = 0.8;
  int score = 0;
  int level = 1;

  GameMaster() {
  }

  PVector getGravity() {
    return gravity;
  }
  
  int getScore() {
    return score;
  }
  
  PVector getLevel() {
    return level;
  }
  
}
