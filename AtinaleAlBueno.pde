/*import processing.sound.*;

SoundFile hit_l, hit_r, whosh_l, whosh_r;*/

void setup(){
  size(600,400);
  frameRate(150);
  background(11,223,47); 
  /*
  hit_l = new SoundFile(this, "SonidoBolitaL.wav");
  hit_r = new SoundFile(this, "SonidoBolitaR.wav");
  whosh_l = new SoundFile(this, "whosh_LtR.wav");
  whosh_r = new SoundFile(this, "whosh_RtL.wav");*/
}

boolean parabola=false, no_mover = false;
float inc = 1, d=20, y=11,w=0.004, x_shot = 0, y_shot = 0, x_linea = 20, x_canasta = 550, xf_canasta=600, y_canasta=200;

void keyPressed(){
  if(key == CODED){
    if(keyCode == RIGHT && !no_mover){
      x_linea +=5;
    }
    else if(keyCode == LEFT && !no_mover){
      x_linea -=5;
    }
    else if(keyCode == UP){
      no_mover = true;
      parabola = true;
      y=0;
    }
  }
}

void draw(){
  print("xcanasta = "+x_canasta + "\n");
  print("xfcanasta= "+xf_canasta + "\n");
  print("inc =      "+inc + "\n");
  background(11,223,47);
  ellipse(x_linea, 5, 5,5);
  line(x_canasta, y_canasta, xf_canasta, y_canasta);
  if(parabola){
    inc = w*((y-x_linea)*(y-x_linea));
    ellipse(y, inc, d, d);
    y++;
    //background(0,255,0);
    if(x_canasta <= inc && inc >= xf_canasta){
      background(255,0,0);
    }
    if(y>600){
      parabola = false;
      no_mover = false;
      noLoop();
    }
      
  }
    
  /*
  if(dist(y, inc, mouseX, mouseY) <= 10){
    background(255,0,0);
    ellipse(y, inc, d, d);
    x_shot=mouseX;
    y_shot=mouseY;
    /*top=random(200,400);
    w=random(0.001, 0.006);
    y=0;
    text("x_shot= "+x_shot, 20,10);
    text("y_shot= "+y_shot, 20,20);
    text("w= "+x_shot, 20,30);
  }
  
  if(derecha){
    y++;
    if(y>590){
      top=random(200, 400);
      w=random(0.001, 0.006);
      derecha = false;
    }
  }
  if(!derecha){
    y--;
    if(y<10){
      top=random(200, 400);
      w=random(0.001, 0.006);
      derecha = true;
    }
  }*/
}
