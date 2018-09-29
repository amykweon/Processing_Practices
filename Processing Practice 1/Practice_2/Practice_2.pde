//sqrt(x);//square root x
//abs(x);//absolute value x
//constrain(x,y,z);//constrain value x -> y: min z:max
//lerp(a,b,c);// between a(start) to b(stop) lerp calculate the number that is at the c portion of the distance 
//sq(b);//square b
//ceil(c);//round up c if c has any decimal point value
//norm(b,a,c);//show the location of value(b) between a and c in terms od percentage
//map(a,b,c,x,y);// show the value between x and y that is located in the according position as a between b and c

int x=4;
println(sqrt(x));
println(abs(x));
println(sq(x));

float y=1.2;
println(ceil(y));

float a=5;
float b=0;
float c=10;
float d=20;
float e=30;
float f=0.5;

println(lerp(a,b,f));
println(norm(a,b,c));
println(map(a,b,c,d,e));

println(constrain(a,b,c));
println(constrain(b,a,c));
println(constrain(d,b,c));
