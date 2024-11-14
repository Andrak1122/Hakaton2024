class BodyMaker {
  float glx,gly,glz,time,rotX,rotY,rotZ;
  BodyMaker (float x,float y,float z){
    glx = x;
    gly = y;
    glz = z;
  }
  BodyMaker(){}
  void getTime(){time = millis();}
  void spawn(){
  //shapeMode(1);
  
  pushMatrix();
  rotate_All();
  
  stroke(1);
  
  // туловище
  box(60,50,40);
  
  pushMatrix();
  translate(0,60,0);
  box(60,55,40);
  popMatrix();
  
  // голова
  pushMatrix();
  translate(0,-60,0);
  //noStroke();
  sphereDetail(10);
  sphere(35);
  popMatrix();
  
  // левая рука
  pushMatrix();
  translate(-60,-10,0);
  box(55,30,30);
  popMatrix();
  
  pushMatrix();
  translate(-120,-10,0);
  box(55,30,30);
  popMatrix();
  
  // правая рука
  pushMatrix();
  translate(60,-10,0);
  box(55,30,30);
  popMatrix();
  
  pushMatrix();
  translate(120,-10,0);
  box(55,30,30);
  popMatrix();
  
  // левая нога
  pushMatrix();
  translate(16,125/3*2,0);
  rotateX(PI/6);
  rotateY(-PI/6);
  rotateZ(-PI/6);
  translate(0,125/3,0);
  box(30,60,30);
  
  translate(0,65,0);
  box(30,60,30);
  popMatrix();
  
  // правая нога
  pushMatrix();
  translate(-16,125/3*2,0);
  rotateX(PI/6);
  rotateY(PI/6);
  rotateZ(PI/6);
  translate(0,125/3,0);
  box(30,60,30);
  
  
  translate(0,65,0);
  box(30,60,30);
  popMatrix();
  
  popMatrix();
  
  }
  
  void setXYZ(float new_x,float new_y,float new_z){
    glx = new_x;
    gly = new_y;
    glz = new_z;
    translate(glx,gly,glz);
    spawn();
  } // телепорт
  void moveToXYZ(float v,float new_x,float new_y,float new_z){
    
    PVector start = new PVector(glx,gly,glz) ;
    PVector end = new PVector(new_x,new_y,new_z);
    float distance = PVector.dist(start,end);
    //if(distance < 2) {translate(glx,gly,glz);spawn();return;}
    float fullTime = distance/v*1000;
    float deltaTime = millis()- time;
    if( fullTime < deltaTime)  fullTime = deltaTime;
    PVector middle = PVector.lerp(start, end, deltaTime/fullTime);
    
    //println(middle.x,middle.y,middle.z,millis());
    
    glx = middle.x;
    gly = middle.y;
    glz = middle.z;
    
    translate(middle.x,middle.y,middle.z);
    spawn();
  } // глобальное движение
  void set_rotate_all(float new_rotX,float new_rotY,float new_rotZ){
    rotX = new_rotX;
    rotY = new_rotY;
    rotZ = new_rotZ;
    //rotateX(radians(rotX));
    //rotateY(radians(rotY));
    //rotateZ(radians(rotZ));
  }
  void move_rotate_all(float v,float new_rotX,float new_rotY,float new_rotZ){
    rotX = rotX%360;
    rotY = rotY%360;
    rotZ = rotZ%360;
    
    float deltaX,deltaY,deltaZ;
    //deltaX = rotX - new_rotX;
    deltaY = rotY - new_rotY;
    deltaZ = rotZ - new_rotZ;
    
    //float fullTimeX = deltaX/v*1000;
    float fullTimeY = deltaY/v*1000;
    float fullTimeZ = deltaZ/v*1000;
    //float deltaTimeX = millis()- time;
    float deltaTimeY = millis()- time;
    float deltaTimeZ = millis()- time;
    
    //if( fullTimeX < deltaTimeX)  deltaTimeX = fullTimeX;
    if( fullTimeY < deltaTimeY)  deltaTimeY = fullTimeY;
    if( fullTimeZ < deltaTimeZ)  deltaTimeZ = fullTimeZ;
    //float middle_rotX = rotX+fullTimeX*deltaX;
    float middle_rotY = rotY+fullTimeY*deltaY;
    float middle_rotZ = rotZ+fullTimeZ*deltaZ;
    
    //rotX = middle_rotX;
    rotY = middle_rotY;
    rotZ = middle_rotZ;
    
    //rotX = rotX%360;
    rotY = rotY%360;
    rotZ = rotZ%360;
    //rotate_All();
  }
  void rotate_All(){
    rotateX(radians(rotX));
    rotateY(radians(rotY));
    rotateZ(radians(rotZ));
  }
  
  // движение частей
  void move_Left_Hand_ByAngl(){}
  void move_Left_Hand2_ByAngl(){}
  void move_Right_Hand_ByAngl(){}
  void move_Right_Hand2_ByAngl(){}
  void move_Left_Leg_ByAngl(){}
  void move_Left_Leg2_ByAngl(){}
  void move_Right_Leg_ByAngl(){}
  void move_Right_Leg2_ByAngl(){}
  
  void move_Left_Hand_Fing_ByAngl(){}
  void move_Right_Hand_Fing_ByAngl(){}
  
  void move_Left_Leg_Foot_ByAngl(){}
  void move_Right_Leg_Foot_ByAngl(){}
  
  void move_Body_ByAngl(){
    
  }
  
  void move_Head_ByAngl(){}
  // текстуры
  void setTextureFor_Left_Hand_ByAngl(){}
  void setTextureFor_Right_Hand(){}
  void setTextureFor_Left_Leg(){}
  void setTextureFor_Right_Leg(){}
  
  void setTextureFor_Left_Hand2(){}
  void setTextureFor_Right_Hand2(){}
  void setTextureFor_Left_Leg2(){}
  void setTextureFor_Right_Leg2(){}
  
  void setTextureFor_Left_Hand_Fing(){}
  void setTextureFor_Right_Hand_Fing(){}
  void setTextureFor_Left_Leg_Foot(){}
  void setTextureFor_Right_Leg_Foot(){}
}
