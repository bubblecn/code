package peg;

public class PegAdapter implements IRoundPeg, ISquarePeg {
	RoundPeg roundpeg;
	SquarePeg squarepeg;
	public PegAdapter(RoundPeg roundpeg)
	{
		this.roundpeg=roundpeg;
	}
	public PegAdapter(SquarePeg squarepeg)
	{
		this.squarepeg=squarepeg;
	}
	@Override
	public void insert(String msg) {
		// TODO Auto-generated method stub
		roundpeg.insertintohole(msg);
	}

	@Override
	public void insertintohole(String msg) {
		// TODO Auto-generated method stub
		squarepeg.insert(msg);
	}

}
