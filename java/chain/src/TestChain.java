/*
 * 测试程序
 */
public class TestChain {
	public static void main(String arg[])
	{
		CommonManager jinli = new CommonManager("金利");
        Majordomo zongjian = new Majordomo("宗剑");
        GeneralManager zhongjingli = new GeneralManager("钟精励");
//设置上级，完全可以根据实际需求来更改设置
        jinli.SetSuperior(zongjian);
        zongjian.SetSuperior(zhongjingli);
       Request request = new Request();
        request.setRequestType( "请假");
        request.setRequestContent ( "小菜请假");
        request.setNumber(1);
        jinli.RequestApplications(request);
//客户端的申请都是由‘经理’发出起，但实际谁来决策由具体管理类来处理，客户端不知道
        Request request2 = new Request();
        request2.setRequestType ( "请假");
        request2.setRequestContent ("小菜请假");
        request2.setNumber(4);
        jinli.RequestApplications(request2);
        Request request3 = new Request();
        request3.setRequestType( "加薪");
        request3.setRequestContent("小菜请求加薪");
        request3.setNumber(500);
        jinli.RequestApplications(request3);

        Request request4 = new Request();
        request4.setRequestType("加薪");
        request4.setRequestContent("小菜请求加薪");
        request4.setNumber(1000);
        jinli.RequestApplications(request4);


	}
}