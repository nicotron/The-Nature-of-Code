Walker w;

void setup(){
	size(500, 500);
	w = new Walker();
	background(90, 30, 50);
}

void draw(){
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