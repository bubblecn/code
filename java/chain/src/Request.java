public class Request
    {
        //申请类别
        private String requestType;
        public String getRequestType()
        {
             return requestType; 
        }
        public void setRequestType(String value)
        {
           requestType = value; 
        }
      //
      //申请内容
        private String requestContent;
        public String getRequestContent()
        {
           return requestContent; 
        }
        public void setRequestContent(String value)
        {
             requestContent = value; 
        }

        //数量
        private int number;
        public int getNumber()
        {
            return number; 
        }
        public void setNumber(int value)
        {
            number = value; 
        }
    }
