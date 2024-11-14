int a = 0;
int b = 0;
BodyMaker GG = new BodyMaker();
BodyMaker GG2 = new BodyMaker(0,-100,-100);

//PVector cd = new PVector(10,10);

void setup() {
  //size(640, 360, P3D);
  fullScreen(P3D);
  fill(204);
  frameRate(60);
  GG2.getTime();
  GG2.set_rotate_all(10,10,10);
}

void draw() {
  //lights();
  background(0);
  pushMatrix();
  translate(width/2,height/2,0);
  rotateX(-PI/6+PI/18*a/10);
  //a++;
  b++;
  //if(b > 60) b = 60;
  rotateY(PI/6);
  GG.spawn();
  GG.setXYZ(100,100,100);
  GG2.move_rotate_all(10000,0,100,100);
    if(b < 500) {
  GG2.moveToXYZ(200,200,200,200);
    } else{
  GG2.moveToXYZ(1500,-300,-300,-300);
    }
  GG2.getTime();
    
  popMatrix();
  translate(width/6,height/6,0);
  box(200,20,20);
  translate(200/2,0);
  
  //rotateY(PI/2);//+PI/18*b/10);
  // Решение
  rotateX(PI/3);//+PI/18*b/10);
  rotateZ(PI/3);//+PI/18*b/10);
  //shearX(PI/10);
  translate(200/2,0);
  box(200,20,20);

}
  
//  //shapeMode(1);
  
  
//  stroke(1);
  
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
