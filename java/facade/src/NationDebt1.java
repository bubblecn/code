/*
 * 国债类，实现买入卖出方法
 */
public class NationDebt1 {
	String StName;
	public NationDebt1(String m_StName)
	{
		StName =  m_StName;
	}
	public void Sell()
	{
		System.out.println("国债"+StName+"卖出");
	}
	public void Buy()
	{
		System.out.println("国债"+StName+"买入");
	}
}
