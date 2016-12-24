import processing.core.*; 
import processing.data.*; 
import processing.event.*; 
import processing.opengl.*; 

import java.util.*; 

import java.util.HashMap; 
import java.util.ArrayList; 
import java.io.File; 
import java.io.BufferedReader; 
import java.io.PrintWriter; 
import java.io.InputStream; 
import java.io.OutputStream; 
import java.io.IOException; 

public class example_i4 extends PApplet {

//float h = random(200,300);

Random generator;
float y2;
public void setup(){
	frameRate(10);
	
	background(90, 30, 50);

	generator = new Random();
}

public void draw(){
	float xloc = (float) generator.nextGaussian();
	float sd = 50;
	float mean = width/2;

	xloc = (sd * xloc) + mean;

	noStroke();
	fill(255, 10);
	ellipse(xloc, height/2, 16, 16);
}
  public void settings() { 	size(500, 500); }
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "example_i4" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
