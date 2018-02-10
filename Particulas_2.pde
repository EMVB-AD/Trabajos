class particula{
 int col; float x,y,xi,yi; String name;
 particula(int col_,float x_,float y_,String name_){
  col = col_;x = x_;
  y = y_;
  xi = random(5,20);
  yi = random(5,10);
  name = name_;
 }
 void display(){
  switch (col){
   case 0: fill(20,250,20); break;
   case 1: fill(20,20,250); break;
   case 2: fill(250,20,20); break;
   case 3: fill(250,250,20); break;
   case 4: fill(20,250,250); break;
   case 5: fill(250,250,250); break;
   case 6: fill(20,20,20); break;
   default: fill(random(250),random(250),random(250)); break;
  }
  textAlign(CENTER); textSize(12); text(name,x,y-32);
  noStroke();
  ellipse(x,y,30,30);
  if (x > width){xi = xi*-1;} else{if (x < 0){xi = xi*-1;}}
  if (y > height){yi = yi*-1;} else{if (y < 0){yi = yi*-1;}}
  x += xi;
  y += yi;
 }
}
int resolution;
particula Bola1;
particula Bola2;
particula Bola3;
particula Bola4;
particula Bola5;
particula Bola6;
particula Bola7;
particula Bola8;
particula Bola9;
particula Bola10;
particula Bola11;
particula Bola12;
particula Bola13;
particula Bola14;
particula Bola15;
particula Bola16;
particula Bola17;
particula Bola18;
particula Bola19;
particula Bola20;
particula Bola21;
particula Bola22;
particula Bola23;
particula Bola24;
particula Bola25;
particula Bola26;
void setup(){
 size(800,450);
 resolution = 30;
 Bola1 = new particula(0,random(width),random(height),"Sddsfgsh");
 Bola2 = new particula(1,random(width),random(height),"ksdfajkshfkjas");
 Bola3 = new particula(2,random(width),random(height),"Erore");
 Bola4 = new particula(3,random(width),random(height),"69 erro");
 Bola5 = new particula(4,random(width),random(height),"bug");
 Bola6 = new particula(5,random(width),random(height),"ldomasc");
 Bola7 = new particula(6,random(width),random(height),"icmac");
 Bola8 = new particula(7,random(width),random(height),"Como se llame");
 Bola9 = new particula(0,random(width),random(height),"Quien sabe que");
 Bola10 = new particula(1,random(width),random(height),"hola ke ase");
 Bola11 = new particula(2,random(width),random(height),"fsdfssfgsd");
 Bola12 = new particula(3,random(width),random(height),"_ _ _ _");
 Bola13 = new particula(4,random(width),random(height),"blablabla");
 Bola14 = new particula(5,random(width),random(height),"sfsfhsf");
 Bola15 = new particula(6,random(width),random(height),"0100100101");
 Bola16 = new particula(7,random(width),random(height),"dgdsf");
 Bola17 = new particula(0,random(width),random(height),"jjkfdfdg");
 Bola18 = new particula(1,random(width),random(height),"jdfgj");
 Bola19 = new particula(2,random(width),random(height),"uytrtiy");
 Bola20 = new particula(3,random(width),random(height),"aaaaaaaaa");
 Bola21 = new particula(4,random(width),random(height),"array floar");
 Bola22 = new particula(15,random(width),random(height),"Mr flower");
 Bola23 = new particula(6,random(width),random(height),"sola");
 Bola24 = new particula(7,random(width),random(height),"bing");
 Bola25 = new particula(0,random(width),random(height),"chisdfisdf");
 Bola26 = new particula(1,random(width),random(height),"sdssssds");
}
void draw(){
 background(#4C6256);
 frameRate(resolution);
 fill(240); textAlign(RIGHT); textSize(20); text(frameRate,width-100,30); text(resolution,width-60,30); text("FPs",width-20,30);
 Bola1.display();
 Bola2.display();
 Bola3.display();
 Bola4.display();
 Bola5.display();
 Bola6.display();
 Bola7.display();
 Bola8.display();
 Bola9.display();
 Bola10.display();
 Bola11.display();
 Bola12.display();
 Bola13.display();
 Bola14.display();
 Bola15.display();
 Bola16.display();
 Bola17.display();
 Bola18.display();
 Bola19.display();
 Bola20.display();
 Bola21.display();
 Bola22.display();
 Bola23.display();
 Bola24.display();
 Bola25.display();
 Bola26.display();
}
void keyPressed(){
 if (key == '+' && resolution < 60){
  resolution += 1;
 }
 else{
  if (key == '-' && resolution > 8){
   resolution -= 1;
  }
 }
}