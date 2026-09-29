//Finn og Sebastian

// det kan godt være at GameMaster skal nedlægges og funktionaliteten flyttes ud i spil, en lad os lige tale om det næste gang.
class GameMaster {
  Player player;
  
  Level level = new Level();
  
  ArrayList<Platform> platforms = new ArrayList<Platform>();
  ArrayList<Pickup> pickups = new ArrayList<Pickup>();
  // i kan ikke sætte gravity til at være 0,8 når det er en PVector
  PVector gravity = new PVector(0,0.8);
  int score = 0;
  //int level = 1; det styrer Level klassen

  GameMaster() {
    level.loadLevel(); //<>//
    print("asdf"); //<>//
  }

  PVector getGravity() {
    return gravity;
  }
  
  int getScore() {
    return score;
  }
  
  int getLevel() {
    return level.getLevel(); // henter level nummer fra Level klassen
  }
  
  void display(){
      level.display();

  }
  
}
