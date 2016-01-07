package factory;

public class NokiaMobileFactory implements MobileFactory {

	@Override
	public Mobile ProduceMobile() {
		// TODO Auto-generated method stub
		System.out.println("Nokia Mobile Factory Produce ");
		return new NokiaMobile();
	}

}
