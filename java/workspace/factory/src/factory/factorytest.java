package factory;

public class factorytest {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		MobileFactory mf;
		Mobile m;
		mf=new NokiaMobileFactory();
		m=mf.ProduceMobile();
		m.call();
	}

}
