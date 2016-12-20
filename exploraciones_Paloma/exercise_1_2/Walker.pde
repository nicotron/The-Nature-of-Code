class Walker{

	PVector location;

	Walker() {
	location = new PVector(width/2, height/2);
	}
	
	void display(){
		noStroke();
		fill(255, 120);
		rect(location.x, location.y, 5, 5);
	}

	void step(){
		float r = random(1);
		
		if (r < 0.01) {
		  location.x = location.x+random(-100,100);
 		  location.y = location.y+random(-100,100);
		} else if ((r >= 0) && (r < 0.125)) {
			location.x=location.x+8;
		} else if ((r >= 0.125) && (r < 0.25)){
			location.x=location.x-8;
		} else if ((r >= 0.25) && (r < 0.375)){
			location.y=location.y+8;
		} else if ((r >= 0.375) && (r < 0.5)){
			location.y=location.y-8;
		} else if ((r >= 0.5) && (r < 0.75)){
			if (mouseX > location.x){
				location.x=location.x+8;
			} else if (mouseX < location.x){
				location.x=location.x-8;
			}

		} else {
			if (mouseY > location.y){
				location.y=location.y+8;
			} else if (mouseY < location.y){
				location.y=location.y-8;
			}
		}
	}
}