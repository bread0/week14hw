class Ball {
  PVector pos, vel;
  float size, angle;

  Ball() {
    pos = new PVector (width/2, 0);
    vel = new PVector(0, random(2, 4));
  }

  void display() {
    fill(255);
    noStroke();
    ellipse(pos.x, pos.y, size, size);
  }

  void update(int whichBall) {
    
    // this part here is why i made 4 separate ball objects
    // instead of an array
    // i couldn't figure out how to parameterize(?) the vel.x for each ball
    // and still keep it in the class function :^(
    
    if (whichBall == 1) {
      vel.x -= 0.02;
    } else if (whichBall == 2) {
      vel.x -= 0.008;
    } else if (whichBall == 3) {
      vel.x += 0.008;
    } else if (whichBall == 4) {
      vel.x += 0.02;
    }


    if (pos.y > height+size) {
      reset();
      score--;
    }

    if (pos.y < 0) {
      vel.y = -vel.y;
    }

    if (pos.x < 0 || pos.x > width) {
      vel.x = -vel.x;
    }

    pos.add(vel);
    size += 0.2;
    if (size > 50) {
      size = 50;
    }
  }

  void reset() {
    pos.y = 0;
    pos.x = width/2;
    vel.x = 0;
    size = 2;
  }

  void collision(Cursor c) {
    if (dist(c.x, c.y, ball1.pos.x, ball1.pos.y) < size) {
      ball1.vel.y = -ball1.vel.y;
      touch1 = true;
    }

    if (dist(c.x, c.y, ball2.pos.x, ball2.pos.y) < size) {
      ball2.vel.y = -ball2.vel.y;
      touch2 = true;
    }

    if (dist(c.x, c.y, ball3.pos.x, ball3.pos.y) < size) {
      ball3.vel.y = -ball3.vel.y;
      touch3 = true;
    }

    if (dist(c.x, c.y, ball4.pos.x, ball4.pos.y) < size) {
      ball4.vel.y = -ball4.vel.y;
      touch4 = true;
    }
  }

}
