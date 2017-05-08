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
		int choice = int (random(4));
		if (choice == 0) {
			x=x+5;
		} else if (choice == 1){
			x=x-5;
		} else if (choice == 2){
			y=y+5;
		} else {
			y=y-5;
		}
	}
}