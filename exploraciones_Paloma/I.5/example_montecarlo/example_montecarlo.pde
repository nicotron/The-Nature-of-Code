void setup(){
  
}

void draw(){
  montecarlo();
  println(montecarlo());
}

float montecarlo() {
  while (true) {   //We do this “forever” until we find a qualifying random value.
    float r1 = random(1);  //Pick a random value.
    float probability = r1;  //Assign a probability.
    float r2 = random(1);  //Pick a second random value.

    if (r2 < probability) {  //Does it qualify? If so, we’re done!
      return r1;
    }
  }
}