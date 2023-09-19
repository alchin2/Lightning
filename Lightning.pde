int startX = 150;
int startY = 0;
int endX = 0;
int endY = 150;
boolean drawTree=true;
  void setup()
{
  size(300, 300);
  strokeWeight(3);
  background(55, 35, 84);
}
void draw() {
  //draw fire
  if (endY>264 && endY<296){
      int xShift=(int)(((Math.random()*20)-10));
      int yShift=(int)((Math.random()*20));
      noStroke();
      strokeWeight(0);
      stroke(0,0, 0);
      fill(255, 69, 0);
      triangle(endX-10+xShift, 275+yShift, endX+10+xShift, 275+yShift, endX+xShift, 255+yShift);
    }
    //draw tree
       if(drawTree==true){
  for (int i = 0; i<300; i+=25) {
    tree(i, 250);
  }}
  
  //draw lightning
   noStroke();
   fill(0,0,0,7);
   rect(0,0,300,300);
    stroke((int)(Math.random()*255), (int)(Math.random()*255), (int)(Math.random()*255));
  while (endY<265) {
    drawTree=true;
    strokeWeight(3);
    endX=startX+(int)(((Math.random()*20)-10));
    endY=startY+(int)(Math.random()*10);
    line(startX, startY, endX, endY);
    startX=endX;
    startY=endY; 
  }
}
void mousePressed()
{

  startX = 150;
  startY = 0;
  endX = 0;
  endY = 150;
}

void tree(int x, int y) {
  noStroke();
  strokeWeight(0);
  fill(150, 75, 0);
  rect(x+10, y+30, 10, 25);
  fill(5, 71, 42);
  triangle(x+15, y+15, x, y+45, x+30, y+45);
  triangle(x+15, y+5, x+5, y+30, x+25, y+30);
}
