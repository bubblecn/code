/*
 * 观察者类
 * 当股票价格变化时获得通知
 */
import java.util.Observable;
import java.util.Observer;

public class PriceObserver implements Observer {
	private float price;
	private String name;

	public PriceObserver(String name) {
		price = 0;
		this.name=name;
	}
	public void update(Observable obj, Object arg) {
		if (arg instanceof Float) {
			price = ((Float) arg).floatValue();
			System.out.println("通知"+this.name+" Price changed to " + price);
		} else {
			System.out.println("PriceObserver: Some other change to subject!");
		}
	}
}
