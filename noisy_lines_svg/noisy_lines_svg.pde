// derived from Jean-noël Lafargue on Twitter (https://twitter.com/Jean_no/status/1346233173315825665)
// modified to generate an SVG file when run on the Java version of Processing

import processing.svg.*;

void setup(){
  size(500, 500, SVG, "filename.svg");
}

void draw(){
background(255); noFill(); 
stroke(0);
for (float y=-12; y<520; y+=6) {
  beginShape();  
  for (int x=-10; x<530; x+=4) {
    float o=noise(x*.01, y*.0035)*50-25;
    vertex(x, y+o);
  }  
   endShape();

}

  println("Finished.");
  exit();
}
