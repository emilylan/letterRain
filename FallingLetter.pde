class FallingLetter {
  private char letter;
  private int xCoord;
  private int letterColor;
  private int dropped;
  
  public FallingLetter(int letterColor, int xCoord, char letter) {
    this.letter = letter;
    this.xCoord = xCoord;
    this.letterColor = letterColor;
    this.dropped = 0;
  }
  
  
  public void printLetter() {
    //this.xCoord = x;
    int yCoord = 5;
    
    this.dropped += 3;
    yCoord += dropped;
    
    fill(this.letterColor);
    textSize(30);
    text(this.letter, this.xCoord ,yCoord);
  }
  
}