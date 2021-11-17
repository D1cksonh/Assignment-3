//Code here controls the dots being placed onto the screen

float redX, greenX, blueX = 0;

void dotSquare() {//the code was take, referenced and modified a little from the coding train
  for(int i = 0; i < 2; i++) { 
    int x = int(random(img.width));
    int y = int(random(img.height));
    
    float r = red(img.get(int(x),int(y)));
    float g = green(img.get(int(x),int(y)));
    float b = blue(img.get(int(x),int(y)));
    
    fill(r+redX,g+greenX,b+blueX,100);
    noStroke();
    rect(x,y,16,16);
  }
}

void dotCircle() { //the code was take, referenced and modified a little from the coding train
  for(int i = 0; i < 2; i++) { 
    float x = random(width);
    float y = random(height);
    color c = img.get(int(x),int(y));
    fill(c);
    noStroke();
    ellipse(x,y,16,16);
  }
}

void dotColor() { // this function controls the color of the dots when button's 1,2,3,4 are pressed (changes color only to the pixel squares);
 if(keyPressed && key == '1'){
   redX = 255;
 }
 if(keyPressed && key == '2'){
   greenX = 255;
 }
 if(keyPressed && key == '3'){
   blueX = 255; 
 }
 if(keyPressed && key == '4' && redX == 255 || greenX == 255 || blueX == 255){
   redX = 0;
   greenX = 0;
   blueX = 0;
 }
 
 println(redX);
 println(greenX);
 println(blueX);
}
