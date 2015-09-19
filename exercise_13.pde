class Ball {
  float x, y;
  float vx, vy;
  float radius;
  color c;

  Ball(color tempC) {
    noStroke();
    x = random(width-radius);
    y = random(height-radius);
    radius = 20;
    vx = (3);
    vy = (4);
    c = color(1, 100, 100);
    c = tempC;
  }

  void draw() {
    fill(c);
    ellipse(x, y, radius*2, radius*2);
  }

  void move() {
    x = x + vx;
    y = y + vy;
    if (x < radius || x > width-radius) {
      vx = -vx;
    }
    if (y < radius || y > height-radius) {
      vy = -vy;
    }
  }
}

Ball b, b2;

void setup() {
  size(500, 500);

  b = new Ball(color(0, 255, 0));
  b2 = new Ball(color(255, 0, 0));
}

void draw() {

  background(255);

  // Draw 1st ball
  b.draw();
  b.move();

  // Draw 2nd ball
  b2.draw();
  b2.move();
}
