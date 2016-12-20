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

public class exercise_1_2 extends PApplet {

Walker w;

public void setup(){
	
	w = new Walker();
	background(90, 30, 50);
}

public void draw(){
	w.step();
	w.display();
}
class Walker{

	PVector location;

	Walker() {
	location = new PVector(width/2, height/2);
	}
	
	public void display(){
		noStroke();
		fill(255, 120);
		rect(location.x, location.y, 5, 5);
	}

	public void step(){
		float r = random(1);
		
		if (r < 0.01f) {
		  location.x = location.x+random(-100,100);
 		  location.y = location.y+random(-100,100);
		} else if ((r >= 0) && (r < 0.125f)) {
			location.x=location.x+8;
		} else if ((r >= 0.125f) && (r < 0.25f)){
			location.x=location.x-8;
		} else if ((r >= 0.25f) && (r < 0.375f)){
			location.y=location.y+8;
		} else if ((r >= 0.375f) && (r < 0.5f)){
			location.y=location.y-8;
		} else if ((r >= 0.5f) && (r < 0.75f)){
			if (mouseX > location.x){
				location.x=location.x+8;
			} else if (mouseX < location.x){
				location.x=location.x-8;
			}

		} else {
			if (mouseY > location.y){
				location.y=location.y+8;
			} else if (mouseY < location.y){
				location.y=location.y-8;
			}
		}
	}
}
  public void settings() { 	size(500, 500); }
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "exercise_1_2" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
