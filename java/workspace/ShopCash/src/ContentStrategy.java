
public class ContentStrategy {  
  
    private CashSuper cashSuper;  
      
    //初始化，传入具体策略对象  
    public ContentStrategy (String  type){  
          
           
        if ("normal".equalsIgnoreCase(type)) {  
            this.cashSuper = new CashNormal();  
        }  
          
        else if ("rebate".equalsIgnoreCase(type)){  
            this.cashSuper = new CashRebate("0.8");  
        }  
          
        else if ("return".equalsIgnoreCase(type)){  
            this.cashSuper = new CashReturn("300", "100");  
        }  
      
    }  
      
    //调用算法方法  
    public double getResult (double money){  
        return cashSuper.acceptCash(money);  
    }  
}  