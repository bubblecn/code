import java.rmi.*;
import java.rmi.server.*;

// Hello Server.
public class HelloServer extends UnicastRemoteObject implements IHello {
	private String name;

	public HelloServer(String name) throws RemoteException {
		super();
		this.name = name;
	}

	public String sayHello() {
		return "Hello, World!";
	}

	public static void main(String[] args) {
		// Install a security manager!
		System.setSecurityManager(new RMISecurityManager());
		try {
			// Create the remote object.
			HelloServer obj = new HelloServer("HelloServer");
			// Register the remote object as "HelloServer".
			Naming.rebind("rmi://serverhost/HelloServer", obj);
			System.out.println("HelloServer bound in registry!");
		} catch (Exception e) {
			System.out.println("HelloServer error: " + e.getMessage());
			e.printStackTrace();
		}
	}
}
