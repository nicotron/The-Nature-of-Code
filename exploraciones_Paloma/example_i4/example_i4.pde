//float h = random(200,300);
import java.util.*;
Random generator;
float y2;
void setup(){
	frameRate(10);
	size(500, 500);
	background(90, 30, 50);

	generator = new Random();
}

void draw(){
	float xloc = (float) generator.nextGaussian();
	float sd = 50;
	float mean = width/2;

	xloc = (sd * xloc) + mean;

	noStroke();
	fill(255, 10);
	ellipse(xloc, height/2, 16, 16);
}