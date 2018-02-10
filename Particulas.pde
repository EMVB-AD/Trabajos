class particula{
 int col; float x,y,xi,yi;
 particula(int col_,float x_,float y_){
  col = col_;x = x_;
  y = y_;
  xi = random(5,20);
  yi = random(5,10);
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
  noStroke();
  ellipse(x,y,10,10);
  if (x > width){xi = xi*-1;} else{if (x < 0){xi = xi*-1;}}
  if (y > height){yi = yi*-1;} else{if (y < 0){yi = yi*-1;}}
  x += xi;
  y += yi;
 }
}
int resolution;
particula Bola;
ArrayList <particula> r_ender;
void setup(){
 size(800,450);
 resolution = 55;
 Bola = new particula(int(random(8)),random(width),random(height));//... este
 r_ender = new ArrayList<particula>();
 for (int oe = 0 ; oe < 50 ; oe += 1){
  r_ender.add( new particula(int(random(8)),random(width),random(height)) );//Este debe estar igual que ...
 }
}
void draw(){
 if (mousePressed && mouseButton == CENTER ){
  background(random(255),random(255),random(255));
 }
 else{
  background(#4C6256);
 }
 frameRate(resolution);
 Bola.display();
 for(particula pare: r_ender){
  pare.display();
 }
 fill(240); textAlign(RIGHT); textSize(20);
 text(frameRate,width-60,30);
 text(resolution,width-140,30);
 text("FPs",width-20,30);
 textAlign(LEFT);
 textSize(12);
 text("Presiona '+' para aumentar o '-' para disminuir el limite de FPs",20,height-20);
 text("Presiona la rueda central para alternar color de fondo",20,height-40);
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
