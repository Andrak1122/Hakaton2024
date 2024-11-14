//int a = 0;
//int b = 0;
//int l = 0;

//void setup() {
//  //size(640, 360, P3D);
//  fullScreen(P3D);
//  fill(204);
//}

//void draw() {
//  //lights();
//  background(0);
//  translate(width/2,height/2,0);
//  rotateX(-PI/6+PI/18*a/10);
//  //a++;
//  b++;
//  if(b > 60) b = 60;
//  rotateY(PI/6);
  
//  //shapeMode(1);
  
  
//  stroke(1);
  
//  switch(l) {
//  case 0: 
//    a++;  // Does not execute
//    if(a > 60) l = 1;
//    break;
//  case 1: 
//    a--;  // Does not execute
//    if(a < -45 ) l = 0;
//    break;
//  }
  
//  // туловище
//  box(60,50,40);
  
//  pushMatrix();
//  translate(0,60,0);
//  box(60,55,40);
//  popMatrix();
  
//  // голова
//  pushMatrix();
//  translate(0,-60,0);
//  //noStroke();
//  sphereDetail(10);
//  sphere(35);
//  popMatrix();
  
//  // левая рука
//  pushMatrix();
//  translate(-60,-10,0);
//  box(55,30,30);
//  popMatrix();
  
//  pushMatrix();
//  translate(-120,-10,0);
//  box(55,30,30);
//  popMatrix();
  
//  // правая рука
//  pushMatrix();
//  translate(60,-10,0);
//  box(55,30,30);
//  popMatrix();
  
//  pushMatrix();
//  translate(120,-10,0);
//  box(55,30,30);
//  popMatrix();
  
//  // левая нога
//  pushMatrix();
//  translate(16,125/3*2,0);
//  rotateX(PI/6);
//  rotateY(-PI/6);
//  rotateZ(-PI/6);
//  translate(0,125/3,0);
//  box(30,60,30);
  
//  translate(0,65,0);
//  box(30,60,30);
//  popMatrix();
  
//  // правая нога
//  pushMatrix();
//  translate(-16,125/3*2,0);
//  rotateX(PI/6);
//  rotateY(PI/6);
//  rotateZ(PI/6);
//  translate(0,125/3,0);
//  box(30,60,30);
  
  
//  translate(0,65,0);
//  box(30,60,30);
//  popMatrix();
  
  
  
//  // Тесты
//  translate(width/8,height/8,0);
  
  
//  box(30,60,30);
//  translate(0,32,0);
//  rotateX(PI/6);
//  rotateY(PI/6);
//  rotateZ(PI/6);
//  translate(0,32,0);
//  box(30,60,30);
  
//}
