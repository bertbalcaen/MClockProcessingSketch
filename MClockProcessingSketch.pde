Pendulum pendulum;
ParticleSystem particleSystem;
PFont font;

float pendulumDecay = 0.995;
float pendulumGravity = 0.4;
int pendulumArmLength = 150;
int fontSize = 24;

boolean rotateParticles = false;
boolean moveParticlesBackwards = false;
int particleMapAgeToScaleMax = 500;
int particleMapAgeToAlphaMax = 800;

void setup() {

	size(320, 480);
	smooth();
	font = loadFont("HelveticaNeue-12.vlw");

	initGui();

	pendulum = new Pendulum();
	pendulum.pivotPos = new PVector(width/2, 10);

	particleSystem = new ParticleSystem();

}

void draw() {

	background(255);

	pendulum.update();
	pendulum.draw();

	if (!pendulum.dragged){
		particleSystem.add(pendulum.bobPos);
	} else {
		Particle particle = new Particle();
		particle.pos.x = pendulum.bobPos.x;
		particle.pos.y = pendulum.bobPos.y;
		particle.update();
		particle.draw();
	}

	particleSystem.update();
	particleSystem.draw();

	if (pendulum.dragged){
		pendulum.angle = atan2(mouseX - pendulum.pivotPos.x, mouseY - pendulum.pivotPos.y);
		pendulum.init();
	}

}