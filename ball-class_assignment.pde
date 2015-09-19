class Ball {
  float x, y;
  float vx, vy;
  float radius;
  color c;

  Ball() {
    noStroke();
    colorMode(HSB, 100);
    x = random(width-radius);
    y = random(height-radius);
    radius = 10;
    vx = (random(4));
    vy = (random(4));
    c = color(random(100), 100, 100);
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

  b = new Ball();
  b2 = new Ball();
}

void draw() {
  colorMode(RGB, 100);
  background(255, 255, 255);

  // Draw 1st ball
  b.draw();
  b.move();

  // Draw 2nd ball
  b2.draw();
  b2.move();

  // Reposition first ball at mouse cursor
  if (mousePressed) {
    b.x = mouseX;
    b.y = mouseY;
  }
}
