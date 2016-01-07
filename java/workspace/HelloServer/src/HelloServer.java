import java.rmi.Naming;
import java.rmi.RMISecurityManager;
import java.rmi.RemoteException;
import java.rmi.server.UnicastRemoteObject;

public class HelloServer extends UnicastRemoteObject implements IHello {
	private String name;
	public HelloServer(String name) throws RemoteException {
	super();
	this.name = name;
	}

	@Override
	public String sayHello() throws RemoteException {
		// TODO Auto-generated method stub
		return "Hello, World!";
	}
	public static void main(String[] args) {
		// Install a security manager!
		System.setSecurityManager(new RMISecurityManager());
		try {
		// Create the remote object.
		HelloServer obj = new HelloServer("HelloServer");
		// Register the remote object as "HelloServer".
		Naming.rebind("rmi://localhost/HelloServer", obj);
		System.out.println("HelloServer bound in registry!");
		}
		catch(Exception e) {
		System.out.println("HelloServer error: " + e.getMessage());
		e.printStackTrace();
		}
		}


}
