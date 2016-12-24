//float h = random(200,300);
import java.util.*;
Random generator;
float tam;
void setup(){
	size(500, 500);
	background(90, 30, 50);
	//background(255);

	generator = new Random();
}

void draw(){
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
// ----los dibujos se dibujan solo cuando están a una distancia entre 100 y 120 del centro----
	//if(distancia > 100 && distancia < 120){
	//noStroke();
	//fill(255, 10);
	//ellipse(xloc, yloc, 16, 16);
	//}

// ---- los colores cambian segun qué tan lejos estan del centro ----

	noStroke();
	fill(255, distancia, 0, 175);
	ellipse(xloc, yloc, distanciamap, distanciamap);
	
}