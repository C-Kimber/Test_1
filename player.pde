class Player{
    PVector pos;
    PVector vel;
    PVector acc;
   Player(PVector origin){
      pos = origin.copy();
      vel = new PVector(sin(0),cos(PI/2));
      acc = new PVector(sin(0),0);
     
   }
   
   
   
   
   void update() {
      vel.add(acc);
      pos.add(vel);
      
      vel.x = constrain(vel.x, -20, 20);
      vel.y = constrain(vel.x, -20, 20);
   }
   
   
   void render() {
     
     noStroke();
     fill(255);
     ellipse(pos.x, pos.y, 20,20);
     
     
   }
   
   void jump(){
     vel.y = -2;
     vel.x = 0;
   
   }
   
   void moveLeft(){
     vel.x = -2;
     vel.y = 0;
   }
   
   void moveRight(){
     vel.x = 2;
     vel.y = 0;
   
   }
   
   void moveDown(){
     vel.y = 2;
     vel.y = 0;
   }
   
  
  
  void resetVel(){
    vel.x = 0;
    vel.y = 0;
}
  
  void getAccel(Planet planet){
    PVector vec = planet.pos.copy().sub(pos.copy());
    //acc=vec.mult(.01);
    //collisions(planet);
    
  }
  
  void collisions(Planet planet){
    if (dist(pos.x, pos.y, planet.pos.x, planet.pos.y) <= planet.rad+20){
      vel = new PVector(0,0);
    }
    
  }
  
  void boundries(){
    if(pos.x >= width || pos.x <= 0){
      vel.x = 0;
    }if(pos.y >= height || pos.y <= 0){
      vel.y = 0;
    }
  
  }
  
  
  
  
  
  
  
  
}