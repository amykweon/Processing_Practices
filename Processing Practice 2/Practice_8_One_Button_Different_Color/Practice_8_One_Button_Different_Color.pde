int x_num = 10;
int y_num = 10;
Button myButton[] = new Button[x_num * y_num];

void setup()
{
 size(500, 500);
 for (int x = 0; x < x_num; x++)
 {
   for (int y = 0; y < y_num; y++)
   {
     myButton[x + x_num * y] = new Button(x * 50, y * 50);
   }
 }
 myButton[0].c = color(255, 0, 0);
}

void draw() {
 stroke(140);
 background(255);
 for (int i = 0; i < x_num * y_num; i++)
 {
   myButton[i].display();
 }
}