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
		float r = random(1);
		
		if (r < 0.01) {
		  x = x+random(-100,100);
 		  y = y+random(-100,100);
		} else if ((r >= 0) && (r < 0.125)) {
			x=x+8;
		} else if ((r >= 0.125) && (r < 0.25)){
			x=x-8;
		} else if ((r >= 0.25) && (r < 0.375)){
			y=y+8;
		} else if ((r >= 0.375) && (r < 0.5)){
			y=y-8;
		} else if ((r >= 0.5) && (r < 0.75)){
			if (mouseX > x){
				x=x+8;
			} else if (mouseX < x){
				x=x-8;
			}

		} else {
			if (mouseY > y){
				y=y+8;
			} else if (mouseY < y){
				y=y-8;
			}
		}
	}
}