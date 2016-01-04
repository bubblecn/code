//horizontal类型的滚动条
public class HorzScrollbar extends Decorator {
	private Component component;

	public HorzScrollbar(Component component) {
		super(component);
	}

	public void draw() {
		//为textView添加一个horizontal类型的滚动条
		System.out.println("HorzScrollbar");
	}
}