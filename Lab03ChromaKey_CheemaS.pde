PImage img1, img2;

void setup() {
  size(600, 360);
  img2 = loadImage("background.png");
  img1 = loadImage("foreground.jpg");
}

void draw() {

  
  //iterate through each pixel in the image
  for (int x = 0; x < img1.width; x++) {
    for (int y = 0; y < img1.height; y++) {
      //retrieve the red, green, and blue values of each pixel
      int pixel = img1.get(x, y);
      float r = red(pixel);
      float g = green(pixel);
      float b = blue(pixel);
      
      //check if the blue value is within a certain range
      if (g > 253 && r < 250 && b < 250) {
 
            int pix2 = img2.get(x, y);
            img1.set(x, y, pix2);
}
    }
  }
  
  //draw the second image on top of the first image
  image(img2, 0, 0);
  image(img1, 0, 0);
}

void keyPressed() {
  if (key == '1') {
    img1.filter(GRAY);
  } else if (key == '2') {
    img1.filter(BLUR);
  }
}
