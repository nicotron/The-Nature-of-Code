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

public class perlin_noise_02_pixels extends PApplet {

Walker w;

public void setup(){
	
	w = new Walker();
	background(90, 30, 50);
}

public void draw(){
	loadPixels();
	for (int x = 0; x < width; x++){
		for (int y = 0; y < height; y++){
			//float bright = random(255);
			float bright = map(noise(x,y),0,1,0,255);
			// debbuging
			int misterio = x+y*width;
			//println(misterio);
			pixels[x+y*width] = color (bright);
		}
	}
	updatePixels();

	w.step();
	w.display();

	
}
class Walker {
	float x, y;
	float tx, ty;

	Walker(){
		tx = 0;
		ty = 10000;
	}

	public void display(){
		noStroke();
		fill(255, 120);
		rect(x, y, 5, 5);
	}

	public void step(){
		x = map(noise(tx), 0, 1, 0, width);
		y = map(noise(ty), 0, 1, 0, width);

		tx += 0.01f;
		ty += 0.01f;
	}
}
  public void settings() { 	size(500, 500); }
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "perlin_noise_02_pixels" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
