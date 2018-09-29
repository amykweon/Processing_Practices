int[] digits;
int[] counts = new int[10];
String pi;
int index = 0;


void setup() {
  size(600, 600); 
  pi = loadStrings("pi1mil.txt")[0];
  //println(pi.length());
  String[] sdigits = pi.split("");
  //println(sdigits.length);
  digits = int(sdigits);
  //println(digits);

  background(0);
  translate(width/2, height/2);
  stroke(255,255,255,50);
  noFill();
  ellipse(0, 0, 600, 600);
}


void draw() {
  translate(width/2, height/2);

  int digit = digits[index];
  int nDigit = digits[index+1];
  index++;

  float diff = TWO_PI/10;

  float a1 = map(digit, 0, 10, 0, TWO_PI) + random(-diff, diff);
  float a2 = map(nDigit, 0, 10, 0, TWO_PI) + random(-diff, diff);

  float x1 = 300 * cos(a1);
  float y1 = 300 * sin(a1);

  float x2 = 300 * cos(a2);
  float y2 = 300 * sin(a2);

  line(x1, y1, x2, y2);
}
