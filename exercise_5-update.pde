int margin = 43;

void setup() {
  size(820, 820); // Set the size of the canvas
  background(255); // Set background color to white
  colorMode(HSB, 100); // Set colormode to HSB
  noStroke(); // No stroke on 
  smooth();
}

void draw() {

  // Repeat vertical lines of dots
  for (int xpos = 50; xpos < width - margin; xpos = xpos + 45) { // Repeat drawing the lines until they reach the margin
    int hueShift = 0;

    //Repeat dots within one vertical line
    for (int ypos = 50; ypos < height - margin; ypos = ypos + 45) { // Repeat drawing the ellipse until it reaches the margin
      fill(hueShift, 100, 100);
      ellipse(xpos, ypos, 40, 40); // Draw the ellipse
      hueShift = hueShift + 5;
    }
  }
}
