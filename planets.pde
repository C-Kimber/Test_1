class Planet{
  PVector pos;
  PVector vel;
  PVector acc;
  float rad;
  
  
  
  Planet(PVector origin, float radius){
    pos = origin.copy();
    vel = new PVector(0,0);
    acc = new PVector(0,0);
    rad = radius;
  }
    
  
  
  
  void update(){
    vel.add(acc);
    pos.add(vel);
  }
  
  
  void render(){
    noStroke();
    fill(21, 180, 72);
    ellipse(pos.x,pos.y, rad, rad);
  }
  
  
  
  
  
  
  
  
  
  
  
  
}