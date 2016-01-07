
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

public class Case extends Component {
	public List list;
	public Case(String name)
	{
		super(name);
		list=new LinkedList();
	}
	@Override
	public void put(Component component) {
		// TODO Auto-generated method stub
		list.add(component);
	}

	@Override
	public void remove(Component component) {
		// TODO Auto-generated method stub
		list.remove(component);
	}

	@Override
	public void open() {
		// TODO Auto-generated method stub
		Iterator iterator=list.listIterator();
		while(iterator.hasNext())
		{
			Object object=iterator.next();
			if(object instanceof Case)
			{
				Case case1=(Case)object;
				System.out.println("-"+case1.getname()+":");
				case1.open();
			}
			else if(object instanceof Bag)
			{
				Bag bag1=(Bag)object;
				System.out.println("-"+bag1.getname()+":");
				bag1.open();
			}
			else if(object instanceof Item)
			{
				Item item1=(Item)object;
				System.out.println("-"+item1.getname());
			}
		}
	}

}
