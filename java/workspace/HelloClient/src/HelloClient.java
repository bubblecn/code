import java.rmi.Naming;
import java.rmi.RMISecurityManager;

public class HelloClient {
	public static void main(String[] args) {
		// Install a security manager!
		System.setSecurityManager(new RMISecurityManager());
		try {
		// Get a reference to the remote object.
		IHello server =
			(IHello)Naming.lookup("rmi://127.0.0.1/HelloServer");
		System.out.println("Bound to: " + server);
		//Invoke the remote method.
		System.out.println(server.sayHello());
	}
	catch(Exception e) {
		e.printStackTrace();
	}
	}

}
