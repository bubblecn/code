/*
 * 测试程序，组合模式
 */
public class Client {
	public static void main(String[] args) {
		//创建一个TextView
		TextView data = new TextView();
		//给textView加上fancy类型的边框
		Component borderData = new FancyBorder(data);
		//给TextView加上Vertical类型的滚动条
		Component scrolledData = new VertScrollbar(data);
		borderData.draw();
		scrolledData.draw();
		 Component borderAndScrolledData = new HorzScrollbar(borderData);
		 borderAndScrolledData.draw();
	}
}
