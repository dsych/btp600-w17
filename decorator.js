var Label = function(labelText,x,y){
	var that = {};
	var theText_=labelText || "";
	var x_=x || 100;
	var y_=y || 100;
	var hasBorder_ = true;
	var isFilled_ = false;
	var isBolded_ = false;
	var isItalics_ = false;
	var fillColour_ = color(255,255,255); //white
	var borderColour_ = color(0,0,0);  //black

	that.draw = function(){
		if(hasBorder_){
			noFill();
			rect(x_-50,y_-50,100,100);			
		}
		fill(0,0,255);
		text(theText_,x_,y_);
	}
	return that;
};

var l;
function setup(){
	createCanvas(500,500);
	l = Label("the Label", 100,100);
}
function draw(){
	background(255,255,255);
	l.draw();
}
	