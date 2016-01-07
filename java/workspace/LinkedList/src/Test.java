import java.util.LinkedList;
import java.util.List;
import java.util.ListIterator;

public class Test {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		List list=new LinkedList();
		list.add(new Item("the first item"));
		list.add(new Item("the second item"));
		list.add(new Item("the third item"));
		list.add(new Item("the forth item"));
		ListIterator iterator = list.listIterator();
		while (iterator.hasNext()) {
			Item item = (Item) iterator.next();
			System.out.println(item.getname());
			// Code here to process item.
		}

	}

}
