import java.rmi.*;
// Hello Client.
public class HelloClient {
	public static void main(String[] args) {
		// Install a security manager!
		System.setSecurityManager(new RMISecurityManager());
		try {
			// Get a reference to the remote object.
			IHello server = (IHello) Naming
					.lookup("rmi://serverhost/HelloServer");
			System.out.println("Bound to: " + server);
			// Invoke the remote method.
			System.out.println(server.sayHello());
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}