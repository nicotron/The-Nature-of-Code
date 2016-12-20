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

public class exercise_i3_anti extends PApplet {

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
	int x;
	int y;

	Walker() {
	x = width/2;
	y = height/2;
	}
	
	public void display(){
		noStroke();
		fill(255, 120);
		rect(x, y, 5, 5);
	}

	public void step(){
		float r = random(1);
		if ((r >= 0) && (r < 0.125f)) {
			x=x+5;
		} else if ((r >= 0.125f) && (r < 0.25f)){
			x=x-5;
		} else if ((r >= 0.25f) && (r < 0.375f)){
			y=y+5;
		} else if ((r >= 0.375f) && (r < 0.5f)){
			y=y-5;
		} else if ((r >= 0.5f) && (r < 0.75f)){
			if (mouseX > x){
				x=x-5;
			} else if (mouseX < x){
				x=x+5;
			}

		} else {
			if (mouseY > y){
				y=y-5;
			} else if (mouseY < y){
				y=y+5;
			}
		}

		if (x == 0){
			x=x+5;
		} 
		if (x == width){
			x=x-5;
		}
		if (y == 0){
			y=y+5;
		}
		if (y == height){
			y=y-5;
		}
	}
}
  public void settings() { 	size(500, 500); }
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "exercise_i3_anti" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
