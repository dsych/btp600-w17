class Label{
	string theText_;
	bool hasBorder_;
	color borderColour_;
	bool isFilled_;
	color fillColour_;
	bool isStrikeThrough_;
	bool hasLights_;

	int x_;
	int y_;
	Label(string s, int x, int y){
		labelText_=s;
		x_=x;
		y_=y;
		hasBorder_=true;
		isFilled_=true;
		hasLights_=true;
		isStrikeThrough_=true;
		borderColour_=color(0,0,0);
		fillColour_=color(0,255,255,122);
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
		if(isStrikeThrough_){
			stroke(0,0,0);
			line(x_,y_-2,x_+50,y_-2);
		}
		if (hasLights_){
			for(int i=0;i<11;i++){
				fill(255,255,0);
				stroke(255,255,0);
				ellipse((x_-30)+i*10,(y_-15),5,5);
			}
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
	size(500,300);
	l = new Label("the Label", 100,100);
}
void draw(){
	background(255,255,255)
	l.draw();
}