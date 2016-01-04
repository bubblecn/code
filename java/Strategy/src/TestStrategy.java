/*
 * 测试程序，测试在三种不同的收费标准下的收费情况
 */
import java.io.IOException;
public class TestStrategy {
	public static void main(String arg[]) throws IOException {
		System.out.println("请选择：１(正常收费);2(打折收费);3:(返利收费)");
		char read = 0;
		read = (char)System.in.read();
		//System.out.println(read);
		CashSuper test1 = new CashNormal();
		CashSuper test2 = new CashRebate(0.8);
		CashSuper test3 = new CashReturn(300,100);
		CashContext content;
		switch(read){
		case '1':
			content = new CashContext(test1);
			double result = content.GetResult(300);
			System.out.println("正常收费价格为：" + result);
			break;
		case '2':
			content = new CashContext(test2);
			 result = content.GetResult(300);
			System.out.println("打折收费价格为：" + result);
			break;
		case '3':
			content = new CashContext(test3);
			 result = content.GetResult(300);
			System.out.println("返利收费价格为：" + result);
			break;
		}
	}
}
