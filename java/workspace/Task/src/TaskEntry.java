
public class TaskEntry {
	private Task task;
	private long repeatinterval;
	private long timelastdone;
	public TaskEntry(Task task,long repeatinterval)
	{
		this.task=task;
		this.repeatinterval=repeatinterval;
		this.timelastdone=System.currentTimeMillis();
	}
	public Task gettask(){
		return task;
	}
	public void settask(Task task)
	{
		this.task=task;
	}
	public void setrepeatinterval(long repeatinterval){
		this.repeatinterval=repeatinterval;
	}
	public long getrepeatinterval()
	{
		return repeatinterval;
	}
	public void settimelastdone(long timelastdone){
		this.timelastdone=timelastdone;
	}
	public long gettimelastdone()
	{
		return timelastdone;
	}
	
}
