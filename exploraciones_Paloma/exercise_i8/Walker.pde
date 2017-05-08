class Walker {
	float x, y;
	float tx, ty;

	Walker(){
		tx = 0;
		ty = 10000;
	}

	void display(){
		noStroke();
		fill(255, 120);
		rect(x, y, 5, 5);
	}

	void step(){
		x = map(noise(tx), 0, 1, 0, width);
		y = map(noise(ty), 0, 1, 0, width);

		tx += 0.01;
		ty += 0.01;
	}
}