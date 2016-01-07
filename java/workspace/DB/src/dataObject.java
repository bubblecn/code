public abstract class dataObject {

	abstract public void Connect();
	abstract public void Select();
	abstract public void Process();
	abstract public void DisConnect();
	
	public void run()
	{
		Connect();
		Select();
		Process();
		DisConnect();
	}
}