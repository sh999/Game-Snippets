class DotSet{
	DotSet(){

	}
	
	void addDots(){
		for(int y = 0; y <= 400; y = y + tileSize){
	    for(int x = 0; x <= 400; x = x + tileSize){
	      dots.add(new Dot(x, y));
    }
}