
public class TaskMinderTest {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Fibonacii fibonacii=new Fibonacii();
		FortuneTask fortunetask=new FortuneTask();
		TaskMinder taskminder=new TaskMinder(500,100);
		taskminder.addtask(fibonacii, 1000);
		taskminder.addtask(fortunetask, 2000);
	}

}
