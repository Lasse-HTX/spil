class Level {
  // det er gamemaster som skal styre level. Så den skal ikke deklareres her
  //GameMaster gameMaster;


  // der er fejl i json filen - brug https://jsonlint.com/

  JSONObject json;

  PVector spawn;          // hvor spilleren starter
  PVector ground;         // hvor jorden starter (x) og ligger (y)
  PVector door;           // hvor døren er
  ArrayList<Platform> platforms = new ArrayList<Platform>();
  ArrayList<Pickup> pickUps = new ArrayList<Pickup>();



  // vi skal bruge en tilstand som kan fortælle hvilken level vi er på.
  int level=1;
  int maxLevel=3; // maximale level

  // void setup() kan kun være i hovedprogrammet.
  /*
  void setup() {
   if (GameMaster.level = 1) {
   json = loadJSONObject("level1.json");
   } else if (GameMaster.level = 2) {
   json = loadJSONObject("level2.json");
   } else if (GameMaster.level = 3) {
   json = loadJSONObject("level3.json");
   }
   */

  // construktor
  Level() {
  }

  //Metoder
  // her kan vi vælge leve - eller der er ikke noget valg - den tæller bare op. og hvis level er mindre end 3 returnerer den true - så ved vi om der er flere runder.
  boolean setLevelUp() {
    if (level>=maxLevel) {
      level++;
      return true;
    } else {
      return false;
    }
  }
  int getLevel() {
    return level;
  }


  void loadLevel() {
    // jeg konstruerer filnavnet udfra min level variabel
    String fileName = "level" + level + ".json";
    json = loadJSONObject(fileName);

    // tøm listerne, så gamle data ikke hænger ved når man skifter bane
    platforms.clear();
    pickUps.clear();

    // spawn, ground og door har kun ét objekt hver -> vi tager nr. 0
    spawn  = readPoint("spawn");
    ground = readPoint("ground");
    door   = readPoint("door");

    // platforme
    JSONArray platformArray = json.getJSONArray("platform");
    for (int i = 0; i < platformArray.size(); i++) {
      JSONObject p = platformArray.getJSONObject(i);
      PVector pos = new PVector(p.getFloat("x"), p.getFloat("y"));
      platforms.add(new Platform(pos, 80, 15, new PVector(0, 0)));
    }
    // pickups (coin, key, battery)
    JSONArray pickupArray = json.getJSONArray("pickup");
    for (int i = 0; i < pickupArray.size(); i++) {
      JSONObject p = pickupArray.getJSONObject(i);
      PVector pos = new PVector(p.getFloat("x"), p.getFloat("y"));
      String type = p.getString("type");

      if (type.equals("coin")) {
        pickUps.add(new Coin(pos));
      } else {
        pickUps.add(new Pickup(pos));
      }
    }
  }



  void display() {
    // jorden
    noStroke();
    fill(90, 60, 40);
    rect(ground.x, ground.y, width, height - ground.y);

    for (Platform p : platforms) p.drawPlatform();
    for (Pickup pu : pickUps) {
      pu.display();
    };

    // døren
    fill(140, 90, 50);
    rect(door.x, door.y, 30, 50);

    // spawn-punkt (kun til test)
    fill(0, 200, 255);
    ellipse(spawn.x, spawn.y, 10, 10);
  }


  // hjælpefunktion: læser x og y fra første objekt i et array
  PVector readPoint(String key) {
    JSONObject o = json.getJSONArray(key).getJSONObject(0);
    return new PVector(o.getFloat("x"), o.getFloat("y"));
  }


  /*
    JSONArray platform = json.getJSONArray("platform");
   
   for (int i = 0; i < values.size(); i++) {
   
   JSONObject platform = values.getJSONObject(i);
   
   int x = platform.getInt("x");
   int y = platform.getInt("y");
   int type = platform.getInt("type");
   
   println(x + ", " + y + ", " + type);
   }
   }
   */
}
