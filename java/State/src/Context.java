public class Context {
	// The contained state.
	private State state = null; // State attribute

	// Creates a new Context with the specified state.
	public Context(State state) {
		this.state = state;
	}

	// Creates a new Context with the default state.
	public Context() {
		this(new RedState());
	}

	// Returns the state.
	public void getState() {// return state;
		state.getColor();
	}

	// Sets the state.
	public void setState(State state) {
		this.state = state;
	}

	public void push() {
		state.handlePush(this);
	}

	public void pull() {
		state.handlePull(this);
	}
}
