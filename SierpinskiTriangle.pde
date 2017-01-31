public void setup()
{
	size(500,500);
	background(153, 215, 196);
}
public void draw()
{
	sierpinski(0,500,500);
}
public void mouseDragged()//optional
{
	
}
public void sierpinski(int x, int y, int len) 
{
	if(len<= 5) 
	{
		fill(243, 194, 243);
		triangle(x,y, len + x, y, x + len/2, y - len);
	}
	else
	{
		sierpinski(x,y,len/2);
		sierpinski(len/2 + x,y,len/2);
		sierpinski(len/4 + x, y -len/2 ,len/2);
	}
}