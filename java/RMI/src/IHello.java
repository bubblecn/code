import java.rmi.*;
/**
 * Hello Interface.
 */
public interface IHello extends Remote {
	public String sayHello() throws RemoteException;
}
