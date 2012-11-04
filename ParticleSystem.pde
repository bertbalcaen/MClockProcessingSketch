class ParticleSystem{

	ArrayList<Particle> particles;

	boolean dragging = false;
	boolean rollover = false;

  	ParticleSystem(){

		particles = new ArrayList<Particle>();		

	}

	void add(PVector pos){

		Particle particle = new Particle();
		particle.pos.x = pos.x;
		particle.pos.y = pos.y;
		particle.grav.y = map(abs(pendulum.angleVel), 0.1, 3, 0.1, 0.5);
		particles.add(particle);

	}

	void update(){

		for(int i = 0; i < particles.size(); i ++){
			Particle particle = (Particle) particles.get(i);
			// if(particle.pos.y > height){
			if(particle.age > 500){
				particles.remove(i);
			}
		}

		for(Particle particle : particles){
			PVector gravity = new PVector(0, map(abs(pendulum.angleVel), 0, 3, 0.01, 1.5));
			// PVector gravity = new PVector(0, map(abs(pendulum.angleVel), 0, 3, 0.005, 0.05));
			// PVector gravity = new PVector(0, 0.01);
			particle.applyForce(gravity);
			particle.update();
		}

	}

	void draw(){

		for(Particle particle : particles){
			particle.draw();
		}

	}
	
}