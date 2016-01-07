package peg;

public class test {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		RoundPeg roundpeg=new RoundPeg();
		SquarePeg squarepeg=new SquarePeg();
		IRoundPeg squaretoround=new PegAdapter(squarepeg);
		squaretoround.insertintohole("inserting squarepeg");
		ISquarePeg roundtosquare=new PegAdapter(roundpeg);
		roundtosquare.insert("inserting roundpeg");
		
	}

}
