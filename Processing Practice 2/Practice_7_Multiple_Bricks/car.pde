class Car
{
 float xpos;  
 float ypos; 
 color c;
 float speed;

 Car(float tXpos, float tYpos, color tC, float tSpeed)
 {
   xpos = tXpos;
   ypos = tYpos;
   c = tC;
   speed = tSpeed;
 }
 
 void display()
 {
   fill(c);
   rect(xpos, ypos, 30, 10);
 }
 
 void drive()
 {
   xpos += speed;
   if(xpos>width)
   {
     xpos = 0;
   }
 }
}