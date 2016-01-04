public class CommonManager extends  Manager{
        public CommonManager(String m_name)
            {
        		super(m_name);
            }
        public  void RequestApplications(Request request)
        {
        	//当请求内容为请假且时间小于２天时有权限处理
            if (request.getRequestType().equals("请假") && request.getNumber() <= 2)
            {
            	System.out.println(name+":"+ request.getRequestContent()+"数量"+request.getNumber()+"被批准");
            }
            else
            {
               if (superior != null)
                    superior.RequestApplications(request);
            }
        }
    }