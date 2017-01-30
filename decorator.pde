class Label{
	string theText_;
	bool hasBorder_;
	color borderColour_;
	bool hasFill_;
	color fillColour_;
	bool isBold_;
	bool isItalics_;
	int x_;
	int y_;
	Label(string s, int x, int y){
		theText_=s;
		x_=x;
		y_=y;
		hasBorder_=true;
		hasFill_=false;
		isBold_=false;
		isItalics_=false;
		borderColour_=color(0,0,0);
		fillColour_=color(255,255,255);
	}
	void draw(){
		if(hasBorder_){
			noFill();
			rect(x_-50,y_-50,100,100);			
		}
		fill(0,0,255);
		text(theText_,x_,y_);
	}
}
Label l;
void setup(){
	createCanvas(500,500);
	l = new Label("the Label", 100,100);
}
void draw(){
	background(255,255,255);
	l.draw();
}