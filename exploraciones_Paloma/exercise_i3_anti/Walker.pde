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
		if ((r >= 0) && (r < 0.125)) {
			x=x+5;
		} else if ((r >= 0.125) && (r < 0.25)){
			x=x-5;
		} else if ((r >= 0.25) && (r < 0.375)){
			y=y+5;
		} else if ((r >= 0.375) && (r < 0.5)){
			y=y-5;
		} else if ((r >= 0.5) && (r < 0.75)){
			if (mouseX > x){
				x=x-5;
			} else if (mouseX < x){
				x=x+5;
			}

		} else {
			if (mouseY > y){
				y=y-5;
			} else if (mouseY < y){
				y=y+5;
			}
		}

		if (x == 0){
			x=x+5;
		} 
		if (x == width){
			x=x-5;
		}
		if (y == 0){
			y=y+5;
		}
		if (y == height){
			y=y-5;
		}
	}
}