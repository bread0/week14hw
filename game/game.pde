int score;
boolean touch1, touch2, touch3, touch4, up, down;
Ball ball1;
Ball ball2;
Ball ball3;
Ball ball4;
Cursor cursor;

void keyPressed() {
  if (keyCode == UP) {
    up = true;
  } else if (keyCode == DOWN) {
    down = true;
  }
}

void keyReleased() {
  if (keyCode == UP) {
    up = false;
  } else if (keyCode == DOWN) {
    down = false;
  }
}

void setup() {
  size(1000, 600);
  ball1 = new Ball();
  ball2 = new Ball();
  ball3 = new Ball();
  ball4 = new Ball();
  cursor = new Cursor();
}

void draw() {
  touch1 = false;
  touch2 = false;
  touch3 = false;
  touch4 = false;

  background(0);

  cursor.display();
  cursor.update();

  ball1.display();
  ball1.update(1);
  ball1.collision(cursor);

  ball2.display();
  ball2.update(2);
  ball2.collision(cursor);

  ball3.display();
  ball3.update(3);
  ball3.collision(cursor);

  ball4.display();
  ball4.update(4);
  ball4.collision(cursor);

  if (touch1) {
    ball1.reset();
    score+=1;
  }

  if (touch2) {
    ball2.reset();
    score+=1;
  }

  if (touch3) {
    ball3.reset();
    score+=1;
  }

  if (touch4) {
    ball4.reset();
    score+=1;
  }

  fill(255);
  textSize(24);
  textAlign(CENTER, CENTER);
  text(score, width/8, 7*height/8);
}
