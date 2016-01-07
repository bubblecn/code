import java.util.Observable;
import java.util.Observer;

public class stockobserver implements Observer{
	private String observername;
	private float price;
	public stockobserver(String observername,float price)
	{
		this.observername=observername;
		this.price=price;
		System.out.println("Create an observer named:"+this.observername);
	}
	@Override
	public void update(Observable arg0, Object arg1) {
		// TODO Auto-generated method stub
		if(arg1 instanceof Float)
		this.price=(float)arg1;
		System.out.println(observername+":the IBM stock price has changed to "+price);
	}
	
}
