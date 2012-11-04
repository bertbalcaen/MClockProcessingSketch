/*
Based on code in Daniel Shiffman's seminal Nature of Code book. This is a slightly modified version of his Pendulum class. See http://natureofcode.com/book/chapter-3-oscillation#39-trigonometry-and-forces-the-pendulum.
*/
class Pendulum	{

	PVector pivotPos, bobPos;

	float angle;
	float angleVel;
	float angleAccel;

	float decay;

	float bobWidth, bobHeight;

	boolean dragged = false;

	Pendulum() {

		pivotPos = new PVector();
		bobPos = new PVector();

		angle = PI/2;

		String s = "23:59:00";
		bobWidth = textWidth(s);
		bobHeight = textAscent() + textDescent();

		init();

	}

	void init(){
		angleVel = 0.0;
		angleAccel = 0.0;
	}

	void update() {

		float gravity = pendulumGravity;
		angleAccel = (-1 * gravity / pendulumArmLength) * sin(angle);

		angleVel += angleAccel;
		angle += angleVel;

		angleVel *= pendulumDecay;

		bobPos.x = pendulumArmLength * sin(angle);
		bobPos.y = pendulumArmLength * cos(angle);
		bobPos.add(pivotPos);

		if (mouseOverBob() && mousePressed){
			dragged = true;
		}

		if (!mousePressed){
			dragged = false;
		}

	}

	void draw() {

		stroke(0);
		line(pivotPos.x, pivotPos.y, bobPos.x, bobPos.y);

	}

	boolean mouseOverBob(){
		// rect(bobPos.x - bobWidth/2, bobPos.y - bobHeight/2, bobWidth, bobHeight);
		return mouseX > bobPos.x - bobWidth/2 && mouseX < bobPos.x + bobWidth/2 && mouseY > bobPos.y - bobHeight/2 && mouseY < bobPos.y + bobHeight/2;
	}

}