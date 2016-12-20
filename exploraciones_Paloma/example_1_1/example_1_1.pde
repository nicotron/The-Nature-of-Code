PVector location, velocity;

void setup(){
	size(500,500);
	location = new PVector(100,100);
	velocity = new PVector(1,3.3);
}

void draw(){
	background(99, 255, 214);

	location.add(velocity);

	if ((location.x > width-20) || (location.x < 20)){
		velocity.x = velocity.x * -1;
	}
	if ((location.y > height-20) || (location.y < 20)){
		velocity.y = velocity.y * -1;
	}

	noStroke();
	fill(255,186,161);
	ellipse(location.x, location.y, 40, 40);
}