public class GreenState extends State {
	// Next state for the Black state:
	// On a push(), go to "black"
	// On a pull(), go to "blue"
	public void handlePush(Context c) {
		c.setState(new BlackState());
	}

	public void handlePull(Context c) {
		c.setState(new BlueState());
	}

	public void getColor() {
		System.out.println("now is greenState");
	}
}