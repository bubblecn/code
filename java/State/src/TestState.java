/*
 * 测试代码
 */
public class TestState {
	public static void main(String arg[])
	{
		Context con = new Context();
		// * 开始状态为红色，先逐渐pull一遍，redState->greenState->blueState->redState->greenState
		con.getState();
		con.pull();
		con.getState();
		con.pull();
		con.getState();
		con.pull();
		con.getState();
		con.pull();
		con.getState();
		// * 然后再从greenState开始，push一遍,greenState->blackState->redState->blueState->greenState
		con.push();
		con.getState();
		con.push();
		con.getState();
		con.push();
		con.getState();
		con.push();
		con.getState();
	}
}