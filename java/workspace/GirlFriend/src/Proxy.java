
public class Proxy implements GiveGift {
	Pursuit gg;
	Proxy(SchoolGirl mm)
	{
		gg=new Pursuit(mm);
	}
	@Override
	public void giveflower() {
		// TODO Auto-generated method stub
		gg.giveflower();
	}

	@Override
	public void givedoll() {
		// TODO Auto-generated method stub
		gg.givedoll();
	}

	@Override
	public void givechocolate() {
		// TODO Auto-generated method stub
		gg.givechocolate();
	}

}
