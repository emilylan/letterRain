//Emily Nguyen - enguyen9

PFont font;

//colors
int qC = color(224, 87, 96);
int wC = color(225, 123, 96);
int eC = color(225, 162, 112);
int rC = color(247, 195, 74);
int tC = color(237, 226, 83);
int yC = color(197, 224, 76);
int uC = color(133, 216, 84);
int iC = color(150, 234, 159);
int oC = color(97, 226, 160);
int pC = color(106, 237, 200);
int aC = color(29, 224, 208);
int sC = color(126, 220, 229);
int dC = color(80, 182, 216);
int fC = color(80, 145, 206);

int gC = color(113, 154, 221);
int hC = color(96, 128, 242);
int jC = color(103, 98, 209);
int kC = color(155, 123, 229);
int lC = color(97, 56, 160);

int zC = color(129, 63, 179);
int xC = color(214, 105, 224);
int cC = color(204, 73, 188);
int vC = color(232, 127, 195);
int bC = color(252, 83, 162);
int nC = color(173, 58, 85);
int mC = color(226, 90, 93);


FallingLetter q;
FallingLetter w;
FallingLetter e;
FallingLetter r;
FallingLetter t;
FallingLetter y;
FallingLetter u;
FallingLetter i;
FallingLetter o;
FallingLetter p;
FallingLetter a;
FallingLetter s;
FallingLetter d;
FallingLetter f;
FallingLetter g;
FallingLetter h;
FallingLetter j;
FallingLetter k;
FallingLetter l;
FallingLetter z;
FallingLetter x;
FallingLetter c;
FallingLetter v;
FallingLetter b;
FallingLetter n;
FallingLetter m;

Letters lets;

LetterCount qCount;
LetterCount wCount;
LetterCount eCount;
LetterCount rCount;
LetterCount tCount;
LetterCount yCount;
LetterCount uCount;
LetterCount iCount;
LetterCount oCount;
LetterCount pCount;
LetterCount aCount;
LetterCount sCount;
LetterCount dCount;
LetterCount fCount;
LetterCount gCount;
LetterCount hCount;
LetterCount jCount;
LetterCount kCount;
LetterCount lCount;
LetterCount zCount;
LetterCount xCount;
LetterCount cCount;
LetterCount vCount;
LetterCount bCount;
LetterCount nCount;
LetterCount mCount;

Counts count;




public void setup(){
  size(660,750);
  noCursor();
  font = createFont("Times-Italic", 12);
  textFont(font);
  frameRate(17);
  
  lets = new Letters();
  
  qCount = new LetterCount(5, qC, 0);
  wCount = new LetterCount(30, wC, 0);
  eCount = new LetterCount(55, eC, 0);
  rCount = new LetterCount(80, rC, 0);
  tCount = new LetterCount(105, tC, 0);
  yCount = new LetterCount(130, yC, 0);
  uCount = new LetterCount(155, uC, 0);
  iCount = new LetterCount(180, iC, 0);
  oCount = new LetterCount(205, oC, 0);
  pCount = new LetterCount(230, pC, 0);
  aCount = new LetterCount(255, aC, 0);
  sCount = new LetterCount(280, sC, 0);
  dCount = new LetterCount(305, dC, 0);
  fCount = new LetterCount(330, fC, 0);
  gCount = new LetterCount(355, gC, 0);
  hCount = new LetterCount(380, hC, 0);
  jCount = new LetterCount(405, jC, 0);
  kCount = new LetterCount(430, kC, 0);
  lCount = new LetterCount(455, lC, 0);
  zCount = new LetterCount(480, zC, 0);
  xCount = new LetterCount(505, xC, 0);
  cCount = new LetterCount(530, cC, 0);
  vCount = new LetterCount(555, vC, 0);
  bCount = new LetterCount(580, bC, 0);
  nCount = new LetterCount(605, nC, 0);
  mCount = new LetterCount(630, mC, 0);
  
  count = new Counts();
  
}

public void draw() {
  background(250);
  lets.drawLets();
  count.drawCounts();

}

