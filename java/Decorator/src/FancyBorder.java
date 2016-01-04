//Fancy类型的边框
public class FancyBorder extends Decorator {
	private Component component;

	public FancyBorder(Component component) {
		super(component);
	}

	public void draw() {
		//为textView添加一个Fancy类型的边框
		System.out.println("FacyBorder");
	}
}
