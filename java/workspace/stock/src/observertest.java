
public class observertest {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Subject IBMStock=new Subject("IBM", 100.3f);
		stockobserver observer1=new stockobserver("张三",0.0f);
		stockobserver observer2=new stockobserver("李四",0.0f);
		IBMStock.addObserver(observer1);
		IBMStock.addObserver(observer2);
		IBMStock.setprice(120.3f);
		IBMStock.setprice(110.7f);
		
	}

}
