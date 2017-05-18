
PImage input = loadImage("ringo.jpg");
PImage result = createImage(input.width,input.height, RGB);
size(800,400);
image(input, 0,0);

color bl = color(0,0,0);
color red = color(255,0,0);
loadPixels();

for (int y=0; y<input.height; y++) {
  for (int x=0; x<input.width; x++) {
    color dot = input.get(x, y);
    color rg = color(255,0,0);
    int a  = x;
    int b  = y;
    
    
    //if (red(dot) > 220 && blue(dot) > 200){
    //  colorMode(RGB);
    //  dot=color(1);
  //}
//  //
  if (red(dot) < 180 || blue(dot) > 140 || green(dot) > 140){
    colorMode(RGB);
     dot=color(1);
  }
  result.set(a,b,dot);
  }
}


image(result, input.width, 0);