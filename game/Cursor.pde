class Cursor {
  int w, h, x, y, rectY;

  Cursor() {
    w = 50;
    h = w;
    rectY = height/2;
  }

  void display() {
    x = mouseX;
    y = rectY;
    rectMode(CENTER);
    fill(0);
    stroke(255);
    ellipse(x, y, w, h);

    fill(255, 50);
    noStroke();
    rect(width/2, rectY, width, 50);
  }
  
  void update() {
    if (up && rectY > 200) {
      rectY -= 5;
    }
    if (down && rectY + h < height) {
      rectY += 5;
    }
  }
  
}
