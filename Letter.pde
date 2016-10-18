int[] fills = {0, 80, 120, 180}; // shaders of gray

char[] lines = {'∂', '∆', '∏', '∑', '−', '∙', '√', '∞', '∫', '≈', '≠', '≤', '≥', '‰', 
  '(', ')', '*', '+', ',', '-', '.', '/', 
  '0', '1', '2', '3', '5', '6', '7', '8', '9', '<', '=', '>', '?', '±', '²', '³', '¼', '½', '¾'};
  
class Letter {
  String symbol;
  int fontSize;
  float x;
  float y;
  int charColor;
  
  // Contructor
  Letter() {
    symbol = Character.toString(lines[int(random(lines.length))]); 
    init();
  }
  
  Letter(float number) {
    symbol = Float.toString(number);  
    init();
  }
  
  void init() {
    fontSize = fsizes[int(random(fsizes.length))];
    x = random(width/8, width/2 - width/8); // <--- width changes here
    y = random(-height*duration, -20);
    charColor = fills[int(random(fills.length))];
  }
  
  // Custom method for drawing the object
  void display(float speed) {
    y = y+speed;
    if(y > 0 && y < height+42)
    {
      fill(charColor);
      textFont(f1, fontSize);
      text(symbol, x, y);
    }
  }
}