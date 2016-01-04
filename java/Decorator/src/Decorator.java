/*
 * 定义一个与抽象类一致的接口，滚动条类和边框类都由此继承
 */
public class Decorator implements Component {
	private Component text;
	public Decorator(Component text)
	{
		this.text = text;
	}
	public void draw()
	{
		text.draw();
	}
}
