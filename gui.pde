import controlP5.*;

ControlP5 cp5;
ControlWindow controlWindow;

void initGui(){

	cp5 = new ControlP5(this);
	cp5.setAutoDraw(false);
	controlWindow = cp5.addControlWindow("controlP5window", 100, 100, 400, 400);
	controlWindow.hideCoordinates();

	float sliderX = 10;
	float sliderY = 10;
	float sliderSpacing = 15;
	float toggleSpacing = 40;

	cp5.addSlider("pendulumDecay")
		 .setPosition(sliderX, sliderY+=sliderSpacing)
		 .setRange(0.80, 0.99)
		 .setWindow(controlWindow)
		 ;

	cp5.addSlider("pendulumGravity")
		 .setPosition(sliderX, sliderY+=sliderSpacing)
		 .setRange(0.1, 0.9)
		 .setWindow(controlWindow)
		 ;

	cp5.addSlider("pendulumArmLength")
		 .setPosition(sliderX, sliderY+=sliderSpacing)
		 .setRange(50, 200)
		 .setWindow(controlWindow)
		 ;

	cp5.addSlider("fontSize")
		 .setPosition(sliderX, sliderY+=sliderSpacing)
		 .setRange(8, 48)
		 .setWindow(controlWindow)
		 ;

	cp5.addToggle("rotateParticles")
		 .setPosition(sliderX, sliderY+=sliderSpacing)
		 .setWindow(controlWindow)
		 ;

	cp5.addToggle("moveParticlessBackwards")
		 .setPosition(sliderX, sliderY+=toggleSpacing)
		 .setWindow(controlWindow)
		 ;

	cp5.addSlider("particleMapAgeToScaleMax")
		 .setPosition(sliderX, sliderY+=toggleSpacing)
		 .setRange(100, 1000)
		 .setWindow(controlWindow)
		 ;

	cp5.addSlider("particleMapAgeToAlphaMax")
		 .setPosition(sliderX, sliderY+=toggleSpacing)
		 .setRange(100, 1000)
		 .setWindow(controlWindow)
		 ;

	/*
	cp5.addSlider("xTotals")
		 .setPosition(sliderX, sliderY+=sliderSpacing)
		 .setRange(-200, 200)
		 .setWindow(controlWindow)
		 ;

	cp5.addSlider("yTotals")
		 .setPosition(sliderX, sliderY+=sliderSpacing)
		 .setRange(-600, 200)
		 .setWindow(controlWindow)
		 ;

	cp5.addSlider("minSpeed")
		 .setPosition(sliderX, sliderY+=sliderSpacing)
		 .setRange(0, 10)
		 .setWindow(controlWindow)
		 ;

	cp5.addSlider("maxSpeed")
		 .setPosition(sliderX, sliderY+=sliderSpacing)
		 .setRange(5, 20)
		 .setWindow(controlWindow)
		 ;

	cp5.addSlider("speedScaleStart")
		 .setPosition(sliderX, sliderY+=sliderSpacing)
		 .setRange(0, 15)
		 .setWindow(controlWindow)
		 ;

	cp5.addSlider("speedScaleEnd")
		 .setPosition(sliderX, sliderY+=sliderSpacing)
		 .setRange(5, 20)
		 .setWindow(controlWindow)
		 ;

	cp5.addSlider("avgWindow")
		 .setPosition(sliderX, sliderY+=sliderSpacing)
		 .setRange(1, 500)
		 .setWindow(controlWindow)
		 ;

	cp5.addSlider("arrowWidth")
		 .setPosition(sliderX, sliderY+=sliderSpacing)
		 .setRange(1, 100)
		 .setWindow(controlWindow)
		 ;

	cp5.addSlider("hoursRadius")
		 .setPosition(sliderX, sliderY+=sliderSpacing)
		 .setRange(1, 400)
		 .setWindow(controlWindow)
		 ;

	cp5.addSlider("minutesRadius")
		 .setPosition(sliderX, sliderY+=sliderSpacing)
		 .setRange(1, 200)
		 .setWindow(controlWindow)
		 ;

	cp5.addSlider("scaleTextXOff")
		 .setPosition(sliderX, sliderY+=sliderSpacing)
		 .setRange(-20, 20)
		 .setWindow(controlWindow)
		 ;

	cp5.addSlider("scaleTextYOff")
		 .setPosition(sliderX, sliderY+=sliderSpacing)
		 .setRange(-20, 20)
		 .setWindow(controlWindow)
		 ;

	cp5.addToggle("enableRotation")
		 .setPosition(sliderX, sliderY+=toggleSpacing)
		 .setWindow(controlWindow)
		 ;

	cp5.addToggle("colorsLaserCutting")
		 .setPosition(sliderX, sliderY+=toggleSpacing)
		 .setWindow(controlWindow)
		 ;
	*/

}
