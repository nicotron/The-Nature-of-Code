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

	y2 = map(xloc, 0, width, 0, 100);
	if (xloc > width/2) {
		y2 = map(xloc, 0, width, 100, 0);
	}

	stroke(255,10);
	strokeWeight(2);
	line(xloc, height/2, xloc, height/2 - y2);
}