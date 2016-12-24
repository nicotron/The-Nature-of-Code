float t = 10;

void setup(){
	size(500, 500);
}

void draw(){
	background(253);
	float n = noise(t);
	
	float x = map(n, 0, 1, 0, width);
	ellipse(x, height/2, 16, 16);
	t += 0.01;
}