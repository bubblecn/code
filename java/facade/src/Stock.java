/*
 * 股票类，实现买入卖出方法
 */
public class Stock {
	String StName;
	public Stock(String m_StName)
	{
		StName =  m_StName;
	}
	public void Sell()
	{
		System.out.println("股票"+StName+"卖出");
	}
	public void Buy()
	{
		System.out.println("股票"+StName+"买入");
	}
}
