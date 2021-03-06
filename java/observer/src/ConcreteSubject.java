/*
 * 被观察的目标
 * 股票变化
 */
import java.util.Observable;

public class ConcreteSubject extends Observable {
	private String name;
	private float price;

	public ConcreteSubject(String name, float price) {
		this.name = name;
		this.price = price;
		System.out.println("ConcreteSubject created: " + name + " at " + price);
	}

	public String getName() {
		return name;
	}

	public float getPrice() {
		return price;
	}
	public void setPrice(float price) {
		this.price = price;
		setChanged();
		notifyObservers(new Float(price));
	}
}