void keyReleased() {
  if (key != CODED) 
  {
    switch(key)
    {
      case BACKSPACE:
      case TAB:
      case ENTER:
        lets.clear();
        for(int i = 0; i < count.getCounts().size(); i++) {
          LetterCount c = (LetterCount)count.getCounts().get(i);
          c.clear();
        }
        count.clear();
        break;
      case RETURN:
      case ESC: //<>//
      case DELETE:
        break;
      case 'q':
        q = new FallingLetter(qC, 5, 'q'); //<>//
        lets.add(q);
        qCount.add();
        count.add(qCount);
        break;
      case 'w':
        w = new FallingLetter(wC, 30, 'w');
        lets.add(w);
        wCount.add();
        count.add(wCount);
        break;
      case 'e':
        e = new FallingLetter(eC, 55, 'e');
        lets.add(e);
        eCount.add();
        count.add(eCount);
        break;
      case 'r':
        r = new FallingLetter(rC, 80, 'r');
        lets.add(r);
        rCount.add();
        count.add(rCount);
        break;  
      case 't':
        t = new FallingLetter(tC, 105, 't');
        lets.add(t);
        tCount.add();
        count.add(tCount);
        break;
      case 'y':
        y = new FallingLetter(yC, 130, 'y');
        lets.add(y);
        yCount.add();
        count.add(yCount);
        break;
      case 'u':
        u = new FallingLetter(uC, 155, 'u');
        lets.add(u);
        uCount.add();
        count.add(uCount);
        break;
      case 'i':
        i = new FallingLetter(iC, 183, 'i');
        lets.add(i);
        iCount.add();
        count.add(iCount);
        break;
      case 'o':
        o = new FallingLetter(oC, 205, 'o');
        lets.add(o);
        oCount.add();
        count.add(oCount);
        break;
      case 'p':
        p = new FallingLetter(pC, 233, 'p');
        lets.add(p);
        pCount.add();
        count.add(pCount);
        break;
      case 'a':
        a = new FallingLetter(aC, 255, 'a');
        lets.add(a);
        aCount.add();
        count.add(aCount);
        break;
      case 's':
        s = new FallingLetter(sC, 280, 's');
        lets.add(s);
        sCount.add();
        count.add(sCount);
        break;
      case 'd':
        d = new FallingLetter(dC, 305, 'd');
        lets.add(d);
        dCount.add();
        count.add(dCount);
        break;
      case 'f':
        f = new FallingLetter(fC, 333, 'f');
        lets.add(f);
        fCount.add();
        count.add(fCount);
        break;
      case 'g':
        g = new FallingLetter(gC, 355, 'g');
        lets.add(g);
        gCount.add();
        count.add(gCount);
        break;
      case 'h':
        h = new FallingLetter(hC, 380, 'h');
        lets.add(h);
        hCount.add();
        count.add(hCount);
        break;
      case 'j':
        j = new FallingLetter(jC, 408, 'j');
        lets.add(j);
        jCount.add();
        count.add(jCount);
        break;
      case 'k':
        k = new FallingLetter(kC, 430, 'k');
        lets.add(k);
        kCount.add();
        count.add(kCount);
        break;
      case 'l':
        l = new FallingLetter(lC, 455, 'l');
        lets.add(l);
        lCount.add();
        count.add(lCount);
        break;
      case 'z':
        z = new FallingLetter(zC, 480, 'z');
        lets.add(z);
        zCount.add();
        count.add(zCount);
        break;
      case 'x':
        x = new FallingLetter(xC, 505, 'x');
        lets.add(x);
        xCount.add();
        count.add(xCount);
        break;
      case 'c':
        c = new FallingLetter(cC, 530, 'c');
        lets.add(c);
        cCount.add();
        count.add(cCount);
        break;
      case 'v':
        v = new FallingLetter(vC, 555, 'v');
        lets.add(v);
        vCount.add();
        count.add(vCount);
        break;
      case 'b':
        b = new FallingLetter(bC, 580, 'b');
        lets.add(b);
        bCount.add();
        count.add(bCount);
        break;
      case 'n':
        n = new FallingLetter(nC, 605, 'n');
        lets.add(n);
        nCount.add();
        count.add(nCount);
        break;
      case 'm':
        m = new FallingLetter(mC, 630, 'm');
        lets.add(m);
        mCount.add();
        count.add(mCount);
        break;
    }
  }
}