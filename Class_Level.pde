class Level {
  GameMaster gameMaster;
  JSONObject json;

  void setup() {
    if (GameMaster.level = 1) {
      json = loadJSONObject("level1.json");
    } else if (GameMaster.level = 2) {
      json = loadJSONObject("level2.json");
    } else if (GameMaster.level = 3) {
      json = loadJSONObject("level3.json");
    }
    JSONArray platform = json.getJSONArray("platform");

    for (int i = 0; i < values.size(); i++) {

      JSONObject platform = values.getJSONObject(i);

      int x = platform.getInt("x");
      int y = platform.getInt("y");
      int type = platform.getInt("type");

      println(x + ", " + y + ", " + type);
    }
  }
}
