class Button
{
 int xpos;
 int ypos;
 color c;
 
 Button(int temp_xpos, int temp_ypos)
 {
   xpos = temp_xpos;
   ypos = temp_ypos;
   c = color(#ffcc33);
 }
 
 void display()
 {
   if (mousePressed && (mouseX > xpos && mouseX < xpos + 50)
     && (mouseY > ypos && mouseY < ypos + 50))
   {
     fill(c);
   } else {
     fill(200);
   }
   rect(xpos, ypos, 50, 50);
 }
}