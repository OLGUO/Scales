void setup() {
  size(660, 670);  //feel free to change the size
  background(255,255,255);
  noLoop(); //stops the draw() function from repeating
}
void draw() {
  //your code here
  boolean shift = true;
  for(int y = 0; y <= 740; y+=20)
  {
    for(int x = -20; x <= 700; x+=50)
    {
      if(shift == true)
        scale(x+25,y);
       else
         scale(x,y);
    }
      if(shift == true)
        shift = false;
       else
         shift = true;
  }
}
void scale(int x, int y) {
  //your code here
  int diam = 0;
float r = 0;
while(diam < 30){
  stroke(r,0,0);
   fill (153, 25, 3);
  beginShape();
  curveVertex(0+x,650-y);
  curveVertex(0+x,650-y);
  curveVertex(12+x,680-y);
  curveVertex(30+x,700-y);
  curveVertex(47+x,680-y);
  curveVertex(60+x,650-y);
  curveVertex(60+x,650-y);
  endShape();
   diam++;
  r+=255/30.0;
}
    
}
