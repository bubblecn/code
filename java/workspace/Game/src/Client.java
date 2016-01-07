
public class Client {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Case case1=new Case("镀玉宝箱");
		case1.put(new Item("屠龙宝刀"));
		Bag bag1=new Bag("破旧的包裹");
		case1.put(bag1);
		Case case2=new Case("木质宝箱");
		case1.put(case2);
		bag1.put(new Item("石中剑"));
		System.out.println(case1.getname());
		case1.open();
	}

}
