Player p1;
ArrayList<Planet> planets;


void setup(){
  size(800, 640);
  background(0);
  colorMode(HSB);
  
  planets = new ArrayList<Planet>();
  planets.add(new Planet(new PVector(width/2, height/2), 100));
  
  //Player shoudl be last thing added
  p1 = new Player(new PVector(width/2, height/4) );
  
}




void draw(){
  background(0);

  
  
  
  for(int i = planets.size()-1; i >= 0; i --){
     Planet planet = planets.get(i); 
     planet.update();
     planet.render();
     p1.getAccel(planet);
    
  }
  
  p1.update();
  p1.render();
  println(p1.vel);

  
  
}

public void keyPressed()
{
        
    if (key == 'w')
    {
      p1.jump();
    }if(key == 'a'){
      p1.moveLeft();
    }
    if(key == 'd'){
      p1.moveRight();
    }
    if(key == 's'){
      p1.moveDown();
    
    }
    
         
}

void keyReleased(){
  p1.resetVel();
}