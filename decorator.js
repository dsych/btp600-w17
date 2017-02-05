var Label = function(labelText,x,y){
	var that = {};
	var theText_=labelText || "";
	var x_=x || 100;
	var y_=y || 100;
	var hasBorder_ = true;
	var isStrikeThrough_= true;
	var hasLights_ = true;
	var isFilled_ = true;
	var fillColour_ = color(0,255,255); //white
	var borderColour_ = color(0,0,0);  //black

	that.draw = function(){
		if(hasBorder_){
			strokeWeight(2);
			stroke(borderColour_);
			noFill();
			rect(x_-30,y_-10,100,20);			
		}
		if(isFilled_){
			 noStroke();   //no border
			 fill(fillColour_);
			 rect(x_-30,y_-10,100,20);						
		}
		if(isStrikeThrough_){
			stroke(0,0,0);
			line(x_,y_-2,x_+50,y_-2);
		}
		if (hasLights_){
			for(var i=0;i<11;i++){
				fill(255,255,0);
				stroke(255,255,0);
				ellipse((x_-30)+i*10,(y_-15),5,5);
			}
		}
		stroke(0,0,0);
		fill(0,0,0);
		text(theText_,x_,y_);
	}
	that.changeBorder=function(checked){
		hasBorder_=checked;
	}
	return that;
};

var l;
var borderCheckBox
function setup(){
	borderCheckBox = createCheckbox("border", true);
  	borderCheckBox.changed(checkBorder);
	createCanvas(500,300);
	l = Label("the Label", 100,100);

}
function checkBorder(){
	l.changeBorder(borderCheckBox.checked());
}
function draw(){
	background(255,255,255);
	l.draw();
}
	