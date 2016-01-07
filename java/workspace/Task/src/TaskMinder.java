import java.util.Enumeration;
import java.util.Vector;

public class TaskMinder extends Thread {
	private long sleepinterval;
	private Vector tasklist;
	public TaskMinder(long sleepinterval,int maxtask){
		this.sleepinterval=sleepinterval;
		tasklist=new Vector(maxtask);
		start();
	}
	public void addtask(Task task,long repeatinterval)
	{
		long ri=repeatinterval>0?repeatinterval:0;
		TaskEntry te=new TaskEntry(task,ri);
		tasklist.addElement(te);
	}
	public void setsleepinterval(long sleepinterval)
	{
		this.sleepinterval=sleepinterval;
	}
	public Enumeration getTasks()
	{
		return tasklist.elements();
	}
	public void run()
	{
		try
		{
			while(true)
			{
				sleep(sleepinterval);
				long now=System.currentTimeMillis();
				Enumeration elements=getTasks();
				while(elements.hasMoreElements())
				{
					TaskEntry te=(TaskEntry) elements.nextElement();
					if(te.getrepeatinterval()+te.gettimelastdone()<now)
					{
						te.gettask().performTask();
						te.settimelastdone(now);
					}
					
				}
					
			}
		}
		catch(Exception e)
		{
			System.out.println("task interrupted!");
		}
	}
}
