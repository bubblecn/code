import java.awt.Button;
import java.awt.Canvas;
import java.awt.FlowLayout;
import java.awt.Frame;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;

public class Test extends Frame implements ActionListener {
	private Button pushButton = new Button("Push Operation");
	private Button pullButton = new Button("Pull Operation");
	private Button exitButton = new Button("Exit");
	private Canvas canvas = new Canvas();
	private Context context;
	public Test()
	{
		super("State Pattern");
		context=new Context();
		setupWindow();
	}
	private void setupWindow() {  /*Setup GUI*/
		this.setLayout(new FlowLayout());
		this.setSize(800, 600);
		canvas.setSize(300,300);
		pushButton.addActionListener(this);
		pullButton.addActionListener(this);
		exitButton.addActionListener(this);
		this.add(canvas);
		this.add(pushButton);
		this.add(pullButton);
		this.add(exitButton);
		canvas.setBackground(context.getState().getColor());
		//this.setVisible(true);
		}
		// Handle GUI actions.

	@Override
	public void actionPerformed(ActionEvent event) {
		// TODO Auto-generated method stub

		if (event.getSource() == pushButton) {
			context.push();
			canvas.setBackground(context.getState().getColor());
		}
		else if (event.getSource() == pullButton) {
			context.pull();
			canvas.setBackground(context.getState().getColor());
		}
		else if (event.getSource() == exitButton) {
			System.exit(0);
		}


	}
	public static void main(String[] argv) {
		Test gui = new Test();
		gui.setVisible(true);
		}
}
