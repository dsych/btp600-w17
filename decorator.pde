class Label{
	string theText_;
	bool hasBorder_;
	color borderColour_;
	bool hasFill_;
	color fillColour_;
	int x_;
	int y_;
	Label(string s, int x, int y){
		theText_=s;
		x_=x;
		y_=y;
		hasBorder_=true;
		hasFill_=false;
		borderColour_=color(0,0,0);
		fillColour_=color(255,255,255);
	}
	void draw(){
		text(theText_,x_,y_);
	}
}
Label l;
void setup(){
	size(500,500);
	l = new Label("the Label", 100,100);
}
void draw(){
	l.draw();
}