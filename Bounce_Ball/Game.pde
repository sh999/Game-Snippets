class Game{
	// Manages game status
	String state;
	Game(){
		state = "Playing";
	}

	String state(){
		return state;
	}

	void setState(String state){
		this.state = state;
	}
}