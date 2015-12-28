/*
 * 测试代码
 * 新建两个观察者，并添加到观察者列表中，当股票变化时通知该观察者
 */
public class TestObservers {
	public static void main(String args[]) {
		// Create the Subject and Observers.
		ConcreteSubject s = new ConcreteSubject("Corn Pops", 1.29f);
		//NameObserver nameObs = new NameObserver();
		PriceObserver zPriceObs = new PriceObserver("张三");
		PriceObserver lPriceObs = new PriceObserver("李四");
		// Add those Observers!
		//s.addObserver(nameObs);
		s.addObserver(zPriceObs);
		s.addObserver(lPriceObs);
		// Make changes to the Subject.
		//s.setName("Frosted Flakes");
		s.setPrice(4.57f);
		s.setPrice(9.22f);
		//s.setName("Sugar Crispies");
	}
}
