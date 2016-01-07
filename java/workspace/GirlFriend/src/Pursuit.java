
public class Pursuit implements GiveGift{
	SchoolGirl mm;
	Pursuit(SchoolGirl mm)
	{
		this.mm=mm;
	}
	@Override
	public void giveflower() {
		// TODO Auto-generated method stub
		System.out.println(mm.name+"送你鲜花");
	}
	@Override
	public void givedoll() {
		// TODO Auto-generated method stub
		System.out.println(mm.name+"送你洋娃娃");
	}
	@Override
	public void givechocolate() {
		// TODO Auto-generated method stub
		System.out.println(mm.name+"送你巧克力");
	}
	
}
