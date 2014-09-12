Die a, b, c, d;
int counter = 0;
void setup()
{
	size(500,500);
	noLoop();
	a = new Die(100,100);
	b = new Die(400,100);
	c = new Die(100,400);
	d = new Die(400,400);
}
void draw()
{
	background(0);
	a.roll();
	a.show();
	b.roll();
	b.show();
	c.roll();
	c.show();
	d.roll();
	d.show();
	fill(255);
	textAlign(CENTER);
	text("The total is: " + counter + " .",250,250);
}
void mousePressed()
{
	redraw();
	counter = 0;
}
class Die
{
	int myX, myY, num;
	Die(int x, int y)
	{
		myX = x;
		myY = y;
	}
	void roll()
	{
		num = (int)(Math.random()*6+1);
		counter = counter + num;
	}
	void show()
	{
		fill(255);
		rect(myX-100,myY-100,200,200);
		fill(0);
		if(num == 1)
		{
			ellipse(myX,myY,30,30); //middle
		}
		else if(num == 2)
		{
			ellipse(myX-60,myY-60,30,30); //top left
			ellipse(myX+60,myY+60,30,30); //bottom right
		}
		else if(num == 3)
		{
			ellipse(myX-60,myY-60,30,30); //top left
			ellipse(myX,myY,30,30); //middle
			ellipse(myX+60,myY+60,30,30); //top right
		}
		else if(num == 4)
		{
			ellipse(myX+60,myY-60,30,30); //top right
			ellipse(myX-60,myY-60,30,30); //top left
			ellipse(myX+60,myY+60,30,30); //bottom right
			ellipse(myX-60,myY+60,30,30); //bottom left
		}
		else if(num == 5)
		{
			ellipse(myX+60,myY-60,30,30); //top right
			ellipse(myX-60,myY-60,30,30); //top left
			ellipse(myX,myY,30,30); //middle
			ellipse(myX+60,myY+60,30,30); //bottom right
			ellipse(myX-60,myY+60,30,30); //bottom left
		}
		else if(num == 6)
		{
			ellipse(myX+60,myY-60,30,30); //top right
			ellipse(myX-60,myY-60,30,30); //top left
			ellipse(myX-60,myY,30,30); //middle left
			ellipse(myX+60,myY,30,30); //middle right
			ellipse(myX+60,myY+60,30,30); //bottom right
			ellipse(myX-60,myY+60,30,30); //bottom left
		}
	}
}
