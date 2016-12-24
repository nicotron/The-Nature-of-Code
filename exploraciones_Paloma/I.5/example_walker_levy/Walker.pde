class Walker{
	float x;
	float y;

	Walker() {
	x = width/2;
	y = height/2;
	}
	
	void display(){
		noStroke();
		fill(255, 120);
		rect(x, y, 5, 5);
	}

	void step(){
		float r = random(0,50);
		
		float x = random(-r,r);
		float y = random(-r,r);

		x=x+r;
		y=y+r;
		
	}
}
