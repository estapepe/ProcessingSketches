void setup() {
  size(1200, 900);
  frameRate(30);
  fill(255);
}

void draw() {
  background(0);
  int stripeWidth = int(map(mouseX, 0, width, 1, 10));
  int stripeAppart = int(map(mouseY, 0, width, 1, 10));
  boolean flipFlop = true;
  for (int i = 0; i < width; i = i + stripeAppart) {
    if (flipFlop) {
      rect(i, 0, stripeWidth, height);
      flipFlop = false;
    } else {
      flipFlop = true;
    }
  }
}
