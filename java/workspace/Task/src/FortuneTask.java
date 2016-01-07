
public class FortuneTask implements Task {
	int nextfortune=0;
	String[] fortunes={"She who studies hard,gets A",
			"Seech the pattern and know the truth",
			"He who leaves state the day after final,graduaates not"};
	public FortuneTask(){}
	//@Override
	public void performTask() {
		// TODO Auto-generated method stub
		System.out.println("Your fortune is:"+fortunes[nextfortune]);
		nextfortune=(nextfortune+1)%fortunes.length;
	}

}
