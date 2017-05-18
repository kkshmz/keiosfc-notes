size(1024, 512);
PImage input = loadImage("lenna_mono.jpg");
PImage result = createImage(input.width, input.height, RGB);

image(input, 0, 0);

for (int y=0; y<input.height; y++) {
  for (int x=0; x<input.width; x++) {
    color dot = input.get(x, y);
    int xx  = x;
    int yy  = y;
    if (brightness(dot) > 128){
      dot=color(1);
    }else{
      dot=color(258);
    }
    result.set(xx, yy,dot);
  }
}

image(result, input.width, 0);