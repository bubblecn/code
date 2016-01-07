
public abstract class Component {
	public String name;
	public Component(String name)
	{
		this.name=name;
	}
	public String getname()
	{
		return name;
	}
	public abstract void put(Component component);
	public abstract void remove(Component component);
	public abstract void open();
}
