class LetterCount {
  private int i;
  private int xCoord;
  private int colour;
  
  public LetterCount(int xCoord, int colour, int i) {
    this.i = i;
    this.xCoord = xCoord;
    this.colour = colour;
  }
  
  public void add() {
    this.i++;
  }
  
  public void drawCount() {
    fill(colour);
    noStroke();
    rect(xCoord, (750 - (this.i * 17)), 25, (this.i*17) , 15, 15, 2, 2);
  }
  
  public void clear() {
    i = 0;
  }
}