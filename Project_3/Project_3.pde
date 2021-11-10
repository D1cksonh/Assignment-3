PImage img;

void setup() {
  size(800,800);
  img = loadImage("Corin.jpg");
  img.loadPixels();
  
}

void draw() {
  image(img,100,100);
  
  int color1 = int(random(1,10));
  int color2 = int(random(1,10));
  int color3 = int(random(1,10));
  
  if(mouseX > width/2){
   for(int i=0; i<img.pixels.length; i++){
     if(i % color1 == 0) {
       img.pixels[i] = color(random(255),0,0);
     /*if(i % color2 ==0) {
       img.pixels[i] = color(random(255),random(255),random(255)); 
     }*/
     }
    }
  }
  img.updatePixels();
  
}
