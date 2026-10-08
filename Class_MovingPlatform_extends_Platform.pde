// MovingPlatform arver fra Platform
class MovingPlatform extends Platform {

  // Bestemmer hvor højt platformen mindst må være
  float minY;
  
  // Bestemmer hvor langt ned platformen må være
  float maxY;

  // Konstruktør til den bevægelige platform
  MovingPlatform(PVector pos, float w, float h, PVector v, float minY, float maxY) {
    
    // Bruger konstruktøren fra Platform-klassen
    super(pos, w, h, v);

    // Gemmer minimums- og maksimumshøjden
    this.minY = minY;
    this.maxY = maxY;
  }

  // Opdaterer platformens position
  void update() {
    // OPGAVE 15: Flyt platformen lodret med dens fart (velocity.y).
    // Når den når minY eller maxY, skal den vende om.
    // Ekstra: Level laver i dag kun almindelige Platform-objekter. Hvad skal der til,
    // for at platforme med type "moving" i json-filen bliver til MovingPlatform?
  }
}
