class Counts {
  private ArrayList bars;
  
  public Counts() {
    bars = new ArrayList();
  }
  
  public void drawCounts() {
    for(int i = 0; i < this.bars.size(); i++) {
      LetterCount c = (LetterCount)this.bars.get(i);
      c.drawCount();
    }
  }
  
  public void add(LetterCount lc) {
      this.bars.add(lc);
  }
  
  public ArrayList getCounts() {
    return bars;
  }
  
  public void clear() {
    this.bars.clear();
  }
}