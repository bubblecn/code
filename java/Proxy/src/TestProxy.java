/*
 * 测试程序
 */
public class TestProxy {
	public static void main(String arg[])
	{
		SchoolGirl jiaojiao = new SchoolGirl();
        jiaojiao.setName("李娇娇");
//娇娇并不认识卓贾易，此处有问题
        Pursuit zhuojiayi = new Pursuit(jiaojiao);
        zhuojiayi.GiveDolls();
        zhuojiayi.GiveFlowers();
        zhuojiayi.GiveChocolate();
       // Console.Read();

	}
}
