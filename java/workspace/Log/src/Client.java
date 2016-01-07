
public class Client {
	   public static void main(String args[])
	   {
	     //初始化 Logger
	     Logger.initialize();
	     //获得实例
	     Logger loger=Logger.getLogger();
	     loger.logMsg("client log message");
	    }
}
