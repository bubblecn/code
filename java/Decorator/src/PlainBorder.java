//PlainBorder类型的边框
public class PlainBorder extends Decorator {
	private Component component;

	public PlainBorder(Component component) {
		super(component);
	}

	public void draw() {
		//为textView添加一个PlainBorder类型的边框
		System.out.println("PlainBorder");
	}
}