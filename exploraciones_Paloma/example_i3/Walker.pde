class Walker{
	int x;
	int y;

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
		float r = random(1);
		if (r < 0.4) {
			x=x+5;
		} else if (r < 0.6){
			x=x-5;
		} else if (r < 0.8){
			y=y+5;
		} else {
			y=y-5;
		}
	}
}