//Vertical类型的滚动条
public class VertScrollbar extends Decorator {
	private Component component;

	public VertScrollbar(Component component) {
		super(component);
	}

	public void draw() {
		//为textView添加一个Vertical类型的滚动条
		System.out.println("VertScrollbar");
	}
}