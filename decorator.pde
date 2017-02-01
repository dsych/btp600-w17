class Label{
	string theText_;
	bool hasBorder_;
	color borderColour_;
	bool isFilled_;
	color fillColour_;
	bool isBold_;
	bool isItalics_;
	int x_;
	int y_;
	Label(string s, int x, int y){
		labelText_=s;
		x_=x;
		y_=y;
		hasBorder_=true;
		isFilled_=true;
		isBold_=false;
		isItalics_=false;
		borderColour_=color(0,0,0);
		fillColour_=color(0,255,255);
	}
	void draw(){
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
		if(isItalics_){

		}
		if (isBold_){

		}

		fill(0,0,0);
		text(labelText_,x_,y_);
	}
	void setBorder(bool checked){
		hasBorder_=checked;
	}
}
Label l;
void setBorder(checked){
	l.setBorder(checked);
}
void setup(){
	size(500,500);
	l = new Label("the Label", 100,100);
}
void draw(){
	background(255,255,255)
	l.draw();
}