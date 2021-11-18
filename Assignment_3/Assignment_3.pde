PImage img;

void setup() {
  size(650,650);
  img = loadImage("Corin.jpg");// image source = https://www.pinterest.ca/pin/201254677076464979/
  img.loadPixels();
  background(0);
}

void draw() {
  dotSquare();
  dotColor();
  dotCircle();
  erase();
}
