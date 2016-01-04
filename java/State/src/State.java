/**
  * Abstract class which defines the interface for the
  * behavior of a particular state of the Context.
  */
public abstract class State {
	public abstract void handlePush(Context c);
	public abstract void handlePull(Context c);
	public abstract void getColor();
}
