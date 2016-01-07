
public class Fibonacii implements Task {
	int n1=1;
	int n2=0;
	int num;
	public Fibonacii(){}
	//@Override
	public void performTask() {
		// TODO Auto-generated method stub
		num=n1+n2;
		System.out.println("next number:"+num);
		n1=n2;
		n2=num;
	}

}
