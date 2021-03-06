void setup()
{
	size(900,900);
	noLoop();
}
int dieSize=50;
int dotSize=dieSize/5;
int sum=0;
int numDice=0;
void draw()
{
	background(40);
	sum=0;
	numDice=0;
	for(int x=0;x<=900;x=x+60)
	{
		for(int y=0;y<=780;y=y+60)
		{
			Die veryNiceDice = new Die(x,y);
			veryNiceDice.show();
			veryNiceDice.roll();
			numDice++;
		}
	}
	fill(0,200,0);
	textAlign(CENTER);
	textSize(30);
	text("Total roll with "+numDice+" dice: "+sum, 450,880);
}
void mousePressed()
{
	redraw();
}
class Die //models one single dice cube
{
	int numDots, myX, myY;
	Die(int x, int y) //constructor
	{
		myX=x;
		myY=y;
		numDots=(int)(Math.random()*6+1);
		sum=sum+numDots;
	}
	void roll()
	{
				if (numDots==1||numDots==3||numDots==5)
		{
			ellipse(myX+(dieSize/2),myY+(dieSize/2),dotSize,dotSize);
		}
		if (numDots!=1)
		{
			ellipse(myX+dieSize/5,myY+dieSize/5,dotSize,dotSize);
			ellipse(myX+4*dieSize/5,myY+4*dieSize/5,dotSize,dotSize);
		}
		if (numDots==4||numDots==5||numDots==6)
		{
			ellipse(myX+dieSize/5,myY+4*dieSize/5,dotSize,dotSize);
			ellipse(myX+4*dieSize/5,myY+dieSize/5,dotSize,dotSize);
		}
		if (numDots==6)
		{
			ellipse(myX+dieSize/5,myY+dieSize/2,dotSize,dotSize);
			ellipse(myX+4*dieSize/5,myY+dieSize/2,dotSize,dotSize);
		}
	}
	void show()
	{
		fill(255);
		rect(myX, myY, dieSize, dieSize);
		fill(0);


	}
}
