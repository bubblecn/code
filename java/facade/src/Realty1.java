/*
 * 房地产类，实现买入卖出方法
 */
public class Realty1 {
	String StName;
	public Realty1(String m_StName)
	{
		StName =  m_StName;
	}
	public void Sell()
	{
		System.out.println("房地产"+StName+"卖出");
	}
	public void Buy()
	{
		System.out.println("房地产"+StName+"买入");
	}
}