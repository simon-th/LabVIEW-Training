void setup() {
  size(380,280);
  smooth();
  ellipseMode(RADIUS);
}


int x = 120;
int y = 180;
int bwidth = 80;
int blength = 100;
int cheekd = 10;
int eyey = y-25;
int reyex = x+20;
int leyex = x+60;
int rpupilx = reyex;
int lpupilx = rpupilx+40;
int pupily = eyey;
int eyed = 15;



void draw() {
  background(235);
  
if(keyPressed)    {
  if(key == CODED)  {
    if (keyCode == LEFT)  {
      x--;
      reyex--;
      leyex--;
      rpupilx--;
      lpupilx--;
    }
    else if (keyCode == RIGHT)  {
      x++;
      reyex++;
      leyex++;
      rpupilx++;
      lpupilx++;
    }
    else if (keyCode == UP)  {
      y--;
      eyey--;
      pupily--;
    }
    else if (keyCode == DOWN)  {
      y++;
      eyey++;
      pupily++;
    }
  }
}  
  
if(keyPressed)    {
   fill(255,255,0);
}
else  {
fill(255,235,20);
}



beginShape();  //left ear
  vertex(x-20,y-110);
  vertex(x+20,y-50);
  vertex(x,y-30);
endShape(CLOSE);
beginShape();  //right ear
  vertex(x+140,y-90);
  vertex(x+80,y-30);
  vertex(x+60,y-50);
endShape(CLOSE);
  rect(x,y,bwidth,blength);  //body
  ellipse(x+bwidth/2,y,60,60);  //face
   
if(keyPressed) {
   fill(255,0,125);
 }

else  {
fill(255,75,75);
}
   ellipse(x,y+5,cheekd,cheekd);
  ellipse(x+bwidth,y+5,cheekd,cheekd);
fill(255);  //eyes
  ellipse(reyex,eyey,eyed,eyed);
  ellipse(leyex,eyey,eyed,eyed);
fill(0);

float d1 = dist(mouseX, mouseY, reyex, eyey);
float d2 = dist(mouseX, mouseY, leyex, eyey);
if (d1 < eyed) {
rpupilx=mouseX;
lpupilx=mouseX+40;
pupily=mouseY;
}
else if (d2 < eyed) {
rpupilx=mouseX-40;
lpupilx=mouseX;
pupily=mouseY;
}
else if ((d1 > eyed)||(d2 > eyed)) {
  rpupilx=reyex;
  lpupilx=reyex+40;
  pupily=eyey;
}
  ellipse(rpupilx,pupily,3.5,3.5);
  ellipse(lpupilx,pupily,3.5,3.5);
line(x+20,y+15,x+60,y+25);  //mouth
}