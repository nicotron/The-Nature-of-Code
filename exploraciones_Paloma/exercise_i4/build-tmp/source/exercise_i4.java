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

public class exercise_i4 extends PApplet {

//float h = random(200,300);

Random generator;
float tam;
public void setup(){
	
	background(90, 30, 50);
	//background(255);

	generator = new Random();
}

public void draw(){
	float xloc = (float) generator.nextGaussian();
	float yloc = (float) generator.nextGaussian();
	
	float sdx = 50;
	float meanx = width/2;

	float sdy = 50;
	float meany = height/2;

	xloc = (sdx * xloc) + meanx;
	yloc = (sdy * yloc) + meany;

	float distancia = dist(width/2, height/2, xloc, yloc);

	float distanciamap = map(distancia, 0, 354, 16, 2);
// ----los dibujos se dibujan solo cuando est\u00e1n a una distancia entre 100 y 120 del centro----
	//if(distancia > 100 && distancia < 120){
	//noStroke();
	//fill(255, 10);
	//ellipse(xloc, yloc, 16, 16);
	//}

// ---- los colores cambian segun qu\u00e9 tan lejos estan del centro ----

	noStroke();
	fill(255, distancia, 0, 175);
	ellipse(xloc, yloc, distanciamap, distanciamap);
	
}
  public void settings() { 	size(500, 500); }
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "exercise_i4" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
