// Draw white lines at random heights

int numberOfBars = 20;

void setup() {
  size(800, 800);
  noStroke();
  background(0);
  fill(255);
}

void draw() {

  while (numberOfBars < width) {
    rect(numberOfBars, random(height), 5, height); // Draw white lines
    numberOfBars += 20; // Move the next line drawing over 20 pixels to the right
  }
}
