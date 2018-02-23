class skojete{
 int per,damage1,damage2,damage3;
 skojete(int per_,int damage1_,int damage2_,int damage3_){
  per = per_;
  damage1 = damage1_;
  damage2 = damage2_;
  damage3 = damage3_;
 }
 void display(){
  switch(per){
   case 0: pero1(); break;
   case 1: pero2(); break;
   case 2: pero3(); break;
   case 3: pero4(); break;
   case 4: pero5(); break;
  } 
 }
}
//------------------{ Variables )
int frames,quoaza,somka,vriable;
int err,cole,turn,tore1,tore2,geole;
int escoje1,escoje2,point1,point2,poit1,poit2;
float seo,soe;
skojete Personaje1;
skojete Personaje2;
skojete Personaje3;
skojete Personaje4;
skojete Personaje5;
//------------------{ Entorno )
void setup(){
 size(800,600);
 frameRate(40);
 Personaje1 = new skojete(0, 3,6,8); // --- Boo
 Personaje2 = new skojete(1, 3,7,8); // --- Gost Pacman
 Personaje3 = new skojete(2, 5,9,10); // --- Broken
 Personaje4 = new skojete(3, 3,7,9); // --- BMO
 Personaje5 = new skojete(4, 5,9,11); // --- Morty
 frames = 0;
 err = 0;
 cole = 0;
 turn = 1;
 point1 = 100;
 point2 = 100;
 poit1 = 0;
 poit2 = 0;
 tore1 = 0; tore2 = 0;
 seo = 0;
 geole = 0;
 quoaza = 0;
}
void draw(){
 strokeJoin(ROUND);
 //background(#324650);
 seo += 0.01;
 soe += 0.1;
 background(sin(seo+cos(seo))*255,cos(seo-sin(seo))*255,sin(seo-cos(seo))*255);
 switch(frames){
  case 0: intro(); break;
  case 1: personajes(); break;
  case 2: pelea(); break;
  case 3: puntos(); break;
 }
}
//------------------{ Personalizado )
void intro(){
 rectMode(CORNER); noStroke();
 for (int io = 0 ; io < width/10-2 ; io ++){
  for (int uo = 0 ; uo < height/10-2 ; uo++){
   fill(cos(soe+randomGaussian()/2)*128+128,sin(soe+randomGaussian()/2)*128+128,sin(soe+randomGaussian()/0.9)*-128+128);
   rect(io*10+10,uo*10+10,10,10);
  }
 }
 stroke(#285A3C); strokeWeight(4); noFill(); rectMode(CORNERS); rect(10,10,width-10,height-10,8);
 fill(255); textSize(80); textAlign(CENTER); text("GAMEBROS",width/2,200);
 textSize(20); text("Presiona 'Enter' para continuar",width/2,height/2+160);
}
//---Otra ventana
void personajes(){
 rectMode(CORNERS); rect(10,10,width-10,height-10,8);
 rectMode(CORNER);
 for (int io = 0 ; io < width/10-2 ; io ++){
  for (int uo = 0 ; uo < height/10-2 ; uo++){
   noStroke();
   fill(cos(soe+randomGaussian()/2)*random(128),sin(soe+randomGaussian()/2)*random(128),sin(soe+randomGaussian()/0.9)*random(-128));
   rect(io*10+10,uo*10+10,10,10);
  }
 }
 noFill(); stroke(#285A3C); strokeWeight(4); rectMode(CORNERS); rect(10,10,width-10,height-10,8);
 fill(200); strokeWeight(4); rectMode(CENTER); rect(width/2,(height/2)-30,200,240,10);
 if (err > 4){
  err = 0;
 }
 else{
  if (err < 0){
   err = 4;
  }
 }
 switch (err){
  case 0: pushMatrix(); translate(width/2,height/2-30); Personaje1.display(); popMatrix(); break;
  case 1: pushMatrix(); translate(width/2,height/2-30); Personaje2.display(); popMatrix(); break;
  case 2: pushMatrix(); translate(width/2,height/2-30); Personaje3.display(); popMatrix(); break;
  case 3: pushMatrix(); translate(width/2,height/2-30); Personaje4.display(); popMatrix(); break;
  case 4: pushMatrix(); translate(width/2,height/2-30); Personaje5.display(); popMatrix(); break;
 }
 fill(255); textAlign(CENTER); textSize(20);
 text("Presiona 'Enter' al terminar",width/2,height-30);
 text("Presiona '+' o '-' para visualizar los personajes",width/2,45);
 textAlign(CENTER);
 textLeading(25);
 text("Presiona '1' para\nescojer al personaje",130,height/2+130);
 text("Presiona '2' para\nescojer al personaje",width-130,height/2+130);
 text("Jugador 1",140,height/2-120);
 text("Jugador 2",width-140,height/2-120); 
 switch (escoje1){
  case 0: pushMatrix(); translate(130,height/2); Personaje1.display(); popMatrix(); break;
  case 1: pushMatrix(); translate(130,height/2); Personaje2.display(); popMatrix(); break;
  case 2: pushMatrix(); translate(130,height/2); Personaje3.display(); popMatrix(); break;
  case 3: pushMatrix(); translate(130,height/2); Personaje4.display(); popMatrix(); break;
  case 4: pushMatrix(); translate(130,height/2); Personaje5.display(); popMatrix(); break;
 }
 switch (escoje2){
  case 0: pushMatrix(); translate(width-130,height/2); Personaje1.display(); popMatrix(); break;
  case 1: pushMatrix(); translate(width-130,height/2); Personaje2.display(); popMatrix(); break;
  case 2: pushMatrix(); translate(width-130,height/2); Personaje3.display(); popMatrix(); break;
  case 3: pushMatrix(); translate(width-130,height/2); Personaje4.display(); popMatrix(); break;
  case 4: pushMatrix(); translate(width-130,height/2); Personaje5.display(); popMatrix(); break;
 }
}
//---Otra ventana
void pelea(){
 fill(#EA9393); noStroke(); rectMode(CORNERS); rect(0,25,width,height);
 fill(#9B6464);
 ellipseMode(CENTER); ellipse(130,height/2+115,120,40);
 ellipseMode(CENTER); ellipse(width-130,height/2+115,120,40);
 switch (escoje1){
  case 0: pushMatrix(); translate(130,height/2+10); scale(1); Personaje1.display(); popMatrix(); break;
  case 1: pushMatrix(); translate(130,height/2+10); scale(1); Personaje2.display(); popMatrix(); break;
  case 2: pushMatrix(); translate(130,height/2+10); scale(1); Personaje3.display(); popMatrix(); break;
  case 3: pushMatrix(); translate(130,height/2+10); scale(1); Personaje4.display(); popMatrix(); break;
  case 4: pushMatrix(); translate(130,height/2+10); scale(1); Personaje5.display(); popMatrix(); break;
 }
 switch (escoje2){
  case 0: pushMatrix(); translate(width-130,height/2+10); scale(-1,1); Personaje1.display(); popMatrix(); break;
  case 1: pushMatrix(); translate(width-130,height/2+10); scale(-1,1); Personaje2.display(); popMatrix(); break;
  case 2: pushMatrix(); translate(width-130,height/2+10); scale(-1,1); Personaje3.display(); popMatrix(); break;
  case 3: pushMatrix(); translate(width-130,height/2+10); scale(-1,1); Personaje4.display(); popMatrix(); break;
  case 4: pushMatrix(); translate(width-130,height/2+10); scale(-1,1); Personaje5.display(); popMatrix(); break;
 }
 fill (#FAF04B); rectMode(CORNER); stroke (240); strokeWeight(1);
 rect(10,5,point1*2.5,15); rect(width/2+10,5,point2*2.5,15); stroke (20); noFill(); rect(10,5,250,15); rect(width/2+10,5,250,15);
 line(width/2,0,width/2,25);
 /*if (turn == 0){
  fill(255); textAlign(CENTER); text("Es el turno del Jugador 1",width/2,60);
 }
 else{
  if (turn == 1){
   fill(255); textAlign(CENTER); text("Es el turno del Jugador 2",width/2,60);
  }
 }*/
 fill(255); textAlign(CENTER); text("Presiona 'a' para atacar",width/2,height-30);
 textAlign(RIGHT);
 text("Jugador 1",width/2-10,18);
 text("Jugador 2",width-10,18);
 if (point1 < 0 || point2 < 0){
  frames = 3;
 }
 if (tore1 == 1 || tore2 == 1){
  geole = 1;
 }
 if (geole == 1){
  fill(#78AF91);
  stroke(#285A3C); strokeWeight(4);
  rectMode(CENTER);
  rect(width/2,height-120,width-20,90,8);
  switch(quoaza){
   case 0:
    noStroke();
    fill(#285A3C);
    rect(width/2-50,height-90,width/2,30,8);
    somka = 1;
   break;
   case 1:
    noStroke();
    fill(#285A3C);
    rect(width/2-50,height-120,width/2,30,8);
    somka = 2;
   break;
   case 2:
    noStroke();
    fill(#285A3C);
    rect(width/2-50,height-150,width/2,30,8);
    somka = 3;
   break;
  }
  noStroke();
  fill(255); 
  textAlign(LEFT);
  text("Golpe",width/2-120,height-138);
  text("\"Patada\"",width/2-120,height-113);
  text("Golpe fuerte",width/2-120,height-88);
  textAlign(RIGHT);
  textLeading(25);
  text("Puedes escoger con las flechas arriba y abajo\ny escojer con 'ENTER'",width-20,height-210);
  if (tore1 == 1){
   textSize(35); text("Jugador 1",width-30,height-105); textSize(20);
  }
  if (tore2 == 1){
   textSize(35); text("Jugador 2",width-30,height-105); textSize(20);
  }
  if (key == ENTER){
   if (tore1 == 1){
    // play 1
    switch(escoje1){
     case 0:
      switch(somka){
       case 1: vriable = Personaje1.damage1; break;
       case 2: vriable = Personaje1.damage2; break;
       case 3: vriable = Personaje1.damage3; break;
      }
     break;
     case 1:
      switch(somka){
       case 1: vriable = Personaje2.damage1; break;
       case 2: vriable = Personaje2.damage2; break;
       case 3: vriable = Personaje2.damage3; break;
      }
     break;
     case 2:
      switch(somka){
       case 1: vriable = Personaje3.damage1; break;
       case 2: vriable = Personaje3.damage2; break;
       case 3: vriable = Personaje3.damage3; break;
      }
     break;
     case 3:
      switch(somka){
       case 1: vriable = Personaje4.damage1; break;
       case 2: vriable = Personaje4.damage2; break;
       case 3: vriable = Personaje4.damage3; break;
      }
     break;
     case 4:
      switch(somka){
       case 1: vriable = Personaje5.damage1; break;
       case 2: vriable = Personaje5.damage2; break;
       case 3: vriable = Personaje5.damage3; break;
      }
     break;
    }
    point2 -= vriable;
    turn = 1;
    tore1 = 0;
    geole = 1;
   }
   else{
    if (tore2 == 1){
     // play 2
    switch(escoje2){
     case 0:
      switch(somka){
       case 1: vriable = Personaje1.damage1; break;
       case 2: vriable = Personaje1.damage2; break;
       case 3: vriable = Personaje1.damage3; break;
      }
     break;
     case 1:
      switch(somka){
       case 1: vriable = Personaje2.damage1; break;
       case 2: vriable = Personaje2.damage2; break;
       case 3: vriable = Personaje2.damage3; break;
      }
     break;
     case 2:
      switch(somka){
       case 1: vriable = Personaje3.damage1; break;
       case 2: vriable = Personaje3.damage2; break;
       case 3: vriable = Personaje3.damage3; break;
      }
     break;
     case 3:
      switch(somka){
       case 1: vriable = Personaje4.damage1; break;
       case 2: vriable = Personaje4.damage2; break;
       case 3: vriable = Personaje4.damage3; break;
      }
     break;
     case 4:
      switch(somka){
       case 1: vriable = Personaje5.damage1; break;
       case 2: vriable = Personaje5.damage2; break;
       case 3: vriable = Personaje5.damage3; break;
      }
     break;
     }
     point1 -= vriable; //checar si se necesita 1 o 2
     turn = 0;
     tore2 = 0;
     geole = 1;
    }
   }
   geole = 0;
  }
 }
}
//---Otra ventana
void puntos(){
 rectMode(CORNER);
 for (int io = 0 ; io < width/10-2 ; io ++){
  for (int uo = 0 ; uo < height/10-2 ; uo++){
   noStroke();
   fill(cos(soe+randomGaussian()/2)*random(128),sin(soe+randomGaussian()/2)*random(128),sin(soe+randomGaussian()/0.9)*random(-128));
   rect(io*10+10,uo*10+10,10,10);
  }
 }
 stroke(#285A3C); strokeWeight(4); noFill(); rectMode(CORNERS); rect(10,10,width-10,height-10,8);
 fill(255); textSize(40); text("Fin del juego",width/2,60); textSize(20);
 textAlign(LEFT);
 text("Jugador 1:",220,230);
 text("Jugador 2:",220,255);
 text("Jugador 1:",220,320);
 text("Jugador 2:",220,345);
 textAlign(RIGHT);
 if (point1 < 0){point1 = 0;} // <--- error en puntaje
 if (point2 < 0){point1 = 0;}
 //poit1 += point1; poit2 += point2;
 text(point1,width-220,320); //vida
 text(point2,width-220,345);
 text(poit1,width-220,230); //puntos
 text(poit2,width-220,255);
 textAlign(CENTER);
 text("Presiona 'ENTER' para regresar",width/2,height-30);
 text("Puntaje:",width/2,200);
 text("Vida:",width/2,290);
}
//------------------{ Acciones teclado )
void keyReleased(){
 /*if (frames == 3){
  if (point1 < 0){
   point1 = point1*2 -point1;
  }
  if (point2 < 0){
   point2 = point2*2 -point2;
  }
 }*/
 poit1 += point1;
 poit2 += point2;
}
void keyPressed(){
 //--accion ventana 1
 if (frames == 0 && key == ENTER){
  frames = 1;
  cole = 1;
 }
 //--accion ventana 2
 if (frames == 1 && key == '+'){
  err += 1;
 }
 if (frames == 1 && key == '-'){
  err -= 1;
 }
 if (frames == 1 && key == '1'){
  escoje1 = err;
  cole = 0;
 }
 if (frames == 1 && key == '2'){
  escoje2 = err;
  cole = 0;
 }
 if (key == ENTER && frames == 1 && cole == 0){
  frames = 2;
 }
 //--accion ventana 3
 if (key == 'a' && frames == 2){
  if (turn == 0){
   tore1 = 1;
  }
  else{
   if (turn == 1){
    tore2 = 1;
   }
  }
 }
 switch (keyCode){
  case UP: quoaza += 1; break;
  case DOWN: quoaza -= 1; break;
 }
 if (quoaza > 2){
  quoaza = 0;
 }
 else{
  if (quoaza < 0){
   quoaza = 2;
  }
 }
 //--accion ventana 4
 if (key == ENTER && frames == 3){
  frames = 0;
  point1 = 100;
  point2 = 100;
 }
}
//------------------{ Personajes )
void pero1(){ // --- Boo
 fill(240);
 stroke(20);
 strokeWeight(4);
 bezier(44,-12,83,-42,88,2,59,11);
 bezier(-78,0,-40,107,101,67,55,-35);
 bezier(55,-35,17,-89,-59,-59,-63,-4);
 bezier(-78,0,-78,-7,-69,-10,-63,-4);
 bezier(-32,9,-64,-20,-46,-33,-16,-12);
 strokeWeight(2);
 fill(140,100,100);
 bezier(0,0,-5,57,40,60,55,0);
 fill(240);
 bezier(6,1,10,29,12,31,17,3);
 bezier(21,4,24,17,26,18,29,5);
 bezier(31,4,33,16,36,18,39,5);
 bezier(40,3,43,27,46,27,50,2);
 bezier(0,0,23,9,45,10,55,0);
 bezier(3,-27,16,-13,26,-13,33,-21);
 bezier(33,-21,40,-11,44,-12,50,-23);
 fill(140,100,100);
 bezier(1,20,13,77,64,27,1,20);
 noStroke();
 fill(20);
 ellipse(22,-9,8,12); 
 ellipse(42,-9,8,12);
}
void pero2(){ // --- Gost Pacman
 stroke(20);
 fill(cos(soe+255)*255,sin(soe-255)*255,sin(soe+255)*255);
 strokeWeight(4);
 ellipse(0,-7,150,150);
 ellipse(56,70,37,37);
 ellipse(19,70,37,37);
 ellipse(-19,70,37,37);
 ellipse(-56,70,37,37);
 noStroke();
 quad(-75,0,75,0,75,70,-75,70);
 strokeWeight(4);
 stroke(20);
 line(-75,0,-75,70);
 line(75,0,75,70);
 fill(240);
 ellipse(-17,-15,40,40);
 ellipse(44,-15,40,40);
 noStroke();
 fill(#3C78B4);
 ellipse(-9,-15,15,15);
 ellipse(52,-15,15,15);
}
void pero3(){ // --- Broken
 strokeWeight(4);
 fill(#464664);
 stroke(20);
 bezier(-33,55,-20,-56,24,-47,28,49);
 bezier(-33,55,-24,69,28,67,28,49);
 fill(#C18E27);
 strokeWeight(2);
 bezier(-9,-14,-21,10,17,11,13,-8);
 noStroke();
 strokeWeight(4);
 quad(-7,-85,31,-100,24,-82,-36,-62);
 quad(24,-82,51,-76,-19,-51,-36,-62);
 quad(-22,-24,-14,-58,51,-76,29,-58);
 triangle(-22,-24,29,-58,32,-43);
 bezier(-7,-85,-4,-99,1,-104,31,-100);
 bezier(24,-82,36,-87,49,-85,51,-76);
 bezier(32,-43,69,-19,7,24,-22,-24);
 bezier(-22,-24,-25,-31,-22,-53,-14,-58);
 bezier(-36,-62,-37,-76,-21,-88,-7,-85);
 stroke(20);
 bezier(-35,7,-65,12,-39,56,-35,26);
 bezier(-35,7,-23,16,-32,34,-35,26);
 bezier(24,12,35,5,35,39,27,32);
 noFill();
 stroke(20);
 line(-19,-51 , -36,-62);
 line(31,-100 , 24,-82);
 line(51,-76 , 29,-58);
 bezier(-7,-85 , -4,-99 , 1,-104 , 31,-100);
 bezier(24,-82 , 36,-87 , 49,-85 , 51,-76);
 bezier(32,-43 , 69,-19 , 7,24 , -22,-24);
 bezier(-22,-24 , -25,-31 , -22,-53 , -14,-58);
 bezier(-36,-62 , -37,-76 , -21,-88 , -7,-85);
 fill(60);
 ellipse(-19,84,24,30);
 ellipse(30,73,30,20);
 strokeWeight(2);
 fill(240);
 ellipse(4,-45,16,22);
 ellipse(27,-50,12,21);
 noStroke();
 fill(#54A5CB);
 ellipse(6,-44,8,12);
 ellipse(26,-47,8,12);
}
void pero4(){ // --- BMO
  strokeWeight(4);
 stroke(20);
 fill(#82C8C8);
 rectMode(CENTER);
 rect(-24,65,12,46);
 rect(29,53,12,46);
 bezier(-30,85,-44,111,30,100,-18,84);
 bezier(23,72,6,94,87,77,35,71);
 quad(-59,-87,-11,-75,-11,61,-59,50);
 quad(-59,-87,-11,-75,50,-94,6,-102);
 quad(-11,-75,50,-94,50,39,-11,61);
 bezier(-34,-20,-42,-47,-64,64,-41,43);
 bezier(-34,-20,-52,29,-34,23,-41,43);
 bezier(50,-52,50,-8,62,21,50,11);
 fill(#F0F0F0);
 strokeWeight(2);
 quad(-4,-65,44,-80,44,-32,-4,-16);
 bezier(13,-42,20,-37,30,-40,33,-48);
 noStroke();
 fill(20);
 ellipse(12,-55,6,7);
 ellipse(31,-62,6,7);
 fill(#F0F550);
 ellipse(10,10,8,10);
 ellipse(17,18,8,10);
 ellipse(10,28,8,10);
 ellipse(2,20,8,10);
 strokeWeight(10);
 noFill();
 stroke(120);
 line(37,-1,37,25);
 line(29,14,46,8);
 noFill();
}
void pero5(){ // --- Morty
 stroke(20);
 strokeWeight(4);
 fill(#325064);
 beginShape();
  vertex(-24,29);
  vertex(21,30);
  vertex(22,78);
  vertex(9,80);
  vertex(0,53);
  vertex(-9,85);
  vertex(-28,91);
  vertex(-24,29);
 endShape();
 fill(#F0DC69);
 bezier(-38,-3,-31,-43,31,-24,29,-9);
 bezier(-22,35,-12,43,16,39,22,32);
 fill(#FADC96);
 rectMode(CENTER);
 rect(-27,19,10,36);
 rect(25,11,8,36);
 fill(#F0DC69);
 noStroke();
 quad(-38,-3,-20,3,20,0,29,-9);
 quad(-22,35,-20,3,20,0,22,32);
 stroke(20);
 noFill();
 line(-38,-3,-20,3);
 line(29,-9,20,0);
 stroke(20);
 strokeWeight(4);
 fill(#FADC96);
 bezier(21,29,29,43,42,30,29,23);
 bezier(-32,28,-54,42,-23,56,-22,37);
 fill(#554623);
 bezier(28,-76,30,-134,-80,-90,-28,-43);
 fill(#FADC96);
 ellipse(1,-57,64,66);
 bezier(-22,-70,-36,-76,-42,-53,-25,-52);
 strokeWeight(2);
 bezier(20,-52,27,-45,18,-39,15,-49);
 bezier(-8,-38,0,-40,5,-33,11,-35);
 fill(255);
 ellipse(1,-63,23,23);
 ellipse(27,-64,16,20);
 noStroke();
 fill(20);
 ellipseMode(CENTER);
 ellipse(4,-62,6,6);
 ellipse(30,-63,6,6);
 fill(40);
 stroke(20);
 strokeWeight(4);
 ellipse(-16,91,26,18);
 ellipse(17,84,22,14);
}
