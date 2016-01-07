import java.util.Observable;

public class Subject extends Observable{
	private String name;
	private float price;
	public Subject(String name,float price)
	{
		this.name=name;
		this.price=price;
		System.out.println("create a stock name:"+this.name);
	}
	public float getprice()
	{
		return this.price;
	}
	public void setprice(float price)
	{
		this.price=price;
		setChanged();
		notifyObservers(price);
	}
}
