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
			float bright = map(noise(xoff,yoff),0,1,0,255);
			int misterio = x+y*width;
			//println(misterio);
			pixels[x+y*width] = color (bright);
			yoff += 0.001;
		}
		xoff += 0.001;
	}
	updatePixels();

	w.step();
	w.display();

	
}