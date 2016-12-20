Walker w;
float xoff = 0.0;

void setup(){
	size(500, 500);
	w = new Walker();
	background(90, 30, 50);
}

void draw(){
	loadPixels();
	for (int x = 0; x < width; x++){
		float yoff = 0.0;
		for (int y = 0; y < height; y++){
			//float bright = random(255);
			float bright_r = map(noise(xoff,yoff),0,1,0,232);
			float bright_g = map(noise(xoff,yoff),0,1,0,12);
			float bright_b = map(noise(xoff,yoff),0,1,0,122);
			int misterio = x+y*width;
			//println(misterio);
			pixels[x+y*width] = color (bright_r,bright_g,bright_b);
			yoff += 0.001;
		}
		xoff += 0.001;
	}
	updatePixels();

	w.step();
	w.display();

	
}