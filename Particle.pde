/*
Based on code in Daniel Shiffman's seminal Nature of Code book. This is largely based on his Mover class. See http://natureofcode.com/book/chapter-2-forces.
*/
class Particle {

	PVector pos, vel, accel, grav;
	float mass;
	String label;
	int age;
	float pendulumAngle;

	Particle() {

		mass = 1;
		age = 0;

		pos = new PVector(0, 0);
		vel = new PVector(0, 0);
		accel = new PVector(0, 0);
		grav = new PVector(0, 0);

		pendulumAngle = pendulum.angle;

		label = nf(hour(), 2) + ":" + nf(minute(), 2) + ":" + nf(second(), 2);

	}

	void applyForce(PVector force) {

		PVector f = PVector.div(force, mass);
		accel.add(f);

	}

	void update() {

		vel.add(accel);
		pos.add(vel);
		accel.mult(0);

		age ++;

	}

	void draw() {

		float alpha = map(age, 0, particleMapAgeToAlphaMax, 100, 0);
		// alpha = 100;
		fill(0, alpha);
		textFont(font, fontSize);
		textAlign(CENTER);
		pushMatrix();
		translate(pos.x, pos.y);
		if (moveParticlesBackwards){
			translate(0, 0, - age * 4);
		}
		if (rotateParticles){
			rotate(pendulumAngle);
		}
		float scaleFactor = map(age, 0, particleMapAgeToScaleMax, 1, 0);
		scaleFactor = constrain(scaleFactor, 0, 1);
		scale(scaleFactor);
		text(label, 0, 0);
		popMatrix();

	}

}