class Letters {
  private ArrayList fls;
  
  public Letters() {
    this.fls = new ArrayList();
  }
  
  public void drawLets() {
    
    for(int i = 0; i < this.fls.size(); i++) {
      FallingLetter f = (FallingLetter)this.fls.get(i);
      f.printLetter();
    }
  }
  
  public void add(FallingLetter fl) {
    this.fls.add(fl);
  }
  
  public void clear() {
    this.fls.clear();
  }
}