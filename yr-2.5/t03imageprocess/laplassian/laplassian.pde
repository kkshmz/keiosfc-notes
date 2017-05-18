size(1024, 512);
PImage input = loadImage("sfc.jpg");
PImage result = createImage(input.width, input.height, RGB);

image(input, 0, 0);

for (int y=0; y<input.height; y++) {
  for (int x=0; x<input.width; x++) {
    color cent = input.get(x,y);
    color a = input.get(x-1, y-1);
    color b = input.get(x, y-1);
    color c = input.get(x+1, y-1);
    color d = input.get(x-1, y);
    color e = input.get(x, y);
    color f = input.get(x+1, y);
    color g = input.get(x-1, y+1);
    color h = input.get(x, y+1);
    color i = input.get(x+1, y+1);

    cent = color((brightness(a)+brightness(b)+brightness(c)+brightness(d)+brightness(f)+brightness(g)+brightness(h)+brightness(i))*-1+(
    brightness(e)*8));
  
    result.set(x,y, cent);




  }
}

image(result, input.width, 0);