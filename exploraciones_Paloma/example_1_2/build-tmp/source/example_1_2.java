import processing.core.*; 
import processing.data.*; 
import processing.event.*; 
import processing.opengl.*; 

import java.util.HashMap; 
import java.util.ArrayList; 
import java.io.File; 
import java.io.BufferedReader; 
import java.io.PrintWriter; 
import java.io.InputStream; 
import java.io.OutputStream; 
import java.io.IOException; 

public class example_1_2 extends PApplet {

PVector location, velocity;

public void setup(){
	
	location = new PVector(100,100);
	velocity = new PVector(1,3.3f);
}

public void draw(){
	background(99, 255, 214);

	location.add(velocity);

	if ((location.x > width-20) || (location.x < 20)){
		velocity.x = velocity.x * -1;
	}
	if ((location.y > height-20) || (location.y < 20)){
		velocity.y = velocity.y * -1;
	}

	noStroke();
	fill(255,186,161);
	ellipse(location.x, location.y, 40, 40);
}
  public void settings() { 	size(500,500); }
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "example_1_2" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
