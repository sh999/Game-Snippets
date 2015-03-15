class BallTrail{
	float[] x = new float[5];
	float[] y = new float[5];

	BallTrail(float a, float b){
		for(int i = 0; i < x.length; i++){
			x[i] = a;
			y[i] = b;
		}
	}

	void update(float a, float b){
		updateCoordinates(a, b);
		drawTrail();
	}

	void updateCoordinates(float a, float b){
		
		for(int i = 0; i < x.length; i++){
			/*prevX = x[i];
			prevY = y[i];
			x[i] = a;
			y[i] = b;*/
			if(i == 0){
				x[i] = a;
				y[i] = b;
			}
			else{
				x[i] = x[i-1];
				y[i] = y[i-1];
			}
			
		}
	}

	void drawTrail(){
		for(int i = 0; i < x.length; i++){
			ellipse(x[i] , y[i], ball.diameter, ball.diameter);
		}

	}
}